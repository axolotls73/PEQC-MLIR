//===- verif-opt.cpp ---------------------------------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "mlir/IR/MLIRContext.h"
#include "mlir/InitAllDialects.h"
#include "mlir/InitAllPasses.h"
#include "mlir/Support/FileUtilities.h"
#include "mlir/Tools/mlir-opt/MlirOptMain.h"

#include "Dialect/VerifDialect.h"
#include "Dialect/VerifPasses.h"
#include "air/Dialect/AIR/AIRDialect.h"

int main(int argc, char **argv) {
  // mlir::registerAllPasses();
  mlir::verif::registerPasses();
  mlir::registerAsyncParallelForPass();

  mlir::DialectRegistry registry;
  registry.insert<
      mlir::verif::VerifDialect,
      mlir::arith::ArithDialect,
      mlir::scf::SCFDialect,
      mlir::func::FuncDialect,
      mlir::memref::MemRefDialect,
      mlir::async::AsyncDialect,
      mlir::bufferization::BufferizationDialect,
      mlir::tensor::TensorDialect
    >();

  registry.insert<xilinx::air::airDialect>();

  // Add the following to include *all* MLIR Core dialects, or selectively
  // include what you need like above. You only need to register dialects that
  // will be *parsed* by the tool, not the one generated
  // registerAllDialects(registry);

  return mlir::asMainReturnCode(
      mlir::MlirOptMain(argc, argv, "Verif optimizer driver\n", registry));
}
