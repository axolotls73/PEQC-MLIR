
//
// main-function.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK: void global;
// CHECK: void global2;
// CHECK-NOT: =
  memref.global "private" @global : memref<1xmemref<?xi32>>

// CHECK-NOT: main
// CHECK: {
    func.func @main () -> () {
// CHECK-DAG: global[0] =
// CHECK-DAG: global2[0] =
// CHECK-DAG: global3[0] =
// CHECK-DAG: global4[0] =
// CHECK: int {{.*}};
        %0 = arith.constant 0 : index
        return
    }
// CHECK: }

// CHECK-NOT: =
  memref.global "private" @global2 : memref<1xmemref<?xi32>>
  memref.global "private" @global3 : memref<1xmemref<?xi32>>
  memref.global "private" @global4 : memref<1xmemref<?xi32>>
}