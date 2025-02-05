
//
// memref-global-basic.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK: int* global;
  memref.global "private" @global : memref<2xi32>

// CHECK: void test_func
    func.func @test_func (%a: memref<3x3xi32>) -> () {
// CHECK: int [[CST_0:.*]] =
        %0 = arith.constant 0 : index
// CHECK: int [[I:.*]] =
        %i = arith.constant 42 : i32

        %global = memref.get_global @global : memref<2xi32>
// CHECK: global[[[CST_0]]] = [[I]]
        memref.store %i, %global[%0] : memref<2xi32>
        return
    }
}