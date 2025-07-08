
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

// RUN: verif-opt --verif-create-main %s | FileCheck %s

module {
  // CHECK: memref.global "private" @[[ARG1:.*]] : memref<16x1xi32>
  // CHECK: memref.global "private" @[[ARG2:.*]] : memref<16x2xi32>
  // CHECK: memref.global "private" @[[ARG3:.*]] : memref<16x3xi32>

  // CHECK: func.func @main
  // CHECK:   [[ARG1V:%.*]] = memref.get_global @[[ARG1:.*]] : memref<16x1xi32>
  // CHECK:   [[ARG2V:%.*]] = memref.get_global @[[ARG2:.*]] : memref<16x2xi32>
  // CHECK:   [[ARG3V:%.*]] = memref.get_global @[[ARG3:.*]] : memref<16x3xi32>
  // CHECK:   call @forward([[ARG1V]], [[ARG2V]], [[ARG3V]])

  // CHECK: func.func @forward
  func.func @forward(%arg0: memref<16x1xi32>, %arg1: memref<16x2xi32>, %arg2: memref<16x3xi32>) {
    return
  }
}
