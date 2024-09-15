//===- VerifPasses.cpp - Verif passes -----------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Rewrite/FrozenRewritePatternSet.h"
#include "mlir/Support/LogicalResult.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"

#include "Dialect/VerifPasses.h"

namespace mlir::verif {
#define GEN_PASS_DEF_VERIFSWITCHBARFOO
#define GEN_PASS_DEF_VERIFCONVERTADD
#include "Dialect/VerifPasses.h.inc"

namespace {
class VerifSwitchBarFooRewriter : public OpRewritePattern<func::FuncOp> {
public:
  using OpRewritePattern<func::FuncOp>::OpRewritePattern;
  LogicalResult matchAndRewrite(func::FuncOp op,
                                PatternRewriter &rewriter) const final {
    if (op.getSymName() == "bar") {
      rewriter.modifyOpInPlace(op, [&op]() { op.setSymName("foo"); });
      return success();
    }
    return failure();
  }
};

class VerifSwitchBarFoo
    : public impl::VerifSwitchBarFooBase<VerifSwitchBarFoo> {
public:
  using impl::VerifSwitchBarFooBase<
      VerifSwitchBarFoo>::VerifSwitchBarFooBase;
  void runOnOperation() final {
    RewritePatternSet patterns(&getContext());
    patterns.add<VerifSwitchBarFooRewriter>(&getContext());
    FrozenRewritePatternSet patternSet(std::move(patterns));
    if (failed(applyPatternsAndFoldGreedily(getOperation(), patternSet)))
      signalPassFailure();
  }
};


class VerifConvertAdd
    : public impl::VerifConvertAddBase<VerifConvertAdd> {
public:
  using impl::VerifConvertAddBase<VerifConvertAdd>::VerifConvertAddBase;

  void runOnOperation() final {

  }
};
} // namespace
} // namespace mlir::verif
