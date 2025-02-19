
//
// memref-cast.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK: int* [[A:.*]];
  %a = memref.alloc() : memref<3x3xi32>
  %a2 = memref.cast %a : memref<3x3xi32> to memref<?x3xi32>
// CHECK-NEXT: int [[C0:.*]] = 0
  %0 = arith.constant 0 : index
// CHECK-NEXT: int [[C1:.*]] = 1
  %1 = arith.constant 1 : index
// CHECK-NEXT: int [[C2:.*]] = 2
  %s = arith.constant 2 : i32
// CHECK-NEXT: [[A]][[[C0]]][[[C1]]] = [[C2]]
  memref.store %s, %a2[%0, %1] : memref<?x3xi32>
}