/*
 * ConvertAIE.cpp: This file is part of the PEQC-MLIR project.
 *
 * Copyright (C) 2024 Colorado State University
 *
 * This program can be redistributed and/or modified under the terms
 * of the license specified in the LICENSE.txt file at the root of the
 * project.
 *
 * Contact: Louis-Noel Pouchet <pouchet@colostate.edu>
 *          Emily Tucker <emily.tucker@colostate.edu>
 * Author: Emily Tucker <emily.tucker@colostate.edu>
 *
 */

#include "llvm/ADT/STLExtras.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Support/LogicalResult.h"
#include "mlir/IR/Dominance.h"

#include "mlir/IR/BuiltinDialect.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/ControlFlow/IR/ControlFlow.h"
#include "mlir/Dialect/ControlFlow/IR/ControlFlowOps.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Async/IR/Async.h"

#include "aie/Dialect/AIE/IR/AIEDialect.h"
#include "aie/Dialect/AIEX/IR/AIEXDialect.h"
#include "aie/Dialect/AIE/IR/AIETargetModel.h"

#include "VerifAirPasses.h"
#include "VerifDialect.h"
#include "VerifUtil.h"

namespace mlir::verif::air {
#define GEN_PASS_DEF_VERIFCONVERTOBJFIFO
#include "VerifAirPasses.h.inc"

#define DEBUG_TYPE "verif-objfifo"

#define READY_PRODUCE 0
#define READY_CONSUME 1


// lookup in device (if exists) first, then in module
///TODO: copied from AIEConverter.h, factor out (also device handling) somehow?
template <typename T>
static T lookupSymbol(ModuleOp module, xilinx::AIE::DeviceOp device, SymbolRefAttr name) {
  if (device) {
    auto sym = device.lookupSymbol<T>(name);
    if (sym) return sym;
  }
  return module.lookupSymbol<T>(name);
}

class ObjfifoConverter {

public:

ObjfifoConverter(MLIRContext* context, ModuleOp module, xilinx::AIE::DeviceOp device,
    xilinx::AIE::ObjectFifoCreateOp op) :
    context(context), module(module) {
  operation = op.getOperation();

  auto depthattr = dyn_cast<IntegerAttr>(op.getElemNumber());
  assert(depthattr);
  depth = depthattr.getInt();

  ofname = op.getSymName().str();
  elt_type = op.getElemType().getElementType();

  producers.insert({op, op.getProducerTile()});
  for (auto tile : op.getConsumerTiles()) {
    consumers.insert({op, tile});
  }
}

ObjfifoConverter(MLIRContext* context, ModuleOp module, xilinx::AIE::DeviceOp device, Operation* op,
    int id, int64_t depth, MemRefType elt_type,
    SmallVector<xilinx::AIE::ObjectFifoCreateOp> producerops, SmallVector<xilinx::AIE::ObjectFifoCreateOp> consumerops) :
    context(context), module(module), operation(op),
    elt_type(elt_type), depth(depth) {

  ofname = "link_" + std::to_string(id) + "_to_" + consumerops[0].getSymName().str();

  for (auto op : producerops) {
    producers.insert({op, op.getProducerTile()});
  }
  for (auto op : consumerops) {
    for (auto tile : op.getConsumerTiles()) {
      consumers.insert({op, tile});
    }
  }
}

private:

enum ProdConsPattern {
  ONE_TO_ONE,
  MANY_TO_ONE,
  ONE_TO_MANY
};

enum IndexArr {
  PRODUCER,
  CONSUMER,
};

#define INDEXARR_START 0
#define INDEXARR_END   1

MLIRContext* context;
ModuleOp module;
xilinx::AIE::DeviceOp device = nullptr;
Operation* operation;

std::string ofname;
MemRefType elt_type;
int64_t depth;
ProdConsPattern pattern;

// for link operations, keep track of both the "input" and "output" OFs.
// if no link operation, these will both contain one element that's the same.
SetVector<std::pair<xilinx::AIE::ObjectFifoCreateOp, Value>> producers;
SetVector<std::pair<xilinx::AIE::ObjectFifoCreateOp, Value>> consumers;

std::string bufarr_name;
MemRefType bufarr_type;
std::string semarr_name;
MemRefType semarr_type;

SmallVector<Value> acquirebuffers;

// these hold the current start and end indices of the fifo into
// the circular buffer
std::unordered_map<IndexArr, std::string> indexarrs;
std::unordered_map<IndexArr, MemRefType> indexarrtypes;

std::optional<ProdConsPattern> getPattern() {
  if (producers.size() == 1 && consumers.size() == 1) {
    return ProdConsPattern::ONE_TO_ONE;
  }
  else if (producers.size() > 1 && consumers.size() == 1) {
    return ProdConsPattern::MANY_TO_ONE;
  }
  else if (producers.size() == 1 && consumers.size() > 1) {
    return ProdConsPattern::ONE_TO_MANY;
  }
  else {
    operation->emitError("unsupported producer-consumer pattern");
    return {};
  }
}

Value getTile(Operation* op) {
  if (auto core = op->getParentOfType<xilinx::AIE::CoreOp>()) {
    return core.getTile();
  }
  else {
    op->emitError();
    assert(0 && "unimplemented: getTile for parent type");
  }
  return nullptr;
}

Value getIndexArr(Location loc, OpBuilder& builder, IndexArr arr) {
  assert(indexarrs.count(arr) > 0);
  assert(indexarrtypes.count(arr) > 0);
  auto arrname = indexarrs[arr];
  return builder.create<memref::GetGlobalOp>(loc, indexarrtypes[arr], arrname).getResult();
}

LogicalResult buildAcquireReleaseSync(OpBuilder builder, Location loc, Value index, xilinx::AIE::ObjectFifoPort port, bool is_acquire) {
  Value semarr = builder.create<memref::GetGlobalOp>(loc, semarr_type, semarr_name).getResult();
  auto setwait = is_acquire ?
      (port == xilinx::AIE::ObjectFifoPort::Produce ? READY_PRODUCE : READY_CONSUME) :
      (port == xilinx::AIE::ObjectFifoPort::Produce ? READY_CONSUME : READY_PRODUCE);
  auto setwaitval = builder.create<arith::ConstantIndexOp>(loc, setwait).getResult();

  switch (pattern) {
    case ONE_TO_ONE: {
      Value sem = builder.create<memref::LoadOp>(loc, semarr, index).getResult();
      if (is_acquire) {
        builder.create<verif::SemaphoreWaitOp>(loc, sem, setwaitval);
      }
      else {
        builder.create<verif::SemaphoreSetOp>(loc, sem, setwaitval);
      }
      break;
    }
    case MANY_TO_ONE:
      assert(0);
      break;
    case ONE_TO_MANY:
      assert(0);
      break;
  }

  return success();
}

// index arrays hold the start and end indices of the fifo into the circular buffer.
// there are separate arrays for producers/consumers -- this function returns
// {producer/consumer index, start/end index}
SmallVector<Value> buildIndexArrIndices(OpBuilder builder, Value indexarrval, Location loc,
      int64_t startendindex, xilinx::AIE::ObjectFifoPort port, xilinx::AIE::ObjectFifoCreateOp ofop, Value tile) {
  SmallVector<Value> indexarrindices;

  // if one-to-many, there's an index for each consumer
  if (pattern == ProdConsPattern::ONE_TO_MANY && port == xilinx::AIE::ObjectFifoPort::Consume) {
    auto it = std::find(consumers.begin(), consumers.end(), std::pair{ofop, tile});
    assert(it != consumers.end());
    Value consumer_index = builder.create<arith::ConstantIndexOp>(loc, it - consumers.begin()).getResult();
    indexarrindices.push_back(consumer_index);
  }
  else {
    Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
    indexarrindices.push_back(cst_0);
  }
  Value startendval = builder.create<arith::ConstantIndexOp>(loc, startendindex).getResult();
  indexarrindices.push_back(startendval);
  return indexarrindices;
}

// to_stream == true: from local buffer -> fifo buffer
// to_stream == false: from fifo buffer -> local buffer
LogicalResult buildOFBufferCopy(OpBuilder builder, xilinx::AIE::ObjectFifoCreateOp ofop, bool to_stream, Location loc,
      Value local_buffer, Value local_buffer_index, Value fifo_buffer, Value fifo_buffer_index) {
  auto t = ofop.getDimensionsFromStreamPerConsumer();
  // llvm::errs()<<"aaaaaa";
  // for (auto a : t) {
  // for (auto b : a) {
  //   llvm::errs()<<"bbbb";
  //   llvm::errs() << b << "\n";
  // }
  // }

  auto dims = ofop.getDimensionsToStream();
  if (!to_stream) {
    // get dims for specific consumer
  }

  auto copyto = to_stream ? fifo_buffer : local_buffer;
  auto copytoindex = to_stream ? fifo_buffer_index : local_buffer_index;
  auto copyfrom = to_stream ? local_buffer : fifo_buffer;
  auto copyfromindex = to_stream ? local_buffer_index : fifo_buffer_index;

  // do it the easy way if we can: one-to-one with no dims
  if (dims.size() == 0 && pattern == ProdConsPattern::ONE_TO_ONE) {
    // Value bufval = builder.create<memref::LoadOp>(loc, copyfrom, SmallVector<Value>{copyfromindex});
    // Value bufval2 = builder.create<memref::LoadOp>(loc, copyto, SmallVector<Value>{copytoindex});
    // builder.create<memref::CopyOp>(loc, bufval, bufval2);
    Value bufval = builder.create<memref::LoadOp>(loc, copyfrom, SmallVector<Value>{copyfromindex});
    builder.create<memref::StoreOp>(loc, bufval, copyto, SmallVector<Value>{copytoindex});
  }

  return success();
}

LogicalResult convertAcquireRelease(Operation* op, xilinx::AIE::ObjectFifoCreateOp ofop, xilinx::AIE::ObjectFifoPort port,
      bool is_acquire, int32_t num_elts) {
  auto loc = op->getLoc();
  auto builder = OpBuilder(op);
  if (num_elts > depth) {
    op->emitError("unsupported: aquiring number of elements greater than the objectfifo size");
    return failure();
  }

  // either allocate (for acquire) or find (for release) the local buffer
  Value localbuf = nullptr;
  if (is_acquire) {
    localbuf = builder.create<memref::AllocOp>(loc,
        MemRefType::get(SmallVector<int64_t>{num_elts}, ofop.getElemType().getElementType())).getResult();
    acquirebuffers.push_back(localbuf);

    SmallVector<xilinx::AIE::ObjectFifoSubviewAccessOp> users = llvm::map_to_vector(op->getResult(0).getUsers(), [](Operation* o) {
      return dyn_cast<xilinx::AIE::ObjectFifoSubviewAccessOp>(o);
    });
    for (auto user : users) {
      if (!user) {
        user->emitError("unsupported objectfifo subview user");
      }
      auto builder = OpBuilder(user);
      Value subviewindex = builder.create<arith::ConstantIndexOp>(loc, user.getIndex()).getResult();
      Value loadval = builder.create<memref::LoadOp>(loc, localbuf, SmallVector<Value>{subviewindex}).getResult();
      user.getResult().replaceAllUsesWith(loadval);
      user->erase();
    }
  }
  else {
    DominanceInfo dom;
    for (auto buf : acquirebuffers) {
      if (!dom.properlyDominates(buf, op)) continue;
      if (!localbuf) localbuf = buf;
      else {
        op->emitError("ambiguous which acquire corresponds to this release");
        return failure();
      }
    }
    if (!localbuf) {
      op->emitError("release: can't find corresponding acquire");
      return failure();
    }
  }
  assert(localbuf);

  // wait loop
  Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
  Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();
  Value numeltsval = builder.create<arith::ConstantIndexOp>(loc, num_elts).getResult();
  Value bufarr = builder.create<memref::GetGlobalOp>(loc, bufarr_type, bufarr_name).getResult();
  auto indexarr = port == xilinx::AIE::ObjectFifoPort::Produce ?
      IndexArr::PRODUCER : IndexArr::CONSUMER;
  auto indexarr_index = is_acquire ? INDEXARR_START : INDEXARR_END;
  Value indexarrval = getIndexArr(loc, builder, indexarr);
  Value tile = getTile(op);
  auto indexarrindices = buildIndexArrIndices(builder, indexarrval, loc, indexarr_index, port, ofop, tile);
  for (auto index : indexarrindices) {
    llvm::errs() << index << "\n";
  }
  Value indexval = builder.create<memref::LoadOp>(loc, indexarrval, indexarrindices).getResult();
  auto loop = builder.create<scf::ForOp>(loc, cst_0, numeltsval, cst_1);
  builder.setInsertionPointToStart(loop.getBody());

  // if acquire, wait on semaphores
  if (is_acquire) {
    auto syncres = buildAcquireReleaseSync(builder, loc, indexval, port, true);
    if (syncres.failed()) return failure();
  }

  // copy to/from local buffer
  auto copyres = buildOFBufferCopy(builder, ofop, !is_acquire, loc, localbuf, loop.getInductionVar(), bufarr, indexval);
  if (copyres.failed()) return failure();

  // update start value
  indexval = builder.create<arith::AddIOp>(loc, IndexType::get(context), indexval, cst_1).getResult();
  indexval = builder.create<arith::RemSIOp>(loc, indexval, numeltsval).getResult();
  builder.create<memref::StoreOp>(loc, indexval, indexarrval, indexarrindices);

  // if release, set semaphores
  if (!is_acquire) {
    auto syncres = buildAcquireReleaseSync(builder, loc, indexval, port, false);
    if (syncres.failed()) return failure();
  }

  op->erase();
  return success();

}

LogicalResult initObjfifo() {
  auto patternopt = getPattern();
  if (!patternopt.has_value()) {
    return failure();
  }
  pattern = patternopt.value();

  if (elt_type.getNumDynamicDims() > 0) {
    module.emitError("dynamic memref element types unsupported");
    return failure();
  }

  auto loc = operation->getLoc();
  auto builder = OpBuilder(operation);

  auto semarrsize = SmallVector<int64_t>{depth};
  if (pattern != ONE_TO_ONE) {
    semarrsize.insert(semarrsize.begin(), std::max(producers.size(), consumers.size()));
  }

  // declare and initialize buffer/semaphore array
  bufarr_name = ofname + "_buffer";
  bufarr_type = MemRefType::get(SmallVector<int64_t>{depth}, elt_type);
  semarr_name = ofname + "_sem";
  semarr_type = MemRefType::get(semarrsize, SemaphoreType::get(context));

  builder.create<memref::GlobalOp>(loc, StringAttr::get(context, bufarr_name),
      StringAttr::get(context, "private"),TypeAttr::get(bufarr_type),
      Attribute{}, UnitAttr{}, IntegerAttr{});
  builder.create<memref::GlobalOp>(loc, StringAttr::get(context, semarr_name),
      StringAttr::get(context, "private"), TypeAttr::get(semarr_type),
      Attribute{}, UnitAttr{}, IntegerAttr{});
  Value bufarr = builder.create<memref::GetGlobalOp>(loc, bufarr_type, bufarr_name).getResult();
  Value semarr = builder.create<memref::GetGlobalOp>(loc, semarr_type, semarr_name).getResult();
  Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
  Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();
  Value depthval = builder.create<arith::ConstantIndexOp>(loc, depth).getResult();
  auto loop = builder.create<scf::ForOp>(loc, cst_0, depthval, cst_1);
  builder.setInsertionPointToStart(loop.getBody());
  auto bufinit = builder.create<memref::AllocOp>(loc, elt_type).getResult();
  builder.create<memref::StoreOp>(loc, bufinit, bufarr, loop.getInductionVar());
  auto seminit = builder.create<SemaphoreOp>(loc,
      IntegerAttr::get(IndexType::get(context), READY_PRODUCE)).getResult();
  builder.create<memref::StoreOp>(loc, seminit, semarr, loop.getInductionVar());

  // buffer index array creation/initialization
  builder.setInsertionPointAfter(loop);
  SmallVector<int64_t> indexarrsizes = {1, (int64_t)consumers.size()};
  SmallVector<const char*> indexarrnames = {"_producer", "_consumer"};
  SmallVector<IndexArr> indexarrkeys = {IndexArr::PRODUCER, IndexArr::CONSUMER};
  for (auto [name, key, size] : llvm::zip_equal(indexarrnames, indexarrkeys, indexarrsizes)) {
    auto globalname = ofname + name;
    auto indexarr_type = MemRefType::get(SmallVector<int64_t>{size, 2}, IndexType::get(context));
    builder.create<memref::GlobalOp>(loc, StringAttr::get(context, globalname),
        StringAttr::get(context, "private"), TypeAttr::get(indexarr_type),
        Attribute{}, UnitAttr{}, IntegerAttr{});
    indexarrs[key] = globalname;
    indexarrtypes[key] = indexarr_type;

    Value iarr = builder.create<memref::GetGlobalOp>(loc, indexarr_type, globalname).getResult();
    Value sizeval = builder.create<arith::ConstantIndexOp>(loc, size).getResult();
    auto initloop = builder.create<scf::ForOp>(loc, cst_0, sizeval, cst_1);
    builder.setInsertionPointToStart(initloop.getBody());
    builder.create<memref::StoreOp>(loc, cst_0, iarr, SmallVector<Value>{initloop.getInductionVar(), cst_0});
    builder.create<memref::StoreOp>(loc, cst_0, iarr, SmallVector<Value>{initloop.getInductionVar(), cst_1});
    builder.setInsertionPointAfter(initloop);
  }

  return success();
}

LogicalResult convertUse(SymbolTable::SymbolUse use) {
  auto op = use.getUser();
  llvm::errs() << "USE " << *op << "\n";

  auto is_producer = [&](Operation* op, xilinx::AIE::ObjectFifoCreateOp ofop) {
    Value tile = getTile(op);
    llvm::errs() << tile << "\n";
    if (std::find(producers.begin(), producers.end(), std::pair{ofop, tile}) != producers.end()) {
      return true;
    }
    return false;
  };

  if (auto acquire = dyn_cast<xilinx::AIE::ObjectFifoAcquireOp>(op)) {
    if (is_producer(op, acquire.getObjectFifo()) != (acquire.getPort() == xilinx::AIE::ObjectFifoPort::Produce)) {
      op->emitError("link producer acquired as consumer or vice versa");
      return failure();
    }
    auto res = convertAcquireRelease(acquire, acquire.getObjectFifo(), acquire.getPort(), true, acquire.getSize());
    if (res.failed()) return failure();
  }
  else if (auto release = dyn_cast<xilinx::AIE::ObjectFifoReleaseOp>(op)) {
    if (is_producer(op, release.getObjectFifo()) != (release.getPort() == xilinx::AIE::ObjectFifoPort::Produce)) {
      op->emitError("link producer released as consumer or vice versa");
      return failure();
    }
    auto res = convertAcquireRelease(release, release.getObjectFifo(), release.getPort(), false, release.getSize());
    if (res.failed()) return failure();
  }
  else if (!dyn_cast<xilinx::AIE::ObjectFifoLinkOp>(op)) {
    op->emitWarning("unsupported objectfifo use operation");
    return success();
  }
  return success();
}

public:

LogicalResult convertObjectfifo() {
  auto res = initObjfifo();
  if (res.failed()) return failure();

  DenseSet<xilinx::AIE::ObjectFifoCreateOp> ofset;
  for (auto p : consumers) {
    ofset.insert(p.first);
  }
  for (auto p : producers) {
    ofset.insert(p.first);
  }

  for (auto ofop : ofset) {
    auto uses = ofop.getSymbolUses(module);
    if (!uses.has_value()) continue;

    for (auto use : uses.value()) {
      auto res = convertUse(use);
      if (res.failed()) return failure();
    }
  }

  return success();
}

};


class VerifConvertObjfifo
    : public impl::VerifConvertObjfifoBase<VerifConvertObjfifo> {
public:
  using impl::VerifConvertObjfifoBase<VerifConvertObjfifo>::VerifConvertObjfifoBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();
    xilinx::AIE::DeviceOp device = nullptr;
    module.walk([&] (xilinx::AIE::DeviceOp deviceop) {
      device = deviceop;
      return WalkResult::interrupt();
    });

    SmallVector<xilinx::AIE::ObjectFifoLinkOp> links;
    WalkResult res = module.walk([&] (xilinx::AIE::ObjectFifoLinkOp op) {
      links.push_back(op);
      return WalkResult::advance();
    });

    // check for common OFs in links: not allowed
    DenseSet<mlir::Attribute> outs;
    for (auto link : links) {
      if (auto linkouts = link.getFifoOutsAttr()) {
        outs.insert(linkouts.begin(), linkouts.end());
      }
    }
    for (auto link : links) {
      if (auto ins = link.getFifoInsAttr()) {
        for (auto in : ins) {
          if (outs.count(in)) {
            link.emitError("objectfifo used as both link input and link output");
            return signalPassFailure();
          }
        }
      }
    }

    // handle links
    for (auto [i, link] : llvm::enumerate(links)) {
      auto getofop = [&](Attribute a) {
        auto sym = dyn_cast<SymbolRefAttr>(a);
        assert(sym);
        auto ofop = lookupSymbol<xilinx::AIE::ObjectFifoCreateOp>(module, device, sym);
        assert(ofop);
        return ofop;
      };
      SmallVector<xilinx::AIE::ObjectFifoCreateOp> producers = llvm::map_to_vector(link.getFifoIns(), getofop);
      SmallVector<xilinx::AIE::ObjectFifoCreateOp> consumers = llvm::map_to_vector(link.getFifoOuts(), getofop);
      if (consumers.size() > 1) {
        link.emitError("unsupported: link with >1 consumer");
        return signalPassFailure();
      }
      assert(consumers.size() == 1);
      if (consumers[0].getConsumerTiles().size() > 1 && producers.size() > 1) {
        link.emitError("unsupported: link with multiple producers and output objectfifo broadcast");
        return signalPassFailure();
      }

      std::optional<Type> elt_elt_type = {};
      std::optional<int64_t> elt_size = {};
      std::optional<int64_t> depth = {};
      for (auto ofop : llvm::concat<xilinx::AIE::ObjectFifoCreateOp>(producers, consumers)) {
        auto opelttype = ofop.getElemType().getElementType();
        if (opelttype.getNumDynamicDims() > 0) {
          ofop.emitError("unsupported: dynamic objectfifo element type");
          return signalPassFailure();
        }
        if (elt_elt_type.has_value() && elt_elt_type.value() != opelttype.getElementType()) {
          llvm::errs() << elt_elt_type.value() << " " << opelttype.getElementType() << "\n";
          link.emitError("element type mismatch between linked objectfifos");
          return signalPassFailure();
        }
        elt_elt_type = opelttype.getElementType();

        auto opeltsize = 1;
        for (auto size : opelttype.getShape()) {
          opeltsize *= size;
        }
        if (elt_size.has_value() && opeltsize != elt_size.value()) {
          link.emitError("element size mismatch between linked objectfifos");
          return signalPassFailure();
        }
        elt_size = opeltsize;

        auto depthattr = dyn_cast<IntegerAttr>(ofop.getElemNumber());
        assert(depthattr);
        auto opdepth = depthattr.getInt();
        if (depth.has_value() && opdepth != depth.value()) {
          link.emitError("depth mismatch between linked objectfifos");
          return signalPassFailure();
        }
        depth = opdepth;
      }
      if (!elt_size.has_value()) {
        link.emitError("couldn't infer element size");
        return signalPassFailure();
      }
      if (!elt_elt_type.has_value()) {
        link.emitError("couldn't infer element type");
        return signalPassFailure();
      }
      if (!depth.has_value()) {
        link.emitError("couldn't infer depth");
        return signalPassFailure();
      }

      auto converter = ObjfifoConverter(context, module, device, link,
          i, depth.value(), MemRefType::get(SmallVector<int64_t>{elt_size.value()}, elt_elt_type.value()), producers, consumers);
      if (!converter.convertObjectfifo().succeeded()) return signalPassFailure();
      module.emitRemark();
      for (auto ofop : llvm::concat<xilinx::AIE::ObjectFifoCreateOp>(producers, consumers)) {
        ofop.erase();
      }
      link.erase();
    }

    // handle objectfifos not in links
    res = module.walk([&] (xilinx::AIE::ObjectFifoCreateOp op) {
      auto converter = ObjfifoConverter(context, module, device, op);
      if (!converter.convertObjectfifo().succeeded()) return WalkResult::interrupt();
      op.erase();
      return WalkResult::advance();
    });

    if (res.wasInterrupted())
      return signalPassFailure();
  }
};

} //namespace mlir::verif
