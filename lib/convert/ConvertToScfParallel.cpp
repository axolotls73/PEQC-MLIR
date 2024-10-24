//===- VerifPasses.cpp - Verif passes -----------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

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
#define GEN_PASS_DEF_VERIFAIRTOSCFPAR
#include "VerifPasses.h.inc"

#define DEBUG_TYPE "verif-convert"

namespace {

class VerifLaunchPattern : public OpConversionPattern<xilinx::air::LaunchOp> {
public:
  using OpConversionPattern<xilinx::air::LaunchOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(xilinx::air::LaunchOp op, OpAdaptor adaptor,
                                ConversionPatternRewriter &rewriter) const final {
    //
    return failure();
  }
};

class VerifSegmentPattern : public OpConversionPattern<xilinx::air::SegmentOp> {
public:
  using OpConversionPattern<xilinx::air::SegmentOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(xilinx::air::SegmentOp op, OpAdaptor adaptor,
                                ConversionPatternRewriter &rewriter) const final {
    //
    return failure();
  }
};

class VerifHerdPattern : public OpConversionPattern<xilinx::air::HerdOp> {
public:
  using OpConversionPattern<xilinx::air::HerdOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(xilinx::air::HerdOp op, OpAdaptor adaptor,
                                ConversionPatternRewriter &rewriter) const final {
    auto loc = op.getLoc();

    Value cst0 = rewriter.create<arith::ConstantIndexOp>(loc, 0);
    Value cst1 = rewriter.create<arith::ConstantIndexOp>(loc, 1);
    auto parop = rewriter.create<scf::ParallelOp>(loc,
        SmallVector<Value>{cst0, cst0}, op.getSizes(), SmallVector<Value>{cst1, cst1},
        [&](OpBuilder& b, Location loc, ValueRange ivs) {

          // herd arguments are: iterator, upper bounds, args
          // want to map all to their operands in cloned body
          SmallVector<Value> argvals;
          for (auto i : ivs) {
            argvals.push_back(i);
          }
          for (auto s : op.getSizes()) {
            argvals.push_back(s);
          }
          for (auto o : op.getHerdOperands()) {
            argvals.push_back(o);
          }

          IRMapping mapper;
          for (auto [argval, herdval] : llvm::zip_equal(
              argvals, op.getBodyRegion().getArguments())) {
            mapper.map(herdval, argval);
          }

          for (auto &o : op.getOps()) {
            if (isa<xilinx::air::HerdTerminatorOp>(o)) continue;

            b.clone(o, mapper);
          }
          b.create<scf::ReduceOp>(loc);

        });

    // op.getOperation()->getParentOfType<ModuleOp>().emitWarning();

    rewriter.eraseOp(op);
    return success();
  }
};

class VerifAirToScfPar
    : public impl::VerifAirToScfParBase<VerifAirToScfPar> {
public:
  using impl::VerifAirToScfParBase<VerifAirToScfPar>::VerifAirToScfParBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();

    TypeConverter converter;
    converter.addConversion([&](Type type) -> std::optional<Type> {
      // convert air::AsyncTokenType to async::TokenType
      if (auto t = type.dyn_cast<xilinx::air::AsyncTokenType>())
        return async::TokenType::get(context);
      if (auto t = type.dyn_cast<MemRefType>())
        if (t.getMemorySpaceAsInt() != 0)
          return MemRefType::get(t.getShape(), t.getElementType(),
                                 t.getLayout(), 0);
      return type;
    });
    auto addUnrealizedCast = [](OpBuilder &builder, Type type,
                                ValueRange inputs, Location loc) {
      auto cast = builder.create<UnrealizedConversionCastOp>(loc, type, inputs);
      return std::optional<Value>(cast.getResult(0));
    };
    converter.addSourceMaterialization(addUnrealizedCast);
    converter.addTargetMaterialization(addUnrealizedCast);

    mlir::RewritePatternSet patterns(context);
    patterns.add<
        // VerifLaunchPattern,
        // VerifSegmentPattern,
        VerifHerdPattern
      >(converter, context);

    ConversionTarget target(*context);
    target.addLegalDialect<
        func::FuncDialect,
        arith::ArithDialect,
        scf::SCFDialect,
        memref::MemRefDialect,
        async::AsyncDialect,
        xilinx::air::airDialect,
        mlir::BuiltinDialect
      >();

    target.addIllegalOp<
        xilinx::air::LaunchOp,
        xilinx::air::SegmentOp,
        xilinx::air::HerdOp
      >();

    auto res = applyFullConversion(module, target, std::move(patterns));
    if (res.failed()) return signalPassFailure();
  }
};

}
}