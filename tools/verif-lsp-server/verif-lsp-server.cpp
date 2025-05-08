/*
 * verif-lsp-server.cpp: This file is part of the PEQC-MLIR project.
 *
 * Copyright (C) 2025 Colorado State University
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

#include "mlir/InitAllDialects.h"
#include "mlir/Tools/mlir-lsp-server/MlirLspServerMain.h"
#include "VerifDialect.h"

#ifdef COMPILE_WITH_AIR
  #include "air/Dialect/AIR/AIRDialect.h"
  #include "aie/Dialect/AIE/IR/AIEDialect.h"
  #include "aie/Dialect/AIEX/IR/AIEXDialect.h"
#endif

int main(int argc, char **argv) {
  mlir::DialectRegistry registry;
  mlir::registerAllDialects(registry);
  registry.insert<mlir::verif::VerifDialect>();
#ifdef COMPILE_WITH_AIR
  registry.insert<xilinx::air::airDialect>();
  registry.insert<xilinx::AIE::AIEDialect>();
  registry.insert<xilinx::AIEX::AIEXDialect>();
#endif
  return mlir::failed(mlir::MlirLspServerMain(argc, argv, registry));
}
