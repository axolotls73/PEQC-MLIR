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


class ChannelConverter {

public:

ChannelConverter(MLIRContext* context, ModuleOp module, xilinx::air::ChannelOp chop) :
    context(context), module(module), chop(chop) {}

private:

MLIRContext* context;
ModuleOp module;

xilinx::air::ChannelOp chop;

Type elt_type = nullptr;
std::string bufarr_name;
MemRefType bufarr_type = nullptr;
std::string semarr_name;
MemRefType semarr_type = nullptr;


std::optional<Type> getChannelEltType() {
  Type elt_type = IntegerType::get(context, 64); // default type if no uses
  auto uses = chop.getSymbolUses(module);
  if (!uses.has_value()) return elt_type;
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
      return {};
    }
  }
  return elt_type;
}


void buildChannelInit(SmallVector<int64_t>& bsizes) {
  auto loc = chop.getLoc();
  auto builder = OpBuilder(chop.getOperation());

  // create memrefs to store channel buffers and semaphores
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
  Value semarr_init_sem = builder.create<SemaphoreOp>(loc).getResult();
  builder.create<SemaphoreSetOp>(loc, semarr_init_sem, cst_0);
  builder.create<memref::StoreOp>(loc, semarr_init_sem, channel_semarr, loop_iters);
  ///TODO: doesn't work bc we don't know the memref size
  // Value bufarr_init_mr = builder.create<memref::AllocOp>(loc, dynamic_elt_type);
  // builder.create<memref::StoreOp>(loc, bufarr_init_mr, channel_bufarr, loop_iters);
}


void buildCopy(Operation* putgetop, bool isput, TypedValue<MemRefType> mref,
      const ValueRange indices, const ValueRange opoffsets, const ValueRange opsizes, const ValueRange opstrides) {
  auto loc = putgetop->getLoc();
  auto builder = OpBuilder(putgetop);
  auto mrtype = mref.getType();

  Value cst_0 = builder.create<arith::ConstantIndexOp>(loc, 0).getResult();
  Value cst_1 = builder.create<arith::ConstantIndexOp>(loc, 1).getResult();

  // get canonical offsets: 0 x memref rank if not present
  ValueRange offsets = opoffsets;
  SmallVector<Value> offvec;
  if (offsets.size() == 0) {
    for (size_t i = 0; i < mrtype.getShape().size(); i++) {
      offvec.push_back(cst_0);
    }
    offsets = offvec;
  }

  // get canonical sizes: memref sizes if not present
  ValueRange sizes = opsizes;
  SmallVector<Value> sizevec;
  if (sizes.size() == 0) {
    for (auto size : mrtype.getShape()) {
      Value sizeval = builder.create<arith::ConstantIndexOp>(loc, size).getResult();
      sizevec.push_back(sizeval);
    }
    sizes = sizevec;
  }

  // get canonical strides: if not present, use memref sizes
  ValueRange strides = opstrides;
  SmallVector<Value> stridevec;
  if (strides.size() == 0) {
    int64_t prev = 1;
    for (auto size : llvm::reverse(mrtype.getShape())) {
      llvm::errs() << "STRIDE!! " << size << "\n";
      Value prevval = builder.create<arith::ConstantIndexOp>(loc, prev).getResult();
      stridevec.push_back(prevval);
      prev = size;
    }
    strides = stridevec;
  }

  LLVM_DEBUG(
    llvm::errs() << "PROCESS PUT/GET\n";
    llvm::errs() << "  offsets: ";
    for (auto i : offsets) {
      llvm::errs() << i << " ";
    }
    llvm::errs() << "\n";
    llvm::errs() << "  sizes: ";
    for (auto i : sizes) {
      llvm::errs() << i << " ";
    }
    llvm::errs() << "\n";
    llvm::errs() << "  strides: ";
    for (auto i : strides) {
      llvm::errs() << i << " ";
    }
    llvm::errs() << "\n";
  );

  Value bufarr = builder.create<memref::GetGlobalOp>(loc, bufarr_type, bufarr_name);
  Value semarr = builder.create<memref::GetGlobalOp>(loc, semarr_type, semarr_name);

  // generate for loops, save list of iterators, set builder to body

  // create affine map w/ iterators to linearize index, zip offsets and strides

  // delinearize index

  // create inner loop if applicable (parallel for?) that broadcasts, set builder to body

  // wait on semaphore

  // handle put: copy to channel

  // handle get: copy from channel

  // set semaphore
}


LogicalResult processUse(SymbolTable::SymbolUse use, SmallVector<int64_t>& sizes, SmallVector<int64_t>& bsizes) {
  auto op = use.getUser();
  auto builder = OpBuilder(op);

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

  // handle put and get

  if (auto putop = mlir::dyn_cast<xilinx::air::ChannelPutOp>(op)) {
    if (!putgetWellFormed(putop.getOperation(), true, putop.getOffsets(), putop.getSizes(), putop.getStrides(), putop.getIndices()))
      return failure();
    // for put: sizes not all 1s -> same # of indices and sizes
    if (!(llvm::all_of(sizes, [](int64_t n) {return n == 1;}) || putop.getIndices().size() == sizes.size())) {
      op->emitError("expected air.channel.put to have indices equal to the number of channel sizes");
      return failure();
    }

    if (putop.getResults().size() > 0) {
      handleAsync(context, putop.getLoc(), builder, putop.getAsyncToken(), putop.getAsyncDependencies());
    }

    buildCopy(putop.getOperation(), true, putop.getSrc(),
        putop.getIndices(), putop.getOffsets(), putop.getSizes(), putop.getStrides());
  }

  else if (auto getop = mlir::dyn_cast<xilinx::air::ChannelGetOp>(op)) {
    if (!putgetWellFormed(getop.getOperation(), false, getop.getOffsets(), getop.getSizes(), getop.getStrides(), getop.getIndices()))
      return failure();
    // // for get: bsizes not all 1s -> same # of indices and bsizes
    if (!(llvm::all_of(bsizes, [](int64_t n) {return n == 1;}) || getop.getIndices().size() == bsizes.size())) {
      op->emitError("expected air.channel.get to have indices equal to the number of channel broadcast sizes");
      return failure();
    }

    if (getop.getResults().size() > 0) {
      handleAsync(context, getop.getLoc(), builder, getop.getAsyncToken(), getop.getAsyncDependencies());
    }

    buildCopy(getop.getOperation(), true, getop.getDst(),
        getop.getIndices(), getop.getOffsets(), getop.getSizes(), getop.getStrides());
  }

  op->erase();
  LLVM_DEBUG(
    module.emitRemark();
  );
  return success();
}


public:

LogicalResult processChannel() {
  LLVM_DEBUG(
    chop.emitRemark();
  );

  // find memref element type: needs to be the same for all uses
  auto elt_type_opt = getChannelEltType();
  if (!elt_type_opt.has_value()) return failure();
  elt_type = elt_type_opt.value();

  // get channel sizes
  ArrayAttr sizes_attr = chop.getSize();
  auto bsizes_attr = chop.getBroadcastShape();
  if (!bsizes_attr) bsizes_attr = chop.getSize();
  // only allow channel ops that have 2 sizes
  if (sizes_attr.size() != 2 || bsizes_attr.size() != 2) {
    chop.emitError("expected air.channel to have two sizes");
    return failure();
  }
  auto sizes = SmallVector<int64_t>();
  auto bsizes = SmallVector<int64_t>();
  for (auto [size, bsize] :
        llvm::zip_equal(sizes_attr.getAsRange<IntegerAttr>(), bsizes_attr.getAsRange<IntegerAttr>())) {
    ///FIXME: assert (bsize != size) -> (size == 1)
    sizes.push_back(size.getInt());
    bsizes.push_back(bsize.getInt());
  }

  auto dynamic_elt_type = MemRefType::get(SmallVector<int64_t>{ShapedType::kDynamic}, elt_type);
  bufarr_type = MemRefType::get(bsizes, dynamic_elt_type);
  semarr_type = MemRefType::get(bsizes, SemaphoreType::get(context));
  bufarr_name = chop.getSymName().str() + "_buffer";
  semarr_name = chop.getSymName().str() + "_sem";

  buildChannelInit(bsizes);

  auto uses = chop.getSymbolUses(module);
  if (!uses.has_value()) return success();

  // handle channel put/get ops: look at all uses of channel
  for (auto use : uses.value()) {
    auto res = processUse(use, sizes, bsizes);
    if (res.failed()) return failure();
  }

  chop.erase();
  return success();
}

}; // class ChannelConverter


class VerifConvertChannel
    : public impl::VerifConvertChannelBase<VerifConvertChannel> {
public:
  using impl::VerifConvertChannelBase<VerifConvertChannel>::VerifConvertChannelBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();

    // process channels
    WalkResult res = module.walk([&] (xilinx::air::ChannelOp chop) {
      ChannelConverter converter = ChannelConverter(context, module, chop);
      return converter.processChannel().succeeded() ? WalkResult::advance() : WalkResult::interrupt();
    });

    if (res.wasInterrupted())
      return signalPassFailure();

    ///FIXME: check for channel put and get, fail if present (not checked by air verifier)
  }
};


} //namespace
} //namespace mlir::verif
