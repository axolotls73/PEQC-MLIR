/*
 * ConvertChannel.cpp: This file is part of the PEQC-MLIR project.
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
#include "air/Dialect/AIR/AIRDialect.h"

#include "VerifPasses.h"
#include "VerifDialect.h"
#include "VerifUtil.h"

namespace mlir::verif {
#define GEN_PASS_DEF_VERIFCONVERTCHANNEL
#include "VerifPasses.h.inc"

#define DEBUG_TYPE "verif-channel"

namespace {

WalkResult processChannel(MLIRContext* context, xilinx::air::ChannelOp chop, ModuleOp module) {

  auto loc = chop.getLoc();
  auto builder = OpBuilder(chop.getOperation());

  // find memref element type: needs to be the same for all uses
  Type elt_type = IntegerType::get(context, 64); // default type if no uses
  auto uses = chop.getSymbolUses(module);
  if (uses.has_value())
    for (auto use : uses.value()) {
    ///FIXME: implement

    }

  chop.emitRemark();

  // get channel sizes
  ArrayAttr sizes_attr = chop.getSize();
  auto bsizes_attr = chop.getBroadcastShape();
  if (!bsizes_attr) bsizes_attr = chop.getSize();
  // only allow channel ops that have 2 sizes
  if (sizes_attr.size() != 2 || bsizes_attr.size() != 2) {
    chop.emitError("expected air.channel to have two sizes");
    return WalkResult::interrupt();
  }
  auto sizes = SmallVector<int64_t, 2>();
  auto bsizes = SmallVector<int64_t, 2>();
  for (auto [size, bsize] :
        llvm::zip_equal(sizes_attr.getAsRange<IntegerAttr>(), bsizes_attr.getAsRange<IntegerAttr>())) {
    ///FIXME: assert (bsize != size) -> (size == 1)
    sizes.push_back(size.getInt());
    bsizes.push_back(bsize.getInt());
  }

  // create memrefs to store channel buffers and semaphores
  auto dynamic_elt_type = MemRefType::get(SmallVector<int64_t>{ShapedType::kDynamic}, elt_type);
  auto bufarr_type = MemRefType::get(bsizes, dynamic_elt_type);
  auto semarr_type = MemRefType::get(bsizes, SemaphoreType::get(context));
  Value channel_bufarr = builder.create<memref::AllocOp>(loc, bufarr_type).getResult();
  Value channel_semarr = builder.create<memref::AllocOp>(loc, semarr_type).getResult();

  // create nested for loops to initialize semaphores (and channel buffers?)
  auto loop_iters = SmallVector<Value, 2>();
  Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
  Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();
  for (int64_t size : bsizes) {
    llvm::errs() << "bsize: " << size << "\n";
    Value sizeval = builder.create<arith::ConstantIndexOp>(loc, size).getResult();
    auto loop = builder.create<scf::ForOp>(loc, cst_0, sizeval, cst_1);
    loop_iters.push_back(loop.getInductionVar());
    builder.setInsertionPointToStart(loop.getBody());
  }
  auto all1s = llvm::all_of(bsizes, [](int64_t n) {return n == 1;});
  llvm::errs() << "all1s " << all1s << "\n";
  Value semarr_init_sem = builder.create<SemaphoreOp>(loc, cst_0).getResult();
  builder.create<memref::StoreOp>(loc, semarr_init_sem, channel_semarr, loop_iters);
  // doesn't work bc we don't know the memref size
  // Value bufarr_init_mr = builder.create<memref::AllocOp>(loc, dynamic_elt_type);
  // builder.create<memref::StoreOp>(loc, bufarr_init_mr, channel_bufarr, loop_iters);

  // reset builder position (TODO remove?)
  builder.setInsertionPoint(chop);
  chop.erase();

  if (!uses.has_value()) return WalkResult::advance();


  // handle channel put/get ops: look at all uses of channel
  for (auto use : uses.value()) {
    auto op = use.getUser();
    op->emitRemark();
    builder.setInsertionPoint(op);
    Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
    Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();

    // sub-functions for put and get

    // check put and get ops
    auto putgetWellFormed = [&]
          (Operation* op, ValueRange offsets, ValueRange sizes, ValueRange strides, ValueRange indices) {
      LLVM_DEBUG(
        llvm::errs() << "CHANNEL PUT/GET:\nindices size: " << indices.size() << "\noffsets size: " << offsets.size()
            << "\nsizes size: " << sizes.size() << "\nstrides size: " << strides.size() <<
            "\nall ones: " << llvm::all_of(bsizes, [](int64_t n) {return n == 1;}) << "\n";
      );
      if (sizes.size() != offsets.size() || offsets.size() != strides.size()) {
        op->emitError("expected air.channel.put/get to have equal numbers of offsets, sizes, and strides");
        return false;
      }
      // bsizes not all 1s -> same # of indices and bsizes
      if (!(llvm::all_of(bsizes, [](int64_t n) {return n == 1;}) || indices.size() == bsizes.size())) {
        op->emitError("expected air.channel.put/get to have indices equal to the number of channel sizes");
        return false;
      }
      return true;
    };

    // get memref to copy from, subview if necessary
    auto getMemrefOrSubview = [&]
          (Value og_memref, ValueRange offsets, ValueRange sizes, ValueRange strides) -> Value {
      if (offsets.size() > 0)
        return builder.create<memref::SubViewOp>(loc, og_memref, offsets, sizes, strides).getResult();
      return og_memref;
    };

    auto getChannelIndices = [&] (ValueRange op_indices) -> SmallVector<Value>* {
      auto default_indices = SmallVector<Value>{cst_0, cst_0};
      if (op_indices.size() == 0) op_indices = default_indices;
      auto channel_indices = new SmallVector<Value>();
      for (auto [size, bsize, index] : llvm::zip_equal(sizes, bsizes, op_indices)) {
        if (size == bsize) {
          channel_indices->push_back(index);
          continue;
        }
        assert(0);
        ///FIXME: implement loop creation for broadcast
      }
      return channel_indices;
    };


    // handle put and get

    if (auto putop = mlir::dyn_cast<xilinx::air::ChannelPutOp>(op)) {
      if (!putgetWellFormed(putop.getOperation(), putop.getOffsets(), putop.getSizes(), putop.getStrides(), putop.getIndices()))
        return WalkResult::interrupt();

      Value srcmemref = getMemrefOrSubview(putop.getMemref(), putop.getOffsets(), putop.getSizes(), putop.getStrides());

      auto indices = getChannelIndices(putop.getIndices());
      ValueRange channel_indices = *indices;

      auto loc = putop.getLoc();
      // get and wait on semaphore
      Value putsem = builder.create<memref::LoadOp>(loc, channel_semarr, channel_indices).getResult();
      builder.create<SemaphoreWaitOp>(loc, putsem, cst_0);
      // get and copy to buffer
      Value putbuffer = builder.create<memref::LoadOp>(loc, channel_bufarr, channel_indices).getResult();
      builder.create<memref::CopyOp>(loc, srcmemref, putbuffer);
      // set semaphore: ready to read
      builder.create<SemaphoreSetOp>(loc, putsem, cst_1);
    }

    else if (auto getop = mlir::dyn_cast<xilinx::air::ChannelGetOp>(op)) {
      if (!putgetWellFormed(getop.getOperation(), getop.getOffsets(), getop.getSizes(), getop.getStrides(), getop.getIndices()))
        return WalkResult::interrupt();

      Value dstmemref = getMemrefOrSubview(getop.getMemref(), getop.getOffsets(), getop.getSizes(), getop.getStrides());

      auto indices = getChannelIndices(getop.getIndices());
      ValueRange channel_indices = *indices;

      auto loc = getop.getLoc();
      // get and wait on semaphore
      Value putsem = builder.create<memref::LoadOp>(loc, channel_semarr, channel_indices).getResult();
      builder.create<SemaphoreWaitOp>(loc, putsem, cst_1);
      // get and copy from buffer
      Value putbuffer = builder.create<memref::LoadOp>(loc, channel_bufarr, channel_indices).getResult();
      builder.create<memref::CopyOp>(loc, putbuffer, dstmemref);
      // set semaphore: ready to write
      builder.create<SemaphoreSetOp>(loc, putsem, cst_0);
    }

    ///FIXME: pass channel memrefs as args to parent isolatedfromabove ops

    op->erase();
  }

  return WalkResult::advance();
}


class VerifConvertChannel
    : public impl::VerifConvertChannelBase<VerifConvertChannel> {
public:
  using impl::VerifConvertChannelBase<VerifConvertChannel>::VerifConvertChannelBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();

    // process channels
    WalkResult res = module.walk([&] (xilinx::air::ChannelOp chop) {
      return processChannel(context, chop, module);
    });

    if (res.wasInterrupted())
      return signalPassFailure();

    ///FIXME: check for channel put and get, fail if present (not checked by air verifier)

    // return signalPassFailure();
  }
};


} //namespace
} //namespace mlir::verif
