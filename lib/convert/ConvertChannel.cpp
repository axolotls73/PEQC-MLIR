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

  // auto functype = FunctionType::get(context, SmallVector<Type>{}, SmallVector<Type>{});
  // auto funcop = builder.create<func::FuncOp>(loc, "beep", functype);
  // mlir::SymbolTable::setSymbolVisibility(funcop, mlir::SymbolTable::Visibility::Private);
  // auto funcblock = funcop.addEntryBlock();
  // builder.setInsertionPointToStart(funcblock);
  // builder.create<func::ReturnOp>(loc, funcop.getResultTypes(), SmallVector<Value>{});
  // return WalkResult::advance();

  // find memref element type: needs to be the same for all uses
  Type elt_type = IntegerType::get(context, 64); // default type if no uses
  auto uses = chop.getSymbolUses(module);
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
    chop.emitError("Channels must have two sizes");
    return WalkResult::interrupt();
  }
  auto sizes = SmallVector<int64_t, 2>();
  auto bsizes = SmallVector<int64_t, 2>();
  for (auto [size, bsize] :
        llvm::zip_equal(sizes_attr.getAsRange<IntegerAttr>(), bsizes_attr.getAsRange<IntegerAttr>())) {
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
    Value sizeval = builder.create<arith::ConstantIndexOp>(loc, size).getResult();
    auto loop = builder.create<scf::ForOp>(loc, cst_0, sizeval, cst_1);
    loop_iters.push_back(loop.getInductionVar());
    builder.setInsertionPointToStart(loop.getBody());
  }
  Value semarr_init_sem = builder.create<SemaphoreOp>(loc, cst_0).getResult();
  builder.create<memref::StoreOp>(loc, semarr_init_sem, channel_semarr, loop_iters);
  // doesn't work bc we don't know the memref size
  // Value bufarr_init_mr = builder.create<memref::AllocOp>(loc, dynamic_elt_type);
  // builder.create<memref::StoreOp>(loc, bufarr_init_mr, channel_bufarr, loop_iters);

  // reset builder position
  builder.setInsertionPoint(chop);
  chop.erase();

  if (!uses.has_value()) return WalkResult::advance();

  // handle channel put/get
  for (auto use : uses.value()) {
    auto op = use.getUser();

    if (mlir::dyn_cast<xilinx::air::ChannelPutOp>(op)) {

    }
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
