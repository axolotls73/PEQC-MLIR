//===- VerifPasses.cpp - Verif passes -----------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
// #include "mlir/Dialect/Func/IR/FuncOps.h"
// #include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/InitAllDialects.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Rewrite/FrozenRewritePatternSet.h"
#include "mlir/Support/LogicalResult.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "air/Dialect/AIR/AIRDialect.h"

#include "Dialect/VerifPasses.h"
#include "Dialect/VerifDialect.h"

namespace mlir::verif {
#define GEN_PASS_DEF_VERIFSWITCHBARFOO
#define GEN_PASS_DEF_VERIFLOWERTOASYNC
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

// almost entirely from mlir-air/mlir/lib/Conversion/AIRToAsyncPass.cpp:441
class VerifScfParRewriter : public OpRewritePattern<scf::ParallelOp> {
public:
  using OpRewritePattern<scf::ParallelOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(scf::ParallelOp op,
                                PatternRewriter &rewriter) const final {
                                  SmallVector<Value> empty;
    SmallVector<Type> retTy; // TODO
    SmallVector<Value> deps; // TODO

    // compute the total number of iterations and check that the bounds are
    // constants
    uint64_t total_size = 1;
    auto step = op.getStep().begin();
    auto lowerBound = op.getLowerBound().begin();
    auto upperBound = op.getUpperBound().begin();
    for (int i = 0, e = op.getNumLoops(); i < e; i++) {
      Value sv = *step++;
      Value lbv = *lowerBound++;
      Value ubv = *upperBound++;
      auto si = sv.getDefiningOp<arith::ConstantIndexOp>();
      auto lbi = lbv.getDefiningOp<arith::ConstantIndexOp>();
      auto ubi = ubv.getDefiningOp<arith::ConstantIndexOp>();
      if (!si || !lbi || !ubi)
        return failure();
      auto s = si.value();
      auto lb = lbi.value();
      auto ub = ubi.value();
      auto new_ub_int = (ub - lb) / s;
      if ((new_ub_int * s) != (ub - lb))
        return op->emitOpError()
               << "failed to normalize: step '" << s
               << "' does not evenly divide range '" << (ub - lb) << "'";
      total_size *= new_ub_int;
    }

    // auto topExeOp = rewriter.create<async::ExecuteOp>(
    //     op->getLoc(), retTy, deps, empty,
    //     [&](OpBuilder &r, Location loc, ValueRange v) {
    IRMapping mapper;
    auto loc = op.getLoc();

    auto size = rewriter.create<arith::ConstantIndexOp>(loc, total_size);
    auto group = rewriter.create<async::CreateGroupOp>(loc, size);

    // create nested for loops
    auto ivs = op.getInductionVars().begin();
    step = op.getStep().begin();
    lowerBound = op.getLowerBound().begin();
    upperBound = op.getUpperBound().begin();
    SmallVector<scf::ForOp> loops;
    for (int i = 0, e = op.getNumLoops(); i < e; i++) {
      Value sv = *step++;
      Value lbv = *lowerBound++;
      Value ubv = *upperBound++;
      Value iv = *ivs++;
      auto l = rewriter.create<scf::ForOp>(loc, lbv, ubv, sv);
      mapper.map(lbv, l.getLowerBound());
      mapper.map(ubv, l.getUpperBound());
      mapper.map(sv, l.getStep());
      mapper.map(iv, l.getInductionVar());
      rewriter.setInsertionPointToStart(l.getBody());
      loops.push_back(l);
    }

    // create an async.execute and clone the scf.parallel body into it
    auto coreExeOp = rewriter.create<async::ExecuteOp>(
        loc, retTy, empty, empty,
        [&](OpBuilder &b, Location loc, ValueRange v) {
          for (auto &o : op.getBody()->getOperations())
            if (!isa<scf::YieldOp, scf::ReduceOp>(o))
              b.clone(o, mapper);
          b.create<async::YieldOp>(loc, empty);
        });
    rewriter.create<async::AddToGroupOp>(loc, coreExeOp.getResult(0), group);
    rewriter.setInsertionPointAfter(loops[0]);

    rewriter.create<async::AwaitAllOp>(loc, group);
    // rewriter.create<async::YieldOp>(loc, empty);
        // });
    // if (op.getInitVals().size())
    //   rewriter.replaceOp(op, topExeOp.getResults());
    // else
      rewriter.eraseOp(op);

    return success();
  }
};

// copy paste! mlir-air/mlir/lib/Conversion/AIRToAsyncPass.cpp:532
class VerifAirExecuteRewriter : public OpRewritePattern<xilinx::air::ExecuteOp> {
public:
  using OpRewritePattern<xilinx::air::ExecuteOp>::OpRewritePattern;

  LogicalResult
  matchAndRewrite(xilinx::air::ExecuteOp op,
                  PatternRewriter &rewriter) const final {

    SmallVector<Type, 4> resultTypes;
    for (unsigned i = 1; i < op->getNumResults(); ++i)
      resultTypes.push_back(op->getResult(i).getType());

    SmallVector<Value, 4> dependencies = op.getAsyncDependencies();
    // SmallVector<Value, 4> dependencies = adaptor.getAsyncDependencies();
    SmallVector<Value, 4> operands;
    auto newOp = rewriter.create<async::ExecuteOp>(
        op->getLoc(), resultTypes, dependencies, operands,
        [&](OpBuilder &b, Location loc, ValueRange v) {
          IRMapping map;
          for (auto &o : op.getOps()) {
            if (isa<xilinx::air::ExecuteTerminatorOp>(o)) {
              SmallVector<Value, 4> returnValues;
              for (auto v : o.getOperands())
                returnValues.push_back(map.lookupOrDefault(v));
              b.create<async::YieldOp>(loc, returnValues);
            } else
              b.clone(o, map);
          }
        });

    SmallVector<Value, 4> results{newOp->getResult(0)};
    op.getResult(0).replaceAllUsesWith(newOp->getResult(0));
    for (unsigned i = 1; i < op->getNumResults(); ++i) {
      auto r = newOp.getResult(i);
      auto await = rewriter.create<async::AwaitOp>(op->getLoc(), r);
      op.getResult(i).replaceAllUsesWith(await.getResult());
      results.push_back(await.getResult());
    }
    // rewriter.eraseOp(op);
    rewriter.replaceOp(op, results);
    return success();
  }
};

class VerifLowerToAsync
    : public impl::VerifLowerToAsyncBase<VerifLowerToAsync> {
public:
  using impl::VerifLowerToAsyncBase<VerifLowerToAsync>::VerifLowerToAsyncBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();
    mlir::RewritePatternSet patterns(context);
    patterns.clear();

    patterns.add<VerifScfParRewriter>(context);
    patterns.add<VerifAirExecuteRewriter>(context);

    applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
  }
};
} // namespace
} // namespace mlir::verif
