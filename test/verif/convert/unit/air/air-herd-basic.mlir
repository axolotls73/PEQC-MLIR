
//
// air-herd-basic.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK-DAG: [[C2:%.*]] = arith.constant 2
// CHECK-DAG: [[A:%.*]] = memref.alloc
  %c2 = arith.constant 2 : index
  %alloc = memref.alloc() : memref<1x1x64x64xi32, 1>
// CHECK: scf.parallel ([[IV1:%.*]], [[IV2:%.*]]) = ({{.*}}) to ([[C2]], [[C2]])
  air.herd @herd_0  tile (%arg0, %arg1) in (%arg2=%c2, %arg3=%c2) args(%arg4=%alloc) : memref<1x1x64x64xi32, 1> {
    %c512_i32 = arith.constant 512 : i32
// CHECK: [[C512:%.*]] = arith.constant 512
// CHECK: memref.store [[C512]], [[A]][[[IV1]], [[IV2]], [[C2]], [[C2]]]
    memref.store %c512_i32, %arg4[%arg0, %arg1, %arg2, %arg3] : memref<1x1x64x64xi32, 1>
    air.herd_terminator
  }
}