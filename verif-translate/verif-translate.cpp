/*
 * verif-translate.cpp: This file is part of the PEQC-MLIR project.
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

#include <iterator>
#include <fstream>
#include <filesystem>
#include <iostream>
#include <regex>
#include "past/past.h"
#include "past/pprint.h"

#include "mlir/IR/BuiltinDialect.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Math/IR/Math.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/ControlFlow/IR/ControlFlow.h"
#include "mlir/Dialect/ControlFlow/IR/ControlFlowOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Async/IR/Async.h"

#include "mlir/Tools/mlir-translate/MlirTranslateMain.h"
#include "mlir/Tools/mlir-translate/Translation.h"

#include "VerifDialect.h"
#include "translate/PastTranslator.h"

#define DEBUG_TYPE "verif-translate"


namespace mlir {
namespace verif {


  LogicalResult translateToPast(Operation* op, llvm::raw_ostream &output, bool textOutput) {
    if (!isa<ModuleOp>(op)) {
      op->emitError("past translation: top-level operation must be a module");
    }

    PastTranslator translator;
    s_past_node_t* res = translator.translate(op);

    ///TODO: find a better way to interface btwn FILE and ostream?
    char filename_buffer[L_tmpnam];
    char* filename = tmpnam(filename_buffer);
    auto file = std::fopen(filename, "w");
    past_pprint(file, res);
    std::ifstream infile(filename);
    std::fclose(file);
    std::remove(filename);

    output << "#pragma pocc-region-start\n";
    std::string line;
    while (std::getline(infile, line)) {
      output << line << "\n";
    }
    output << "#pragma pocc-region-end\n";
    return success();
  }

} // namespace verif
} // namespace mlir


int main(int argc, char **argv) {

  mlir::TranslateFromMLIRRegistration withdescription(
      "translate-to-past", "Translate supported operations to interpretable C",
      [](mlir::Operation *op, llvm::raw_ostream &output) {
        return mlir::verif::translateToPast(op, output, true);
      },
      [](mlir::DialectRegistry &registry) {
          registry.insert<
            mlir::verif::VerifDialect,
            mlir::arith::ArithDialect,
            mlir::math::MathDialect,
            mlir::scf::SCFDialect,
            mlir::cf::ControlFlowDialect,
            mlir::func::FuncDialect,
            mlir::memref::MemRefDialect,
            mlir::async::AsyncDialect,
            mlir::LLVM::LLVMDialect
          >();
      });

  return failed(
      mlir::mlirTranslateMain(argc, argv, "verif-translate"));
}
