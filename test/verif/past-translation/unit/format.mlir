
//
// format.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: split-file %s %t

// RUN: verif-translate --translate-to-past %t/mixed-ops.mlir | FileCheck %t/mixed-ops.mlir


//--- mixed-ops.mlir

module {
// CHECK: int* global
// CHECK: void test
// CHECK: }
// CHECK: void test
// CHECK: }

// CHECK: {
// CHECK: {{.*}} = 1
// CHECK: }
  func.func @test2 () {
    %2 = arith.constant 1 : index
    return
  }
  %1 = arith.constant 1 : index
  func.func @test () {
    %2 = arith.constant 1 : index
    return
  }
  memref.global "private" @global : memref<1xindex>
}

