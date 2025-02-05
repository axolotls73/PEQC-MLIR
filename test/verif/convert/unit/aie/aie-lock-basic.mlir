
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
  %tile14 = aie.tile(1, 4)
  aie.core(%tile14) {

  // CHECK: [[LOCK:%.*]] = verif.semaphore
    %lock14_6 = aie.lock(%tile14, 7)

  // CHECK: [[CST0:%.*]] = arith.constant 0
  // CHECK: verif.semaphore.wait [[LOCK]], [[CST0]]
    aie.use_lock(%lock14_6, "Acquire", 0)

  // CHECK: [[CST1:%.*]] = arith.constant 1
  // CHECK: verif.semaphore.set [[LOCK]], [[CST1]]
    aie.use_lock(%lock14_6, "Release", 1)

    aie.end
  }
}

