//===- VerifPasses.cpp - Verif passes -----------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
// #include "mlir/Dialect/Func/IR/FuncOps.h"
// #include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "llvm/ADT/STLExtras.h"
#include "mlir/InitAllDialects.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Rewrite/FrozenRewritePatternSet.h"
#include "mlir/Support/LogicalResult.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
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
    //
    return failure();
  }
};

class VerifAirToScfPar
    : public impl::VerifAirToScfParBase<VerifAirToScfPar> {
public:
  using impl::VerifAirToScfParBase<VerifAirToScfPar>::VerifAirToScfParBase;

  void runOnOperation() final {

  }
};

}
}