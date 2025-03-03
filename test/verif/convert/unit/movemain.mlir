
//
// movemain.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: verif-opt --verif-move-to-main %s | FileCheck %s

module {
// CHECK-NOT: arith.constant 1 : index
  %c = arith.constant 1 : index

// CHECK-NOT: scf.for
  scf.for %arg1 = %c to %c step %c {
    %a = arith.constant 3 : index
  }

// CHECK: func.func @main
// CHECK: arith.constant 1 : index
// CHECK: scf.for
// CHECK: memref.alloc() : memref<1xi32>
// CHECK: arith.constant 5 : index
// CHECK: return
  func.func @main () -> () {
    %c2 = arith.constant 5 : index
    return
  }

// CHECK-NOT: memref.alloc() : memref<1xi32>
  %a = memref.alloc() : memref<1xi32>
}