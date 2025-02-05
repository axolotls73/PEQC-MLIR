
//
// par-basic.mlir: This file is part of the PEQC-MLIR project.
//
// Copyright (C) 2024 Colorado State University
//
// This program can be redistributed and/or modified under the terms
// of the license specified in the LICENSE.txt file at the root of the
// project.
//
// Contact: Louis-Noel Pouchet <pouchet@colostate.edu>
//          Emily Tucker <emily.tucker@colostate.edu>
// Author: Emily Tucker <emily.tucker@colostate.edu>
//
//

// RUN: verif-opt --verif-scf-parallel-to-async %s | FileCheck %s

module {
    %c0 = arith.constant 0 : index
    %c8 = arith.constant 8 : index
    %c32 = arith.constant 32 : index
    %c64 = arith.constant 64 : index
    %a = memref.alloc() : memref<64x64xindex>
// CHECK: scf.for [[ITER1:.*]] = %c0 to %c64 step %c32
// CHECK: scf.for [[ITER2:.*]] = %c0 to %c32 step %c8
    scf.parallel (%arg5, %arg6) = (%c0, %c0) to (%c64, %c32) step (%c32, %c8) {
// CHECK: async.execute
// CHECK: memref.store %c0, %alloc[[[ITER1]], [[ITER2]]]
        memref.store %c0, %a[%arg5, %arg6] : memref<64x64xindex>
        scf.reduce
    }
}
