/*
 * ConvertToAsync.cpp: This file is part of the PEQC-MLIR project.
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
#include "mlir/InitAllDialects.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Rewrite/FrozenRewritePatternSet.h"
#include "mlir/Support/LogicalResult.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"

#include "VerifPasses.h"
#include "VerifDialect.h"
#include "VerifUtil.h"

namespace mlir::verif {
#define GEN_PASS_DEF_VERIFSCFPARALLELTOASYNC
#define GEN_PASS_DEF_VERIFAIREXECUTETOASYNC
#include "VerifPasses.h.inc"

#define DEBUG_TYPE "verif-convert"

namespace {

class VerifScfParPattern : public OpRewritePattern<scf::ParallelOp> {
public:
  using OpRewritePattern<scf::ParallelOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(scf::ParallelOp op,
                                PatternRewriter &rewriter) const final {
    IRMapping mapper;
    auto loc = op.getLoc();

    Value cst_0 = rewriter.create<arith::ConstantIndexOp>(loc, 0).getResult();
    Value cst_1 = rewriter.create<arith::ConstantIndexOp>(loc, 1).getResult();

    bool dynamictripcount = false;

    // create nested for loops
    uint64_t totalTripCount = 1;
    SmallVector<scf::ForOp> loops;
    for (auto [i, sv, lbv, ubv, iv] : llvm::enumerate(
          op.getStep(), op.getLowerBound(), op.getUpperBound(), op.getInductionVars())) {

      // get buffer index either from the enclosing loop or the original value (0)
      Value indexArg;
      if (i != 0) {
        assert(loops[i - 1].getNumRegionIterArgs() == 1);
        indexArg = loops[i - 1].getRegionIterArg(0);
      }
      else {
        indexArg = cst_0;
      }

      auto loop = rewriter.create<scf::ForOp>(loc, lbv, ubv, sv, indexArg);

      mapper.map(lbv, loop.getLowerBound());
      mapper.map(ubv, loop.getUpperBound());
      mapper.map(sv, loop.getStep());
      mapper.map(iv, loop.getInductionVar());

      rewriter.setInsertionPointToStart(loop.getBody());
      loops.push_back(loop);

      if (dynamictripcount) continue;
      // get loop trip count -- taken from SCF/Utils
      std::optional<int64_t> lbCstOp = getConstantIntValue(lbv);
      std::optional<int64_t> ubCstOp = getConstantIntValue(ubv);
      std::optional<int64_t> stepCstOp = getConstantIntValue(sv);
      if (!(lbCstOp.has_value() && ubCstOp.has_value() && stepCstOp.has_value())) {
        // op.emitWarning("scf.parallel expected to have constant loop bounds");
        // return failure();
        dynamictripcount = true;
        ///FIXME: calculate actual trip count at runtime at some point
        totalTripCount = 42;
        continue;
      }
      int64_t lbCst = lbCstOp.value();
      int64_t ubCst = ubCstOp.value();
      int64_t stepCst = stepCstOp.value();
      if (!(lbCst >= 0 && ubCst >= 0 && stepCst > 0)) {
        op.emitWarning("scf.parallel expected to have positive loop bounds and step");
        return failure();
      }
      totalTripCount *= llvm::divideCeil((uint64_t)ubCst - (uint64_t)lbCst, (uint64_t)stepCst);
    }

    auto outerLoop = loops[0];
    auto innerLoop = loops[loops.size() - 1];

    rewriter.setInsertionPoint(outerLoop);
    Value cst_tc = rewriter.create<arith::ConstantIndexOp>(loc, totalTripCount).getResult();

    // token group to wait on
    rewriter.setInsertionPoint(outerLoop);
    auto group = rewriter.create<async::CreateGroupOp>(loc, cst_tc);

    // create an async.execute and clone the scf.parallel body into it
    rewriter.setInsertionPointToStart(innerLoop.getBody());
    SmallVector<Value> empty;
    SmallVector<Type> emptyType;
    auto asyncExec = rewriter.create<async::ExecuteOp>(
        loc, emptyType, empty, empty,
        [&](OpBuilder &b, Location loc, ValueRange v) {
          for (auto &o : op.getBody()->getOperations())
            if (!isa<scf::YieldOp, scf::ReduceOp>(o))
              b.clone(o, mapper);
        });
    rewriter.create<async::AddToGroupOp>(loc, asyncExec.getResult(0), group);

    // handle reduce
    auto reduceop = op.getBody()->getTerminator();
    SmallVector<Value> reduceResults;
    for (auto [res, region, init] : llvm::zip(
          reduceop->getOperands(), reduceop->getRegions(), op.getInitVals())) {

      // make a buffer to store values to reduce
      rewriter.setInsertionPoint(outerLoop);
      auto buffer = rewriter.create<memref::AllocOp>
          (loc, (MemRefType)MemRefType::Builder({ShapedType::kDynamic}, res.getType()), SmallVector<Value>{cst_tc}).getResult();

      // store value
      rewriter.setInsertionPointToEnd(asyncExec.getBody());
      rewriter.create<memref::StoreOp>(loc, mapper.lookup(res), buffer, innerLoop.getRegionIterArg(0));

      // reduction loop at the end
      rewriter.setInsertionPointAfter(outerLoop);
      if (region.getBlocks().size() != 1) {
        reduceop->emitWarning("scf.reduce regions can only have 1 block");
        return failure();
      }
      auto &redBlock = region.getBlocks().front();
      auto redLoop = rewriter.create<scf::ForOp>
          (loc, cst_0, cst_tc, cst_1, init,
          [&](OpBuilder& b, Location loc, Value iterVal, ValueRange accums) {
            assert(accums.size() == 1); //set this earlier, just in case
            auto accum = accums.front();
            auto bufferval = b.create<memref::LoadOp>(loc, buffer, iterVal);

            // map
            assert(redBlock.getArguments().size() == 2); //todo is this enforced by the scf.reduce verifier?
            IRMapping map;
            map.map(redBlock.getArgument(0), accum);
            map.map(redBlock.getArgument(1), bufferval);
            for (auto &o : redBlock.getOperations()) {
              if (!isa<scf::ReduceReturnOp, scf::YieldOp>(o))
                b.clone(o, map);
            }
            b.create<scf::YieldOp>(loc, map.lookup(redBlock.getTerminator()->getOperand(0)));
          });
      assert(redLoop.getNumResults() == 1); //one init_arg -> one result
      reduceResults.push_back(redLoop.getResult(0));
      rewriter.setInsertionPointToStart(redLoop.getBody());
    }

    // wait on group
    rewriter.setInsertionPointAfter(outerLoop);
    rewriter.create<async::AwaitAllOp>(loc, group);

    // add empty yield to async.execute
    rewriter.setInsertionPointToEnd(asyncExec.getBody());
    rewriter.create<async::YieldOp>(loc, empty);

    // add yield terminators to pass buffer index between loops
    rewriter.setInsertionPointToEnd(innerLoop.getBody());
    auto newiter = rewriter.create<arith::AddIOp>(loc, innerLoop.getRegionIterArg(0), cst_1).getResult();
    rewriter.create<scf::YieldOp>(loc, newiter);
    for (int i = loops.size() - 2; i >= 0; i--) {
      rewriter.setInsertionPointToEnd(loops[i].getBody());
      rewriter.create<scf::YieldOp>(loc, loops[i + 1].getResult(0));
    }

    rewriter.replaceOp(op, reduceResults);
    return success();
  }
};


class VerifScfParallelToAsync
    : public impl::VerifScfParallelToAsyncBase<VerifScfParallelToAsync> {
public:
  using impl::VerifScfParallelToAsyncBase<VerifScfParallelToAsync>::VerifScfParallelToAsyncBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();

    mlir::RewritePatternSet patterns(context);
    patterns.add<VerifScfParPattern>(context);

    ConversionTarget target(*context);
    target.addIllegalOp<scf::ParallelOp>();

    target.addLegalDialect<
        func::FuncDialect,
        arith::ArithDialect,
        scf::SCFDialect,
        memref::MemRefDialect,
        async::AsyncDialect,
        mlir::BuiltinDialect
      >();
    ///TODO: apply ^ to greedy rewriter somehow? target w/ no passes?

    auto res = applyPatternsAndFoldGreedily(module, std::move(patterns));
    if (res.failed()) return signalPassFailure();
  }
};

} // namespace
} // namespace mlir::verif
