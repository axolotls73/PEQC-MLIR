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
  let summary = "Convert scf.parallel to scf.for and async.execute";
  let description = [{
Convert 'scf.parallel' to nested `scf.for` loops with an `async.execute` body.
Requires the `scf.parallel` `init` argument types to implement `MemRefElementTypeInterface`,
i.e. be storable in a memref.

See tests `test/verif/convert/unit/par-basic.mlir`, `test/verif/convert/unit/par-docs-example.mlir`.
  }];
  let dependentDialects = [
    "arith::ArithDialect",
    "scf::SCFDialect",
    "memref::MemRefDialect",
    "async::AsyncDialect"
  ];
}

def VerifMoveToMain: Pass<"verif-move-to-main", "::mlir::ModuleOp"> {
  let summary = "Helper pass that moves all non-func.func and non-memref.global ops to the beginning of an (already existing) func.func @main";
  let description = [{
  }];
  let dependentDialects = [
    "func::FuncDialect"
  ];
}

def VerifCreateMain: Pass<"verif-create-main", "::mlir::ModuleOp"> {
  let summary = "if the module contains a single function with memref arguments, create a func.func @main that calls the function with corresponding memref.global arguments";
  let description = [{
  }];
  let dependentDialects = [
    "func::FuncDialect",
    "memref::MemRefDialect",
  ];
}

#endif // VERIF_PASS
