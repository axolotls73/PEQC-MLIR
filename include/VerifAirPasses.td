/*
 * VerifAirPasses.td: This file is part of the PEQC-MLIR project.
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

#ifndef VERIF_AIR_PASS
#define VERIF_AIR_PASS

include "mlir/Pass/PassBase.td"

def VerifAirExecuteToAsync: Pass<"verif-air-execute-to-async", "::mlir::ModuleOp"> {
  let summary = "Convert air.execute to async.execute";
  let description = [{
Convert `air.execute` to `async.execute`, converting `air.token` dependencies and results to `async.token`.

To avoid wrapping `air.execute` return variables in an `async.value`, this pass also moves the
declaration of some return variables to make them visible outside the `async.execute` region.
If declared inside the `air.execute` region,
scalar return values are stored in a memref declared outside the region,
and the `memref.alloc` ops are moved outside of the region.

See tests `test/verif/convert/unit/air/air-exec-scalar.mlir`, `test/verif/convert/unit/air/air-exec-alloc.mlir`.
  }];
  let dependentDialects = [
    "arith::ArithDialect",
    "memref::MemRefDialect",
    "async::AsyncDialect"
  ];
}

def VerifAirToScfPar: Pass<"verif-air-to-scf-par", "::mlir::ModuleOp"> {
  let summary = "Convert air.launch, air.segment, and air.herd to scf.parallel";
  let description = [{
Convert `air.launch`, `air.segment`, and `air.herd` to an `scf.parallel` operation with
loop iterators starting at 0.
If air ops are `async`, the `scf.parallel` operation is wrapped in `async.execute`.

See tests `test/verif/convert/unit/air/air-herd-basic.mlir`, `test/verif/convert/unit/air/air-launch-basic.mlir`.
  }];
  let dependentDialects = [
    "arith::ArithDialect",
    "scf::SCFDialect",
    "async::AsyncDialect"
  ];
}

def VerifDmaToMemref: Pass<"verif-air-dma-to-memref", "::mlir::ModuleOp"> {
  let summary = "Convert air.dma_memcpy_nd to memref operations";
  let description = [{
Convert `air.dma_memcpy_nd` to a combination of `memref.subview` and `memref.copy` operations,
wrapping in `async.execute` if `async` is specified.

See tests `test/verif/convert/unit/air/air-dma-nd-basic.mlir`, `test/verif/convert/unit/air/air-dma-nd-basic-async.mlir`.
  }];
  let dependentDialects = [
    "arith::ArithDialect",
    "memref::MemRefDialect",
    "async::AsyncDialect"
  ];
}

def VerifConvertChannel: Pass<"verif-air-convert-channel", "::mlir::ModuleOp"> {
  let summary = "Convert air.channel to memref, async, and verif operations";
  let description = [{
  }];
  let dependentDialects = [
    "arith::ArithDialect",
    "memref::MemRefDialect",
    "scf::SCFDialect",
    "affine::AffineDialect",
    "async::AsyncDialect",
    "verif::VerifDialect"
  ];
}

def VerifConvertObjfifo: Pass<"verif-aie-convert-objfifo", "::mlir::ModuleOp"> {
  let summary = "Convert aie.objectfifo to memref and verif operations";
  let description = [{
  }];
  let dependentDialects = [
    "arith::ArithDialect",
    "memref::MemRefDialect",
    "scf::SCFDialect",
    "affine::AffineDialect",
    "async::AsyncDialect",
    "verif::VerifDialect"
  ];
}

def VerifConvertAIE: Pass<"verif-convert-aie", "::mlir::ModuleOp"> {
  let summary = "Convert aie operations";
  let description = [{
Converts (a subset of) AIE operations to standard dialects.

To use in `verif-translate`, `--affine-expand-index-ops` and/or `--lower-affine` must be used to lower the introduced `affine` ops.
  }];
  let dependentDialects = [
    "arith::ArithDialect",
    "memref::MemRefDialect",
    "func::FuncDialect",
    "scf::SCFDialect",
    "cf::ControlFlowDialect",
    "affine::AffineDialect",
    "async::AsyncDialect",
    "verif::VerifDialect"
  ];
  let options = [
    Option<"countingSemToSpawn", "counting-semaphore-to-spawn", "bool", /*default=*/"false",
        "convert multi-producer counting semaphore pattern to async spawn (experimental)">
  ];
}


#endif // VERIF_PASS
