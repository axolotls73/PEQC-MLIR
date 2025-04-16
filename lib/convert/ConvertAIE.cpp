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
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Async/IR/Async.h"
#include "aie/Dialect/AIE/IR/AIEDialect.h"

#include "aie/Dialect/AIE/IR/AIETargetModel.h"

#include "VerifAirPasses.h"
#include "VerifDialect.h"
#include "VerifUtil.h"

namespace mlir::verif::air {
#define GEN_PASS_DEF_VERIFCONVERTAIE
#include "VerifAirPasses.h.inc"

#define DEBUG_TYPE "verif-aie"

#define DEFAULT_NUM_LOCKS_TOTAL 128
///TODO: figure out!!!

#define READY_TO_WRITE 0
#define READY_TO_READ 1

namespace {

class AIEConverter {

private:

  MLIRContext* context;
  ModuleOp module;

  std::unordered_map<Value, int64_t> tile_id_map;
  std::string* global_semaphore_array_name;
  MemRefType global_semaphore_array_type;
  std::unordered_map<std::pair<Value, int>, std::string*, pair_hash> tile_dma_in_buffer_names;
  std::unordered_map<std::pair<Value, int>, int32_t, pair_hash> tile_dma_in_semaphore_indices;
  std::unordered_multimap<std::pair<Value, int>, std::string*, pair_hash> tile_dma_out_buffer_names;
  std::unordered_multimap<std::pair<Value, int>, int, pair_hash> tile_dma_out_semaphore_indices;
  std::unordered_map<Value, Type> tile_dma_elt_type;

  uint32_t current_global_sem_index = 0;
  uint32_t current_tile_id = 0;
  uint32_t current_buffer_id = 0;
  uint32_t current_semaphore_id = 0;
  uint32_t mem_id = 0;


  std::string getChannelSemaphoreArr(std::string channel_name) {
    return channel_name + "_semaphore";
  }


  // assign each tile value a unique id, remove tile ops
  LogicalResult processTiles() {
    auto res = module.walk([&] (xilinx::AIE::TileOp op) {
      auto tile_id = current_tile_id++;
      tile_id_map[op.getResult()] = tile_id;

      // infer type of dma buffer
      Operation* memop = op.getMemOp().getOperation();
      Type elt_type = nullptr;
      for (auto user : op.getResult().getUsers()) {
        auto walkres = user->walk([&] (xilinx::AIE::DMABDOp op) {
          auto buffertype = op.getBuffer().getType();
          if (!elt_type) {
            elt_type = buffertype.getElementType();
            return WalkResult::advance();
          }
          else if (elt_type != buffertype.getElementType()) {
            memop->emitError("expected all aie.mem ops to only use buffers of a single type");
            return WalkResult::interrupt();
          }
          return WalkResult::advance();
        });
        if (walkres.wasInterrupted()) return WalkResult::interrupt();
      }

      // default type if not inferred
      // if (!elt_type) elt_type = IndexType::get(context);
      if (!elt_type) elt_type = IntegerType::get(context, 32);
      tile_dma_elt_type[op.getResult()] = elt_type;

      return WalkResult::advance();
    });
    return res.wasInterrupted() ? failure() : success();
  }

  LogicalResult processFlows() {
    auto res = module.walk([&] (xilinx::AIE::FlowOp op) {
      auto loc = op.getLoc();
      auto builder = OpBuilder(op);

      if (op.getSourceBundle() != xilinx::AIE::WireBundle::DMA ||
          op.getDestBundle() != xilinx::AIE::WireBundle::DMA) {
        op.emitError("only DMA aie.flows supported");
        return WalkResult::interrupt();
      }

      Value srctile = op.getSource();
      Value dsttile = op.getDest();
      int srcchannel = op.getSourceChannel();
      int dstchannel = op.getDestChannel();
      if (tile_dma_in_buffer_names.count({dsttile, dstchannel})) {
        op.emitError("tiles with two input flows unsupported");
        return WalkResult::interrupt();
      }

      assert(tile_dma_elt_type.count(srctile));
      assert(tile_dma_elt_type.count(dsttile));
      if (tile_dma_elt_type[srctile] != tile_dma_elt_type[dsttile]) {
        op.emitError("aie.flow: source and dest DMA buffers don't have the same type");
        return WalkResult::interrupt();
      }

      // declare global for flow buffer: flows are fifos of depth 1
      Type elt_type = tile_dma_elt_type[srctile];
      auto mrtype = MemRefType::get(SmallVector<int64_t>{1}, elt_type);
      auto flowarr_name = new std::string("aie_flow_" +
          std::to_string(tile_id_map[srctile]) + "ch" + std::to_string(srcchannel) + "_to_" +
          std::to_string(tile_id_map[dsttile]) + "ch" + std::to_string(dstchannel));
      builder.create<memref::GlobalOp>(loc, StringAttr::get(context, flowarr_name->c_str()),
          StringAttr::get(context, "private"),TypeAttr::get(mrtype),
          Attribute{}, UnitAttr{}, IntegerAttr{});
      LLVM_DEBUG(
        llvm::errs() << "IN BUFFER ADD: channel " << dstchannel << " tile " << dsttile << "\n";
        llvm::errs() << "OUT BUFFER ADD: channel " << srcchannel << " tile " << srctile << "\n";
      );
      tile_dma_in_buffer_names[{dsttile, dstchannel}] = flowarr_name;
      tile_dma_out_buffer_names.insert({std::pair(srctile, srcchannel), flowarr_name});

      //init and store flow semaphore
      Value sem = builder.create<SemaphoreOp>(loc,
        IntegerAttr::get(IndexType::get(context), READY_TO_WRITE));
      int semindex = current_global_sem_index++;
      if (semindex >= DEFAULT_NUM_LOCKS_TOTAL) {
        op.emitError("too many flow locks: increase DEFAULT_NUM_LOCKS_TOTAL in ConvertAIE.cpp");
        return WalkResult::interrupt();
      }
      auto semarr = builder.create<memref::GetGlobalOp>(loc, global_semaphore_array_type, *global_semaphore_array_name).getResult();
      Value semindexval = builder.create<arith::ConstantIndexOp>(loc, semindex).getResult();
      builder.create<memref::StoreOp>(loc, sem, semarr, SmallVector<Value>{semindexval});
      tile_dma_in_semaphore_indices[{dsttile, dstchannel}] = semindex;
      tile_dma_out_semaphore_indices.insert({std::pair(srctile, srcchannel), semindex});

      op.erase();
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

    // create and initialize semaphore: default value is 0
    int seminit = 0;
    auto init = op.getInit();
    if (init.has_value()) {
      seminit = init.value();
    }
    auto loc = op.getLoc();
    Value sem = builder.create<SemaphoreOp>(loc,
        IntegerAttr::get(IndexType::get(context), seminit));

    // create memref.global, store semaphore
    auto mrtype = MemRefType::get(SmallVector<int64_t>{1}, SemaphoreType::get(context));
    std::string semarr_name = "aie_lock_semaphore_arr_" + std::to_string(current_semaphore_id++);
    builder.create<memref::GlobalOp>(loc, StringAttr::get(context, semarr_name),
        StringAttr::get(context, "private"),TypeAttr::get(mrtype),
        Attribute{}, UnitAttr{}, IntegerAttr{});
    Value semarr = builder.create<memref::GetGlobalOp>(loc, mrtype, semarr_name).getResult();
    Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0);
    builder.create<memref::StoreOp>(loc, sem, semarr, SmallVector<Value>{cst_0});

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
        Value semarr = builder.create<memref::GetGlobalOp>(loc, mrtype, semarr_name).getResult();
        Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0);
        Value sem = builder.create<memref::LoadOp>(loc, semarr, SmallVector<Value>{cst_0}).getResult();
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

    for (auto & op : lockops) {
      if (processLock(op).failed()) return failure();
    }
    return success();
  }

  LogicalResult processCores() {
    auto res = module.walk([&] (xilinx::AIE::CoreOp op) {
      LLVM_DEBUG(
        llvm::errs() << "processing core op: ";
        op.emitRemark();
      );
      if (!op.getResult().getUses().empty()) {
        op.emitError("core result has users: not supported");
        return WalkResult::interrupt();
      }

      // create func, copy ops

      assert(tile_id_map.count(op.getTile()));
      auto funcname = new std::string("tile_core_" + std::to_string(tile_id_map[op.getTile()]));
      auto builder = OpBuilder(op);
      auto loc = op.getLoc();
      auto functype = FunctionType::get(context, SmallVector<Type>{}, SmallVector<Type>{});
      auto funcop = builder.create<func::FuncOp>(loc, StringRef(funcname->c_str()), functype);

      IRMapping map;
      for (auto& b : op.getBody().getBlocks()) {
        Block* newblock;
        if (!funcop.getBlocks().size()) {
          newblock = funcop.addEntryBlock();
        }
        else {
          newblock = funcop.addBlock();
        }
        map.map(&b, newblock);
      }

      for (auto [coreblock, funcblock] : llvm::zip_equal(op.getBody().getBlocks(), funcop.getBlocks())) {
        builder.setInsertionPointToStart(&funcblock);
        for (auto& o : coreblock.getOperations()) {
          if (isa<xilinx::AIE::EndOp>(o)) {
            builder.create<func::ReturnOp>(loc);
            continue;
          }
          builder.clone(o, map);
        }
      }
      auto& lastop = funcop.getBlocks().back().getOperations().back();
      assert(lastop.hasTrait<OpTrait::IsTerminator>());
      if (!isa<func::ReturnOp>(lastop)) {
        builder.setInsertionPointToStart(funcop.addBlock());
        builder.create<func::ReturnOp>(loc);
      }

      // create async, call func
      builder.setInsertionPoint(op);
      builder.create<async::ExecuteOp>(op.getLoc(),
          SmallVector<Type>{}, SmallVector<Value>{}, SmallVector<Value>{},
          [&] (OpBuilder &b, Location loc, ValueRange v) {
            IRMapping map;
        b.create<func::CallOp>(loc, funcop, SmallVector<Value>{});
        b.create<async::YieldOp>(loc, SmallVector<Value>{});
      });
      op.erase();

      return WalkResult::advance();
    });
    return res.wasInterrupted() ? failure() : success();
  }

  LogicalResult processBuffers() {
    auto res = module.walk([&] (xilinx::AIE::BufferOp op) {
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
      Value res = op.getResult();
      std::string bufferid = op.getSymName().has_value() ? op.getSymName().value().str()
          : std::to_string(current_buffer_id++);
      std::string bufname = "aie_buffer_" + bufferid;
      builder.create<memref::GlobalOp>(op.getLoc(), StringAttr::get(context, bufname),
          StringAttr::get(context, "private"), TypeAttr::get(res.getType()),
          Attribute{}, UnitAttr{}, IntegerAttr{});

      // replace buffer value used as memref to memref.global
      SmallVector<OpOperand*> uses;
      SmallVector<Value> replacevals;
      for (auto& use : res.getUses()) {
        auto user = use.getOwner();
        builder.setInsertionPoint(user);
        Value newbuf = builder.create<memref::GetGlobalOp>(user->getLoc(), res.getType(), bufname).getResult();
        uses.push_back(&use);
        replacevals.push_back(newbuf);
        ///TODO: this invalidates iterator? weird
        // use.assign(newbuf);
      }
      for (auto [use, replaceval] : llvm::zip_equal(uses, replacevals)) {
        use->assign(replaceval);
      }

      op.erase();

      return WalkResult::advance();
    });
    return res.wasInterrupted() ? failure() : success();
  }

  LogicalResult processDMABD(xilinx::AIE::DMABDOp op, Value tile, int32_t channel, xilinx::AIE::DMAChannelDir dir) {
    auto builder = OpBuilder(op);
    auto loc = op.getLoc();

    auto dma_offset = op.getOffset();

    // extract sizes and strides
    SmallVector<int64_t> dma_sizes;
    SmallVector<int64_t> dma_strides;

    auto dims = op.getDimensions();
    if (dims.has_value()) {
      for (auto dim : dims.value()) {
        dma_sizes.push_back(dim.getSize());
        dma_strides.push_back(dim.getStride());
      }
    }
    else {
      // default size is the number of elements in the memref
      MemRefType mrtype = op.getBuffer().getType();
      int64_t size = 1;
      for (auto d : mrtype.getShape()) {
        size *= d;
      }
      dma_sizes.push_back(size);
      // default stride is 1
      dma_strides.push_back(1);
    }

    // get buffers and sems to store or load
    Value sem_arr;
    SmallVector<Value> dma_buffers;
    SmallVector<Value> sems;
    auto buftype = MemRefType::get(SmallVector<int64_t>{1}, tile_dma_elt_type[tile]);
    auto semarr = builder.create<memref::GetGlobalOp>(loc, global_semaphore_array_type, *global_semaphore_array_name).getResult();
    switch (dir) {
      case xilinx::AIE::DMAChannelDir::MM2S: {
        assert(tile_dma_out_buffer_names.count({tile, channel}) && tile_dma_out_semaphore_indices.count({tile, channel}));

        for (auto [iter, end] = tile_dma_out_buffer_names.equal_range({tile, channel}); iter != end; ++iter) {
          Value outbuf = builder.create<memref::GetGlobalOp>(loc, buftype, *(iter->second)).getResult();
          dma_buffers.push_back(outbuf);
        }
        for (auto [iter, end] = tile_dma_out_semaphore_indices.equal_range({tile, channel}); iter != end; ++iter) {
          Value outsemindex = builder.create<arith::ConstantIndexOp>(loc, iter->second);
          Value outsem = builder.create<memref::LoadOp>(loc, semarr, outsemindex);
          sems.push_back(outsem);
        }
        break;
      }

      case xilinx::AIE::DMAChannelDir::S2MM: {
        assert(tile_dma_in_buffer_names.count({tile, channel}) && tile_dma_in_semaphore_indices.count({tile, channel}));

        Value inbuf = builder.create<memref::GetGlobalOp>(loc,
              buftype, *tile_dma_in_buffer_names[{tile, channel}]).getResult();
        dma_buffers.push_back(inbuf);

        Value insemindex = builder.create<arith::ConstantIndexOp>(loc, tile_dma_in_semaphore_indices[{tile, channel}]);
        Value insem = builder.create<memref::LoadOp>(loc, semarr, insemindex);
        sems.push_back(insem);
        break;
      }
    }

    Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
    Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();
    Value ready_write = builder.create<arith::ConstantIndexOp>(loc, READY_TO_WRITE).getResult();
    Value ready_read = builder.create<arith::ConstantIndexOp>(loc, READY_TO_READ).getResult();

    auto waitval = dir == xilinx::AIE::DMAChannelDir::S2MM ? ready_read : ready_write;
    auto setval = dir == xilinx::AIE::DMAChannelDir::S2MM ? ready_write : ready_read;

    for (auto [dma_buffer, sem] : llvm::zip_equal(dma_buffers, sems)) {

      // if more than one: wrap all in async
      async::ExecuteOp asyncExec = nullptr;
      if (dma_buffers.size() > 1) {
        asyncExec = builder.create<async::ExecuteOp>(op.getLoc(),
            SmallVector<Type>{}, SmallVector<Value>{}, SmallVector<Value>{},
            [&] (OpBuilder &b, Location loc, ValueRange v) {
              IRMapping map;
          b.create<async::YieldOp>(loc, SmallVector<Value>{});
        });
        builder.setInsertionPointToStart(asyncExec.getBody());
      }

      // generate for loops, save list of iterators, insertion point to innermost
      SmallVector<Value> iterators;
      for (auto size : dma_sizes) {
        Value sizeval = builder.create<arith::ConstantIndexOp>(loc, size).getResult();
        auto forop = builder.create<scf::ForOp>(loc, cst_0, sizeval, cst_1);
        iterators.push_back(forop.getInductionVar());
        builder.setInsertionPointToStart(forop.getBody());
      }

      // create affine map w/ iterators to linearize index
      AffineExpr indexexpr = builder.getAffineConstantExpr(dma_offset);
      for (size_t i = 0; i < dma_sizes.size(); i++) {
        auto stride = builder.getAffineConstantExpr(dma_strides[i]);
        auto iter = builder.getAffineDimExpr(i);
        indexexpr = indexexpr + (iter * stride);
      }
      AffineMap indexmap = AffineMap::get(iterators.size(), 0, indexexpr, context);
      Value linearindex = builder.create<affine::AffineApplyOp>(loc, indexmap, iterators).getResult();

      // delinearize index
      // auto getConstantVector
      auto delinop = builder.create<affine::AffineDelinearizeIndexOp>(loc,
          linearindex, op.getBuffer().getType().getShape());
      ValueRange delinindices = delinop.getResults();

      // store or load
      builder.create<SemaphoreWaitOp>(loc, sem, waitval);
      switch (dir) {
        case xilinx::AIE::DMAChannelDir::MM2S: {
          Value bufval = builder.create<memref::LoadOp>(loc, op.getBuffer(), delinindices);
          builder.create<memref::StoreOp>(loc, bufval, dma_buffer, cst_0);
          break;
        }
        case xilinx::AIE::DMAChannelDir::S2MM: {
          Value dmaval = builder.create<memref::LoadOp>(loc, dma_buffer, cst_0).getResult();
          builder.create<memref::StoreOp>(loc, dmaval, op.getBuffer(), delinindices);
          break;
        }
      }
      builder.create<SemaphoreSetOp>(loc, sem, setval);

      // move insertion point after async if exists
      if (asyncExec) {
        builder.setInsertionPointAfter(asyncExec);
      }
    }

    op.erase();
    return success();
  }

  LogicalResult processDMAStartOp(xilinx::AIE::DMAStartOp op, Operation* memop, int dmaindex, Value tile) {
    auto loc = op.getLoc();

    // create function: async.execute can only have one block so have to put the blocks in a function then call it
    auto funcname = new std::string("tile_mem_" + std::to_string(tile_id_map[tile]) + "_block_" + std::to_string(dmaindex));
    auto builder = OpBuilder(memop);
    auto functype = FunctionType::get(context, SmallVector<Type>{}, SmallVector<Type>{});
    auto funcop = builder.create<func::FuncOp>(loc, StringRef(funcname->c_str()), functype);
    Block* entryblock = funcop.addEntryBlock();

    // create async and function call
    auto asyncExec = builder.create<async::ExecuteOp>(loc,
        SmallVector<Type>{}, SmallVector<Value>{}, SmallVector<Value>{},
        [&] (OpBuilder &b, Location loc, ValueRange v) {
      b.create<func::CallOp>(loc, funcop, SmallVector<Value>{});
      b.create<async::YieldOp>(loc, SmallVector<Value>{});
    });
    builder.setInsertionPointToStart(asyncExec.getBody());

    // get blocks to copy
    IRMapping map;
    SmallVector<Block*> blocks;
    SmallVector<Block*> funcblocks;
    Block* currentblock = op.getDest();
    while (std::find(blocks.begin(), blocks.end(), currentblock) == blocks.end()) {
      assert(currentblock);
      blocks.push_back(currentblock);

      auto funcblock = funcop.getBlocks().size() == 0 ? funcop.addEntryBlock() : funcop.addBlock();
      funcblocks.push_back(funcblock);
      map.map(currentblock, funcblock);

      if (currentblock->getNumSuccessors() == 0) break;
      if (currentblock->getNumSuccessors() > 1) {
        op.emitError("dma block with more than one successor");
        return failure();
      }
      currentblock = currentblock->getSuccessor(0);
    }
    assert(funcblocks.size() > 0);
    builder.setInsertionPointToStart(entryblock);
    builder.create<cf::BranchOp>(loc, funcblocks[0]);
    Block* endblock = funcop.addBlock();
    builder.setInsertionPointToStart(endblock);
    builder.create<func::ReturnOp>(loc);

    // copy blocks to function
    for (auto [memblock, funcblock] : llvm::zip_equal(blocks, funcblocks)) {
      builder.setInsertionPointToStart(funcblock);
      for (auto& o : memblock->getOperations()) {
        if (isa<xilinx::AIE::EndOp>(o)) {
          builder.create<cf::BranchOp>(loc, endblock);
          continue;
        }
        if (auto nextbdop = dyn_cast<xilinx::AIE::NextBDOp>(o)) {
          builder.create<cf::BranchOp>(loc, map.lookup(nextbdop.getDest()));
          continue;
        }
        builder.clone(o, map);
      }
    }

    // handle dma_bd
    auto dmares = funcop.walk([&] (xilinx::AIE::DMABDOp dmaop) {
      if (processDMABD(dmaop, tile, op.getChannelIndex(), op.getChannelDir()).failed())
        return WalkResult::interrupt();
      return WalkResult::advance();
    });
    if (dmares.wasInterrupted()) return failure();

    return success();
  }

  LogicalResult processMem() {
    auto processMemOp = [&](Operation* op, Value tile) {
      assert(tile_id_map.count(tile));

      // this assumes that dma_start ops are sane, i.e. that all of them will be visited
      // and that the chain eventually terminates in aie.end
      ///TODO: check for this/traverse them in chain order
      int dmaindex = 0;
      auto res = op->walk([&] (xilinx::AIE::DMAStartOp dmaop) {
        if (processDMAStartOp(dmaop, op, dmaindex++, tile).failed())
          return WalkResult::interrupt();
        return WalkResult::advance();
      });
      LLVM_DEBUG(
        module.emitRemark("module after dmaStartToAsync");
      );
      if (res.wasInterrupted()) return WalkResult::interrupt();

      op->erase();
      return WalkResult::advance();
    };

    auto res = module.walk([&] (xilinx::AIE::MemOp op) {
      return processMemOp(op.getOperation(), op.getTile());
    });
    if (res.wasInterrupted()) return failure();

    res = module.walk([&] (xilinx::AIE::MemTileDMAOp op) {
      return processMemOp(op.getOperation(), op.getTile());
    });
    if (res.wasInterrupted()) return failure();

    return success();
  }

public:

  AIEConverter(mlir::MLIRContext* context, ModuleOp module) : context(context), module(module) {};

  LogicalResult convertAIE() {

    // global semaphore array: put at beginning of module
    auto sembuilder = OpBuilder(module);
    sembuilder.setInsertionPointToStart(module.getBody());
    global_semaphore_array_type = MemRefType::get(
        SmallVector<int64_t>{DEFAULT_NUM_LOCKS_TOTAL}, SemaphoreType::get(context));
    global_semaphore_array_name = new std::string("aie_global_semaphore_array");
    sembuilder.create<memref::GlobalOp>(module.getLoc(), StringAttr::get(context, global_semaphore_array_name->c_str()),
        StringAttr::get(context, "private"),TypeAttr::get(global_semaphore_array_type),
        Attribute{}, UnitAttr{}, IntegerAttr{});

    LogicalResult res = processTiles();
    if (res.failed()) return failure();

    res = processFlows();
    if (res.failed()) return failure();

    res = processMem();
    if (res.failed()) return failure();

    res = processLocks();
    if (res.failed()) return failure();

    res = processCores();
    if (res.failed()) return failure();

    res = processBuffers();
    if (res.failed()) return failure();

    // remove tile ops
    module.walk([] (xilinx::AIE::TileOp op) {
      op.erase();
      return WalkResult::advance();
    });

    // remove aie.device -- assuming there's only one
    ///TODO: can I just move these somehow instead of copying...
    auto dbuilder = OpBuilder(module);
    dbuilder.setInsertionPointToStart(module.getBody());
    IRMapping map;
    module.walk([&] (xilinx::AIE::DeviceOp device) {
      for (auto& op : device.getBody()->getOperations()) {
        if (isa<xilinx::AIE::EndOp>(op)) // these get added sometimes?
          continue;
        dbuilder.clone(op, map);
      }
      device.erase();
      return WalkResult::interrupt();
    });

    return success();
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
    auto res = ac.convertAIE();

    if (res.failed()) return signalPassFailure();
  }
};


} //namespace
} //namespace mlir::verif
