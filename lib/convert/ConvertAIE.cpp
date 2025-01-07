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

#include "mlir/IR/BuiltinDialect.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Async/IR/Async.h"
#include "aie/Dialect/AIE/IR/AIEDialect.h"

#include "VerifPasses.h"
#include "VerifDialect.h"
#include "VerifUtil.h"

namespace mlir::verif {
#define GEN_PASS_DEF_VERIFCONVERTAIE
#include "VerifPasses.h.inc"

#define DEBUG_TYPE "verif-aie"

namespace {

LogicalResult processLock(xilinx::AIE::LockOp op) {
  LLVM_DEBUG(
    llvm::errs() << "processing lock op: ";
    op.emitRemark();
  );

  auto builder = OpBuilder(op);

  // create and initialize semaphore
  auto loc = op.getLoc();
  Value sem = builder.create<SemaphoreOp>(loc);
  auto init = op.getInit();
  if (init.has_value()) {
    op.emitError("lockop init not supported");
    ///FIXME: implement this
    // Value val = builder.create<arith::ConstantIndexOp>(loc, init.value());
    // builder.create<SemaphoreSetOp>(loc, sem, val);
  }

  // convert use_lock ops to semaphore wait and set
  for (auto& use : op.getResult().getUses()) {
    auto uop = use.getOwner();
    if (auto useop = dyn_cast<xilinx::AIE::UseLockOp>(uop)) {
      LLVM_DEBUG(
        llvm::errs() << "processing use_lock op: ";
        useop.emitRemark();
      );
      if (useop.getBlocking() == xilinx::AIE::LockBlocking::NonBlocking) {
        useop.emitError("non-blocking locks not supported");
        return failure();
      }
      auto useval = useop.getValue();
      if (!useval.has_value()) {
        useop.emitError("use_lock must have value");
        return failure();
      }

      builder.setInsertionPoint(useop);
      auto loc = useop.getLoc();
      Value val = builder.create<arith::ConstantIndexOp>(loc, useval.value());
      switch (useop.getAction()) {
        case xilinx::AIE::LockAction::Acquire:
          builder.create<SemaphoreWaitOp>(loc, sem, val);
          break;
        case xilinx::AIE::LockAction::Release:
          builder.create<SemaphoreSetOp>(loc, sem, val);
          break;
        case xilinx::AIE::LockAction::AcquireGreaterEqual:
          useop.emitError("aie.use_lock must use Acquire or Release");
          return failure();
      }
      useop.erase();
    }
  }
  op.erase();
  return success();
}

LogicalResult processLocks(ModuleOp module) {

  auto lockops = SmallVector<xilinx::AIE::LockOp>();
  WalkResult res = module.walk([&] (xilinx::AIE::LockOp op) {
    lockops.push_back(op);
    return WalkResult::advance();
  });

  ///FIXME: ideally this would be in the module.walk call, but I'd need a
  /// backwards iterator to use as Iterator in walk() -- does this exaist somewhere?

  for (auto & op : lockops) {
    if (processLock(op).failed()) return failure();
  }
  return success();
}

LogicalResult processCores(ModuleOp module) {
  auto res = module.walk([] (xilinx::AIE::CoreOp op) {
    LLVM_DEBUG(
      llvm::errs() << "processing core op: ";
      op.emitRemark();
    );
    if (!op.getResult().getUses().empty()) {
      op.emitError("core result has users: not supported");
      return WalkResult::interrupt();
    }

    auto builder = OpBuilder(op);
    builder.create<async::ExecuteOp>(op.getLoc(),
        SmallVector<Type>{}, SmallVector<Value>{}, SmallVector<Value>{},
        [&] (OpBuilder &b, Location loc, ValueRange v) {
          IRMapping map;
          for (auto& o : op.getBody().getOps()) {
            if (isa<xilinx::AIE::EndOp>(o)) {
              b.create<async::YieldOp>(loc, SmallVector<Value>{});
              continue;
            }
            b.clone(o, map);
          }
        });
    op.erase();

    return WalkResult::advance();
  });
  module.emitRemark();
  return res.wasInterrupted() ? failure() : success();
}

LogicalResult processBuffers(ModuleOp module) {
  auto res = module.walk([] (xilinx::AIE::BufferOp op) {
    LLVM_DEBUG(
      llvm::errs() << "processing buffer op: ";
      op.emitRemark();
    );
    if (op.getAddress().has_value() || op.getMemBank().has_value() || op.getInitialValue().has_value()) {
      op.emitError("buffer attrs not supported");
      return WalkResult::interrupt();
      ///FIXME: implement
    }

    auto builder = OpBuilder(op);
    Value mres = builder.create<memref::AllocOp>(op.getLoc(), op.getResult().getType()).getResult();
    op.getResult().replaceAllUsesWith(mres);
    op.erase();

    return WalkResult::advance();
  });
  return res.wasInterrupted() ? failure() : success();
}

class VerifConvertAIE
    : public impl::VerifConvertAIEBase<VerifConvertAIE> {
public:
  using impl::VerifConvertAIEBase<VerifConvertAIE>::VerifConvertAIEBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();

    LogicalResult res = processLocks(module);
    if (res.failed()) return signalPassFailure();

    res = processCores(module);
    if (res.failed()) return signalPassFailure();

    res = processBuffers(module);
    if (res.failed()) return signalPassFailure();

  }
};


} //namespace
} //namespace mlir::verif
