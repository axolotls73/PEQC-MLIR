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

class ObjfifoConverter {

public:

ObjfifoConverter(MLIRContext* context, ModuleOp module, xilinx::AIE::ObjectFifoCreateOp op) :
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

  producerdecls.push_back(op);
  consumerdecls.push_back(op);
}

private:

MLIRContext* context;
ModuleOp module;
Operation* operation;

std::string ofname;
MemRefType elt_type;
int64_t depth;

// to keep track of the indices of each tile (as the index result of a TileOp)
SmallVector<Value> producers;
SmallVector<Value> consumers;

// for link operations, keep track of both the "input" and "output" OFs.
// if no link operation, these will both contain one element that's the same
SmallVector<xilinx::AIE::ObjectFifoCreateOp> producerdecls;
SmallVector<xilinx::AIE::ObjectFifoCreateOp> consumerdecls;

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

  for (auto user : op.getResult().getUsers()) {
    auto subviewop = dyn_cast<xilinx::AIE::ObjectFifoSubviewAccessOp>(user);
    if (!subviewop) {
      user->emitError("unsupported objectfifo subview user");
      return failure();
    }
    auto builder = OpBuilder(subviewop);
    Value subviewindex = builder.create<arith::ConstantIndexOp>(loc, subviewop.getIndex()).getResult();
    Value loadval = builder.create<memref::LoadOp>(loc, allocval, SmallVector<Value>{subviewindex}).getResult();
    subviewop.getResult().replaceAllUsesWith(loadval);
    subviewop.erase();
  }

  // wait loop
  Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
  Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();
  Value numeltsval = builder.create<arith::ConstantIndexOp>(loc, numelts).getResult();
  Value bufarr = builder.create<memref::GetGlobalOp>(loc, bufarr_type, bufarr_name).getResult();
  Value semarr = builder.create<memref::GetGlobalOp>(loc, semarr_type, semarr_name).getResult();
  auto indexarr = op.getPort() == xilinx::AIE::ObjectFifoPort::Produce ?
      IndexArr::START_PRODUCER : IndexArr::START_CONSUMER;
  Value indexarrval = getIndexArr(loc, builder, indexarr);
  Value indexval = builder.create<memref::LoadOp>(loc, indexarrval, SmallVector<Value>{cst_0}).getResult();
  auto loop = builder.create<scf::ForOp>(loc, cst_0, numeltsval, cst_1);
  builder.setInsertionPointToStart(loop.getBody());

  // wait on semaphores
  auto wait = op.getPort() == xilinx::AIE::ObjectFifoPort::Produce ?
      READY_PRODUCE : READY_CONSUME;
  Value sem = builder.create<memref::LoadOp>(loc, semarr, indexval).getResult();
  auto waitval = builder.create<arith::ConstantIndexOp>(loc, wait).getResult();
  builder.create<verif::SemaphoreWaitOp>(loc, sem, waitval);

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
  Value semarr = builder.create<memref::GetGlobalOp>(loc, semarr_type, semarr_name).getResult();
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
  auto set = op.getPort() == xilinx::AIE::ObjectFifoPort::Produce ?
      READY_CONSUME : READY_PRODUCE;
  Value sem = builder.create<memref::LoadOp>(loc, semarr, indexval).getResult();
  auto setval = builder.create<arith::ConstantIndexOp>(loc, set).getResult();
  builder.create<verif::SemaphoreSetOp>(loc, sem, setval);

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
  else {
    op->emitError("unsupported objectfifo use operation");
    return failure();
  }
  return success();
}

public:

LogicalResult convertObjectfifo() {
  auto res = initObjfifo();
  if (res.failed()) return failure();

  bool one_to_one = producerdecls.size() == 1 && consumerdecls.size() == 1;

  for (auto ofop : producerdecls) {
    auto uses = ofop.getSymbolUses(module);
    if (!uses.has_value()) continue;

    for (auto use : uses.value()) {
      convertUse(use, one_to_one, true);
    }
  }

  // one-to-one connection: these will be the same, so we don't need to process the same thing again
  if (one_to_one)
    return success();

  for (auto ofop : consumerdecls) {
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

    WalkResult res = module.walk([&] (xilinx::AIE::ObjectFifoLinkOp op) {
      return WalkResult::advance();
    });

    res = module.walk([&] (xilinx::AIE::ObjectFifoCreateOp op) {
      auto converter = ObjfifoConverter(context, module, op);
      if (!converter.convertObjectfifo().succeeded()) return WalkResult::interrupt();
      op.erase();
      return WalkResult::advance();
    });

    if (res.wasInterrupted())
      return signalPassFailure();
  }
};

} //namespace mlir::verif
