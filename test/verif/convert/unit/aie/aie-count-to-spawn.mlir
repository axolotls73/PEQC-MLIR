
//
// aie-count-to-spawn.mlir: This file is part of the PEQC-MLIR project.
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
  aie.device(npu1_4col) {

    %tile_0_1 = aie.tile(0, 1)
    %tile34 = aie.tile(3, 4)

    aie.flow(%tile34, DMA: 0, %tile_0_1, DMA: 1)
    aie.flow(%tile_0_1, DMA: 3, %tile34, DMA: 2)
    aie.flow(%tile_0_1, DMA: 4, %tile34, DMA: 3)

    %buf20 = aie.buffer(%tile_0_1) {sym_name = "buf20"} : memref<16x8xi32, 1>

    %lock_0_1_1 = aie.lock(%tile_0_1, 3) {init = 2 : i32}
    %lock_0_1_2 = aie.lock(%tile_0_1, 2) {init = 0 : i32}

// CHECK: func.func @[[BB4FUNC:.*]]()
// CHECK:   cf.br ^[[BB4BB1:.*]]
// CHECK-NEXT: ^[[BB4BB1]]:

// CHECK:   async.execute
// CHECK:   func.call @[[BB20FUNC:.*]]() : () -> ()
// CHECK:   async.add_to_group
// CHECK:   async.execute
// CHECK:   func.call @[[BB22FUNC:.*]]() : () -> ()
// CHECK:   async.add_to_group
// CHECK:   async.await_all

// this is still a loop
// CHECK:   cf.br ^[[BB4BB1]]


// CHECK: func.func @[[BB20FUNC]]()
// CHECK:   cf.br ^[[BB20BB1:.*]]
// CHECK-NEXT: ^[[BB20BB1]]:
// loop removed
// CHECK:   cf.br ^[[BB20BB2:.*]]
// CHECK:   ^[[BB20BB2]]
// CHECK-NEXT: return


// CHECK: func.func @[[BB22FUNC]]()
// CHECK:   cf.br ^[[BB22BB1:.*]]
// CHECK-NEXT: ^[[BB22BB1]]:
// loop removed
// CHECK:   cf.br ^[[BB22BB2:.*]]
// CHECK:   ^[[BB22BB2]]
// CHECK-NEXT: return

    %memtile_dma_0_1 = aie.memtile_dma(%tile_0_1) {
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb19)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_1_1, AcquireGreaterEqual, 2)
      aie.dma_bd(%buf20 : memref<16x8xi32, 1>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_2, Release, 2)
      aie.next_bd ^bb4
    ^bb19:  // pred: ^bb21
      %9 = aie.dma_start(MM2S, 3, ^bb20, ^bb21)
    ^bb20:  // 2 preds: ^bb19, ^bb20
      aie.use_lock(%lock_0_1_2, AcquireGreaterEqual, 1)
      //MM2S, channel 3
      aie.dma_bd(%buf20 : memref<16x8xi32, 1>, 0, 64, [<size = 16, stride = 8>, <size = 4, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_1, Release, 1)
      aie.next_bd ^bb20
    ^bb21:  // pred: ^bb0
      %10 = aie.dma_start(MM2S, 4, ^bb22, ^bb3)
    ^bb22:  // 2 preds: ^bb21, ^bb22
      aie.use_lock(%lock_0_1_2, AcquireGreaterEqual, 1)
      //MM2S, channel 4
      aie.dma_bd(%buf20 : memref<16x8xi32, 1>, 4, 64, [<size = 16, stride = 8>, <size = 4, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_1, Release, 1)
      aie.next_bd ^bb22
    ^bb3:  // pred: ^bb4
      aie.end
    }
  }
}

