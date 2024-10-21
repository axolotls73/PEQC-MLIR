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
#define GEN_PASS_DEF_VERIFSCFPARALLELTOASYNC
#define GEN_PASS_DEF_VERIFAIREXECUTETOASYNC
#include "VerifPasses.h.inc"

#define DEBUG_TYPE "verif-convert"

namespace {

class VerifScfParRewriter : public OpRewritePattern<scf::ParallelOp> {
public:
  using OpRewritePattern<scf::ParallelOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(scf::ParallelOp op,
                                PatternRewriter &rewriter) const final {
    IRMapping mapper;
    auto loc = op.getLoc();

    Value cst_0 = rewriter.create<arith::ConstantIndexOp>(loc, 0).getResult();
    Value cst_1 = rewriter.create<arith::ConstantIndexOp>(loc, 1).getResult();

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

      // get loop trip count -- taken from SCF/Utils
      std::optional<int64_t> lbCstOp = getConstantIntValue(lbv);
      std::optional<int64_t> ubCstOp = getConstantIntValue(ubv);
      std::optional<int64_t> stepCstOp = getConstantIntValue(sv);
      if (!(lbCstOp.has_value() && ubCstOp.has_value() && stepCstOp.has_value())) {
        op.emitWarning("scf.parallel expected to have constant loop bounds");
        return failure();
      }
      int64_t lbCst = lbCstOp.value();
      int64_t ubCst = ubCstOp.value();
      int64_t stepCst = stepCstOp.value();
      if (!(lbCst >= 0 && ubCst >= 0 && stepCst > 0)) {
        op.emitWarning("scf.parallel expected to have positive loop bounds and step");
        return failure();
      }
      totalTripCount *= llvm::divideCeil((uint64_t)ubCst - (uint64_t)lbCst, (uint64_t)stepCst);

      mapper.map(lbv, loop.getLowerBound());
      mapper.map(ubv, loop.getUpperBound());
      mapper.map(sv, loop.getStep());
      mapper.map(iv, loop.getInductionVar());

      rewriter.setInsertionPointToStart(loop.getBody());
      loops.push_back(loop);
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
          (loc, MemRefType::Builder({(int64_t)totalTripCount}, res.getType())).getResult();

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


class VerifAirWaitAllRewriter : public OpConversionPattern<xilinx::air::WaitAllOp> {
public:
  using OpConversionPattern<xilinx::air::WaitAllOp>::OpConversionPattern;

  LogicalResult
  matchAndRewrite(xilinx::air::WaitAllOp op, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const final {
    auto loc = op.getLoc();

    // llvm::errs() << "=== PROCESSING: \n";
    // op.emitWarning();
    // llvm::errs() << "===\n";

    auto asyncExec = rewriter.create<async::ExecuteOp>(
        op->getLoc(), SmallVector<Type>{}, adaptor.getAsyncDependencies(), SmallVector<Value>{},
        [&](OpBuilder &b, Location loc, ValueRange v) {
          b.create<async::YieldOp>(loc, SmallVector<Value>{});
        });

    // old implementation using groups

    // create group
    // auto groupsize = op.getOperands().size();
    // auto sizeval = rewriter.create<arith::ConstantIndexOp>(loc, groupsize).getResult();
    // auto groupval = rewriter.create<async::CreateGroupOp>(loc, sizeval).getResult();

    // // add operands to group
    // for (Value token : op.getOperands()) {
    //   rewriter.create<async::AddToGroupOp>(loc, token, groupval);
    // }

    // // wait on group
    // rewriter.create<async::AwaitAllOp>(loc, groupval);

    // rewriter.eraseOp(op);

    rewriter.replaceOp(op, asyncExec);
    return success();
  }
};


class VerifAirExecuteRewriter : public OpConversionPattern<xilinx::air::ExecuteOp> {
public:
  using OpConversionPattern<xilinx::air::ExecuteOp>::OpConversionPattern;

  LogicalResult
  matchAndRewrite(xilinx::air::ExecuteOp op, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const final {

    auto &blocks = op.getBodyRegion().getBlocks();
    assert(blocks.size() == 1);
    auto loc = op.getLoc();
    IRMapping mapper;
    Value cst_1 = rewriter.create<arith::ConstantIndexOp>(loc, 1);

    SmallVector<Value> results;

    // handle results:
    //   if memref: find original definition, move outside
    //      of execute op if it's inside.
    //   if non-memref: store in memref allocated outside,
    //      load before all uses
    std::vector<Value> removeDef;
    std::unordered_map<Value, Value> resToMemref;
    for (auto [termarg, res] :
          llvm::zip_equal(blocks.front().getTerminator()->getOperands(), op.getResults())) {

      if (auto memreftype = dyn_cast<MemRefType>(termarg.getType())) {
        auto def = dyn_cast<memref::AllocOp>(termarg.getDefiningOp());
        if (!def) {
          termarg.getDefiningOp()->emitWarning("unsupported non-alloc defining op for an air.execute termargult");
          return failure();
        }
        // def.emitWarning();
        // if termarg's def is outside of op, don't need to redefine or remove anything
        if (!op.getOperation()->isProperAncestor(def)) continue;

        removeDef.push_back(termarg);
        Value newval = rewriter.create<memref::AllocOp>
            (loc,  memreftype).getResult();
        results.push_back(newval);
        // mapper.map(termarg, newval);
        // res.replaceAllUsesWith(newval);
      }
      else if (termarg.getType().isa<IndexType>() ||
               termarg.getType().isa<IntegerType>() ||
               termarg.getType().isa<FloatType>()) {
        Value newmr = rewriter.create<memref::AllocOp>
            (loc,  MemRefType::Builder({1}, termarg.getType())).getResult();
        resToMemref[termarg] = newmr;

        SmallVector<OpOperand*> usesToReplace;
        SmallVector<Value> replaceValues;
        for (auto &use : res.getUses()) {
          rewriter.setInsertionPoint(use.getOwner());
          auto newval = rewriter.create<memref::LoadOp>
              (loc, res.getType(), newmr, SmallVector<Value>{cst_1}).getResult();
          usesToReplace.push_back(&use);
          replaceValues.push_back(newval);
        }
        for (auto [use, val] : llvm::zip(usesToReplace, replaceValues)) {
          rewriter.modifyOpInPlace(op, [&](){
            (*use).assign(val);
          });
        }
        results.push_back(newmr);
      }
      else {
        llvm::errs() << "unsupported type for air.execute result: " << termarg.getType() << "\n";
        return failure();
      }
    }

    rewriter.setInsertionPoint(op);
    SmallVector<Value> dependencies = adaptor.getAsyncDependencies();
    SmallVector<Value> operands;
    auto asyncExec = rewriter.create<async::ExecuteOp>(
        op->getLoc(), SmallVector<Type>{}, dependencies, operands,
        [&](OpBuilder &b, Location loc, ValueRange v) {

          for (auto &o : op.getOps()) {
            // don't clone if op defines a memref we don't need
            // (memref.alloc only)
            bool remove = false;
            for (auto rem : removeDef) {
              if (llvm::find(o.getResults(), rem) != o.getResults().end()){
                remove = true;
                break;
              }
            }
            if (remove) continue;

            if (isa<xilinx::air::ExecuteTerminatorOp>(o)) {
              // non-memref results: copy into memref
              for (auto res : o.getOperands()) {
                if (dyn_cast<MemRefType>(res.getType())) continue;
                assert(resToMemref.find(res) != resToMemref.end());
                auto mr = resToMemref.find(res)->second;
                auto mappedval = mapper.lookup(res);
                rewriter.create<memref::StoreOp>(loc, mappedval, mr, SmallVector<Value>{cst_1});
              }

              // empty yield
              b.create<async::YieldOp>(loc, SmallVector<Value>{});
            } else
              b.clone(o, mapper);
          }
        });
    results.insert(results.begin(), asyncExec.getToken());
    rewriter.replaceOp(op, results);
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
    patterns.add<VerifScfParRewriter>(context);

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

class VerifAirExecuteToAsync
    : public impl::VerifAirExecuteToAsyncBase<VerifAirExecuteToAsync> {
public:
  using impl::VerifAirExecuteToAsyncBase<VerifAirExecuteToAsync>::VerifAirExecuteToAsyncBase;

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
        VerifAirExecuteRewriter,
        VerifAirWaitAllRewriter
      >(converter, context);

    ConversionTarget target(*context);

    target.addLegalDialect<
        func::FuncDialect,
        arith::ArithDialect,
        scf::SCFDialect,
        memref::MemRefDialect,
        async::AsyncDialect,
        mlir::BuiltinDialect
      >();

    auto res = applyPartialConversion(module, target, std::move(patterns));
    if (res.failed()) return signalPassFailure();
  }
};

} // namespace
} // namespace mlir::verif
