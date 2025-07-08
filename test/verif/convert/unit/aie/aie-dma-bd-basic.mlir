
//
// aie-dma-bd-basic.mlir: This file is part of the PEQC-MLIR project.
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

// CHECK: #[[MAP:.*]] = affine_map<(d0) -> (d0)>
module {
// CHECK: memref.global "private" @[[GLOBAL_SEM_ARRAY:.*]] :

// CHECK-NOT: aie.tile
  %tile14 = aie.tile(1, 4)
// CHECK-NOT: aie.tile
  %tile34 = aie.tile(3, 4)

// CHECK: memref.global "private" @[[FLOW_ARRAY:.*]] :
// CHECK-NOT: aie.flow
  aie.flow(%tile14, DMA: 0, %tile34, DMA:1)

// CHECK: memref.global "private" @[[BUF_GLOBAL:.*]] : memref<1xi32>
  %buf = aie.buffer(%tile14) : memref<1xi32>

// CHECK: func.func
// CHECK:   [[SEM_ARR_OUT:%.*]] = memref.get_global @[[GLOBAL_SEM_ARRAY]]
// CHECK:   [[DMA_BUF_OUT:%.*]] = memref.get_global @[[FLOW_ARRAY]]
// CHECK:   [[SEM_OUT:%.*]] = memref.load [[SEM_ARR_OUT]]
// CHECK:   [[CST_0:%.*]] = arith.constant 0
// CHECK:   [[CST_1:%.*]] = arith.constant 1
// CHECK:   [[READY_TO_WRITE:%.*]] = arith.constant 0
// CHECK:   [[READY_TO_READ:%.*]] = arith.constant 1
// CHECK:   [[OUTSIZE:%.*]] = arith.constant 1
// CHECK:   scf.for [[OUT_I:%.*]] = [[CST_0]] to [[OUTSIZE]] step [[CST_1]]
// CHECK:     [[OUTLINDEX:%.*]] = affine.apply #[[MAP]]([[OUT_I]])
// CHECK:     [[OUTINDEX:%.*]] = affine.delinearize_index [[OUTLINDEX]] into (1)
// CHECK:     verif.semaphore.wait [[SEM_OUT]], [[READY_TO_WRITE]]
// CHECK:     [[BUF1:%.*]] = memref.get_global @[[BUF_GLOBAL]]
// CHECK:     [[OUTVAL:%.*]] = memref.load [[BUF1]][[[OUTINDEX]]]
// CHECK:     memref.store [[OUTVAL]], [[DMA_BUF_OUT]][[[CST_0]]]
// CHECK:     verif.semaphore.set [[SEM_OUT]], [[READY_TO_READ]]

// CHECK: async.execute
// CHECK-NOT: aie.mem
  %mem14 = aie.mem(%tile14) {

    aie.dma_start("MM2S", 0, ^bd0, ^end)
    ^bd0:
        aie.dma_bd(%buf : memref<1xi32>)
        aie.next_bd ^end
    ^end:
        aie.end
  }
}
// CHECK: }

