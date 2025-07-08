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
#define GEN_PASS_DEF_VERIFCREATEMAIN
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
    auto mainfunc = module.lookupSymbol<func::FuncOp>("main");
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


class VerifCreateMain
    : public impl::VerifCreateMainBase<VerifCreateMain> {
public:
  using impl::VerifCreateMainBase<VerifCreateMain>::VerifCreateMainBase;

  void runOnOperation() final {
    auto module = getOperation();
    auto context = module.getContext();

    func::FuncOp funcop = nullptr;
    int numfuncs = 0;
    for (auto f : module.getBody()->getOps<func::FuncOp>()) {
      funcop = f;
      numfuncs++;
    }
    if (numfuncs != 1) {
      module.emitError("module must contain exactly one function");
      return signalPassFailure();
    }
    if (funcop.getSymName() == "main") {
      module.emitError("function already called @main");
      return signalPassFailure();
    }

    auto loc = funcop.getLoc();
    auto builder = OpBuilder(module);
    builder.setInsertionPointToStart(module.getBody());

    auto functype = FunctionType::get(context, SmallVector<Type>{}, SmallVector<Type>{});
    auto mainfunc = builder.create<func::FuncOp>(loc, StringRef("main"), functype);
    auto funcbuilder = OpBuilder(mainfunc);
    funcbuilder.setInsertionPointToStart(mainfunc.addEntryBlock());
    builder.setInsertionPoint(mainfunc);

    SmallVector<memref::GlobalOp> globals;
    std::size_t argi = 0;
    SmallVector<Value> args;
    for (auto arg : funcop.getArguments()) {
      auto argtype = dyn_cast<MemRefType>(arg.getType());
      if (!argtype) {
        funcop.emitError("non-memref argument");
        return signalPassFailure();
      }

      std::string argname;
      if (argumentNames.size() > argi) {
        argname = argumentNames[argi];
      }
      else {
        argname = "arg" + std::to_string(argi);
      }
      argi++;

      globals.push_back(builder.create<memref::GlobalOp>(loc, StringAttr::get(context, argname),
          StringAttr::get(context, "private"), TypeAttr::get(argtype),
          Attribute{}, UnitAttr{}, IntegerAttr{}));

      args.push_back(
          funcbuilder.create<memref::GetGlobalOp>(loc, argtype, argname).getResult());
    }

    auto callop = funcbuilder.create<func::CallOp>(loc, funcop, args);

    for (auto res : callop.getResults()) {
      auto restype = dyn_cast<MemRefType>(res.getType());
      if (!restype) {
        funcop.emitError("non-memref result");
        return signalPassFailure();
      }

      std::string argname;
      if (argumentNames.size() > argi) {
        argname = argumentNames[argi];
      }
      else {
        argname = "arg" + std::to_string(argi);
      }
      argi++;

      globals.push_back(builder.create<memref::GlobalOp>(loc, StringAttr::get(context, argname),
          StringAttr::get(context, "private"), TypeAttr::get(restype),
          Attribute{}, UnitAttr{}, IntegerAttr{}));

      auto globalres = funcbuilder.create<memref::GetGlobalOp>(loc, restype, argname).getResult();
      funcbuilder.create<memref::CopyOp>(loc, res, globalres);
    }

    funcbuilder.create<func::ReturnOp>(loc);
  }
};

} // namespace
} // namespace mlir::verif
