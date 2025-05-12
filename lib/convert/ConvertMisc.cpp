/*
 * ConvertMisc.cpp: This file is part of the PEQC-MLIR project.
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
#include "mlir/Dialect/Func/IR/FuncOps.h"

#include "VerifPasses.h"
#include "VerifDialect.h"
#include "VerifUtil.h"

namespace mlir::verif {
#define GEN_PASS_DEF_VERIFMOVETOMAIN
#include "VerifPasses.h.inc"

#define DEBUG_TYPE "verif-convert"

namespace {

class VerifMoveToMain
    : public impl::VerifMoveToMainBase<VerifMoveToMain> {
public:
  using impl::VerifMoveToMainBase<VerifMoveToMain>::VerifMoveToMainBase;

  void runOnOperation() final {
    auto module = getOperation();

    // get main function
    func::FuncOp mainfunc = nullptr;
    for (auto func : module.getBody()->getOps<func::FuncOp>()) {
      if (func.getSymName() != "main") continue;
      mainfunc = func;
    }
    if (!mainfunc) {
      module.emitError("module must contain an @main function");
      return signalPassFailure();
    }
    auto type = mainfunc.getFunctionType();
    if (type.getNumInputs() > 0 || type.getNumResults() > 0) {
      module.emitError("main function must have function type () -> ()");
      return signalPassFailure();
    }

    // move operations to main function
    auto builder = OpBuilder(mainfunc.getBody());
    auto map = IRMapping();
    for (auto& op : module.getBody()->getOperations()) {
      if (isa<func::FuncOp, memref::GlobalOp>(op)) continue;
      builder.clone(op, map);
    }
    for (auto& op : llvm::make_early_inc_range(
          llvm::reverse(module.getBody()->getOperations()))) {
      if (isa<func::FuncOp, memref::GlobalOp>(op)) continue;
      op.erase();
    }
  }
};

} // namespace
} // namespace mlir::verif
