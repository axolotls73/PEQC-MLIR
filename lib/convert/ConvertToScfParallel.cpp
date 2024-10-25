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

static void createScfPar(Operation& op, ConversionPatternRewriter& rewriter, IRMapping& mapper,
      OperandRange sizes, Region::BlockArgListType bodyargs, OperandRange asyncdeps,
      llvm::iterator_range<mlir::Region::OpIterator> opops) {
  auto loc = op.getLoc();

  // handle async
  SmallVector<Value> newresults;
  if (op.getResults().size() > 0) {
    auto asyncExec = rewriter.create<async::ExecuteOp>(
      loc, SmallVector<Type>{}, asyncdeps, SmallVector<Value>{},
      [&](OpBuilder &b, Location loc, ValueRange v) {
        b.create<async::YieldOp>(loc, SmallVector<Value>{});
      });
    newresults.push_back(asyncExec.getResult(0));
    rewriter.setInsertionPointToStart(asyncExec.getBody());
  }

  // add scf.parallel
  auto numsizes = sizes.size();
  if (numsizes > 0) {

    // create lower bound (0) and step (1) for all dimensions
    Value cst0 = rewriter.create<arith::ConstantIndexOp>(loc, 0);
    Value cst1 = rewriter.create<arith::ConstantIndexOp>(loc, 1);
    SmallVector<Value> lb, step;
    for (unsigned int i = 0; i < numsizes; i++) {
      lb.push_back(cst0);
      step.push_back(cst1);
    }
    auto parop = rewriter.create<scf::ParallelOp>(loc,
        lb, sizes, step,
        [&](OpBuilder& b, Location loc, ValueRange ivs) {

          // map new iterators to corresponding block args
          for (auto [argval, herdval] : llvm::zip_equal(
              ivs, bodyargs.drop_back(bodyargs.size() - numsizes))) {
            mapper.map(herdval, argval);
          }

          b.create<scf::ReduceOp>(loc);
        });
    rewriter.setInsertionPointToStart(parop.getBody());
  }

  for (auto &o : opops) {
    if (isa<xilinx::air::HerdTerminatorOp,
            xilinx::air::SegmentTerminatorOp,
            xilinx::air::LaunchTerminatorOp>(o)) continue;

    rewriter.clone(o, mapper);
  }

  if (op.getResults().size() > 0) {
    rewriter.replaceOp(&op, newresults);
  }
  else {
    rewriter.eraseOp(&op);
  }
}

class VerifLaunchPattern : public OpConversionPattern<xilinx::air::LaunchOp> {
public:
  using OpConversionPattern<xilinx::air::LaunchOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(xilinx::air::LaunchOp op, OpAdaptor adaptor,
                                ConversionPatternRewriter &rewriter) const final {

    // make var map
    IRMapping mapper;
    auto numsizes = op.getSizes().size();
    SmallVector<Value> argvals;
    // order: iter vals, sizes, op operands
    for (auto s : op.getSizes()) {
      argvals.push_back(s);
    }
    for (auto o : op.getLaunchOperands()) {
      argvals.push_back(o);
    }
    // map block operands except iter vals
    for (auto [argval, mapval] : llvm::zip_equal(
        argvals, op.getBodyRegion().getArguments().drop_front(numsizes))) {
      mapper.map(mapval, argval);
    }

    createScfPar(*op.getOperation(), rewriter, mapper,
        op.getSizes(), op.getBodyRegion().getArguments(), op.getAsyncDependencies(), op.getOps());
    return success();
  }
};

class VerifSegmentPattern : public OpConversionPattern<xilinx::air::SegmentOp> {
public:
  using OpConversionPattern<xilinx::air::SegmentOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(xilinx::air::SegmentOp op, OpAdaptor adaptor,
                                ConversionPatternRewriter &rewriter) const final {
    // make initial map
    IRMapping mapper;
    auto numsizes = op.getSizes().size();
    SmallVector<Value> argvals;
    // order: iter vals, sizes, op operands
    for (auto s : op.getSizes()) {
      argvals.push_back(s);
    }
    for (auto o : op.getSegmentOperands()) {
      argvals.push_back(o);
    }
    // map block operands except iter vals
    for (auto [argval, mapval] : llvm::zip_equal(
        argvals, op.getBodyRegion().getArguments().drop_front(numsizes))) {
      mapper.map(mapval, argval);
    }

    createScfPar(*op.getOperation(), rewriter, mapper,
        op.getSizes(), op.getBodyRegion().getArguments(), op.getAsyncDependencies(), op.getOps());
    return success();
  }
};

class VerifHerdPattern : public OpConversionPattern<xilinx::air::HerdOp> {
public:
  using OpConversionPattern<xilinx::air::HerdOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(xilinx::air::HerdOp op, OpAdaptor adaptor,
                                ConversionPatternRewriter &rewriter) const final {
    // make initial map
    IRMapping mapper;
    auto numsizes = op.getSizes().size();
    SmallVector<Value> argvals;
    // order: iter vals, sizes, op operands
    for (auto s : op.getSizes()) {
      argvals.push_back(s);
    }
    for (auto o : op.getHerdOperands()) {
      argvals.push_back(o);
    }
    // map block operands except iter vals
    for (auto [argval, mapval] : llvm::zip_equal(
        argvals, op.getBodyRegion().getArguments().drop_front(numsizes))) {
      mapper.map(mapval, argval);
    }

    createScfPar(*op.getOperation(), rewriter, mapper,
        op.getSizes(), op.getBodyRegion().getArguments(), op.getAsyncDependencies(), op.getOps());
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
        VerifLaunchPattern,
        VerifSegmentPattern,
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