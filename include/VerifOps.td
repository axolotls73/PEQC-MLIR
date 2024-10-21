//===- VerifOps.td - Verif dialect ops -----------*- tablegen -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef VERIF_OPS
#define VERIF_OPS

include "VerifTypes.td"
include "mlir/Interfaces/InferTypeOpInterface.td"
include "mlir/Interfaces/SideEffectInterfaces.td"
include "mlir/IR/OpBase.td"

def Verif_FooOp : Verif_Op<"foo", [Pure,
                                             SameOperandsAndResultType]> {
    let summary = "Illustrates how to define an operation.";
    let description = [{
        The `verif.foo` operation illustrates how to define a new
        operation in a dialect. It uses an operation trait to declare that it
        has no side effects.

        This operation takes an integer argument and returns an integer.

        Example:

        ```mlir
        %0 = arith.constant 2 : i32
        // Apply the foo operation to %0
        %1 = verif.foo %0 : i32
        ```
    }];

    let arguments = (ins I32:$input);
    let results = (outs I32:$res);

    let assemblyFormat = [{
        $input attr-dict `:` type($input)
    }];
}


def Verif_TestAddOp : Verif_Op<"test_add", [
        ]> {
    let summary = "";
    let description = [{
    }];

    let arguments = (ins
        I32:$lhs,
        I32:$rhs
    );

    let results = (outs
        I32:$res
    );

    let assemblyFormat = [{
        attr-dict `:` $lhs `+` $rhs
    }];
}


def Verif_ParRegionOp : Verif_Op<"par_region", [
            NoTerminator,
            SingleBlock
        ]> {
    let summary = "Parallel region for verification.";
    let description = [{
        This operation defines a parallel region -- operations
        in `par_region`'s region execute in parallel and
        must have the `VerifTaskTrait` trait.

        OpenMP-style fork/join parallelism, as many logical threads
        as there are parallel tasks/loop iterations executed.
    }];

    //check for VerifTaskTrait
    // let hasRegionVerifier = 1;
    let regions = (region
        AnyRegion:$par
    );


    let assemblyFormat = [{
        attr-dict `:` regions
    }];


}

def VerifTaskTrait : HasParent<"ParRegionOp">;

def Verif_TaskOp : Verif_Op<"task", [
            VerifTaskTrait,
            NoTerminator,
            SingleBlock
        ]> {
    let summary = "Single task executed.";
    let description = [{
    }];

    // let assemblyFormat = [{
    //     attr-dict `:` regions
    // }];
}


def Verif_MemAllocOp : Verif_Op<"mem_alloc", [
        ]> {
    let summary = "";
    let description = [{
    }];

    let results = (outs
        Verif_Ptr:$ptr
    );

    let assemblyFormat = [{
        attr-dict `:` type($ptr)
    }];
}

#endif // VERIF_OPS
