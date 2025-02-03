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
#include "air/Dialect/AIR/AIRDialect.h"

#include "VerifAirPasses.h"
#include "VerifDialect.h"
#include "VerifUtil.h"

namespace mlir::verif::air {
#define GEN_PASS_DEF_VERIFSCFPARALLELTOASYNC
#define GEN_PASS_DEF_VERIFAIREXECUTETOASYNC
#include "VerifAirPasses.h.inc"

#define DEBUG_TYPE "verif-convert"

namespace {

class VerifAirWaitAllPattern : public OpConversionPattern<xilinx::air::WaitAllOp> {
public:
  using OpConversionPattern<xilinx::air::WaitAllOp>::OpConversionPattern;

  LogicalResult
  matchAndRewrite(xilinx::air::WaitAllOp op, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const final {
    auto loc = op.getLoc();
    auto asyncExec = rewriter.create<async::ExecuteOp>(
        loc, SmallVector<Type>{}, adaptor.getAsyncDependencies(), SmallVector<Value>{},
        [&](OpBuilder &b, Location loc, ValueRange v) {
          b.create<async::YieldOp>(loc, SmallVector<Value>{});
        });

    if (!op.getAsyncToken()) {
      // not async: just wait on the token produced by asyncExec
      Value cst_0 = rewriter.create<arith::ConstantIndexOp>(loc, 0).getResult();
      Value group = rewriter.create<async::CreateGroupOp>(loc, cst_0).getResult();
      rewriter.create<async::AddToGroupOp>(loc, asyncExec.getResult(0), group);
      auto waitop = rewriter.create<async::AwaitAllOp>(loc, group);
      rewriter.replaceOp(op, waitop);
      return success();
    }

    rewriter.replaceOp(op, asyncExec);
    return success();
  }
};


class VerifAirExecutePattern : public OpConversionPattern<xilinx::air::ExecuteOp> {
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
      else if (mlir::isa<IndexType>(termarg.getType()) ||
               mlir::isa<IntegerType>(termarg.getType()) ||
               mlir::isa<FloatType>(termarg.getType())) {
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


class VerifAirExecuteToAsync
    : public impl::VerifAirExecuteToAsyncBase<VerifAirExecuteToAsync> {
public:
  using impl::VerifAirExecuteToAsyncBase<VerifAirExecuteToAsync>::VerifAirExecuteToAsyncBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();

    TypeConverter converter;
    converter.addConversion([&](Type type) -> Type {
      // convert air::AsyncTokenType to async::TokenType
      if (auto t = mlir::dyn_cast<xilinx::air::AsyncTokenType>(type))
        return async::TokenType::get(context);
      if (auto t = mlir::dyn_cast<MemRefType>(type))
        if (t.getMemorySpaceAsInt() != 0)
          return MemRefType::get(t.getShape(), t.getElementType(),
                                 t.getLayout(), 0);
      return type;
    });
    auto addUnrealizedCast = [](OpBuilder &builder, Type type,
                                ValueRange inputs, Location loc) {
      auto cast = builder.create<UnrealizedConversionCastOp>(loc, type, inputs);
      return cast.getResult(0);
    };
    converter.addSourceMaterialization(addUnrealizedCast);
    converter.addTargetMaterialization(addUnrealizedCast);

    mlir::RewritePatternSet patterns(context);
    patterns.add<
        VerifAirExecutePattern,
        VerifAirWaitAllPattern
      >(converter, context);

    ConversionTarget target(*context);

    ///TODO: why do these need to be explicitly marked
    /// legal for a /partial/ conversion?? specifically arith
    target.addLegalDialect<
        func::FuncDialect,
        arith::ArithDialect,
        math::MathDialect,
        scf::SCFDialect,
        memref::MemRefDialect,
        async::AsyncDialect,
        mlir::BuiltinDialect,
        xilinx::air::airDialect
      >();

    target.addIllegalOp<
        xilinx::air::ExecuteOp,
        xilinx::air::WaitAllOp,
        scf::ParallelOp
      >();

    auto res = applyPartialConversion(module, target, std::move(patterns));
    if (res.failed()) return signalPassFailure();
  }
};

} // namespace
} // namespace mlir::verif
