/*
 * VerifPasses.td: This file is part of the PEQC-MLIR project.
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

#ifndef VERIF_PASS
#define VERIF_PASS

include "mlir/Pass/PassBase.td"

def VerifScfParallelToAsync: Pass<"verif-scf-parallel-to-async", "::mlir::ModuleOp"> {
  let summary = "Convert acf.parallel to scf.for and async.execute";
  let description = [{
  }];
  let dependentDialects = ["async::AsyncDialect"];
}

def VerifAirExecuteToAsync: Pass<"verif-air-execute-to-async", "::mlir::ModuleOp"> {
  let summary = "Convert air.execute to async.execute";
  let description = [{
  }];
  let dependentDialects = ["async::AsyncDialect"];
}

def VerifAirToScfPar: Pass<"verif-air-to-scf-par", "::mlir::ModuleOp"> {
  let summary = "Convert air.launch, air.segment, and air.herd to scf.parallel";
  let description = [{
  }];
  let dependentDialects = ["scf::SCFDialect", "async::AsyncDialect"];
}

def VerifDmaToMemref: Pass<"verif-dma-to-memref", "::mlir::ModuleOp"> {
  let summary = "Convert dma_memcpy_nd to memref operations";
  let description = [{
  }];
  let dependentDialects = ["memref::MemRefDialect", "async::AsyncDialect"];
}

def VerifConvertChannel: Pass<"verif-convert-channel", "::mlir::ModuleOp"> {
  let summary = "Convert air.channel to memref operations and async.execute";
  let description = [{
  }];
  let dependentDialects = ["memref::MemRefDialect", "async::AsyncDialect"];
}

#endif // VERIF_PASS
