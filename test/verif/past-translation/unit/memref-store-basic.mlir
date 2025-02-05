
//
// memref-store-basic.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK: int [[A:.*]] =
        %0 = arith.constant 0 : index
// CHECK: int [[B:.*]] =
        %1 = arith.constant 1 : index
// CHECK: int [[C:.*]] =
        %s = arith.constant 2 : i32
// CHECK: [[[A]]][[[B]]] = [[C]]
        memref.store %s, %a[%0, %1] : memref<3x3xi32>
        return
    }
}