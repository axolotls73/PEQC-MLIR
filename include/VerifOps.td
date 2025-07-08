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
include "mlir/IR/BuiltinAttributes.td"
include "mlir/IR/CommonAttrConstraints.td"
include "mlir/IR/OpBase.td"


def Verif_SemaphoreOp : Verif_Op<"semaphore", [
        ]> {
    let summary = "semaphore declaration";
    let description = [{
Declares a new semaphore initialized to `init`.
    }];

    let arguments = (ins
        Builtin_IntegerAttr:$init
    );

    let results = (outs
        Verif_SemaphoreType:$sem
    );

    let assemblyFormat = [{
        `(` $init `)` attr-dict
    }];
}

def Verif_CountingSemaphoreOp : Verif_Op<"counting_semaphore", [
        ]> {
    let summary = "counting semaphore declaration";
    let description = [{
Declares a new counting semaphore initialized to `init`.
    }];

    let arguments = (ins
        Builtin_IntegerAttr:$init
    );

    let results = (outs
        Verif_CountingSemaphoreType:$sem
    );

    let assemblyFormat = [{
        `(` $init `)` attr-dict
    }];
}

def Verif_SemaphoreSetOp : Verif_Op<"semaphore.set", [
        ]> {
    let summary = "semaphore set";
    let description = [{
Set semaphore `sem` to value `val`.
    }];

    let arguments = (ins
        Verif_SemaphoreType:$sem,
        Index:$val
    );

    let assemblyFormat = [{
        $sem attr-dict `,` $val
    }];
}

def Verif_SemaphoreWaitOp : Verif_Op<"semaphore.wait", [
        ]> {
    let summary = "semaphore wait";
    let description = [{
Blocking wait on semaphore `sem` until it is assigned the value `val`.
    }];

    let arguments = (ins
        Verif_SemaphoreType:$sem,
        Index:$val
    );

    let assemblyFormat = [{
        $sem attr-dict `,` $val
    }];
}

def Verif_SemaphoreReleaseOp : Verif_Op<"semaphore.release", [
        ]> {
    let summary = "counting semaphore release";
    let description = [{
Increments counting semaphore `sem` by `val`.
    }];

    let arguments = (ins
        Verif_CountingSemaphoreType:$sem,
        Index:$val
    );

    let assemblyFormat = [{
        $sem attr-dict `,` $val
    }];
}

def Verif_SemaphoreAcquireOp : Verif_Op<"semaphore.acquire", [
        ]> {
    let summary = "counting semaphore acquire";
    let description = [{
Blocking wait on counting semaphore `sem` until its value is >= `val`, then decrement `sem` by `val`.
    }];

    let arguments = (ins
        Verif_CountingSemaphoreType:$sem,
        Index:$val
    );

    let assemblyFormat = [{
        $sem attr-dict `,` $val
    }];
}

def Verif_ErrorOp : Verif_Op<"error", [
        ]> {
    let summary = "runtime error";
    let description = [{
Throw a runtime error during interpretation in PEQC.
    }];

    let arguments = (ins
        StrAttr:$message
    );

    let assemblyFormat = [{
        $message attr-dict
    }];
}

def Verif_UndefOp : Verif_Op<"undef", [
        ]> {
    let summary = "";
    let description = [{
    }];

    let arguments = (ins
        StrAttr:$name,
        Variadic<AnyType>:$args
    );

    let results = (outs
        Variadic<AnyType>:$results
    );
}



// BELOW UNUSED

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
