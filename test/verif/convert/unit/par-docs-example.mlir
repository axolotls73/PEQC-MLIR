
//
// par-docs-example.mlir: This file is part of the PEQC-MLIR project.
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
    %buffer = memref.alloc() : memref<100xf32>
    %init = arith.constant 0.0 : f32
    %lb = arith.constant 0 : index
    %ub = arith.constant 32 : index
    %step = arith.constant 8 : index
// CHECK-DAG: [[INIT:%.*]] = arith.constant 0.
// CHECK-DAG: [[LB:%.*]] = arith.constant 0 :
// CHECK-DAG: [[UB:%.*]] = arith.constant 32
// CHECK-DAG: [[STEP:%.*]] = arith.constant 8
// CHECK: scf.for [[ITER:%.*]] = [[LB]] to [[UB]] step [[STEP]] iter_args([[IA1:.*]] = [[LB]])
    %res1, %res2 = scf.parallel (%iv) = (%lb) to (%ub) step (%step) init (%init, %init) -> (f32, f32) {
// CHECK: async.execute
        %elem_to_reduce1 = memref.load %buffer[%iv] : memref<100xf32>
        %elem_to_reduce2 = memref.load %buffer[%iv] : memref<100xf32>
        scf.reduce(%elem_to_reduce1, %elem_to_reduce2 : f32, f32) {
            ^bb0(%lhs : f32, %rhs: f32):
            %res = arith.addf %lhs, %rhs : f32
            scf.reduce.return %res : f32
        }, {
            ^bb0(%lhs : f32, %rhs: f32):
            %res = arith.mulf %lhs, %rhs : f32
            scf.reduce.return %res : f32
        }
    }
    memref.store %res1, %buffer[%ub] : memref<100xf32>
    memref.store %res2, %buffer[%lb] : memref<100xf32>
}