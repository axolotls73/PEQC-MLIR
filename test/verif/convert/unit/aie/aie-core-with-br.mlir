
//
// aie-core-with-br.mlir: This file is part of the PEQC-MLIR project.
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

// REQUIRES: air
// RUN: verif-opt --verif-convert-aie %s | FileCheck %s

module {
  %tile14 = aie.tile(1, 4)

// CHECK: func.func
// CHECK:   arith.constant
// CHECK:   cf.br ^[[BB:.*]]
// CHECK: ^[[BB]]:
// CHECK:   arith.constant
// CHECK:   memref.store
// CHECK:   cf.br ^[[BB]]
// CHECK:   return

// CHECK: async.execute
// CHECK:   func.call
  aie.core(%tile14) {
    %6 =  arith.constant 3 : index
    cf.br ^bb
  ^bb:
    %a = memref.alloc() : memref<1xindex>
    %i = arith.constant 0 : index
    memref.store %i, %a[%i] : memref<1xindex>

    cf.br ^bb
  }
}

