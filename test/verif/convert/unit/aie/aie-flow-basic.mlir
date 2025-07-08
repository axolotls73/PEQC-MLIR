
//
// aie-flow-basic.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK: memref.global "private" @[[GLOBAL_SEM_ARRAY:.*]] :

// CHECK-NOT: aie.tile
  %tile14 = aie.tile(1, 4)
// CHECK-NOT: aie.tile
  %tile34 = aie.tile(3, 4)

// CHECK: memref.global "private" @[[FLOW_ARRAY:.*]] :
// CHECK: [[SEM:%.*]] = verif.semaphore
// CHECK: [[SEM_GLOBAL:%.*]] = memref.get_global @[[GLOBAL_SEM_ARRAY:.*]]
// CHECK: [[C0:%.*]] = arith.constant 0
// CHECK: memref.store [[SEM]], [[SEM_GLOBAL]][[[C0]]]

// CHECK-NOT: aie.flow
  aie.flow(%tile14, DMA: 0, %tile34, DMA:1)
}

