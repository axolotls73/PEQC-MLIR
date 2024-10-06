//===- VerifPsss.td - Verif dialect passes -------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

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

#endif // VERIF_PASS
