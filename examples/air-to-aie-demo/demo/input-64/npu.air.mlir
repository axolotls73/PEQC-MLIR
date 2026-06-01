module {
  aie.device(npu1_4col) {
    %shim_noc_tile_3_0 = aie.tile(3, 0)
    %shim_noc_tile_1_0 = aie.tile(1, 0)
    %shim_noc_tile_2_0 = aie.tile(2, 0)
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %mem_tile_0_1 = aie.tile(0, 1)
    %mem_tile_1_1 = aie.tile(1, 1)
    %mem_tile_2_1 = aie.tile(2, 1)
    %mem_tile_3_1 = aie.tile(3, 1)
    %tile_1_2 = aie.tile(1, 2)
    %tile_1_3 = aie.tile(1, 3)
    %tile_1_4 = aie.tile(1, 4)
    %tile_1_5 = aie.tile(1, 5)
    %lock_2_1 = aie.lock(%mem_tile_2_1, 1) {init = 2 : i32}
    %lock_2_1_0 = aie.lock(%mem_tile_2_1, 0) {init = 0 : i32}
    %lock_1_1 = aie.lock(%mem_tile_1_1, 1) {init = 2 : i32}
    %lock_1_1_1 = aie.lock(%mem_tile_1_1, 0) {init = 0 : i32}
    %lock_0_1 = aie.lock(%mem_tile_0_1, 1) {init = 4 : i32}
    %lock_0_1_2 = aie.lock(%mem_tile_0_1, 0) {init = 0 : i32}
    %lock_1_2 = aie.lock(%tile_1_2, 5) {init = 2 : i32}
    %lock_1_2_3 = aie.lock(%tile_1_2, 4) {init = 0 : i32}
    %lock_1_2_4 = aie.lock(%tile_1_2, 3) {init = 2 : i32}
    %lock_1_2_5 = aie.lock(%tile_1_2, 2) {init = 0 : i32}
    %lock_1_2_6 = aie.lock(%tile_1_2, 1) {init = 1 : i32}
    %lock_1_2_7 = aie.lock(%tile_1_2, 0) {init = 0 : i32}
    %lock_1_3 = aie.lock(%tile_1_3, 5) {init = 2 : i32}
    %lock_1_3_8 = aie.lock(%tile_1_3, 4) {init = 0 : i32}
    %lock_1_3_9 = aie.lock(%tile_1_3, 3) {init = 2 : i32}
    %lock_1_3_10 = aie.lock(%tile_1_3, 2) {init = 0 : i32}
    %lock_1_3_11 = aie.lock(%tile_1_3, 1) {init = 1 : i32}
    %lock_1_3_12 = aie.lock(%tile_1_3, 0) {init = 0 : i32}
    %lock_1_4 = aie.lock(%tile_1_4, 5) {init = 2 : i32}
    %lock_1_4_13 = aie.lock(%tile_1_4, 4) {init = 0 : i32}
    %lock_1_4_14 = aie.lock(%tile_1_4, 3) {init = 2 : i32}
    %lock_1_4_15 = aie.lock(%tile_1_4, 2) {init = 0 : i32}
    %lock_1_4_16 = aie.lock(%tile_1_4, 1) {init = 1 : i32}
    %lock_1_4_17 = aie.lock(%tile_1_4, 0) {init = 0 : i32}
    %lock_1_5 = aie.lock(%tile_1_5, 5) {init = 2 : i32}
    %lock_1_5_18 = aie.lock(%tile_1_5, 4) {init = 0 : i32}
    %lock_1_5_19 = aie.lock(%tile_1_5, 3) {init = 2 : i32}
    %lock_1_5_20 = aie.lock(%tile_1_5, 2) {init = 0 : i32}
    %lock_1_5_21 = aie.lock(%tile_1_5, 1) {init = 1 : i32}
    %lock_1_5_22 = aie.lock(%tile_1_5, 0) {init = 0 : i32}
    %buf22 = aie.buffer(%mem_tile_0_1) {sym_name = "buf22"} : memref<32x32xi32, 1> 
    %buf21 = aie.buffer(%mem_tile_1_1) {sym_name = "buf21"} : memref<32x64xi32, 1> 
    %buf20 = aie.buffer(%mem_tile_2_1) {sym_name = "buf20"} : memref<64x32xi32, 1> 
    %buf19 = aie.buffer(%tile_1_5) {sym_name = "buf19"} : memref<16x16xi32, 2> 
    %buf18 = aie.buffer(%tile_1_5) {sym_name = "buf18"} : memref<16x16xi32, 2> 
    %buf17 = aie.buffer(%tile_1_5) {sym_name = "buf17"} : memref<16x16xi32, 2> 
    %buf16 = aie.buffer(%tile_1_5) {sym_name = "buf16"} : memref<16x16xi32, 2> 
    %buf15 = aie.buffer(%tile_1_5) {sym_name = "buf15"} : memref<16x16xi32, 2> 
    %buf14 = aie.buffer(%tile_1_4) {sym_name = "buf14"} : memref<16x16xi32, 2> 
    %buf13 = aie.buffer(%tile_1_4) {sym_name = "buf13"} : memref<16x16xi32, 2> 
    %buf12 = aie.buffer(%tile_1_4) {sym_name = "buf12"} : memref<16x16xi32, 2> 
    %buf11 = aie.buffer(%tile_1_4) {sym_name = "buf11"} : memref<16x16xi32, 2> 
    %buf10 = aie.buffer(%tile_1_4) {sym_name = "buf10"} : memref<16x16xi32, 2> 
    %buf9 = aie.buffer(%tile_1_3) {sym_name = "buf9"} : memref<16x16xi32, 2> 
    %buf8 = aie.buffer(%tile_1_3) {sym_name = "buf8"} : memref<16x16xi32, 2> 
    %buf7 = aie.buffer(%tile_1_3) {sym_name = "buf7"} : memref<16x16xi32, 2> 
    %buf6 = aie.buffer(%tile_1_3) {sym_name = "buf6"} : memref<16x16xi32, 2> 
    %buf5 = aie.buffer(%tile_1_3) {sym_name = "buf5"} : memref<16x16xi32, 2> 
    %buf4 = aie.buffer(%tile_1_2) {sym_name = "buf4"} : memref<16x16xi32, 2> 
    %buf3 = aie.buffer(%tile_1_2) {sym_name = "buf3"} : memref<16x16xi32, 2> 
    %buf2 = aie.buffer(%tile_1_2) {sym_name = "buf2"} : memref<16x16xi32, 2> 
    %buf1 = aie.buffer(%tile_1_2) {sym_name = "buf1"} : memref<16x16xi32, 2> 
    %buf0 = aie.buffer(%tile_1_2) {sym_name = "buf0"} : memref<16x16xi32, 2> 
    %mem_1_5 = aie.mem(%tile_1_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_1_5_19, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf16 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_5_20, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_1_5_19, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf17 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_5_20, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_1_5, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf15 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_5_18, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_1_5, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf18 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_5_18, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb8, ^bb4)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_1_5_22, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf19 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_5_21, Release, 1)
      aie.next_bd ^bb8
    }
    %core_1_5 = aie.core(%tile_1_5) {
      %c16 = arith.constant 16 : index
      %c32 = arith.constant 32 : index
      %c0_i32 = arith.constant 0 : i32
      %c64 = arith.constant 64 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_1_5_21, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c16 step %c1 {
        scf.for %arg1 = %c0 to %c16 step %c1 {
          memref.store %c0_i32, %buf19[%arg0, %arg1] : memref<16x16xi32, 2>
        }
      }
      scf.for %arg0 = %c0 to %c64 step %c32 {
        aie.use_lock(%lock_1_5_20, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_5_18, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c16 step %c1 {
          scf.for %arg2 = %c0 to %c16 step %c1 {
            scf.for %arg3 = %c0 to %c16 step %c1 {
              %0 = memref.load %buf16[%arg1, %arg3] : memref<16x16xi32, 2>
              %1 = memref.load %buf15[%arg3, %arg2] : memref<16x16xi32, 2>
              %2 = memref.load %buf19[%arg1, %arg2] : memref<16x16xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf19[%arg1, %arg2] : memref<16x16xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_5, Release, 1)
        aie.use_lock(%lock_1_5_19, Release, 1)
        aie.use_lock(%lock_1_5_20, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_5_18, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c16 step %c1 {
          scf.for %arg2 = %c0 to %c16 step %c1 {
            scf.for %arg3 = %c0 to %c16 step %c1 {
              %0 = memref.load %buf17[%arg1, %arg3] : memref<16x16xi32, 2>
              %1 = memref.load %buf18[%arg3, %arg2] : memref<16x16xi32, 2>
              %2 = memref.load %buf19[%arg1, %arg2] : memref<16x16xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf19[%arg1, %arg2] : memref<16x16xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_5, Release, 1)
        aie.use_lock(%lock_1_5_19, Release, 1)
      }
      aie.use_lock(%lock_1_5_22, Release, 1)
      cf.br ^bb1
    } {elf_file = "forward_0_core_1_5.elf"}
    %mem_1_4 = aie.mem(%tile_1_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_1_4_14, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf11 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_4_15, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_1_4_14, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf12 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_4_15, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_1_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf10 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_4_13, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_1_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf13 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_4_13, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb8, ^bb4)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_1_4_17, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf14 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_4_16, Release, 1)
      aie.next_bd ^bb8
    }
    %core_1_4 = aie.core(%tile_1_4) {
      %c16 = arith.constant 16 : index
      %c32 = arith.constant 32 : index
      %c0_i32 = arith.constant 0 : i32
      %c64 = arith.constant 64 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_1_4_16, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c16 step %c1 {
        scf.for %arg1 = %c0 to %c16 step %c1 {
          memref.store %c0_i32, %buf14[%arg0, %arg1] : memref<16x16xi32, 2>
        }
      }
      scf.for %arg0 = %c0 to %c64 step %c32 {
        aie.use_lock(%lock_1_4_15, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_4_13, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c16 step %c1 {
          scf.for %arg2 = %c0 to %c16 step %c1 {
            scf.for %arg3 = %c0 to %c16 step %c1 {
              %0 = memref.load %buf11[%arg1, %arg3] : memref<16x16xi32, 2>
              %1 = memref.load %buf10[%arg3, %arg2] : memref<16x16xi32, 2>
              %2 = memref.load %buf14[%arg1, %arg2] : memref<16x16xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf14[%arg1, %arg2] : memref<16x16xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_4, Release, 1)
        aie.use_lock(%lock_1_4_14, Release, 1)
        aie.use_lock(%lock_1_4_15, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_4_13, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c16 step %c1 {
          scf.for %arg2 = %c0 to %c16 step %c1 {
            scf.for %arg3 = %c0 to %c16 step %c1 {
              %0 = memref.load %buf12[%arg1, %arg3] : memref<16x16xi32, 2>
              %1 = memref.load %buf13[%arg3, %arg2] : memref<16x16xi32, 2>
              %2 = memref.load %buf14[%arg1, %arg2] : memref<16x16xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf14[%arg1, %arg2] : memref<16x16xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_4, Release, 1)
        aie.use_lock(%lock_1_4_14, Release, 1)
      }
      aie.use_lock(%lock_1_4_17, Release, 1)
      cf.br ^bb1
    } {elf_file = "forward_0_core_1_4.elf"}
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_1_3_9, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf6 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_3_10, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_1_3_9, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf7 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_3_10, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_1_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf5 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_3_8, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_1_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf8 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_3_8, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb8, ^bb4)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_1_3_12, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf9 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_3_11, Release, 1)
      aie.next_bd ^bb8
    }
    %core_1_3 = aie.core(%tile_1_3) {
      %c16 = arith.constant 16 : index
      %c32 = arith.constant 32 : index
      %c0_i32 = arith.constant 0 : i32
      %c64 = arith.constant 64 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_1_3_11, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c16 step %c1 {
        scf.for %arg1 = %c0 to %c16 step %c1 {
          memref.store %c0_i32, %buf9[%arg0, %arg1] : memref<16x16xi32, 2>
        }
      }
      scf.for %arg0 = %c0 to %c64 step %c32 {
        aie.use_lock(%lock_1_3_10, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_3_8, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c16 step %c1 {
          scf.for %arg2 = %c0 to %c16 step %c1 {
            scf.for %arg3 = %c0 to %c16 step %c1 {
              %0 = memref.load %buf6[%arg1, %arg3] : memref<16x16xi32, 2>
              %1 = memref.load %buf5[%arg3, %arg2] : memref<16x16xi32, 2>
              %2 = memref.load %buf9[%arg1, %arg2] : memref<16x16xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf9[%arg1, %arg2] : memref<16x16xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_3, Release, 1)
        aie.use_lock(%lock_1_3_9, Release, 1)
        aie.use_lock(%lock_1_3_10, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_3_8, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c16 step %c1 {
          scf.for %arg2 = %c0 to %c16 step %c1 {
            scf.for %arg3 = %c0 to %c16 step %c1 {
              %0 = memref.load %buf7[%arg1, %arg3] : memref<16x16xi32, 2>
              %1 = memref.load %buf8[%arg3, %arg2] : memref<16x16xi32, 2>
              %2 = memref.load %buf9[%arg1, %arg2] : memref<16x16xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf9[%arg1, %arg2] : memref<16x16xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_3, Release, 1)
        aie.use_lock(%lock_1_3_9, Release, 1)
      }
      aie.use_lock(%lock_1_3_12, Release, 1)
      cf.br ^bb1
    } {elf_file = "forward_0_core_1_3.elf"}
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_1_2_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf1 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_2_5, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_1_2_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf2 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_2_5, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_1_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf0 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_2_3, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_1_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf3 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_2_3, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb8, ^bb4)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_1_2_7, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf4 : memref<16x16xi32, 2>, 0, 256) {task_id = 0 : i32}
      aie.use_lock(%lock_1_2_6, Release, 1)
      aie.next_bd ^bb8
    }
    %core_1_2 = aie.core(%tile_1_2) {
      %c16 = arith.constant 16 : index
      %c32 = arith.constant 32 : index
      %c0_i32 = arith.constant 0 : i32
      %c64 = arith.constant 64 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_1_2_6, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c16 step %c1 {
        scf.for %arg1 = %c0 to %c16 step %c1 {
          memref.store %c0_i32, %buf4[%arg0, %arg1] : memref<16x16xi32, 2>
        }
      }
      scf.for %arg0 = %c0 to %c64 step %c32 {
        aie.use_lock(%lock_1_2_5, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_2_3, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c16 step %c1 {
          scf.for %arg2 = %c0 to %c16 step %c1 {
            scf.for %arg3 = %c0 to %c16 step %c1 {
              %0 = memref.load %buf1[%arg1, %arg3] : memref<16x16xi32, 2>
              %1 = memref.load %buf0[%arg3, %arg2] : memref<16x16xi32, 2>
              %2 = memref.load %buf4[%arg1, %arg2] : memref<16x16xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf4[%arg1, %arg2] : memref<16x16xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_2, Release, 1)
        aie.use_lock(%lock_1_2_4, Release, 1)
        aie.use_lock(%lock_1_2_5, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_2_3, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c16 step %c1 {
          scf.for %arg2 = %c0 to %c16 step %c1 {
            scf.for %arg3 = %c0 to %c16 step %c1 {
              %0 = memref.load %buf2[%arg1, %arg3] : memref<16x16xi32, 2>
              %1 = memref.load %buf3[%arg3, %arg2] : memref<16x16xi32, 2>
              %2 = memref.load %buf4[%arg1, %arg2] : memref<16x16xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf4[%arg1, %arg2] : memref<16x16xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_2, Release, 1)
        aie.use_lock(%lock_1_2_4, Release, 1)
      }
      aie.use_lock(%lock_1_2_7, Release, 1)
      cf.br ^bb1
    } {elf_file = "forward_0_core_1_2.elf"}
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %mem_tile_1_1, DMA : 0)
    aie.flow(%shim_noc_tile_2_0, DMA : 0, %mem_tile_2_1, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %shim_noc_tile_0_0, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_1_2, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_1_3, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 1, %tile_1_4, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 1, %tile_1_5, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_1_2, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_1_4, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 1, %tile_1_3, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 1, %tile_1_5, DMA : 1)
    aie.flow(%tile_1_2, DMA : 0, %mem_tile_0_1, DMA : 0)
    aie.flow(%tile_1_4, DMA : 0, %mem_tile_0_1, DMA : 1)
    aie.flow(%tile_1_3, DMA : 0, %mem_tile_0_1, DMA : 2)
    aie.flow(%tile_1_5, DMA : 0, %mem_tile_0_1, DMA : 3)
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb9)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf22 : memref<32x32xi32, 1>, 0, 256, [<size = 16, stride = 32>, <size = 16, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_2, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb5
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb2)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf22 : memref<32x32xi32, 1>, 512, 256, [<size = 16, stride = 32>, <size = 16, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_2, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb7
      %2 = aie.dma_start(S2MM, 2, ^bb6, ^bb3)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf22 : memref<32x32xi32, 1>, 16, 256, [<size = 16, stride = 32>, <size = 16, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_2, Release, 1)
      aie.next_bd ^bb6
    ^bb7:  // pred: ^bb9
      %3 = aie.dma_start(S2MM, 3, ^bb8, ^bb5)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf22 : memref<32x32xi32, 1>, 528, 256, [<size = 16, stride = 32>, <size = 16, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_2, Release, 1)
      aie.next_bd ^bb8
    ^bb9:  // pred: ^bb0
      %4 = aie.dma_start(MM2S, 0, ^bb10, ^bb7)
    ^bb10:  // 2 preds: ^bb9, ^bb10
      aie.use_lock(%lock_0_1_2, AcquireGreaterEqual, 4)
      aie.dma_bd(%buf22 : memref<32x32xi32, 1>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1, Release, 4)
      aie.next_bd ^bb10
    }
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_1_1, AcquireGreaterEqual, 2)
      aie.dma_bd(%buf21 : memref<32x64xi32, 1>, 0, 2048) {task_id = 0 : i32}
      aie.use_lock(%lock_1_1_1, Release, 2)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb5
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb2)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_1_1_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf21 : memref<32x64xi32, 1>, 0, 1024, [<size = 4, stride = 16>, <size = 16, stride = 64>, <size = 16, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_1_1, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 1, ^bb6, ^bb3)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%lock_1_1_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf21 : memref<32x64xi32, 1>, 1024, 1024, [<size = 4, stride = 16>, <size = 16, stride = 64>, <size = 16, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_1_1, Release, 1)
      aie.next_bd ^bb6
    }
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_2_1, AcquireGreaterEqual, 2)
      aie.dma_bd(%buf20 : memref<64x32xi32, 1>, 0, 2048) {task_id = 0 : i32}
      aie.use_lock(%lock_2_1_0, Release, 2)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb5
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb2)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_2_1_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf20 : memref<64x32xi32, 1>, 0, 1024, [<size = 64, stride = 32>, <size = 16, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_2_1, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 1, ^bb6, ^bb3)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%lock_2_1_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf20 : memref<64x32xi32, 1>, 16, 1024, [<size = 64, stride = 32>, <size = 16, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_2_1, Release, 1)
      aie.next_bd ^bb6
    }
    aie.packet_flow(0) {
      aie.packet_source<%mem_tile_0_1, Trace : 0>
      aie.packet_dest<%shim_noc_tile_0_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(1) {
      aie.packet_source<%mem_tile_1_1, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(2) {
      aie.packet_source<%mem_tile_2_1, Trace : 0>
      aie.packet_dest<%shim_noc_tile_2_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(3) {
      aie.packet_source<%mem_tile_3_1, Trace : 0>
      aie.packet_dest<%shim_noc_tile_3_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(4) {
      aie.packet_source<%tile_1_2, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(5) {
      aie.packet_source<%tile_1_3, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(6) {
      aie.packet_source<%tile_1_4, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(7) {
      aie.packet_source<%tile_1_5, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.shim_dma_allocation @airMemcpyId23(S2MM, 0, 0)
    memref.global "public" @airMemcpyId23 : memref<32x32xi32, 1>
    aie.shim_dma_allocation @airMemcpyId4(MM2S, 0, 1)
    memref.global "public" @airMemcpyId4 : memref<32x64xi32, 1>
    aie.shim_dma_allocation @airMemcpyId5(MM2S, 0, 2)
    memref.global "public" @airMemcpyId5 : memref<64x32xi32, 1>
    aiex.runtime_sequence @forward(%arg0: memref<64x64xi32>, %arg1: memref<64x64xi32>, %arg2: memref<64x64xi32>) {
      aiex.npu.write32 {address = 606208 : ui32, column = 0 : i32, row = 1 : i32, value = 40192 : ui32}
      aiex.npu.write32 {address = 606416 : ui32, column = 0 : i32, row = 1 : i32, value = 10289152 : ui32}
      aiex.npu.write32 {address = 606420 : ui32, column = 0 : i32, row = 1 : i32, value = 12288 : ui32}
      aiex.npu.write32 {address = 606432 : ui32, column = 0 : i32, row = 1 : i32, value = 22041688 : ui32}
      aiex.npu.write32 {address = 606436 : ui32, column = 0 : i32, row = 1 : i32, value = 1549821032 : ui32}
      aiex.npu.write32 {address = 724736 : ui32, column = 0 : i32, row = 1 : i32, value = 2236704 : ui32}
      aiex.npu.write32 {address = 724740 : ui32, column = 0 : i32, row = 1 : i32, value = 197121 : ui32}
      aiex.npu.writebd {bd_id = 15 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 0 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 0 : i32, packet_type = 3 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 119268 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 0 : i32, row = 0 : i32, value = 15 : ui32}
      aiex.npu.write32 {address = 606208 : ui32, column = 1 : i32, row = 1 : i32, value = 40192 : ui32}
      aiex.npu.write32 {address = 606416 : ui32, column = 1 : i32, row = 1 : i32, value = 10289152 : ui32}
      aiex.npu.write32 {address = 606420 : ui32, column = 1 : i32, row = 1 : i32, value = 12289 : ui32}
      aiex.npu.write32 {address = 606432 : ui32, column = 1 : i32, row = 1 : i32, value = 22041688 : ui32}
      aiex.npu.write32 {address = 606436 : ui32, column = 1 : i32, row = 1 : i32, value = 1549821032 : ui32}
      aiex.npu.write32 {address = 724736 : ui32, column = 1 : i32, row = 1 : i32, value = 2236704 : ui32}
      aiex.npu.write32 {address = 724740 : ui32, column = 1 : i32, row = 1 : i32, value = 197121 : ui32}
      aiex.npu.writebd {bd_id = 15 : i32, buffer_length = 16384 : i32, buffer_offset = 81920 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 1 : i32, packet_type = 3 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673700 : ui32, arg_idx = 2 : i32, arg_plus = 81920 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 15 : ui32}
      aiex.npu.write32 {address = 606208 : ui32, column = 2 : i32, row = 1 : i32, value = 40192 : ui32}
      aiex.npu.write32 {address = 606416 : ui32, column = 2 : i32, row = 1 : i32, value = 10289152 : ui32}
      aiex.npu.write32 {address = 606420 : ui32, column = 2 : i32, row = 1 : i32, value = 12290 : ui32}
      aiex.npu.write32 {address = 606432 : ui32, column = 2 : i32, row = 1 : i32, value = 22041688 : ui32}
      aiex.npu.write32 {address = 606436 : ui32, column = 2 : i32, row = 1 : i32, value = 1549821032 : ui32}
      aiex.npu.write32 {address = 724736 : ui32, column = 2 : i32, row = 1 : i32, value = 2236704 : ui32}
      aiex.npu.write32 {address = 724740 : ui32, column = 2 : i32, row = 1 : i32, value = 197121 : ui32}
      aiex.npu.writebd {bd_id = 15 : i32, buffer_length = 16384 : i32, buffer_offset = 98304 : i32, column = 2 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 2 : i32, packet_type = 3 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 67228132 : ui32, arg_idx = 2 : i32, arg_plus = 98304 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 2 : i32, row = 0 : i32, value = 15 : ui32}
      aiex.npu.write32 {address = 606208 : ui32, column = 3 : i32, row = 1 : i32, value = 40192 : ui32}
      aiex.npu.write32 {address = 606416 : ui32, column = 3 : i32, row = 1 : i32, value = 10289152 : ui32}
      aiex.npu.write32 {address = 606420 : ui32, column = 3 : i32, row = 1 : i32, value = 12291 : ui32}
      aiex.npu.write32 {address = 606432 : ui32, column = 3 : i32, row = 1 : i32, value = 22041688 : ui32}
      aiex.npu.write32 {address = 606436 : ui32, column = 3 : i32, row = 1 : i32, value = 1549821032 : ui32}
      aiex.npu.write32 {address = 724736 : ui32, column = 3 : i32, row = 1 : i32, value = 2236704 : ui32}
      aiex.npu.write32 {address = 724740 : ui32, column = 3 : i32, row = 1 : i32, value = 197121 : ui32}
      aiex.npu.writebd {bd_id = 15 : i32, buffer_length = 16384 : i32, buffer_offset = 114688 : i32, column = 3 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 3 : i32, packet_type = 3 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 100782564 : ui32, arg_idx = 2 : i32, arg_plus = 114688 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 3 : i32, row = 0 : i32, value = 15 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 1 : i32, row = 2 : i32, value = 31232 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 1 : i32, row = 2 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 1 : i32, row = 2 : i32, value = 4 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 1 : i32, row = 2 : i32, value = 18948645 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 1 : i32, row = 2 : i32, value = 741165903 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 1 : i32, row = 2 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 1 : i32, row = 2 : i32, value = 0 : ui32}
      aiex.npu.writebd {bd_id = 14 : i32, buffer_length = 16384 : i32, buffer_offset = 81920 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 4 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673668 : ui32, arg_idx = 2 : i32, arg_plus = 81920 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 14 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 1 : i32, row = 3 : i32, value = 31232 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 1 : i32, row = 3 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 1 : i32, row = 3 : i32, value = 5 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 1 : i32, row = 3 : i32, value = 18948645 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 1 : i32, row = 3 : i32, value = 741165903 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 1 : i32, row = 3 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 1 : i32, row = 3 : i32, value = 0 : ui32}
      aiex.npu.writebd {bd_id = 13 : i32, buffer_length = 16384 : i32, buffer_offset = 81920 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 5 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673636 : ui32, arg_idx = 2 : i32, arg_plus = 81920 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 13 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 1 : i32, row = 4 : i32, value = 31232 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 1 : i32, row = 4 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 1 : i32, row = 4 : i32, value = 6 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 1 : i32, row = 4 : i32, value = 18948645 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 1 : i32, row = 4 : i32, value = 741165903 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 1 : i32, row = 4 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 1 : i32, row = 4 : i32, value = 0 : ui32}
      aiex.npu.writebd {bd_id = 12 : i32, buffer_length = 16384 : i32, buffer_offset = 81920 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 6 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673604 : ui32, arg_idx = 2 : i32, arg_plus = 81920 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 12 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 1 : i32, row = 5 : i32, value = 31232 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 1 : i32, row = 5 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 1 : i32, row = 5 : i32, value = 7 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 1 : i32, row = 5 : i32, value = 18948645 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 1 : i32, row = 5 : i32, value = 741165903 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 1 : i32, row = 5 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 1 : i32, row = 5 : i32, value = 0 : ui32}
      aiex.npu.writebd {bd_id = 11 : i32, buffer_length = 16384 : i32, buffer_offset = 81920 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 7 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673572 : ui32, arg_idx = 2 : i32, arg_plus = 81920 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 11 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 0 : i32, row = 0 : i32, value = 32512 : ui32}
      aiex.npu.write32 {address = 213068 : ui32, column = 0 : i32, row = 0 : i32, value = 127 : ui32}
      aiex.npu.write32 {address = 213000 : ui32, column = 0 : i32, row = 0 : i32, value = 127 : ui32}
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][2, 1, 4, 512][0, 0, 512, 1]) {id = 0 : i64, metadata = @airMemcpyId4} : memref<64x64xi32>
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 2048][2, 1, 4, 512][0, 0, 512, 1]) {id = 1 : i64, metadata = @airMemcpyId4} : memref<64x64xi32>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][2, 2, 64, 32][0, 32, 64, 1]) {id = 0 : i64, metadata = @airMemcpyId5} : memref<64x64xi32>
      aiex.npu.dma_memcpy_nd(%arg2[0, 0, 0, 0][2, 2, 32, 32][2048, 32, 64, 1]) {id = 0 : i64, metadata = @airMemcpyId23} : memref<64x64xi32>
      aiex.npu.dma_wait {symbol = @airMemcpyId23}
    }
  } {sym_name = "forward_0"}
}
