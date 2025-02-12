/*
 * ConvertAirChannel.cpp: This file is part of the PEQC-MLIR project.
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

#include "VerifAirPasses.h"
#include "VerifDialect.h"
#include "VerifUtil.h"

namespace mlir::verif::air {
#define GEN_PASS_DEF_VERIFCONVERTCHANNEL
#include "VerifAirPasses.h.inc"

#define DEBUG_TYPE "verif-channel"

namespace {

///FIXME: put this somewhere it can be reused
void addAirTokenConversion(TypeConverter& tc, MLIRContext* context) {
  tc.addConversion([&](Type type) -> Type {
    // convert air::AsyncTokenType to async::TokenType
    if (auto t = mlir::dyn_cast<xilinx::air::AsyncTokenType>(type))
      return async::TokenType::get(context);
    return type;
  });
  auto addUnrealizedCast = [](OpBuilder &builder, Type type,
                              ValueRange inputs, Location loc) {
    auto cast = builder.create<UnrealizedConversionCastOp>(loc, type, inputs);
    return cast.getResult(0);
  };
  tc.addSourceMaterialization(addUnrealizedCast);
  tc.addTargetMaterialization(addUnrealizedCast);
}

// creates new async op, sets builder's insertion point to async body
///TODO: can I use more of the existing conversion stuff to do this?
void handleAsync(MLIRContext* context, Location loc,
      OpBuilder& builder, Value res, OperandRange deps) {
  auto dep = deps.front();
  TypeConverter converter;
  addAirTokenConversion(converter, context);

  SmallVector<Value> newdeps = llvm::map_to_vector(deps, [&](Value v) {
    return converter.materializeTargetConversion(builder, loc, async::TokenType::get(context), v);
  });

  auto asyncExec = builder.create<async::ExecuteOp>(
      loc, SmallVector<Type>{}, newdeps, SmallVector<Value>{},
      [&](OpBuilder &b, Location loc, ValueRange v) {
    b.create<async::YieldOp>(loc, SmallVector<Value>{});
  });

  Value newres = converter.materializeSourceConversion
      (builder, loc, xilinx::air::AsyncTokenType::get(context), asyncExec.getResult(0));
  res.replaceAllUsesWith(newres);

  builder.setInsertionPointToStart(asyncExec.getBody());
}

WalkResult processChannel(MLIRContext* context, xilinx::air::ChannelOp chop, ModuleOp module) {

  auto loc = chop.getLoc();
  auto builder = OpBuilder(chop.getOperation());

  // find memref element type: needs to be the same for all uses
  Type elt_type = IntegerType::get(context, 64); // default type if no uses
  auto uses = chop.getSymbolUses(module);
  if (uses.has_value()) {
    Type* current_type = nullptr;
    for (auto use : uses.value()) {
      auto useop = use.getUser();
      MemRefType usemr;
      if (auto putop = mlir::dyn_cast<xilinx::air::ChannelPutOp>(useop)) {
        usemr = mlir::dyn_cast<MemRefType>(putop.getMemref().getType());
      }
      else if (auto getop = mlir::dyn_cast<xilinx::air::ChannelGetOp>(useop)) {
        usemr = mlir::dyn_cast<MemRefType>(getop.getMemref().getType());
      }
      Type usetype = usemr.getElementType();
      if (!current_type) {
        current_type = &usetype;
        elt_type = usetype;
      }
      if (usetype != *current_type) {
        chop.emitError("expected all uses to have the same memref element type");
        return WalkResult::interrupt();
      }
    }
  }

  LLVM_DEBUG(
    chop.emitRemark();
  );

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
  auto bufarr_name = chop.getSymName().str() + "_buffer";
  auto semarr_name = chop.getSymName().str() + "_sem";
  builder.create<memref::GlobalOp>(loc, StringAttr::get(context, bufarr_name),
      StringAttr::get(context, "private"),TypeAttr::get(bufarr_type),
      Attribute{}, UnitAttr{}, IntegerAttr{});
  builder.create<memref::GlobalOp>(loc, StringAttr::get(context, semarr_name),
      StringAttr::get(context, "private"), TypeAttr::get(semarr_type),
      Attribute{}, UnitAttr{}, IntegerAttr{});

  // create nested for loops to initialize semaphores (and channel buffers?)
  auto loop_iters = SmallVector<Value, 2>();
  Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
  Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();
  Value channel_semarr = builder.create<memref::GetGlobalOp>(loc, semarr_type, semarr_name);
  for (int64_t size : bsizes) {
    Value sizeval = builder.create<arith::ConstantIndexOp>(loc, size).getResult();
    auto loop = builder.create<scf::ForOp>(loc, cst_0, sizeval, cst_1);
    loop_iters.push_back(loop.getInductionVar());
    builder.setInsertionPointToStart(loop.getBody());
  }
  auto all1s = llvm::all_of(bsizes, [](int64_t n) {return n == 1;});
  Value semarr_init_sem = builder.create<SemaphoreOp>(loc).getResult();
  builder.create<SemaphoreSetOp>(loc, semarr_init_sem, cst_0);
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
    auto loc = op->getLoc();
    builder.setInsertionPoint(op);
    Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
    Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();

    Value bufarr = builder.create<memref::GetGlobalOp>(loc, bufarr_type, bufarr_name);
    Value semarr = builder.create<memref::GetGlobalOp>(loc, semarr_type, semarr_name);

    // sub-functions for put and get

    // check put and get ops
    auto putgetWellFormed = [&]
          (Operation* op, bool isput, ValueRange opoffsets, ValueRange opsizes, ValueRange opstrides, ValueRange opindices) {
      LLVM_DEBUG(
        llvm::errs() << "CHANNEL PUT/GET:\nindices size: " << opindices.size() << "\noffsets size: " << opoffsets.size()
            << "\nsizes size: " << opsizes.size() << "\nstrides size: " << opstrides.size() <<
            "\nall ones: " << llvm::all_of(bsizes, [](int64_t n) {return n == 1;}) << "\n";
      );
      if (opsizes.size() != opoffsets.size() || opoffsets.size() != opstrides.size()) {
        op->emitError("expected air.channel.put/get to have equal numbers of offsets, sizes, and strides");
        return false;
      }
      return true;
    };

    // get memref to copy from, subview if necessary
    auto getMemrefOrSubview = [&]
          (Value og_memref, ValueRange offsets, ValueRange sizes, ValueRange strides) -> Value {

    ///FIXME: factor out this and the one in convertmem,
    /// actually verify that strides are 1

      SmallVector<Value> strides1;
      for (int i = 0; i < strides.size(); i++) {
        strides1.push_back(cst_1);
      }

      auto getFoldRange = []
            (ValueRange range) {
        SmallVector<OpFoldResult> newrange;
        for (Value val : range) {
          newrange.push_back(getAsOpFoldResult(val));
        }
        return newrange;
      };

      if (offsets.size() > 0) {
        return builder.create<memref::SubViewOp>(loc, og_memref,
            getFoldRange(offsets), getFoldRange(sizes), getFoldRange(strides1)).getResult();
      }

      //   return builder.create<memref::SubViewOp>(loc, og_memref, offsets, sizes, strides).getResult();
      return og_memref;
    };

    // gets the indices to load channel buffers from - if broadcast is true, this also
    // sets buffer's insertion point to inside a for loop if necessary
    auto getChannelIndices = [&]
          (ValueRange op_indices, bool broadcast = false) -> SmallVector<Value>* {
      auto default_indices = SmallVector<Value>{cst_0, cst_0};
      if (op_indices.size() == 0) op_indices = default_indices;
      auto channel_indices = new SmallVector<Value>();
      for (auto [size, bsize, index] : llvm::zip_equal(sizes, bsizes, op_indices)) {
        if (size == bsize || !broadcast) {
          channel_indices->push_back(index);
          continue;
        }
        Value bsize_val = builder.create<arith::ConstantIndexOp>(loc, bsize);
        auto loop = builder.create<scf::ForOp>(loc, cst_0, bsize_val, cst_1);
        builder.setInsertionPointToStart(loop.getBody());
        channel_indices->push_back(loop.getInductionVar());
      }
      return channel_indices;
    };


    // handle put and get

    if (auto putop = mlir::dyn_cast<xilinx::air::ChannelPutOp>(op)) {
      if (!putgetWellFormed(putop.getOperation(), true, putop.getOffsets(), putop.getSizes(), putop.getStrides(), putop.getIndices()))
        return WalkResult::interrupt();
      // for put: sizes not all 1s -> same # of indices and sizes
      if (!(llvm::all_of(sizes, [](int64_t n) {return n == 1;}) || putop.getIndices().size() == sizes.size())) {
        op->emitError("expected air.channel.put to have indices equal to the number of channel sizes");
        return WalkResult::interrupt();
      }

      if (putop.getResults().size() > 0) {
        handleAsync(context, putop.getLoc(), builder, putop.getAsyncToken(), putop.getAsyncDependencies());
      }

      Value srcmemref = getMemrefOrSubview(putop.getMemref(), putop.getOffsets(), putop.getSizes(), putop.getStrides());

      ///FIXME: these are leaked
      auto indices = getChannelIndices(putop.getIndices(), true);
      ValueRange channel_indices = *indices;

      // get and wait on semaphore
      Value putsem = builder.create<memref::LoadOp>(loc, semarr, channel_indices).getResult();
      builder.create<SemaphoreWaitOp>(loc, putsem, cst_0);
      // get and copy to buffer
      Value putbuffer = builder.create<memref::LoadOp>(loc, bufarr, channel_indices).getResult();
      ///FIXME: change these to memref casts or infer type
      putbuffer = builder.create<UnrealizedConversionCastOp>(loc,
          srcmemref.getType(), putbuffer).getResult(0);
      builder.create<memref::CopyOp>(loc, srcmemref, putbuffer);
      // set semaphore: ready to read
      builder.create<SemaphoreSetOp>(loc, putsem, cst_1);
    }

    else if (auto getop = mlir::dyn_cast<xilinx::air::ChannelGetOp>(op)) {
      if (!putgetWellFormed(getop.getOperation(), false, getop.getOffsets(), getop.getSizes(), getop.getStrides(), getop.getIndices()))
        return WalkResult::interrupt();
      // // for get: bsizes not all 1s -> same # of indices and bsizes
      if (!(llvm::all_of(bsizes, [](int64_t n) {return n == 1;}) || getop.getIndices().size() == bsizes.size())) {
        op->emitError("expected air.channel.get to have indices equal to the number of channel broadcast sizes");
        return WalkResult::interrupt();
      }

      if (getop.getResults().size() > 0) {
        handleAsync(context, getop.getLoc(), builder, getop.getAsyncToken(), getop.getAsyncDependencies());
      }

      Value dstmemref = getMemrefOrSubview(getop.getMemref(), getop.getOffsets(), getop.getSizes(), getop.getStrides());

      ///FIXME: these are leaked
      auto indices = getChannelIndices(getop.getIndices());
      ValueRange channel_indices = *indices;

      // get and wait on semaphore
      Value getsem = builder.create<memref::LoadOp>(loc, semarr, channel_indices).getResult();
      builder.create<SemaphoreWaitOp>(loc, getsem, cst_1);
      // get and copy from buffer
      Value getbuffer = builder.create<memref::LoadOp>(loc, bufarr, channel_indices).getResult();
      ///FIXME: change these to memref casts or infer type
      getbuffer = builder.create<UnrealizedConversionCastOp>(loc,
          dstmemref.getType(), getbuffer).getResult(0);
      builder.create<memref::CopyOp>(loc, getbuffer, dstmemref);
      // set semaphore: ready to write
      builder.create<SemaphoreSetOp>(loc, getsem, cst_0);
    }

    op->erase();
    LLVM_DEBUG(
      module.emitRemark();
    );
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
  }
};


} //namespace
} //namespace mlir::verif
