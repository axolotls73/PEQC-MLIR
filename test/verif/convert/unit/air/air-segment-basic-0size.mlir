
//
// air-segment-basic-0size.mlir: This file is part of the PEQC-MLIR project.
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
// RUN: verif-opt --verif-air-to-scf-par %s | FileCheck %s

module {
// CHECK-DAG: [[A:%.*]] = memref.alloc
  %alloc = memref.alloc() : memref<1x1x64x64xi32, 1>
// CHECK-NOT: scf.parallel
  air.segment @segment_0 args(%arg4=%alloc) : memref<1x1x64x64xi32, 1> {
    %c512_i32 = arith.constant 512 : i32
    %c2 = arith.constant 2 : index
// CHECK: [[C512:%.*]] = arith.constant 512
// CHECK: memref.store [[C512]], [[A]]
    memref.store %c512_i32, %arg4[%c2, %c2, %c2, %c2] : memref<1x1x64x64xi32, 1>
    air.segment_terminator
  }
}