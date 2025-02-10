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

#include "aie/Dialect/AIE/IR/AIETargetModel.h"

#include "VerifAirPasses.h"
#include "VerifDialect.h"
#include "VerifUtil.h"

namespace mlir::verif::air {
#define GEN_PASS_DEF_VERIFCONVERTAIE
#include "VerifAirPasses.h.inc"

#define DEBUG_TYPE "verif-aie"

#define DEFAULT_NUM_DMA_CHANNELS 8
///TODO: figure out!!!

namespace {

class AIEConverter {

private:

  MLIRContext* context;
  ModuleOp module;

  std::unordered_map<Value, int64_t> tile_id_map;
  std::unordered_map<Value, std::string> tile_dma_buffer;
  std::unordered_map<Value, MemRefType> tile_dma_type;

  uint32_t current_tile_id = 0;
  uint32_t current_buffer_id = 0;
  uint32_t current_semaphore_id = 0;
  uint32_t mem_id = 0;

public:

  AIEConverter(mlir::MLIRContext* context, ModuleOp module) : context(context), module(module) {};

  // assign each tile value a unique id, remove tile ops
  LogicalResult processTiles() {
    auto res = module.walk([&] (xilinx::AIE::TileOp op) {
      auto tile_id = current_tile_id++;
      tile_id_map[op.getResult()] = tile_id;

      // infer type of dma buffer
      auto memop = op.getMemOp();
      Type elt_type = nullptr;
      if (memop) {
        auto walkres = memop.walk([&] (xilinx::AIE::DMABDOp op) {
          auto buffertype = op.getBuffer().getType();
          if (!elt_type) {
            elt_type = buffertype.getElementType();
            return WalkResult::advance();
          }
          if (elt_type != buffertype) {
            memop.emitError("expected all aie.mem ops to only use buffers of a single type");
            return WalkResult::interrupt();
          }
          return WalkResult::advance();
        });
        if (walkres.wasInterrupted()) return WalkResult::interrupt();
      }

      // default type if not inferred
      if (!elt_type) elt_type = IndexType::get(context);

      // create dma buffer if used by dma_bd ops
      auto builder = OpBuilder(op);
      auto loc = op.getLoc();
      auto dynamic_elt_type =
          MemRefType::get(SmallVector<int64_t>{ShapedType::kDynamic}, elt_type);
      auto mrtype = MemRefType::get(SmallVector<int64_t>{DEFAULT_NUM_DMA_CHANNELS}, dynamic_elt_type);
      std::string dma_name = "tile_" + std::to_string(tile_id) + "_dma";
      builder.create<memref::GlobalOp>(loc, StringAttr::get(context, dma_name),
          StringAttr::get(context, "private"),TypeAttr::get(mrtype),
          Attribute{}, UnitAttr{}, IntegerAttr{});
      tile_dma_buffer[op.getResult()] = dma_name;
      tile_dma_type[op.getResult()] = mrtype;

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

      // get dma globals
      Value srctile = op.getSource();
      Value dsttile = op.getDest();
      assert(tile_dma_buffer.count(srctile) && tile_dma_type.count(srctile));
      assert(tile_dma_buffer.count(dsttile) && tile_dma_type.count(dsttile));
      if (tile_dma_type[srctile] != tile_dma_type[dsttile]) {
        op.emitError("aie.flow: source and dest DMA buffers don't have the same type");
        return WalkResult::interrupt();
      }
      MemRefType mrelt_type = dyn_cast<MemRefType>(tile_dma_type[srctile].getElementType());
      assert(mrelt_type); // tile_dma_types should be memrefs of memrefs
      Type elt_type = mrelt_type.getElementType();

      // allocate and cast memref for flow
      ///TODO: type??? both size and element: will get casted anyway but for completeness
      auto mrtype = MemRefType::get(SmallVector<int64_t>{0}, elt_type);
      Value flowarr = builder.create<memref::AllocOp>(loc, mrtype);
      Value cflowarr = builder.create<memref::CastOp>
          (loc, MemRefType::get(SmallVector<int64_t>{ShapedType::kDynamic}, elt_type), flowarr).getResult();

      // store flowarr in dma globals
      for (auto [tile, channel] : llvm::zip_equal(
            SmallVector<Value>{srctile, dsttile}, SmallVector<int32_t>{op.getSourceChannel(), op.getDestChannel()})) {
        auto buf = builder.create<memref::GetGlobalOp>(loc,
            tile_dma_type[tile], tile_dma_buffer[tile]).getResult();
        Value index = builder.create<arith::ConstantIndexOp>(loc, channel);
        builder.create<memref::StoreOp>(loc, cflowarr, buf, SmallVector<Value>{index});
      }

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

    if (!dyn_cast<ModuleOp>(op.getOperation()->getParentOp())) {
      op.emitError("expected aie.lock to have module parent");
      return failure();
    }

    auto builder = OpBuilder(op);

    // create and initialize semaphore
    auto loc = op.getLoc();
    Value sem = builder.create<SemaphoreOp>(loc);

    auto init = op.getInit();
    if (init.has_value()) {
      op.emitError("lockop init not supported");
      return failure();
      ///FIXME: implement this
      // Value val = builder.create<arith::ConstantIndexOp>(loc, init.value());
      // builder.create<SemaphoreSetOp>(loc, sem, val);
    }

    // create memref.global, store semaphore
    auto mrtype = MemRefType::get(SmallVector<int64_t>{1}, SemaphoreType::get(context));
    std::string semarr_name = "semaphore_arr_" + std::to_string(current_semaphore_id++);
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
      std::string bufname = "buffer_" + bufferid;
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

  LogicalResult processDMABD(xilinx::AIE::DMABDOp op, Value tileval, Value channel, Value inout) {
    auto builder = OpBuilder(op);
    auto loc = op.getLoc();

    // get dma buffer for channel
    assert(tileval);
    assert(tile_dma_buffer.count(tileval));
    assert(tile_dma_type.count(tileval));
    Value bufferarr = builder.create<memref::GetGlobalOp>(loc, tile_dma_type[tileval], tile_dma_buffer[tileval]);
    Value buffer = builder.create<memref::LoadOp>(loc, bufferarr, SmallVector<Value>{channel});
    Value casted_buffer = builder.create<memref::CastOp>(loc, op.getBuffer().getType(), buffer);

    Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0);
    Value cmpval = builder.create<arith::CmpIOp>(loc, arith::CmpIPredicate::eq, cst_0, inout).getResult();
    builder.create<scf::IfOp>(loc, cmpval,
      // then block: handle copy out
      [&] (OpBuilder b, Location loc) {
        b.create<memref::CopyOp>(loc, op.getBuffer(), casted_buffer);
        b.create<scf::YieldOp>(loc, SmallVector<Value>{});
      },
      // else block: handle copy in
      [&] (OpBuilder b, Location loc) {
        b.create<memref::CopyOp>(loc, casted_buffer, op.getBuffer());
        b.create<scf::YieldOp>(loc, SmallVector<Value>{});
      });

    op.erase();
    return success();
  }

  LogicalResult processDMA(xilinx::AIE::MemOp mem_op, Block* newblock) {
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

    // create a list of blocks to copy to each new function
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
    auto firststartop = dyn_cast<xilinx::AIE::DMAStartOp>(firstblockops.front());
    assert(firststartop);

    // remove first block from list, since it doesn't need to be copied
    blocks.erase(&blocks.front());

    auto loc = mem_op.getLoc();

    // each block gets its own new function of type (channel : index, channeldir : index) -> ()
    std::unordered_map<Block*, func::FuncOp> block_to_func;

    int block_id = 0;
    assert(tile_id_map.count(mem_op.getTile()));
    int64_t tile_id = tile_id_map[mem_op.getTile()];
    mem_op.walk([&] (xilinx::AIE::DMAStartOp op) {
      auto builder = OpBuilder(mem_op);

      for (auto block : {op.getDest(), op.getChain()}) {

        //get or build func for block
        func::FuncOp func = nullptr;
        auto mapres = block_to_func.find(block);
        if (mapres != block_to_func.end()) {
          func = mapres->second;
        }
        else {
          auto funcname = new std::string("tile_mem_" + std::to_string(tile_id) + "_" + std::to_string(block_id++));
          // ^ leaked
          auto functype = FunctionType::get(context,
              SmallVector<Type>{IndexType::get(context), IndexType::get(context)}, SmallVector<Type>{});
          builder.setInsertionPoint(mem_op);
          auto funcop = builder.create<func::FuncOp>(loc, StringRef(funcname->c_str()), functype);
          block_to_func[block] = funcop;
          func = funcop;
        }

        // add calls to funcs
        auto loc = op.getLoc();
        builder.setInsertionPoint(op);
        // first start op is the entry point: put inside new async
        if (op == firststartop) {
          builder.setInsertionPointToStart(newblock);
        }

        if (block == op.getChain()) {
          auto asyncExec = builder.create<async::ExecuteOp>(loc,
              SmallVector<Type>{}, SmallVector<Value>{}, SmallVector<Value>{},
            [&](OpBuilder &b, Location loc, ValueRange v) {
              b.create<async::YieldOp>(loc, SmallVector<Value>{});
            });
          builder.setInsertionPointToStart(asyncExec.getBody());
        }
        // channeldir is 1 if copy in, 0 if copy out
        int channeldir = op.getChannelDir() == xilinx::AIE::DMAChannelDir::S2MM;
        Value channelval = builder.create<arith::ConstantIndexOp>(loc, op.getChannelIndex()).getResult();
        Value dirval = builder.create<arith::ConstantIndexOp>(loc, channeldir).getResult();
        builder.create<func::CallOp>(loc, func, SmallVector<Value>{channelval, dirval});
      }

      op.erase();
      return WalkResult::advance();
    });

    for (auto [dstblock, funcop] : block_to_func) {
      Block* entryblock = funcop.addEntryBlock();
      auto builder = OpBuilder(funcop);
      auto loc = funcop.getLoc();

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

      // add branch to block
      builder.setInsertionPointToStart(entryblock);
      builder.create<cf::BranchOp>(loc, map.lookupOrNull(dstblock));

      // add return to the last block in funcop
      Block* endblock = funcop.addBlock();
      builder.setInsertionPointToStart(endblock);
      builder.create<func::ReturnOp>(loc);

      // newly replaced dma_start blocks have no terminators, replace
      // with a branch to endblock
      for (auto& b : funcop.getBlocks()) {
        assert(b.getOperations().size() > 0);
        auto lastop = b.getOperations().end();
        lastop--;
        if (lastop->hasTrait<OpTrait::IsTerminator>()) continue;
        builder.setInsertionPointToEnd(&b);
        builder.create<cf::BranchOp>(funcop.getLoc(), endblock);
      }

      // handle dma_bd ops
      auto walkres = funcop.walk([&] (xilinx::AIE::DMABDOp op) {
        assert(funcop.getArguments().size() == 2);
        Value channel = funcop.getArgument(0);
        Value inout = funcop.getArgument(1);
        if (processDMABD(op, mem_op.getTile(), channel, inout).failed()) return WalkResult::interrupt();
        else return WalkResult::advance();
      });
      if (walkres.wasInterrupted()) return failure();

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
    }

    return success();
  }

  LogicalResult processMem() {
    auto res = module.walk([&] (xilinx::AIE::MemOp op) {

      auto builder = OpBuilder(op);
      builder.setInsertionPointAfter(op);
      auto asyncExec = builder.create<async::ExecuteOp>(op.getLoc(),
          SmallVector<Type>{}, SmallVector<Value>{}, SmallVector<Value>{},
          [&] (OpBuilder &b, Location loc, ValueRange v) {
        b.create<async::YieldOp>(op.getLoc(), SmallVector<Value>{});
      });

      auto res = processDMA(op, asyncExec.getBody());
      LLVM_DEBUG(
        module.emitRemark("module after dmaStartToAsync");
      );
      if (res.failed()) return WalkResult::interrupt();

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

    res = ac.processFlows();
    if (res.failed()) return signalPassFailure();

    res = ac.processLocks();
    if (res.failed()) return signalPassFailure();

    res = ac.processCores();
    if (res.failed()) return signalPassFailure();

    res = ac.processBuffers();
    if (res.failed()) return signalPassFailure();

    // remove tile ops
    module.walk([] (xilinx::AIE::TileOp op) {
      op.erase();
      return WalkResult::advance();
    });

  }
};


} //namespace
} //namespace mlir::verif
