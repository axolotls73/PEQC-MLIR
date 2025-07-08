
//
// createmain.mlir: This file is part of the PEQC-MLIR project.
//
// Copyright (C) 2025 Colorado State University
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

// RUN: verif-opt --verif-create-main=argument-names="A,B,C,D,E" %s | FileCheck %s

module {
  // CHECK: memref.global "private" @A : memref<16x1xi32>
  // CHECK: memref.global "private" @B : memref<16x2xi32>
  // CHECK: memref.global "private" @C : memref<16x3xi32>
  // CHECK: memref.global "private" @D : memref<16x4xi32>
  // CHECK: memref.global "private" @E : memref<16x5xi32>

  // CHECK: func.func @main
  // CHECK:   [[ARG1V:%.*]] = memref.get_global @A : memref<16x1xi32>
  // CHECK:   [[ARG2V:%.*]] = memref.get_global @B : memref<16x2xi32>
  // CHECK:   [[ARG3V:%.*]] = memref.get_global @C : memref<16x3xi32>
  // CHECK:   [[RES:%.*]]:2 = call @forward([[ARG1V]], [[ARG2V]], [[ARG3V]])
  // CHECK:   [[ARG4V:%.*]] = memref.get_global @D : memref<16x4xi32>
  // CHECK:   memref.copy [[RES]]#0, [[ARG4V]]
  // CHECK:   [[ARG5V:%.*]] = memref.get_global @E : memref<16x5xi32>
  // CHECK:   memref.copy [[RES]]#1, [[ARG5V]]

  // CHECK: func.func @forward
  func.func @forward(%arg0: memref<16x1xi32>, %arg1: memref<16x2xi32>, %arg2: memref<16x3xi32>) -> (memref<16x4xi32>, memref<16x5xi32>) {
    %1 = memref.alloc() : memref<16x4xi32>
    %2 = memref.alloc() : memref<16x5xi32>
    return %1, %2 : memref<16x4xi32>, memref<16x5xi32>
  }
}
