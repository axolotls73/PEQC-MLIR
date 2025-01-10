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
#include "mlir/Dialect/ControlFlow/IR/ControlFlow.h"
#include "mlir/Dialect/ControlFlow/IR/ControlFlowOps.h"
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

class AIEConverter {

private:

  MLIRContext* context;
  ModuleOp module;

  uint32_t tile_id = 0;
  std::unordered_map<Value, int64_t> tile_id_map;

  uint32_t mem_id = 0;

public:

  AIEConverter(mlir::MLIRContext* context, ModuleOp module) : context(context), module(module) {};

  // assign each tile value a unique id, remove tile ops
  LogicalResult processTiles() {
    auto res = module.walk([&] (xilinx::AIE::TileOp op) {
      tile_id_map[op.getResult()] = tile_id++;
      // op.erase();

      return WalkResult::advance();
    });
    return res.wasInterrupted() ? failure() : success();
  }

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

  LogicalResult processLocks() {

    auto lockops = SmallVector<xilinx::AIE::LockOp>();
    module.walk([&] (xilinx::AIE::LockOp op) {
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

  LogicalResult processCores() {
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
    return res.wasInterrupted() ? failure() : success();
  }

  LogicalResult processBuffers() {
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


  static void cloneBlocks(OpBuilder builder, BlockRange blocks) {

  }

  LogicalResult dmaStartToAsync(xilinx::AIE::MemOp mem_op) {
    for (auto& o : mem_op.getOps()) {
      if (!isa<
          xilinx::AIE::DMAStartOp,
          xilinx::AIE::UseLockOp,
          xilinx::AIE::DMABDOp,
          xilinx::AIE::NextBDOp,
          xilinx::AIE::EndOp
          >(o)) {
        o.emitError("unsupported operation type in aie.mem");
        return failure();
      }
    }

    // create a list of blocks to copy
    auto& blocklist = mem_op.getBody().getBlocks();
    auto blocks = SmallVector<Block*>();
    for (auto& block : blocklist) {
      blocks.push_back(&block);
    }

    // want first block to only have aie.dma_start, and > 1 block total
    auto& firstblock = blocks.front();
    auto& firstblockops = firstblock->getOperations();
    if (blocks.size() < 1 || firstblockops.size() != 1 ||
        !isa<xilinx::AIE::DMAStartOp>(firstblockops.front())) {
      mem_op.emitError("expected aie.mem to start with aie.dma_start and have >1 block");
      return failure();
    }

    // remove first block from list, since it doesn't need to be copied
    blocks.erase(&blocks.front());

    auto loc = mem_op.getLoc();
    auto builder = OpBuilder(mem_op);
    int64_t tile_id = tile_id_map[mem_op.getTile()];
    std::string funcname = "tile_mem_" + std::to_string(tile_id);
    auto funcop = builder.create<func::FuncOp>(loc, StringRef(funcname),
        FunctionType::get(context, SmallVector<Type>{IndexType::get(context)}, SmallVector<Type>{}));

    llvm::errs() << funcop.getBlocks().size() << "\n";
    Block* entryblock = funcop.addEntryBlock();

    // map corresponding blocks, clone all ops
    IRMapping map;
    auto funcblocks = SmallVector<Block*>();
    for (Block* block : blocks) {
      auto newblock = funcop.addBlock();
      map.map(block, newblock);
      funcblocks.push_back(newblock);
    }
    for (auto [memblock, funcblock] : llvm::zip_equal(blocks, funcblocks)) {
      builder.setInsertionPointToStart(funcblock);
      for (auto& o : memblock->getOperations()) {
        builder.clone(o, map);
      }
    }

    // add return to the last block in funcop
    Block* endblock = funcop.addBlock();
    builder.setInsertionPointToStart(endblock);
    builder.create<func::ReturnOp>(loc);

    // replace all aie.end ops with a branch to return
    funcop.walk([&] (xilinx::AIE::EndOp op) {
      builder.setInsertionPoint(op);
      builder.create<cf::BranchOp>(op.getLoc(), endblock);
      op.erase();

      return WalkResult::advance();
    });

    // replace aie.next_bd with cf.br
    funcop.walk([&] (xilinx::AIE::NextBDOp op) {
      builder.setInsertionPoint(op);
      builder.create<cf::BranchOp>(op.getLoc(), op.getDest());
      op.erase();
    });

    int dma_id = 0;
    Operation* prevbranch = nullptr;
    auto processDMAStart = [&] (xilinx::AIE::DMAStartOp op) {
      auto loc = op.getLoc();

      int dst_id = dma_id++;
      int chain_id = dma_id++;
      for (auto [block, id] : llvm::zip_equal
          (SmallVector<Block*>{op.getDest(), op.getChain()}, SmallVector<int>{dst_id, chain_id})) {

        auto currentblock = entryblock;
        // prevbranch -> not the first iteration
        if (prevbranch != nullptr) {
          currentblock = builder.createBlock(funcblocks[0],
              SmallVector<Type>{IndexType::get(context)}, SmallVector<Location>{loc});
          // adjust last branch to move to this one if false
          builder.setInsertionPoint(prevbranch);
          cf::CondBranchOp prevcfop = dyn_cast<cf::CondBranchOp>(prevbranch);
          assert(prevcfop);
          builder.create<cf::CondBranchOp>(loc, prevcfop.getCondition(),
              prevcfop.getTrueDest(), SmallVector<Value>{},
              currentblock, currentblock->getPrevNode()->getArgument(0));
          prevbranch->erase();
        }

        builder.setInsertionPointToStart(currentblock);
        Value blockarg = currentblock->getArgument(0);
        Value idval = builder.create<arith::ConstantIndexOp>(loc, id).getResult();
        Value cmpval = builder.create<arith::CmpIOp>(loc, arith::CmpIPredicate::eq,
            blockarg, idval).getResult();

        // handle chain block: spawn new thread with async.execute, then call function with
        // the value for the chain block
        if (block == op.getDest()) {
          assert(chain_id != -1);
          builder.create<async::ExecuteOp>(loc, SmallVector<Type>{}, SmallVector<Value>{}, SmallVector<Value>{},
              [&] (OpBuilder &b, Location loc, ValueRange v) {
            Value dstval = b.create<arith::ConstantIndexOp>(loc, chain_id).getResult();
            b.create<func::CallOp>(loc, funcop, SmallVector<Value>{dstval});
            b.create<async::YieldOp>(loc, SmallVector<Value>{});
          });
        }

        prevbranch = builder.create<cf::CondBranchOp>(loc, cmpval,
              map.lookupOrDefault(block), endblock).getOperation();
      }

      // replace aie.dma_start with function call
      builder.setInsertionPoint(op);
      Value callval = builder.create<arith::ConstantIndexOp>(loc, dst_id).getResult();
      builder.create<func::CallOp>(loc, funcop, SmallVector<Value>{callval});

      return WalkResult::advance();
    };

    auto res = mem_op.walk(processDMAStart);
    if (res.wasInterrupted()) return failure();

    res = funcop.walk(processDMAStart);
    if (res.wasInterrupted()) return failure();

    return success();
  }

  LogicalResult processMem() {
    auto res = module.walk([&] (xilinx::AIE::MemOp op) {

      auto res = dmaStartToAsync(op);
module.emitRemark();
      if (res.failed()) return WalkResult::interrupt();

      auto builder = OpBuilder(op);
      builder.create<async::ExecuteOp>(op.getLoc(),
          SmallVector<Type>{}, SmallVector<Value>{}, SmallVector<Value>{},
          [&] (OpBuilder &b, Location loc, ValueRange v) {
        IRMapping map;
        // copy first 2 ops
        ///FIXME: probably a bad workaround -- the goal here is to replace
        /// the aie.mem op with an async.execute while only keeping the newly
        /// added function call
        for (const auto& [i, o] : llvm::enumerate(op.getBody().getOps())) {
          if (i > 1) break;
          b.clone(o, map);
        }
        b.create<async::YieldOp>(op.getLoc(), SmallVector<Value>{});
      });

      op.erase();

      return WalkResult::advance();
    });
    return res.wasInterrupted() ? failure() : success();
  }

};

class VerifConvertAIE
    : public impl::VerifConvertAIEBase<VerifConvertAIE> {
public:
  using impl::VerifConvertAIEBase<VerifConvertAIE>::VerifConvertAIEBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();

    auto ac = AIEConverter(context, module);

    LogicalResult res = ac.processTiles();
    if (res.failed()) return signalPassFailure();

    res = ac.processMem();
    if (res.failed()) return signalPassFailure();

    res = ac.processLocks();
    if (res.failed()) return signalPassFailure();

    res = ac.processCores();
    if (res.failed()) return signalPassFailure();

    res = ac.processBuffers();
    if (res.failed()) return signalPassFailure();

  }
};


} //namespace
} //namespace mlir::verif
