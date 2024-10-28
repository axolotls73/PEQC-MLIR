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
#define GEN_PASS_DEF_VERIFSUBVIEWCONVERT
#include "VerifPasses.h.inc"

#define DEBUG_TYPE "verif-convert"

namespace {

class VerifSubviewConvert
    : public impl::VerifSubviewConvertBase<VerifSubviewConvert> {
public:
  using impl::VerifSubviewConvertBase<VerifSubviewConvert>::VerifSubviewConvertBase;

  void runOnOperation() final {

  }
};

class VerifDMAPattern : public OpConversionPattern<xilinx::air::DmaMemcpyNdOp> {
public:
  using OpConversionPattern<xilinx::air::DmaMemcpyNdOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(xilinx::air::DmaMemcpyNdOp op, OpAdaptor adaptor,
                                ConversionPatternRewriter &rewriter) const final {
    auto loc = op.getLoc();

    auto dst = op.getDst();
    auto src = op.getSrc();
    if (src.getType().getRank() != dst.getType().getRank()) {
      op.emitWarning("verif-convert: dma_memcpy_nd src and dst need same dimensions");
      return failure();
    }

    // get subview if offsets etc are present
    auto createSubview =
        [&](TypedValue<MemRefType> val, OperandRange offsets, OperandRange sizes, OperandRange strides) {
      if (offsets.empty() && sizes.empty() && strides.empty())
        return val;

      auto subop = rewriter.create<memref::SubViewOp>(loc,
          val, offsets, sizes, strides);
      return subop.getResult();
    };

    src = createSubview(src, op.getSrcOffsets(), op.getSrcSizes(), op.getSrcStrides());
    dst = createSubview(dst, op.getDstOffsets(), op.getDstSizes(), op.getDstStrides());

    rewriter.create<memref::CopyOp>(loc, src, dst);
    rewriter.eraseOp(op);

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

    mlir::RewritePatternSet patterns(context);
    patterns.add<
        VerifDMAPattern
      >(context);

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