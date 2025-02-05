
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
// CHECK: int* global;
  memref.global "private" @global : memref<2xi32>

// CHECK-NOT: main
// CHECK: {
    func.func @main () -> () {
// CHECK: int {{.*}};
        %0 = arith.constant 0 : index
        return
    }
// CHECK: }
}