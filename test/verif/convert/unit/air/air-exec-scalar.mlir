
//
// air-exec-scalar.mlir: This file is part of the PEQC-MLIR project.
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

// REQUIRES: air
// RUN: split-file %s %t && \
// RUN: verif-opt --verif-air-execute-to-async %t/input.mlir > %t/conversion.mlir 2> %t/STDERR.txt

// RUN: cat %t/conversion.mlir | FileCheck %s

//--- input.mlir

module {
    %alloc = memref.alloc() : memref<64x64xf32>
// CHECK: [[BUFFER:%.*]] = memref.alloc() : memref<1xindex>
// CHECK: async.execute
// CHECK: memref.store {{.*}}, [[BUFFER]][
// CHECK: async.yield
    %async_token_12, %a = air.execute -> (index) {
        %i = arith.constant 30 : index
        air.execute_terminator %i : index
    } {id = 5 : i32}
    %0 = arith.constant 0. : f32
    %1 = arith.constant 0 : index
    memref.store %0, %alloc[%a, %a] : memref<64x64xf32>
}
