
//
// air-dma-nd-basic-async.mlir: This file is part of the PEQC-MLIR project.
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
// RUN: verif-opt --verif-air-dma-to-memref %s | FileCheck %s

module {
    func.func @dmatest(%a: memref<16xi32>, %b: memref<8xi32>) -> () {
// CHECK: dmatest([[A:%.+]]: memref<16xi32>, [[B:%.+]]:
        %c8 = arith.constant 8 : index
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
// CHECK: async.execute
// CHECK: [[SUBV:%.*]] = memref.subview [[A]][0] [8] [1]
// CHECK: memref.copy [[SUBV]], [[B]]
        %token = air.dma_memcpy_nd async (%b[] [] [], %a[%c0] [%c8] [%c1]) : (memref<8xi32>, memref<16xi32>)
        %r = air.wait_all async [%token]
        return
    }
}