/*
 * VerifOps.td: This file is part of the PEQC-MLIR project.
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

#ifndef VERIF_OPS
#define VERIF_OPS

include "VerifTypes.td"
include "mlir/Interfaces/InferTypeOpInterface.td"
include "mlir/Interfaces/SideEffectInterfaces.td"
// include "mlir/IR/BuiltinAttributes.td"
include "mlir/IR/CommonAttrConstraints.td"
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


// from llvm/mlir/include/mlir/Dialect/MemRef/IR/MemRefOps.td
/// A TypeAttr for memref types.
def MemRefTypeAttr
    : TypeAttrBase<"::mlir::MemRefType", "memref type attribute"> {
  let constBuilderCall = "::mlir::TypeAttr::get($0)";
}

// fifo ops!

def Verif_FifoInitOp : Verif_Op<"fifo.init", [
        ]> {
    let summary = "";
    let description = [{
    }];

    let arguments = (ins
        MemRefTypeAttr:$elt_type
    );

    let results = (outs
        Index:$fifo_id
    );

    let assemblyFormat = [{
        attr-dict `:` $elt_type
    }];
}

def Verif_FifoReadOp : Verif_Op<"fifo.read", [
        ]> {
    let summary = "";
    let description = [{
    }];
    let hasVerifier = 1;

    let arguments = (ins
        Index:$fifo_id
    );

    let results = (outs
        AnyMemRef:$res
    );

    let assemblyFormat = [{
        attr-dict $fifo_id `:` type($res)
    }];
}

def Verif_FifoWriteOp : Verif_Op<"fifo.write", [
        ]> {
    let summary = "";
    let description = [{
    }];
    let hasVerifier = 1;

    let arguments = (ins
        Index:$fifo_id,
        AnyMemRef:$val
    );

    let assemblyFormat = [{
        attr-dict $fifo_id `,` $val `:` type($val)
    }];
}

#endif // VERIF_OPS
