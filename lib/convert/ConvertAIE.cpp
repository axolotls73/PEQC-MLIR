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
#include "aie/Dialect/AIEX/IR/AIEXDialect.h"
#include "aie/Dialect/AIE/IR/AIETargetModel.h"

#include "VerifAirPasses.h"
#include "VerifDialect.h"
#include "VerifUtil.h"

#include "convert/AIEConverter.h"

namespace mlir::verif::air {
#define GEN_PASS_DEF_VERIFCONVERTAIE
#include "VerifAirPasses.h.inc"

#define DEBUG_TYPE "verif-aie"

#define DEFAULT_NUM_LOCKS_TOTAL 128
///TODO: figure out!!!

#define READY_TO_WRITE 0
#define READY_TO_READ 1


// assign each tile value a unique id, remove tile ops
LogicalResult AIEConverter::processTiles() {
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

LogicalResult AIEConverter::processFlows() {
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
        getTileStr(srctile) + "ch" + std::to_string(srcchannel) + "_to_" +
        getTileStr(dsttile) + "ch" + std::to_string(dstchannel));
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

LogicalResult AIEConverter::processLock(xilinx::AIE::LockOp op) {
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
    auto useop = dyn_cast<xilinx::AIE::UseLockOp>(uop);
    assert(useop);
    LLVM_DEBUG(
      llvm::errs() << "processing use_lock op: ";
      useop.emitRemark();
    );

    builder.setInsertionPoint(useop);
    Value semarr = builder.create<memref::GetGlobalOp>(loc, mrtype, semarr_name).getResult();
    Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0);
    Value sem = builder.create<memref::LoadOp>(loc, semarr, SmallVector<Value>{cst_0}).getResult();
    auto loc = useop.getLoc();
    Value val = builder.create<arith::ConstantIndexOp>(loc, useop.getValue().value());
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
  op.erase();
  return success();
}

LogicalResult AIEConverter::processCountingLock(xilinx::AIE::LockOp op) {
  auto builder = OpBuilder(op);

  // create and initialize semaphore: default value is 0
  int seminit = 0;
  auto init = op.getInit();
  if (init.has_value()) {
    seminit = init.value();
  }
  auto loc = op.getLoc();
  Value sem = builder.create<CountingSemaphoreOp>(loc,
      IntegerAttr::get(IndexType::get(context), seminit));

  // create memref.global, store semaphore
  auto mrtype = MemRefType::get(SmallVector<int64_t>{1}, CountingSemaphoreType::get(context));
  std::string semarr_name = "aie_lock_semaphore_arr_" + std::to_string(current_semaphore_id++);
  builder.create<memref::GlobalOp>(loc, StringAttr::get(context, semarr_name),
      StringAttr::get(context, "private"),TypeAttr::get(mrtype),
      Attribute{}, UnitAttr{}, IntegerAttr{});
  Value semarr = builder.create<memref::GetGlobalOp>(loc, mrtype, semarr_name).getResult();
  Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0);
  builder.create<memref::StoreOp>(loc, sem, semarr, SmallVector<Value>{cst_0});

  // convert use_lock ops to semaphore acquire and release
  for (auto& use : op.getResult().getUses()) {
    auto uop = use.getOwner();
    auto useop = dyn_cast<xilinx::AIE::UseLockOp>(uop);
    assert(useop);
    LLVM_DEBUG(
      llvm::errs() << "processing use_lock op: ";
      useop.emitRemark();
    );

    builder.setInsertionPoint(useop);
    Value semarr = builder.create<memref::GetGlobalOp>(loc, mrtype, semarr_name).getResult();
    Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0);
    Value sem = builder.create<memref::LoadOp>(loc, semarr, SmallVector<Value>{cst_0}).getResult();
    auto loc = useop.getLoc();
    Value val = builder.create<arith::ConstantIndexOp>(loc, useop.getValue().value());
    switch (useop.getAction()) {
      case xilinx::AIE::LockAction::Release:
        builder.create<SemaphoreReleaseOp>(loc, sem, val);
        break;
      case xilinx::AIE::LockAction::AcquireGreaterEqual:
        builder.create<SemaphoreAcquireOp>(loc, sem, val);
        break;
      case xilinx::AIE::LockAction::Acquire:
        assert(0);
    }
    useop.erase();
  }
  op.erase();
  return success();
}

LogicalResult AIEConverter::processLocks() {

  auto lockops = SmallVector<xilinx::AIE::LockOp>();
  module.walk([&] (xilinx::AIE::LockOp op) {
    lockops.push_back(op);
    return WalkResult::advance();
  });

  for (auto & op : lockops) {

    for (auto& use : op.getResult().getUses()) {
      auto uop = use.getOwner();
      auto useop = dyn_cast<xilinx::AIE::UseLockOp>(uop);
      if (!useop) {
        uop->emitError("only use_lock ops supported as users of locks");
        return failure();
      }
      if (useop.getBlocking() == xilinx::AIE::LockBlocking::NonBlocking) {
        useop.emitError("non-blocking locks not supported");
        return failure();
      }
      auto useval = useop.getValue();
      if (!useval.has_value()) {
        useop.emitError("use_lock must have value");
        return failure();
      }
    }

    // figure out whether semaphores are counting or not
    bool counting = false;
    if (device) {
      switch (device.getTargetModel().getTargetArch()) {
        case xilinx::AIE::AIEArch::AIE1:
          counting = false;
          break;
        case xilinx::AIE::AIEArch::AIE2:
          counting = true;
          break;
        case xilinx::AIE::AIEArch::AIE2p:
          counting = true;
          break;
      }
    }

    LogicalResult res = failure();
    if (!counting) {
      res = processLock(op);
    }
    else {
      res = processCountingLock(op);
    }
    if (res.failed()) return failure();
  }
  return success();
}

LogicalResult AIEConverter::processCores() {
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
    auto funcname = new std::string("tile_core_" + getTileStr(op.getTile()));
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

LogicalResult AIEConverter::processBuffers() {
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

LogicalResult AIEConverter::createDMABDCopy(Operation* op, Value tile, int32_t channel, TypedValue<MemRefType> memref, xilinx::AIE::DMAChannelDir dir, OpBuilder builder,
      std::optional<int64_t> dma_offset, SmallVector<int64_t>& dma_offsets, SmallVector<int64_t>& dma_sizes, SmallVector<int64_t>& dma_strides) {
  auto loc = op->getLoc();

  // get buffers and sems to store or load
  Value sem_arr;
  SmallVector<Value> dma_buffers;
  SmallVector<Value> sems;
  auto buftype = MemRefType::get(SmallVector<int64_t>{1}, tile_dma_elt_type[tile]);
  auto semarr = builder.create<memref::GetGlobalOp>(loc, global_semaphore_array_type, *global_semaphore_array_name).getResult();
  switch (dir) {
    case xilinx::AIE::DMAChannelDir::MM2S: {
      if (!tile_dma_out_buffer_names.count({tile, channel}) ||
          !tile_dma_out_semaphore_indices.count({tile, channel})) {
        op->emitError("no flow operation corresponding to channel");
        return failure();
      }

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
      if (!tile_dma_in_buffer_names.count({tile, channel}) ||
          !tile_dma_in_semaphore_indices.count({tile, channel})) {
        op->emitError("no flow operation corresponding to channel");
        return failure();
      }

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
      asyncExec = builder.create<async::ExecuteOp>(loc,
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
    AffineExpr indexexpr = builder.getAffineConstantExpr(dma_offset.value_or(0));
    for (size_t i = 0; i < dma_sizes.size(); i++) {
      auto offset = builder.getAffineConstantExpr(dma_offsets[i]);
      auto stride = builder.getAffineConstantExpr(dma_strides[i]);
      auto iter = builder.getAffineDimExpr(i);
      indexexpr = indexexpr + ((iter + offset) * stride);
    }
    AffineMap indexmap = AffineMap::get(iterators.size(), 0, indexexpr, context);
    Value linearindex = builder.create<affine::AffineApplyOp>(loc, indexmap, iterators).getResult();

    // delinearize index
    // auto getConstantVector
    auto delinop = builder.create<affine::AffineDelinearizeIndexOp>(loc,
        linearindex, memref.getType().getShape());
    ValueRange delinindices = delinop.getResults();

    // store or load
    builder.create<SemaphoreWaitOp>(loc, sem, waitval);
    switch (dir) {
      case xilinx::AIE::DMAChannelDir::MM2S: {
        Value bufval = builder.create<memref::LoadOp>(loc, memref, delinindices);
        builder.create<memref::StoreOp>(loc, bufval, dma_buffer, cst_0);
        break;
      }
      case xilinx::AIE::DMAChannelDir::S2MM: {
        Value dmaval = builder.create<memref::LoadOp>(loc, dma_buffer, cst_0).getResult();
        builder.create<memref::StoreOp>(loc, dmaval, memref, delinindices);
        break;
      }
    }
    builder.create<SemaphoreSetOp>(loc, sem, setval);

    // move insertion point after async if exists
    if (asyncExec) {
      builder.setInsertionPointAfter(asyncExec);
    }
  }
  return success();
}

LogicalResult AIEConverter::processDMABD(xilinx::AIE::DMABDOp op, Value tile, int32_t channel, xilinx::AIE::DMAChannelDir dir) {

  auto dma_offset = op.getOffset();

  // extract sizes and strides
  SmallVector<int64_t> dma_offsets;
  SmallVector<int64_t> dma_sizes;
  SmallVector<int64_t> dma_strides;

  auto dims = op.getDimensions();
  if (dims.has_value()) {
    for (auto dim : dims.value()) {
      dma_offsets.push_back(0); // don't exist in this op, just the total offset
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
    dma_offsets.push_back(0);
    dma_sizes.push_back(size);
    // default stride is 1
    dma_strides.push_back(1);
  }

  auto builder = OpBuilder(op);
  auto res = createDMABDCopy(op.getOperation(), tile, channel, op.getBuffer(), dir, builder,
      dma_offset, dma_offsets, dma_sizes, dma_strides);
  if (res.failed()) return failure();

  op.erase();
  return success();
}

std::optional<func::FuncOp> AIEConverter::getDMAStartOpFunc(xilinx::AIE::DMAStartOp op, Operation* memop, int dmaindex, Value tile) {
  auto loc = op.getLoc();

  // create function: async.execute can only have one block so have to put the blocks in a function then call it
  auto funcname = new std::string("tile_mem_" + getTileStr(tile) + "_block_" + std::to_string(dmaindex));
  auto builder = OpBuilder(memop);
  auto functype = FunctionType::get(context, SmallVector<Type>{}, SmallVector<Type>{});
  auto funcop = builder.create<func::FuncOp>(loc, StringRef(funcname->c_str()), functype);
  Block* entryblock = funcop.addEntryBlock();

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
      return {};
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

  return funcop;
}

LogicalResult AIEConverter::processCountSemProducerConsumers(func::FuncOp producer, SmallVector<func::FuncOp>& consumers, Value lock_pr_begin, Value lock_pr_end) {
  // continue to check producer/consumers for validity

  auto checkUseUnique = [] (xilinx::AIE::UseLockOp op,
      Value beginlock, Value endlock,
      xilinx::AIE::UseLockOp& beginop, xilinx::AIE::UseLockOp& endop) {
    if (op.getLock() == beginlock) {
      if (!beginop) {
        beginop = op;
      }
      else return WalkResult::interrupt();
    }
    else if (op.getLock() == endlock) {
      if (!endop) {
        endop = op;
      }
      else return WalkResult::interrupt();
    }
    return WalkResult::advance();
  };

  xilinx::AIE::UseLockOp pr_beginop = nullptr;
  xilinx::AIE::UseLockOp pr_endop = nullptr;
  int32_t prval;

  auto prodres = producer.walk([&] (xilinx::AIE::UseLockOp op) {
    prval = op.getValue().value();
    return checkUseUnique(op, lock_pr_begin, lock_pr_end, pr_beginop, pr_endop);
  });
  if (!pr_beginop || !pr_endop) return failure();
  if (prodres.wasInterrupted()) return failure();
  if (prval != (int32_t)consumers.size()) return failure();

  SmallVector<xilinx::AIE::UseLockOp> c_uselocks;
  for (auto c : consumers) {
    xilinx::AIE::UseLockOp c_beginop = nullptr;
    xilinx::AIE::UseLockOp c_endop = nullptr;
    auto res = c.walk([&] (xilinx::AIE::UseLockOp op) {
      return checkUseUnique(op, lock_pr_end, lock_pr_begin, c_beginop, c_endop);
    });
    if (!c_beginop || !c_endop) return failure();
    if (res.wasInterrupted()) return failure();
    c_uselocks.push_back(c_beginop);
    c_uselocks.push_back(c_endop);
  }

  // producers and consumers are valid, rewrite

  LLVM_DEBUG(
    llvm::errs() << "PRODUCER/CONSUMER MATCH: \n  producer: " << producer.getName() << "\n  consumers: ";
    for (auto c : consumers) {
      llvm::errs() << c.getName() << " ";
    }
    llvm::errs() << "\n";
  );


  auto prbuilder = OpBuilder(pr_endop);
  auto& pr_mainblock = *std::next(producer.getBlocks().begin());
  prbuilder.setInsertionPoint(&pr_mainblock.getOperations().back());
  pr_beginop.erase();
  pr_endop.erase();

  for (auto o : c_uselocks) {
    o.erase();
  }

  // remove consumers' loops, add async call to producer
  auto loc = producer.getLoc();
  auto groupsize = prbuilder.create<arith::ConstantIndexOp>(loc, consumers.size()).getResult();
  auto group = prbuilder.create<async::CreateGroupOp>(loc, groupsize).getResult();
  for (auto c : consumers) {
    auto& c_mainblock = *std::next(c.getBlocks().begin());
    auto cbuilder = OpBuilder(&c_mainblock.getOperations().back());
    cbuilder.create<cf::BranchOp>(c.getLoc(), &c.getBlocks().back()); // last block in function returns
    c_mainblock.getOperations().back().erase(); // cf.br, checked before

    auto asyncExec = prbuilder.create<async::ExecuteOp>(c.getLoc(),
        SmallVector<Type>{}, SmallVector<Value>{}, SmallVector<Value>{},
        [&] (OpBuilder &b, Location loc, ValueRange v) {
      b.create<func::CallOp>(loc, c, SmallVector<Value>{});
      b.create<async::YieldOp>(loc, SmallVector<Value>{});
    });
    prbuilder.setInsertionPointAfter(asyncExec);
    prbuilder.create<async::AddToGroupOp>(loc, asyncExec.getResult(0), group);
  }
  prbuilder.create<async::AwaitAllOp>(loc, group);

  return success();
}

void AIEConverter::convertCountingSemaphorePatternToSpawn(SmallVector<func::FuncOp>& memfuncs) {
  std::multimap<std::pair<Value, Value>, func::FuncOp, pair_value_comparator> candidate_producers;
  std::multimap<std::pair<Value, Value>, func::FuncOp, pair_value_comparator> candidate_consumers;

  // add funcs to respective maps if they match pattern
  for (auto func : memfuncs) {
    if (func.getBlocks().size() < 3) continue;
    // entry block branches to block 1
    ///TODO: check again?
    auto& mainblock = *std::next(func.getBlocks().begin());

    Value lock_begin = nullptr;
    int32_t lockval_begin;
    Value lock_end = nullptr;
    int32_t lockval_end;
    size_t opi = 0;
    for (auto& op : mainblock.getOperations()) {
      if (opi == 0) {
        auto lockop = dyn_cast<xilinx::AIE::UseLockOp>(op);
        if (!lockop || !lockop.getValue().has_value()) continue;
        lock_begin = lockop.getLock();
        lockval_begin = lockop.getValue().value();
      }
      // second to last op: release(lock_end)
      if (opi == mainblock.getOperations().size() - 2) {
        auto lockop = dyn_cast<xilinx::AIE::UseLockOp>(op);
        if (!lockop || !lockop.getValue().has_value()) continue;
        lock_end = lockop.getLock();
        lockval_end = lockop.getValue().value();
      }
      // last op: br to block
      if (opi == mainblock.getOperations().size() - 1) {
        auto brop = dyn_cast<cf::BranchOp>(op);
        if (!brop || brop.getDest() != &mainblock) continue;
      }
      opi++;
    }

    if (opi < 3) continue;
    if (!lock_begin || !lock_end) continue;
    if (lock_begin == lock_end || lockval_begin != lockval_end) continue;

    if (lockval_begin == 1) {
      candidate_consumers.insert({std::pair<Value, Value>{lock_begin, lock_end}, func});
    }
    else {
      candidate_producers.insert({std::pair<Value, Value>{lock_begin, lock_end}, func});
    }
  }
  if (candidate_producers.size() == 0) return;

  auto it = candidate_producers.begin();
  while (it != candidate_producers.end()) {
    auto [lock_begin, lock_end] = it->first;
    LLVM_DEBUG(
      llvm::errs() << "== PRODUCER ==\n  begin: " << lock_begin << "\n  end: " << lock_end << "\n";
    );

    auto range = candidate_producers.equal_range({lock_begin, lock_end});

    auto [locks, prodfunc] = *(range.first);
    // unique producer: only process these
    if (++range.first == range.second) {
      auto crange = candidate_consumers.equal_range({lock_end, lock_begin});
      SmallVector<func::FuncOp> consumers;
      for (auto i = crange.first; i != crange.second; ++i) {
        consumers.push_back(i->second);
      }
      if (!consumers.empty()) {
        auto res = processCountSemProducerConsumers(prodfunc, consumers, lock_begin, lock_end);
        if (res.succeeded()) {
          // remove consumers from list so they don't have async execute ops added
          for (auto c : consumers) {
            auto it = llvm::find(memfuncs, c);
            assert(it);
            memfuncs.erase(it);
          }
        }
      }
    }

    it = range.second;
  }
}

LogicalResult AIEConverter::processMemOp(Operation* op, Value tile) {
  assert(tile_id_map.count(tile));

  SmallVector<func::FuncOp> memfuncs;
  std::unordered_map<std::string, xilinx::AIE::DMAStartOp> functostart;

  // this assumes that dma_start ops are sane, i.e. that all of them will be visited
  // and that the chain eventually terminates in aie.end
  ///TODO: check for this/traverse them in chain order
  int dmaindex = 0;
  auto res = op->walk([&] (xilinx::AIE::DMAStartOp dmaop) {
    std::optional<func::FuncOp> funcres = getDMAStartOpFunc(dmaop, op, dmaindex++, tile);
    if (!funcres.has_value())
      return WalkResult::interrupt();
    memfuncs.push_back(funcres.value());
    functostart[funcres.value().getName().str()] = dmaop;
    return WalkResult::advance();
  });
  if (res.wasInterrupted()) return failure();

  if (option_counting_semaphore_to_spawn) {
    convertCountingSemaphorePatternToSpawn(memfuncs);
  }

  // convert dma_bd ops
  for (auto& [funcname, dmaop] : functostart) {
    auto funcop = lookupSymbol<func::FuncOp>(funcname);
    assert(funcop);

    auto dmares = funcop.walk([&] (xilinx::AIE::DMABDOp dmabdop) {
      if (processDMABD(dmabdop, tile, dmaop.getChannelIndex(), dmaop.getChannelDir()).failed())
        return WalkResult::interrupt();
      return WalkResult::advance();
    });
    if (dmares.wasInterrupted()) return failure();
  }

  for (auto func : memfuncs) {
    OpBuilder builder(func);
    builder.setInsertionPointAfter(func);

    // create async and function call
    builder.create<async::ExecuteOp>(func.getLoc(),
        SmallVector<Type>{}, SmallVector<Value>{}, SmallVector<Value>{},
        [&] (OpBuilder &b, Location loc, ValueRange v) {
      b.create<func::CallOp>(loc, func, SmallVector<Value>{});
      b.create<async::YieldOp>(loc, SmallVector<Value>{});
    });
  }

  if (res.wasInterrupted()) return failure();

  op->erase();
  return success();
}

LogicalResult AIEConverter::processMem() {

  auto res = module.walk([&] (xilinx::AIE::MemOp op) {
    return processMemOp(op.getOperation(), op.getTile()).succeeded() ? WalkResult::advance() : WalkResult::interrupt();
  });
  if (res.wasInterrupted()) return failure();

  res = module.walk([&] (xilinx::AIE::MemTileDMAOp op) {
    return processMemOp(op.getOperation(), op.getTile()).succeeded() ? WalkResult::advance() : WalkResult::interrupt();
  });
  if (res.wasInterrupted()) return failure();

  return success();
}

LogicalResult AIEConverter::processShimOp(xilinx::AIE::ShimDMAAllocationOp shimop) {

  SmallVector<xilinx::AIEX::NpuDmaMemcpyNdOp> dmaops;
  module.walk([&] (xilinx::AIEX::NpuDmaMemcpyNdOp op) {
    if (op.getMetadataAttr().getAttr() == shimop.getSymName())
      dmaops.push_back(op);
    return WalkResult::advance();
  });

  // get tile: shim tiles are always row 0
  Value tile = nullptr;
  module.walk([&] (xilinx::AIE::TileOp op) {
    if (op.getRow() == 0 && op.getCol() == shimop.getCol()) {
      tile = op.getResult();
      return WalkResult::interrupt();
    }
    return WalkResult::advance();
  });
  if (!tile) {
    shimop.emitError("can't find corresponding tile operation");
    return failure();
  }

  auto builder = OpBuilder(shimop);
  auto asyncExec = builder.create<async::ExecuteOp>(shimop.getLoc(),
      SmallVector<Type>{}, SmallVector<Value>{}, SmallVector<Value>{},
      [&] (OpBuilder &b, Location loc, ValueRange v) {
    b.create<async::YieldOp>(loc, SmallVector<Value>{});
  });
  builder.setInsertionPointToStart(asyncExec.getBody());

  // handle dma copies
  for (auto dmaop : dmaops) {
    // get dma memref.global name
    auto dmamemref = dmaop.getMemref();
    auto globalop = dyn_cast<memref::GetGlobalOp>(dmamemref.getDefiningOp());
    if (!globalop) {
      dmaop.emitError("only memref.globals supported");
      return failure();
    }
    auto globalname = globalop.getName();

    // get dma offsets/sizes/strides
    if (dmaop.getOffsets().size() > 0 || dmaop.getSizes().size() > 0 || dmaop.getStrides().size() > 0) {
      dmaop.emitError("dynamic offsets/sizes/strides not supported");
      return failure();
    }
    SmallVector<int64_t> dma_offsets = llvm::map_to_vector(dmaop.getStaticOffsets(), [](auto i) {return i;});
    SmallVector<int64_t> dma_sizes = llvm::map_to_vector(dmaop.getStaticSizes(), [](auto i) {return i;});
    SmallVector<int64_t> dma_strides = llvm::map_to_vector(dmaop.getStaticStrides(), [](auto i) {return i;});

    auto mr = builder.create<memref::GetGlobalOp>(dmaop.getLoc(), dmamemref.getType(), globalname).getResult();
    auto res = createDMABDCopy(dmaop, tile, shimop.getChannelIndex(), mr, shimop.getChannelDir(), builder,
        0, dma_offsets, dma_sizes, dma_strides);
    if (res.failed()) return failure();

    dmaop.erase();
  }

  return success();
}

// only support shim_dma_allocation via aiex.npu.dma_memcpy_nd
LogicalResult AIEConverter::processShim() {
  auto res = module.walk([&] (xilinx::AIE::ShimDMAAllocationOp op) {
    if (processShimOp(op).failed()) return WalkResult::interrupt();
    op.erase();
    return WalkResult::advance();
  });
  if (res.wasInterrupted()) return failure();

  module.walk([&] (xilinx::AIE::ShimDMAAllocationOp op) {
    op.erase();
    return WalkResult::advance();
  });
  return success();
}

LogicalResult AIEConverter::convertAIE() {

  // global semaphore array: put at beginning of module
  auto sembuilder = OpBuilder(module);
  sembuilder.restoreInsertionPoint(module_insertion_point);
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

  res = processShim();
  if (res.failed()) return failure();

  // remove tile ops
  module.walk([] (xilinx::AIE::TileOp op) {
    op.erase();
    return WalkResult::advance();
  });

  // remove aie.device -- assuming there's only one
  ///TODO: can I just move these somehow instead of copying...
  auto dbuilder = OpBuilder(module);
  dbuilder.restoreInsertionPoint(module_insertion_point);
  IRMapping map;
  if (device) {
    for (auto& op : device.getBody()->getOperations()) {
      if (isa<xilinx::AIE::EndOp>(op)) // these get added sometimes?
        continue;
      dbuilder.clone(op, map);
    }
    device.erase();
  }

  return success();
}


class VerifConvertAIE
    : public impl::VerifConvertAIEBase<VerifConvertAIE> {
public:
  using impl::VerifConvertAIEBase<VerifConvertAIE>::VerifConvertAIEBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();

    auto ac = AIEConverter(context, module, countingSemToSpawn);
    auto res = ac.convertAIE();

    if (res.failed()) return signalPassFailure();
  }
};


} //namespace mlir::verif
