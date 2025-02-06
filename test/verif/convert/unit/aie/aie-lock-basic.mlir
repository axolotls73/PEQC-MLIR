
//
// aie-lock-basic.mlir: This file is part of the PEQC-MLIR project.
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
// just have this one so it's not captured below
// CHECK: memref.global
  %tile14 = aie.tile(1, 4)

// CHECK-DAG: [[SEM1:%.*]] = verif.semaphore
// CHECK-DAG: memref.global "private" @[[SEMGLOBAL:.*]] :
// CHECK: [[SEMARR1:%.*]] = memref.get_global @[[SEMGLOBAL]]
// CHECK: [[C01:%.*]] = arith.constant 0
// CHECK: memref.store [[SEM1]], [[SEMARR1]][[[C01]]]
  %lock14_6 = aie.lock(%tile14, 7)

  aie.core(%tile14) {

// CHECK: [[SEMARR2:%.*]] = memref.get_global @[[SEMGLOBAL]]
// CHECK: [[C021:%.*]] = arith.constant 0
// CHECK: [[SEM2:%.*]] = memref.load [[SEMARR2]][[[C021]]]
// CHECK: [[C022:%.*]] = arith.constant 0
// CHECK: verif.semaphore.wait [[SEM2]], [[C022]]
    aie.use_lock(%lock14_6, "Acquire", 0)

// CHECK: [[SEMARR3:%.*]] = memref.get_global @[[SEMGLOBAL]]
// CHECK: [[C03:%.*]] = arith.constant 0
// CHECK: [[SEM3:%.*]] = memref.load [[SEMARR3]][[[C03]]]
// CHECK: [[C1:%.*]] = arith.constant 1
// CHECK: verif.semaphore.set [[SEM3]], [[C1]]
    aie.use_lock(%lock14_6, "Release", 1)

    aie.end
  }
}

