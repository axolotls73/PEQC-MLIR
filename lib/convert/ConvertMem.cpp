/*
 * ConvertMem.cpp: This file is part of the PEQC-MLIR project.
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
#define GEN_PASS_DEF_VERIFDMATOMEMREF
#include "VerifPasses.h.inc"

#define DEBUG_TYPE "verif-convert"

namespace {

class VerifDMAPattern : public OpConversionPattern<xilinx::air::DmaMemcpyNdOp> {
public:
  using OpConversionPattern<xilinx::air::DmaMemcpyNdOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(xilinx::air::DmaMemcpyNdOp op, OpAdaptor adaptor,
                                ConversionPatternRewriter &rewriter) const final {
    auto loc = op.getLoc();

    auto dst = op.getDst();
    auto src = op.getSrc();
    if (src.getType().getRank() != dst.getType().getRank()) {
      op.emitWarning("verif-convert: dma_memcpy_nd src and dst need same rank");
      return failure();
    }

    SmallVector<Value> src_strides, dst_strides;
    ///FIXME: verify correct strides
    auto cst1 = rewriter.create<arith::ConstantIndexOp>(loc, 1).getResult();
    for (int i = 0; i < op.getSrcOffsets().size(); i++) {
      src_strides.push_back(cst1);
    }
    for (int i = 0; i < op.getDstOffsets().size(); i++) {
      dst_strides.push_back(cst1);
    }

    // handle async
    SmallVector<Value> newresults;
    if (op.getResults().size() > 0) {
      auto asyncExec = rewriter.create<async::ExecuteOp>(
        loc, SmallVector<Type>{}, op.getAsyncDependencies(), SmallVector<Value>{},
        [&](OpBuilder &b, Location loc, ValueRange v) {
          b.create<async::YieldOp>(loc, SmallVector<Value>{});
        });
      newresults.push_back(asyncExec.getResult(0));
      rewriter.setInsertionPointToStart(asyncExec.getBody());
    }

    // get subview if offsets etc are present
    auto createSubview =
        [&](TypedValue<MemRefType> val, ValueRange offsets, ValueRange sizes, ValueRange strides) {
      llvm::errs() << offsets.size() << " " << sizes.size() << " " << strides.size() << "\n";
      if (offsets.empty() && sizes.empty() && strides.empty())
        return val;
      else assert(!offsets.empty() && !sizes.empty() && !strides.empty());

      auto getFoldRange = []
            (ValueRange range) {
        SmallVector<OpFoldResult> newrange;
        for (Value val : range) {
          newrange.push_back(getAsOpFoldResult(val));
        }
        return newrange;
      };

      auto subop = rewriter.create<memref::SubViewOp>(loc,
          val, getFoldRange(offsets), getFoldRange(sizes), getFoldRange(strides));
      return subop.getResult();
    };

    src = createSubview(src, op.getSrcOffsets(), op.getSrcSizes(), src_strides);
    dst = createSubview(dst, op.getDstOffsets(), op.getDstSizes(), dst_strides);

    rewriter.create<memref::CopyOp>(loc, src, dst);

    if (!op.getResults().empty()) {
      rewriter.replaceOp(op, newresults);
    }
    else {
      rewriter.eraseOp(op);
    }
    return success();
  }
};

class VerifDmaToMemref
    : public impl::VerifDmaToMemrefBase<VerifDmaToMemref> {
public:
  using impl::VerifDmaToMemrefBase<VerifDmaToMemref>::VerifDmaToMemrefBase;

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
        VerifDMAPattern
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
        xilinx::air::DmaMemcpyNdOp
      >();

    auto res = applyFullConversion(module, target, std::move(patterns));
    if (res.failed()) return signalPassFailure();
  }
};

}
}