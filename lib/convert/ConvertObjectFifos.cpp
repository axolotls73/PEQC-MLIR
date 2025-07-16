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

  producers.push_back(op.getProducerTile());
  for (auto tile : op.getConsumerTiles()) {
    consumers.push_back(tile);
  }

  producerops.push_back(op);
  consumerops.push_back(op);
}

ObjfifoConverter(MLIRContext* context, ModuleOp module, xilinx::AIE::DeviceOp device, Operation* op,
    int id, int64_t depth, MemRefType elt_type,
    SmallVector<xilinx::AIE::ObjectFifoCreateOp> producerops, SmallVector<xilinx::AIE::ObjectFifoCreateOp> consumerops) :
    context(context), module(module), operation(op),
    elt_type(elt_type), depth(depth), producerops(producerops), consumerops(consumerops) {

  ofname = "link_" + std::to_string(id) + "_to_" + consumerops[0].getSymName().str();

  for (auto op : producerops) {
    producers.push_back(op.getProducerTile());
  }

  for (auto op : consumerops) {
    for (auto tile : op.getConsumerTiles()) {
      consumers.push_back(tile);
    }
  }

}

private:

MLIRContext* context;
ModuleOp module;
xilinx::AIE::DeviceOp device = nullptr;
Operation* operation;

std::string ofname;
MemRefType elt_type;
int64_t depth;

// to keep track of the indices of each tile (as the index result of a TileOp)
SmallVector<Value> producers;
SmallVector<Value> consumers;

// for link operations, keep track of both the "input" and "output" OFs.
// if no link operation, these will both contain one element that's the same
SmallVector<xilinx::AIE::ObjectFifoCreateOp> producerops;
SmallVector<xilinx::AIE::ObjectFifoCreateOp> consumerops;

std::string bufarr_name;
MemRefType bufarr_type;
std::string semarr_name;
MemRefType semarr_type;

SmallVector<Value> acquirebuffers;

enum IndexArr {
  START_PRODUCER,
  END_PRODUCER,
  START_CONSUMER,
  END_CONSUMER,
};

MemRefType indexarr_type;
std::unordered_map<IndexArr, std::string> indexarrs;

Value getIndexArr(Location loc, OpBuilder& builder, IndexArr arr) {
  assert(indexarrs.count(arr) > 0);
  auto arrname = indexarrs[arr];
  return builder.create<memref::GetGlobalOp>(loc, indexarr_type, arrname).getResult();
}

LogicalResult buildAcquireReleaseSync(OpBuilder builder, Location loc, Value index, xilinx::AIE::ObjectFifoPort port, bool is_acquire) {
  Value semarr = builder.create<memref::GetGlobalOp>(loc, semarr_type, semarr_name).getResult();
  auto setwait = is_acquire ?
      (port == xilinx::AIE::ObjectFifoPort::Produce ? READY_PRODUCE : READY_CONSUME) :
      (port == xilinx::AIE::ObjectFifoPort::Produce ? READY_CONSUME : READY_PRODUCE);
  auto setwaitval = builder.create<arith::ConstantIndexOp>(loc, setwait).getResult();

  // one-to-one
  if (producers.size() == 1 && consumers.size() == 1) {
    Value sem = builder.create<memref::LoadOp>(loc, semarr, index).getResult();
    if (is_acquire) {
      builder.create<verif::SemaphoreWaitOp>(loc, sem, setwaitval);
    }
    else {
      builder.create<verif::SemaphoreSetOp>(loc, sem, setwaitval);
    }

  }
  // many-to-one
  else if (producers.size() > 1 && consumers.size() == 1) {
    assert(0);
  }
  // one-to-many
  else if (producers.size() == 1 && consumers.size() > 1) {
    assert(0);
  }
  else {
    operation->emitError("unsupported producer-consumer pattern");
    return failure();
  }

  return success();
}

LogicalResult convertAcquire(xilinx::AIE::ObjectFifoAcquireOp op) {
  auto loc = op.getLoc();
  auto builder = OpBuilder(op);

  auto numelts = op.getSize();
  if (numelts > depth) {
    op.emitError("unsupported: aquiring number of elements greater than the objectfifo size");
    return failure();
  }
  auto allocval = builder.create<memref::AllocOp>(loc,
      MemRefType::get(SmallVector<int64_t>{numelts}, elt_type)).getResult();
  acquirebuffers.push_back(allocval);

  SmallVector<xilinx::AIE::ObjectFifoSubviewAccessOp> users = llvm::map_to_vector(op.getResult().getUsers(), [](Operation* o) {
    return dyn_cast<xilinx::AIE::ObjectFifoSubviewAccessOp>(o);
  });
  for (auto user : users) {
    if (!user) {
      user->emitError("unsupported objectfifo subview user");
    }
    auto builder = OpBuilder(user);
    Value subviewindex = builder.create<arith::ConstantIndexOp>(loc, user.getIndex()).getResult();
    Value loadval = builder.create<memref::LoadOp>(loc, allocval, SmallVector<Value>{subviewindex}).getResult();
    user.getResult().replaceAllUsesWith(loadval);
    user->erase();
  }

  // wait loop
  Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
  Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();
  Value numeltsval = builder.create<arith::ConstantIndexOp>(loc, numelts).getResult();
  Value bufarr = builder.create<memref::GetGlobalOp>(loc, bufarr_type, bufarr_name).getResult();
  auto indexarr = op.getPort() == xilinx::AIE::ObjectFifoPort::Produce ?
      IndexArr::START_PRODUCER : IndexArr::START_CONSUMER;
  Value indexarrval = getIndexArr(loc, builder, indexarr);
  Value indexval = builder.create<memref::LoadOp>(loc, indexarrval, SmallVector<Value>{cst_0}).getResult();
  auto loop = builder.create<scf::ForOp>(loc, cst_0, numeltsval, cst_1);
  builder.setInsertionPointToStart(loop.getBody());

  // wait on semaphores
  auto syncres = buildAcquireReleaseSync(builder, loc, indexval, op.getPort(), true);
  if (syncres.failed()) return failure();

  // copy to local buffer
  Value bufval = builder.create<memref::LoadOp>(loc, bufarr, SmallVector<Value>{indexval});
  builder.create<memref::StoreOp>(loc, bufval, allocval, SmallVector<Value>{loop.getInductionVar()});

  // update start value
  indexval = builder.create<arith::AddIOp>(loc, IndexType::get(context), indexval, cst_1).getResult();
  indexval = builder.create<arith::RemSIOp>(loc, indexval, numeltsval).getResult();
  builder.create<memref::StoreOp>(loc, indexval, indexarrval, SmallVector<Value>{cst_0});

  op.erase();
  return success();
}

LogicalResult convertRelease(xilinx::AIE::ObjectFifoReleaseOp op) {
  auto loc = op.getLoc();
  auto builder = OpBuilder(op);

  auto numelts = op.getSize();
  if (numelts > depth) {
    op.emitError("unsupported: aquiring number of elements greater than the objectfifo size");
    return failure();
  }

  // get local buffer to use
  Value localbuf = nullptr;
  DominanceInfo dom;
  for (auto buf : acquirebuffers) {
    if (!dom.properlyDominates(buf, op)) continue;
    if (!localbuf) localbuf = buf;
    else {
      op.emitError("ambiguous which acquire corresponds to this release");
      return failure();
    }
  }
  if (!localbuf) {
    op.emitError("can't find corresponding acquire");
    return failure();
  }

  // set loop
  Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
  Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();
  Value numeltsval = builder.create<arith::ConstantIndexOp>(loc, numelts).getResult();
  Value bufarr = builder.create<memref::GetGlobalOp>(loc, bufarr_type, bufarr_name).getResult();
  auto indexarr = op.getPort() == xilinx::AIE::ObjectFifoPort::Produce ?
      IndexArr::END_PRODUCER : IndexArr::END_CONSUMER;
  Value indexarrval = getIndexArr(loc, builder, indexarr);
  Value indexval = builder.create<memref::LoadOp>(loc, indexarrval, SmallVector<Value>{cst_0}).getResult();
  auto loop = builder.create<scf::ForOp>(loc, cst_0, numeltsval, cst_1);
  builder.setInsertionPointToStart(loop.getBody());

  // copy from local buffer
  Value bufval = builder.create<memref::LoadOp>(loc, bufarr, SmallVector<Value>{indexval});
  builder.create<memref::StoreOp>(loc, bufval, localbuf, SmallVector<Value>{loop.getInductionVar()});

  // update end value
  Value newindexval = builder.create<arith::AddIOp>(loc, IndexType::get(context), indexval, cst_1).getResult();
  newindexval = builder.create<arith::RemSIOp>(loc, newindexval, numeltsval).getResult();
  builder.create<memref::StoreOp>(loc, newindexval, indexarrval, SmallVector<Value>{cst_0});

  // set semaphores
  auto syncres = buildAcquireReleaseSync(builder, loc, indexval, op.getPort(), false);
  if (syncres.failed()) return failure();

  op.erase();
  return success();
}

LogicalResult initObjfifo() {
  if (elt_type.getNumDynamicDims() > 0) {
    module.emitError("dynamic memref element types unsupported");
    return failure();
  }

  auto loc = operation->getLoc();
  auto builder = OpBuilder(operation);

  // declare and initialize buffer/semaphore array
  bufarr_name = ofname + "_buffer";
  bufarr_type = MemRefType::get(SmallVector<int64_t>{depth}, elt_type);
  semarr_name = ofname + "_sem";
  semarr_type = MemRefType::get(SmallVector<int64_t>{depth}, SemaphoreType::get(context));

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

  // buffer index handling
  builder.setInsertionPointAfter(loop);
  indexarr_type = MemRefType::get(SmallVector<int64_t>{1}, IndexType::get(context));
  SmallVector<const char*> indexarrnames = {"_start_producer", "_end_producer", "_start_consumer", "_end_consumer"};
  SmallVector<IndexArr> indexarrkeys = {IndexArr::START_PRODUCER, IndexArr::END_PRODUCER, IndexArr::START_CONSUMER, IndexArr::END_CONSUMER};
  for (auto [name, key] : llvm::zip_equal(indexarrnames, indexarrkeys)) {
    auto globalname = ofname + name;
    builder.create<memref::GlobalOp>(loc, StringAttr::get(context, globalname),
        StringAttr::get(context, "private"), TypeAttr::get(indexarr_type),
        Attribute{}, UnitAttr{}, IntegerAttr{});
    indexarrs[key] = globalname;

    Value iarr = builder.create<memref::GetGlobalOp>(loc, indexarr_type, globalname).getResult();
    builder.create<memref::StoreOp>(loc, cst_0, iarr, cst_0);
  }

  return success();
}

LogicalResult convertUse(SymbolTable::SymbolUse use, bool one_to_one, bool is_producer) {
  auto op = use.getUser();
  llvm::errs() << "USE " << *op << "\n";
  if (auto acquire = dyn_cast<xilinx::AIE::ObjectFifoAcquireOp>(op)) {
    if (!one_to_one && (is_producer != (acquire.getPort() == xilinx::AIE::ObjectFifoPort::Produce))) {
      op->emitError("link producer acquired as consumer or vice versa");
      return failure();
    }
    auto res = convertAcquire(acquire);
    if (res.failed()) return failure();
  }
  else if (auto release = dyn_cast<xilinx::AIE::ObjectFifoReleaseOp>(op)) {
    if (!one_to_one && (is_producer != (release.getPort() == xilinx::AIE::ObjectFifoPort::Produce))) {
      op->emitError("link producer released as consumer or vice versa");
      return failure();
    }
    auto res = convertRelease(release);
    if (res.failed()) return failure();
  }
  else if (!dyn_cast<xilinx::AIE::ObjectFifoLinkOp>(op)) {
    op->emitError("unsupported objectfifo use operation");
    return failure();
  }
  return success();
}

public:

LogicalResult convertObjectfifo() {
  auto res = initObjfifo();
  if (res.failed()) return failure();

  bool one_to_one = producerops.size() == 1 && consumerops.size() == 1;

  for (auto ofop : producerops) {
    auto uses = ofop.getSymbolUses(module);
    if (!uses.has_value()) continue;

    for (auto use : uses.value()) {
      auto res = convertUse(use, one_to_one, true);
      if (res.failed()) return failure();
    }
  }

  // don't process the same thing again
  if (one_to_one && producerops[0] == consumerops[0])
    return success();

  for (auto ofop : consumerops) {
    auto uses = ofop.getSymbolUses(module);
    if (!uses.has_value()) continue;

    for (auto use : uses.value()) {
      convertUse(use, one_to_one, false);
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
      if (consumers[0].getConsumerTiles().size() > 1) {
        link.emitError("unsupported: link with output objectfifo broadcast");
        return signalPassFailure();
      }

      std::optional<MemRefType> elt_type = {};
      std::optional<int64_t> depth = {};
      for (auto ofop : llvm::concat<xilinx::AIE::ObjectFifoCreateOp>(producers, consumers)) {
        auto opeltt = ofop.getElemType().getElementType();
        if (elt_type.has_value() && opeltt != elt_type.value()) {
          link.emitError("element type mismatch between linked objectfifos");
          return signalPassFailure();
        }
        elt_type = opeltt;
        auto depthattr = dyn_cast<IntegerAttr>(ofop.getElemNumber());
        assert(depthattr);
        auto opdepth = depthattr.getInt();
        if (depth.has_value() && opdepth != depth.value()) {
          link.emitError("depth mismatch between linked objectfifos");
          return signalPassFailure();
        }
        depth = opdepth;
      }
      if (!elt_type.has_value()) {
        link.emitError("couldn't infer element type");
        return signalPassFailure();
      }
      if (!depth.has_value()) {
        link.emitError("couldn't infer depth");
        return signalPassFailure();
      }

      auto converter = ObjfifoConverter(context, module, device, link,
          i, depth.value(), elt_type.value(), producers, consumers);
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
