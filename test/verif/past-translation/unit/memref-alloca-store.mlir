
//
// memref-alloca-store.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: void test_func
    func.func @test_func (%a: memref<3x3xi32>) -> () {
// CHECK-DAG: double* [[ARR:.*]];
        %alloca = memref.alloca() : memref<f64>
// CHECK-DAG: double [[cst:.*]] =
        %cst = arith.constant 0.000000e+00 : f64
// CHECK: [[ARR]][0] = [[cst]]
        memref.store %cst, %alloca[] : memref<f64>
        return
    }
}