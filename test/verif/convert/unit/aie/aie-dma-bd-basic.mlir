
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
// CHECK-DAG: memref.global "private" @[[DMA_GLOBAL_IN_SEM:.*_in_semaphore]] :
// CHECK-DAG: memref.global "private" @[[DMA_GLOBAL_OUT_SEM:.*]] :
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
// CHECK:   [[SEM_ARR_IN:%.*]] = memref.get_global @[[DMA_GLOBAL_IN_SEM]]
// CHECK:   [[SEM_ARR_OUT:%.*]] = memref.get_global @[[DMA_GLOBAL_OUT_SEM]]
// CHECK:   [[CST_0:%.*]] = arith.constant 0
// CHECK:   [[CMPVAL:%.*]] = arith.cmpi eq, [[CST_0]], [[ISIN]]
// CHECK:   [[READY_TO_WRITE:%.*]] = arith.constant 0
// CHECK:   [[READY_TO_READ:%.*]] = arith.constant 1
// CHECK:   scf.if [[CMPVAL]]
// CHECK:     [[SEM_OUT:%.*]] = memref.load [[SEM_ARR_OUT]][[[CHANNEL]]]
// CHECK:     verif.semaphore.wait [[SEM_OUT]], [[READY_TO_WRITE]]
// CHECK:     [[BUF1:%.*]] = memref.get_global @[[BUF_GLOBAL]]
// CHECK:     memref.copy [[BUF1]], [[DMA_BUF_CASTED_OUT]]
// CHECK:     verif.semaphore.set [[SEM_OUT]], [[READY_TO_READ]]
// CHECK:   else
// CHECK:     [[SEM_IN:%.*]] = memref.load [[SEM_ARR_IN]][[[CHANNEL]]]
// CHECK:     verif.semaphore.wait [[SEM_IN]], [[READY_TO_READ]]
// CHECK:     [[BUF2:%.*]] = memref.get_global @[[BUF_GLOBAL]]
// CHECK:     memref.copy [[DMA_BUF_CASTED_IN]], [[BUF2]]
// CHECK:     verif.semaphore.set [[SEM_IN]], [[READY_TO_WRITE]]
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

