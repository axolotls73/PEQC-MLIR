module {
  aie.device(npu1_4col) {
    %tile_0_2 = aie.tile(0, 2)
    %tile_1_2 = aie.tile(1, 2)
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %shim_noc_tile_1_0 = aie.tile(1, 0)
    %lock_0_2 = aie.lock(%tile_0_2, 3) {init = 1 : i32}
    %lock_0_2_0 = aie.lock(%tile_0_2, 2) {init = 0 : i32}
    %lock_0_2_1 = aie.lock(%tile_0_2, 1) {init = 1 : i32}
    %lock_0_2_2 = aie.lock(%tile_0_2, 0) {init = 0 : i32}
    %lock_1_2 = aie.lock(%tile_1_2, 3) {init = 1 : i32}
    %lock_1_2_3 = aie.lock(%tile_1_2, 2) {init = 0 : i32}
    %lock_1_2_4 = aie.lock(%tile_1_2, 1) {init = 1 : i32}
    %lock_1_2_5 = aie.lock(%tile_1_2, 0) {init = 0 : i32}
    %buf3 = aie.buffer(%tile_1_2) {sym_name = "buf3"} : memref<16x32xi32, 2 : i32> 
    %buf2 = aie.buffer(%tile_1_2) {sym_name = "buf2"} : memref<16x32xi32, 2 : i32> 
    %buf1 = aie.buffer(%tile_0_2) {sym_name = "buf1"} : memref<16x32xi32, 2 : i32> 
    %buf0 = aie.buffer(%tile_0_2) {sym_name = "buf0"} : memref<16x32xi32, 2 : i32> 
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_1_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf3 : memref<16x32xi32, 2 : i32>, 0, 512) {task_id = 0 : i32}
      aie.use_lock(%lock_1_2_3, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb2)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_1_2_5, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf2 : memref<16x32xi32, 2 : i32>, 0, 512) {task_id = 0 : i32}
      aie.use_lock(%lock_1_2_4, Release, 1)
      aie.next_bd ^bb4
    }
    %core_1_2 = aie.core(%tile_1_2) {
      %c16 = arith.constant 16 : index
      %c32 = arith.constant 32 : index
      %c1_i32 = arith.constant 1 : i32
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      aie.use_lock(%lock_1_2_4, AcquireGreaterEqual, 1)
      aie.use_lock(%lock_1_2_3, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c16 step %c1 {
        scf.for %arg1 = %c0 to %c32 step %c1 {
          %0 = memref.load %buf3[%arg0, %arg1] : memref<16x32xi32, 2 : i32>
          %1 = arith.addi %0, %c1_i32 : i32
          memref.store %1, %buf2[%arg0, %arg1] : memref<16x32xi32, 2 : i32>
        }
      }
      aie.use_lock(%lock_1_2, Release, 1)
      aie.use_lock(%lock_1_2_5, Release, 1)
      aie.end
    } {elf_file = "seg_core_1_2.elf"}
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf1 : memref<16x32xi32, 2 : i32>, 0, 512) {task_id = 0 : i32}
      aie.use_lock(%lock_0_2_0, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb2)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_2_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf0 : memref<16x32xi32, 2 : i32>, 0, 512) {task_id = 0 : i32}
      aie.use_lock(%lock_0_2_1, Release, 1)
      aie.next_bd ^bb4
    }
    %core_0_2 = aie.core(%tile_0_2) {
      %c16 = arith.constant 16 : index
      %c32 = arith.constant 32 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      aie.use_lock(%lock_0_2_1, AcquireGreaterEqual, 1)
      aie.use_lock(%lock_0_2_0, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c16 step %c1 {
        scf.for %arg1 = %c0 to %c32 step %c1 {
          %0 = memref.load %buf1[%arg0, %arg1] : memref<16x32xi32, 2 : i32>
          %1 = arith.muli %0, %0 : i32
          memref.store %1, %buf0[%arg0, %arg1] : memref<16x32xi32, 2 : i32>
        }
      }
      aie.use_lock(%lock_0_2, Release, 1)
      aie.use_lock(%lock_0_2_2, Release, 1)
      aie.end
    } {elf_file = "seg_core_0_2.elf"}
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%tile_1_2, DMA : 0, %shim_noc_tile_1_0, DMA : 0)
    aie.flow(%tile_0_2, DMA : 0, %tile_1_2, DMA : 0)
    aie.shim_dma_allocation @airMemcpyId3(MM2S, 0, 0)
    memref.global "public" @airMemcpyId3 : memref<16x32xi32, 2 : i32>
    aie.shim_dma_allocation @airMemcpyId6(S2MM, 0, 1)
    memref.global "public" @airMemcpyId6 : memref<16x32xi32, 2 : i32>
    aiex.runtime_sequence @copy(%arg0: memref<16x32xi32>, %arg1: memref<16x32xi32>) {
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @airMemcpyId3} : memref<16x32xi32>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][1, 1, 1, 512][0, 0, 0, 1]) {id = 0 : i64, metadata = @airMemcpyId6} : memref<16x32xi32>
      aiex.npu.dma_wait {symbol = @airMemcpyId6}
    }
  } {sym_name = "seg"}
}
