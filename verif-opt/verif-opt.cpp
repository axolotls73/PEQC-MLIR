/*
 * verif-opt.cpp: This file is part of the PEQC-MLIR project.
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

#include "mlir/IR/MLIRContext.h"
#include "mlir/InitAllDialects.h"
#include "mlir/InitAllPasses.h"
#include "mlir/Support/FileUtilities.h"
#include "mlir/Tools/mlir-opt/MlirOptMain.h"

#include "VerifDialect.h"
#include "VerifPasses.h"

#ifdef COMPILE_WITH_AIR
  #include "VerifAirPasses.h"
  #include "air/Dialect/AIR/AIRDialect.h"
  #include "aie/Dialect/AIE/IR/AIEDialect.h"
#endif

int main(int argc, char **argv) {
  // mlir::registerAllPasses();
  mlir::verif::registerPasses();
#ifdef COMPILE_WITH_AIR
  mlir::verif::air::registerPasses();
#endif
  mlir::registerAsyncParallelForPass();
  mlir::registerConvertAffineToStandard();

  mlir::DialectRegistry registry;
  registry.insert<
      mlir::verif::VerifDialect,
      mlir::arith::ArithDialect,
      mlir::math::MathDialect,
      mlir::affine::AffineDialect,
      mlir::scf::SCFDialect,
      mlir::func::FuncDialect,
      mlir::memref::MemRefDialect,
      mlir::async::AsyncDialect,
      mlir::bufferization::BufferizationDialect,
      mlir::tensor::TensorDialect,
      mlir::LLVM::LLVMDialect
    >();

#ifdef COMPILE_WITH_AIR
  registry.insert<xilinx::air::airDialect>();
  registry.insert<xilinx::AIE::AIEDialect>();
#endif

  // Add the following to include *all* MLIR Core dialects, or selectively
  // include what you need like above. You only need to register dialects that
  // will be *parsed* by the tool, not the one generated
  // registerAllDialects(registry);

  return mlir::asMainReturnCode(
      mlir::MlirOptMain(argc, argv, "Verif optimizer driver\n", registry));
}
