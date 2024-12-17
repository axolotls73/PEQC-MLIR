/*
 * ConvertChannel.cpp: This file is part of the PEQC-MLIR project.
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
#define GEN_PASS_DEF_VERIFCONVERTCHANNEL
#include "VerifPasses.h.inc"

#define DEBUG_TYPE "verif-channel"

namespace {

WalkResult processChannel(xilinx::air::ChannelOp chop, ModuleOp module) {

  auto uses = chop.getSymbolUses(module);

  chop.emitRemark();

  auto size = chop.getSize();
  for (Attribute s : size) {
    s.print(llvm::errs());
  }

  if (!uses.has_value()) return WalkResult::advance();

  chop.erase();


  for (auto use : uses.value()) {
    auto op = use.getUser();

    op->erase();
  }

  return WalkResult::advance();
}

class VerifConvertChannel
    : public impl::VerifConvertChannelBase<VerifConvertChannel> {
public:
  using impl::VerifConvertChannelBase<VerifConvertChannel>::VerifConvertChannelBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();

    // process channels
    WalkResult res = module.walk([&] (xilinx::air::ChannelOp chop) {
      return processChannel(chop, module);
    });

    if (res.wasInterrupted())
      return signalPassFailure();

    return signalPassFailure();
  }
};


} //namespace
} //namespace mlir::verif
