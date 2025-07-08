
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

// RUN: %pastchecker %t/translation.c %S/../compare.c arg0,arg1 | grep YES

//--- input.mlir

module {
  aie.device(npu1_4col) {
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %shim_noc_tile_1_0 = aie.tile(1, 0)
    %tile_0_2 = aie.tile(0, 2)
    %tile_0_3 = aie.tile(0, 3)
    %tile_0_4 = aie.tile(0, 4)
    %tile_0_5 = aie.tile(0, 5)
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%shim_noc_tile_0_0, DMA : 1, %tile_0_4, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %tile_0_3, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 1, %tile_0_5, DMA : 0)
    aie.flow(%tile_0_2, DMA : 0, %shim_noc_tile_0_0, DMA : 0)
    aie.flow(%tile_0_4, DMA : 0, %shim_noc_tile_0_0, DMA : 1)
    aie.flow(%tile_0_3, DMA : 0, %shim_noc_tile_1_0, DMA : 0)
    aie.flow(%tile_0_5, DMA : 0, %shim_noc_tile_1_0, DMA : 1)
    %lock_0_2 = aie.lock(%tile_0_2, 3) {init = 1 : i32}
    %lock_0_2_0 = aie.lock(%tile_0_2, 2) {init = 0 : i32}
    %lock_0_2_1 = aie.lock(%tile_0_2, 1) {init = 1 : i32}
    %lock_0_2_2 = aie.lock(%tile_0_2, 0) {init = 0 : i32}
    %lock_0_3 = aie.lock(%tile_0_3, 3) {init = 1 : i32}
    %lock_0_3_3 = aie.lock(%tile_0_3, 2) {init = 0 : i32}
    %lock_0_3_4 = aie.lock(%tile_0_3, 1) {init = 1 : i32}
    %lock_0_3_5 = aie.lock(%tile_0_3, 0) {init = 0 : i32}
    %lock_0_4 = aie.lock(%tile_0_4, 3) {init = 1 : i32}
    %lock_0_4_6 = aie.lock(%tile_0_4, 2) {init = 0 : i32}
    %lock_0_4_7 = aie.lock(%tile_0_4, 1) {init = 1 : i32}
    %lock_0_4_8 = aie.lock(%tile_0_4, 0) {init = 0 : i32}
    %lock_0_5 = aie.lock(%tile_0_5, 3) {init = 1 : i32}
    %lock_0_5_9 = aie.lock(%tile_0_5, 2) {init = 0 : i32}
    %lock_0_5_10 = aie.lock(%tile_0_5, 1) {init = 1 : i32}
    %lock_0_5_11 = aie.lock(%tile_0_5, 0) {init = 0 : i32}
    %buf7 = aie.buffer(%tile_0_5) {sym_name = "buf7"} : memref<16x8xi32, 2 : i32>
    %buf6 = aie.buffer(%tile_0_5) {sym_name = "buf6"} : memref<16x8xi32, 2 : i32>
    %buf5 = aie.buffer(%tile_0_4) {sym_name = "buf5"} : memref<16x8xi32, 2 : i32>
    %buf4 = aie.buffer(%tile_0_4) {sym_name = "buf4"} : memref<16x8xi32, 2 : i32>
    %buf3 = aie.buffer(%tile_0_3) {sym_name = "buf3"} : memref<16x8xi32, 2 : i32>
    %buf2 = aie.buffer(%tile_0_3) {sym_name = "buf2"} : memref<16x8xi32, 2 : i32>
    %buf1 = aie.buffer(%tile_0_2) {sym_name = "buf1"} : memref<16x8xi32, 2 : i32>
    %buf0 = aie.buffer(%tile_0_2) {sym_name = "buf0"} : memref<16x8xi32, 2 : i32>
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_5, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf7 : memref<16x8xi32, 2 : i32>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_5_9, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb2)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_5_11, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf6 : memref<16x8xi32, 2 : i32>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_5_10, Release, 1)
      aie.next_bd ^bb4
    }
    %core_0_5 = aie.core(%tile_0_5) {
      %c3_i32 = arith.constant 3 : i32
      %c8 = arith.constant 8 : index
      %c16 = arith.constant 16 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      aie.use_lock(%lock_0_5_10, AcquireGreaterEqual, 1)
      aie.use_lock(%lock_0_5_9, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c16 step %c1 {
        scf.for %arg1 = %c0 to %c8 step %c1 {
          %0 = memref.load %buf7[%arg0, %arg1] : memref<16x8xi32, 2 : i32>
          %1 = arith.addi %0, %c3_i32 : i32
          memref.store %1, %buf6[%arg0, %arg1] : memref<16x8xi32, 2 : i32>
        }
      }
      aie.use_lock(%lock_0_5, Release, 1)
      aie.use_lock(%lock_0_5_11, Release, 1)
      aie.end
    } {elf_file = "seg_core_0_5.elf"}
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf5 : memref<16x8xi32, 2 : i32>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_4_6, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb2)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_4_8, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf4 : memref<16x8xi32, 2 : i32>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_4_7, Release, 1)
      aie.next_bd ^bb4
    }
    %core_0_4 = aie.core(%tile_0_4) {
      %c2_i32 = arith.constant 2 : i32
      %c8 = arith.constant 8 : index
      %c16 = arith.constant 16 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      aie.use_lock(%lock_0_4_7, AcquireGreaterEqual, 1)
      aie.use_lock(%lock_0_4_6, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c16 step %c1 {
        scf.for %arg1 = %c0 to %c8 step %c1 {
          %0 = memref.load %buf5[%arg0, %arg1] : memref<16x8xi32, 2 : i32>
          %1 = arith.addi %0, %c2_i32 : i32
          memref.store %1, %buf4[%arg0, %arg1] : memref<16x8xi32, 2 : i32>
        }
      }
      aie.use_lock(%lock_0_4, Release, 1)
      aie.use_lock(%lock_0_4_8, Release, 1)
      aie.end
    } {elf_file = "seg_core_0_4.elf"}
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf3 : memref<16x8xi32, 2 : i32>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_3_3, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb2)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_3_5, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf2 : memref<16x8xi32, 2 : i32>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_3_4, Release, 1)
      aie.next_bd ^bb4
    }
    %core_0_3 = aie.core(%tile_0_3) {
      %c1_i32 = arith.constant 1 : i32
      %c8 = arith.constant 8 : index
      %c16 = arith.constant 16 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      aie.use_lock(%lock_0_3_4, AcquireGreaterEqual, 1)
      aie.use_lock(%lock_0_3_3, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c16 step %c1 {
        scf.for %arg1 = %c0 to %c8 step %c1 {
          %0 = memref.load %buf3[%arg0, %arg1] : memref<16x8xi32, 2 : i32>
          %1 = arith.addi %0, %c1_i32 : i32
          memref.store %1, %buf2[%arg0, %arg1] : memref<16x8xi32, 2 : i32>
        }
      }
      aie.use_lock(%lock_0_3, Release, 1)
      aie.use_lock(%lock_0_3_5, Release, 1)
      aie.end
    } {elf_file = "seg_core_0_3.elf"}
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf1 : memref<16x8xi32, 2 : i32>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_2_0, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb2)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_2_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf0 : memref<16x8xi32, 2 : i32>, 0, 128) {task_id = 0 : i32}
      aie.use_lock(%lock_0_2_1, Release, 1)
      aie.next_bd ^bb4
    }
    %core_0_2 = aie.core(%tile_0_2) {
      %c8 = arith.constant 8 : index
      %c16 = arith.constant 16 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      aie.use_lock(%lock_0_2_1, AcquireGreaterEqual, 1)
      aie.use_lock(%lock_0_2_0, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c16 step %c1 {
        scf.for %arg1 = %c0 to %c8 step %c1 {
          %0 = memref.load %buf1[%arg0, %arg1] : memref<16x8xi32, 2 : i32>
          memref.store %0, %buf0[%arg0, %arg1] : memref<16x8xi32, 2 : i32>
        }
      }
      aie.use_lock(%lock_0_2, Release, 1)
      aie.use_lock(%lock_0_2_2, Release, 1)
      aie.end
    } {elf_file = "seg_core_0_2.elf"}
    aie.shim_dma_allocation @airMemcpyId10(S2MM, 0, 0)
    memref.global "public" @airMemcpyId10 : memref<16x8xi32, 2 : i32>
    aie.shim_dma_allocation @airMemcpyId10_1(S2MM, 1, 0)
    memref.global "public" @airMemcpyId10_1 : memref<16x8xi32, 2 : i32>
    aie.shim_dma_allocation @airMemcpyId10_2(S2MM, 0, 1)
    memref.global "public" @airMemcpyId10_2 : memref<16x8xi32, 2 : i32>
    aie.shim_dma_allocation @airMemcpyId10_3(S2MM, 1, 1)
    memref.global "public" @airMemcpyId10_3 : memref<16x8xi32, 2 : i32>
    aie.shim_dma_allocation @airMemcpyId9(MM2S, 0, 0)
    memref.global "public" @airMemcpyId9 : memref<16x8xi32, 2 : i32>
    aie.shim_dma_allocation @airMemcpyId9_1(MM2S, 1, 0)
    memref.global "public" @airMemcpyId9_1 : memref<16x8xi32, 2 : i32>
    aie.shim_dma_allocation @airMemcpyId9_2(MM2S, 0, 1)
    memref.global "public" @airMemcpyId9_2 : memref<16x8xi32, 2 : i32>
    aie.shim_dma_allocation @airMemcpyId9_3(MM2S, 1, 1)
    memref.global "public" @airMemcpyId9_3 : memref<16x8xi32, 2 : i32>

    // START modification
    memref.global "private" @arg0 : memref<32x16xi32>
    memref.global "private" @arg1 : memref<32x16xi32>
    %arg0 = memref.get_global @arg0 : memref<32x16xi32>
    %arg1 = memref.get_global @arg1 : memref<32x16xi32>
    // END modification

    // aiex.runtime_sequence @copy(%arg0: memref<32x16xi32>, %arg1: memref<32x16xi32>) {
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][1, 1, 16, 8][0, 0, 16, 1]) {id = 0 : i64, metadata = @airMemcpyId9} : memref<32x16xi32>
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 16, 0][1, 1, 16, 8][0, 0, 16, 1]) {id = 1 : i64, metadata = @airMemcpyId9_1} : memref<32x16xi32>
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 8][1, 1, 16, 8][0, 0, 16, 1]) {id = 0 : i64, metadata = @airMemcpyId9_2} : memref<32x16xi32>
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 16, 8][1, 1, 16, 8][0, 0, 16, 1]) {id = 1 : i64, metadata = @airMemcpyId9_3} : memref<32x16xi32>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][1, 1, 16, 8][0, 0, 16, 1]) {id = 2 : i64, metadata = @airMemcpyId10} : memref<32x16xi32>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 16, 0][1, 1, 16, 8][0, 0, 16, 1]) {id = 3 : i64, metadata = @airMemcpyId10_1} : memref<32x16xi32>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 8][1, 1, 16, 8][0, 0, 16, 1]) {id = 2 : i64, metadata = @airMemcpyId10_2} : memref<32x16xi32>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 16, 8][1, 1, 16, 8][0, 0, 16, 1]) {id = 3 : i64, metadata = @airMemcpyId10_3} : memref<32x16xi32>
    //   aiex.npu.dma_wait {symbol = @airMemcpyId10}
    //   aiex.npu.dma_wait {symbol = @airMemcpyId10_1}
    //   aiex.npu.dma_wait {symbol = @airMemcpyId10_2}
    //   aiex.npu.dma_wait {symbol = @airMemcpyId10_3}
    // }
  } {sym_name = "seg"}
}
