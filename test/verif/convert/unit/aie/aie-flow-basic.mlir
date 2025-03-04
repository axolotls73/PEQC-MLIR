
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
// CHECK: memref.global "private" @[[DMA_GLOBAL_14_IN:.*_in]] :
// CHECK: memref.global "private" @[[DMA_GLOBAL_14_OUT:.*_out]] :
// CHECK: memref.global "private" @[[DMA_GLOBAL_14_IN_SEM:.*_in_semaphore]] :
// CHECK: memref.global "private" @[[DMA_GLOBAL_14_OUT_SEM:.*]] :
// CHECK-NOT: aie.tile
  %tile14 = aie.tile(1, 4)
// CHECK: memref.global "private" @[[DMA_GLOBAL_34_IN:.*_in]] :
// CHECK: memref.global "private" @[[DMA_GLOBAL_34_OUT:.*_out]] :
// CHECK: memref.global "private" @[[DMA_GLOBAL_34_IN_SEM:.*_in_semaphore]] :
// CHECK: memref.global "private" @[[DMA_GLOBAL_34_OUT_SEM:.*]] :
// CHECK-NOT: aie.tile
  %tile34 = aie.tile(3, 4)

// CHECK: [[ALLOCFLOWARR:%.*]] = memref.alloc() :
// CHECK: [[FLOWARR:%.*]] = memref.cast [[ALLOCFLOWARR]]
// CHECK: [[SEM:%.*]] = verif.semaphore
// CHECK: [[DMA_14:%.*]] = memref.get_global @[[DMA_GLOBAL_14_OUT]]
// CHECK: [[DMA_14_OUT_SEM:%.*]] = memref.get_global @[[DMA_GLOBAL_14_OUT_SEM]]
// CHECK: [[CST_0:%.*]] = arith.constant 0
// CHECK: memref.store [[FLOWARR]], [[DMA_14]][[[CST_0]]]
// CHECK: memref.store [[SEM]], [[DMA_14_OUT_SEM]][[[CST_0]]]
// CHECK: [[DMA_34:%.*]] = memref.get_global @[[DMA_GLOBAL_34_IN]]
// CHECK: [[DMA_34_IN_SEM:%.*]] = memref.get_global @[[DMA_GLOBAL_34_IN_SEM]]
// CHECK: [[CST_1:%.*]] = arith.constant 1
// CHECK: memref.store [[FLOWARR]], [[DMA_34]][[[CST_1]]]
// CHECK: memref.store [[SEM]], [[DMA_34_IN_SEM]][[[CST_1]]]

// CHECK-NOT: aie.flow
  aie.flow(%tile14, DMA: 0, %tile34, DMA:1)
}

