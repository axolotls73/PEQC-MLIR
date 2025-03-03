
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

module {
// CHECK-DAG: memref.global "private" @[[DMA_GLOBAL_IN:.*_in]] :
// CHECK-DAG: memref.global "private" @[[DMA_GLOBAL_OUT:.*_out]] :
  %tile14 = aie.tile(1, 4)

// CHECK: memref.global "private" @[[BUF_GLOBAL:.*]] : memref<1xi32>
  %buf = aie.buffer(%tile14) : memref<1xi32>

// CHECK: func.func @[[MEM_FUNC:.*]]([[CHANNEL:%.*]]: index, [[ISIN:%.*]]: index)
// CHECK:   cf.br ^[[BD0:.*]]
// CHECK: ^[[BD0]]:
// CHECK:   [[DMA_BUFARR_IN:%.*]] = memref.get_global @[[DMA_GLOBAL_IN]]
// CHECK:   [[DMA_BUFARR_OUT:%.*]] = memref.get_global @[[DMA_GLOBAL_OUT]]
// CHECK:   [[DMA_BUF_IN:%.*]] = memref.load [[DMA_BUFARR_IN]][[[CHANNEL]]]
// CHECK:   [[DMA_BUF_OUT:%.*]] = memref.load [[DMA_BUFARR_OUT]][[[CHANNEL]]]
// CHECK:   [[DMA_BUF_CASTED_IN:%.*]] = memref.cast [[DMA_BUF_IN]]
// CHECK:   [[DMA_BUF_CASTED_OUT:%.*]] = memref.cast [[DMA_BUF_OUT]]
// CHECK:   [[CST_0:%.*]] = arith.constant 0
// CHECK:   [[CMPVAL:%.*]] = arith.cmpi eq, [[CST_0]], [[ISIN]]
// CHECK:   scf.if [[CMPVAL]]
// CHECK:     [[BUF1:%.*]] = memref.get_global @[[BUF_GLOBAL]]
// CHECK:     memref.copy [[BUF1]], [[DMA_BUF_CASTED_OUT]]
// CHECK:   else
// CHECK:     [[BUF2:%.*]] = memref.get_global @[[BUF_GLOBAL]]
// CHECK:     memref.copy [[DMA_BUF_CASTED_IN]], [[BUF2]]
// CHECK:   cf.br ^[[END:.*]]
// CHECK: ^[[END]]:
// CHECK:   cf.br ^[[FUNCEND:.*]]
// CHECK: ^[[FUNCEND]]:
// CHECK:   return

// CHECK: async.execute
// CHECK-NOT: aie.mem
  %mem14 = aie.mem(%tile14) {

// CHECK:   async.execute
// CHECK:    call @[[MEM_FUNC]]
// CHECK:   call @[[MEM_FUNC]]
    aie.dma_start("MM2S", 0, ^bd0, ^bd0) // only the same so that only one func is generated
    ^bd0:
        aie.dma_bd(%buf : memref<1xi32>)
        aie.next_bd ^end
    ^end:
        aie.end
  }
}
// CHECK: }

