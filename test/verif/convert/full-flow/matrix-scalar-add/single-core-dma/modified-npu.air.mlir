
//
// modified-npu.air.mlir: This file is part of the PEQC-MLIR project.
//
// Copyright (C) 2025 Colorado State University
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

// XFAIL: *
// REQUIRES: air

// RUN: split-file %s %t && \
// RUN: verif-opt --verif-convert-aie %t/input.mlir > %t/conversion.mlir
// RUN: verif-opt --lower-affine %t/conversion.mlir > %t/lowered.mlir
// RUN: verif-translate --translate-to-past %t/lowered.mlir > %t/result.c
// RUN: %add_epilogue %t/result.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c arg0,arg1 | grep YES
// RUN: %pastchecker %t/translation.c %S/../compare.c arg0,arg1 | grep YES

//--- input.mlir

module {
  aie.device(npu1_4col) {
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %tile_0_2 = aie.tile(0, 2)
    %lock_0_2 = aie.lock(%tile_0_2, 3) {init = 2 : i32}
    %lock_0_2_0 = aie.lock(%tile_0_2, 2) {init = 0 : i32}
    %lock_0_2_1 = aie.lock(%tile_0_2, 1) {init = 2 : i32}
    %lock_0_2_2 = aie.lock(%tile_0_2, 0) {init = 0 : i32}
    %buf3 = aie.buffer(%tile_0_2) {sym_name = "buf3"} : memref<16x8xi32, 2 : i32>
    %buf2 = aie.buffer(%tile_0_2) {sym_name = "buf2"} : memref<16x8xi32, 2 : i32>
    %buf1 = aie.buffer(%tile_0_2) {sym_name = "buf1"} : memref<16x8xi32, 2 : i32>
    %buf0 = aie.buffer(%tile_0_2) {sym_name = "buf0"} : memref<16x8xi32, 2 : i32>
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb4)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_0_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf0 : memref<16x8xi32, 2 : i32>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_2_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_0_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf2 : memref<16x8xi32, 2 : i32>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_2_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb5, ^bb3)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_0_2_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf1 : memref<16x8xi32, 2 : i32>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_2_1, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_0_2_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf3 : memref<16x8xi32, 2 : i32>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_2_1, Release, 1)
      aie.next_bd ^bb5
    }
    %core_0_2 = aie.core(%tile_0_2) {
      %c2 = arith.constant 2 : index
      %c16 = arith.constant 16 : index
      %c8 = arith.constant 8 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      scf.for %arg0 = %c0 to %c2 step %c1 {
        aie.use_lock(%lock_0_2_1, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_0_2_1, AcquireGreaterEqual, 1)
        %0 = arith.muli %arg0, %c2 : index
        aie.use_lock(%lock_0_2_0, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c16 step %c1 {
          scf.for %arg2 = %c0 to %c8 step %c1 {
            %2 = memref.load %buf0[%arg1, %arg2] : memref<16x8xi32, 2 : i32>
            %3 = arith.index_cast %0 : index to i32
            %4 = arith.addi %2, %3 : i32
            memref.store %4, %buf1[%arg1, %arg2] : memref<16x8xi32, 2 : i32>
          }
        }
        aie.use_lock(%lock_0_2, Release, 1)
        %1 = arith.addi %0, %c1 : index
        aie.use_lock(%lock_0_2_0, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c16 step %c1 {
          scf.for %arg2 = %c0 to %c8 step %c1 {
            %2 = memref.load %buf2[%arg1, %arg2] : memref<16x8xi32, 2 : i32>
            %3 = arith.index_cast %1 : index to i32
            %4 = arith.addi %2, %3 : i32
            memref.store %4, %buf3[%arg1, %arg2] : memref<16x8xi32, 2 : i32>
          }
        }
        aie.use_lock(%lock_0_2, Release, 1)
        aie.use_lock(%lock_0_2_2, Release, 1)
        aie.use_lock(%lock_0_2_2, Release, 1)
      }
      aie.end
    } {elf_file = "seg_core_0_2.elf"}
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%tile_0_2, DMA : 0, %shim_noc_tile_0_0, DMA : 0)
    aie.shim_dma_allocation @airMemcpyId4(S2MM, 0, 0)
    memref.global "public" @airMemcpyId4 : memref<16x8xi32, 2 : i32>
    aie.shim_dma_allocation @airMemcpyId6(S2MM, 0, 0)
    memref.global "public" @airMemcpyId6 : memref<16x8xi32, 2 : i32>
    aie.shim_dma_allocation @airMemcpyId3(MM2S, 0, 0)
    memref.global "public" @airMemcpyId3 : memref<16x8xi32, 2 : i32>
    aie.shim_dma_allocation @airMemcpyId5(MM2S, 0, 0)
    memref.global "public" @airMemcpyId5 : memref<16x8xi32, 2 : i32>

    // START modification
    memref.global "private" @arg0 : memref<32x16xi32>
    memref.global "private" @arg1 : memref<32x16xi32>
    %arg0 = memref.get_global @arg0 : memref<32x16xi32>
    %arg1 = memref.get_global @arg1 : memref<32x16xi32>
    // END modification

    // aiex.runtime_sequence @copy(%arg0: memref<32x16xi32>, %arg1: memref<32x16xi32>) {
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][2, 2, 16, 8][256, 8, 16, 1]) {id = 0 : i64, metadata = @airMemcpyId3} : memref<32x16xi32>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][2, 2, 16, 8][256, 8, 16, 1]) {id = 1 : i64, metadata = @airMemcpyId4} : memref<32x16xi32>
    //   aiex.npu.dma_wait {symbol = @airMemcpyId4}
    // }
  } {sym_name = "seg"}
}
