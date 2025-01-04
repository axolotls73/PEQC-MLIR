#map = affine_map<()[s0] -> (s0 * 64)>
#set = affine_set<()[s0, s1] : (s0 == 0, s1 >= 0, -s1 + 1 >= 0)>
#set1 = affine_set<()[s0, s1] : (s0 >= 0, -s0 + 1 >= 0, s1 == 0)>
module {
  aie.device(npu1_4col) {
    %tile_1_0 = aie.tile(1, 0)
    %tile_0_0 = aie.tile(0, 0)
    %tile_0_1 = aie.tile(0, 1)
    %tile_1_2 = aie.tile(1, 2)
    %tile_1_3 = aie.tile(1, 3)
    %tile_1_4 = aie.tile(1, 4)
    %tile_1_5 = aie.tile(1, 5)
    %lock_0_1 = aie.lock(%tile_0_1, 5) {init = 4 : i32}
    %lock_0_1_0 = aie.lock(%tile_0_1, 4) {init = 0 : i32}
    %lock_0_1_1 = aie.lock(%tile_0_1, 3) {init = 2 : i32}
    %lock_0_1_2 = aie.lock(%tile_0_1, 2) {init = 0 : i32}
    %lock_0_1_3 = aie.lock(%tile_0_1, 1) {init = 2 : i32}
    %lock_0_1_4 = aie.lock(%tile_0_1, 0) {init = 0 : i32}
    %lock_1_2 = aie.lock(%tile_1_2, 5) {init = 2 : i32}
    %lock_1_2_5 = aie.lock(%tile_1_2, 4) {init = 0 : i32}
    %lock_1_2_6 = aie.lock(%tile_1_2, 3) {init = 2 : i32}
    %lock_1_2_7 = aie.lock(%tile_1_2, 2) {init = 0 : i32}
    %lock_1_2_8 = aie.lock(%tile_1_2, 1) {init = 1 : i32}
    %lock_1_2_9 = aie.lock(%tile_1_2, 0) {init = 0 : i32}
    %lock_1_3 = aie.lock(%tile_1_3, 5) {init = 2 : i32}
    %lock_1_3_10 = aie.lock(%tile_1_3, 4) {init = 0 : i32}
    %lock_1_3_11 = aie.lock(%tile_1_3, 3) {init = 2 : i32}
    %lock_1_3_12 = aie.lock(%tile_1_3, 2) {init = 0 : i32}
    %lock_1_3_13 = aie.lock(%tile_1_3, 1) {init = 1 : i32}
    %lock_1_3_14 = aie.lock(%tile_1_3, 0) {init = 0 : i32}
    %lock_1_4 = aie.lock(%tile_1_4, 5) {init = 2 : i32}
    %lock_1_4_15 = aie.lock(%tile_1_4, 4) {init = 0 : i32}
    %lock_1_4_16 = aie.lock(%tile_1_4, 3) {init = 2 : i32}
    %lock_1_4_17 = aie.lock(%tile_1_4, 2) {init = 0 : i32}
    %lock_1_4_18 = aie.lock(%tile_1_4, 1) {init = 1 : i32}
    %lock_1_4_19 = aie.lock(%tile_1_4, 0) {init = 0 : i32}
    %lock_1_5 = aie.lock(%tile_1_5, 5) {init = 2 : i32}
    %lock_1_5_20 = aie.lock(%tile_1_5, 4) {init = 0 : i32}
    %lock_1_5_21 = aie.lock(%tile_1_5, 3) {init = 2 : i32}
    %lock_1_5_22 = aie.lock(%tile_1_5, 2) {init = 0 : i32}
    %lock_1_5_23 = aie.lock(%tile_1_5, 1) {init = 1 : i32}
    %lock_1_5_24 = aie.lock(%tile_1_5, 0) {init = 0 : i32}
    %buf22 = aie.buffer(%tile_0_1) {sym_name = "buf22"} : memref<64x64xi32, 1> 
    %buf21 = aie.buffer(%tile_0_1) {sym_name = "buf21"} : memref<64x128xi32, 1> 
    %buf20 = aie.buffer(%tile_0_1) {sym_name = "buf20"} : memref<128x64xi32, 1> 
    %buf19 = aie.buffer(%tile_1_5) {sym_name = "buf19"} : memref<32x32xi32, 2> 
    %buf18 = aie.buffer(%tile_1_5) {sym_name = "buf18"} : memref<32x32xi32, 2> 
    %buf17 = aie.buffer(%tile_1_5) {sym_name = "buf17"} : memref<32x32xi32, 2> 
    %buf16 = aie.buffer(%tile_1_5) {sym_name = "buf16"} : memref<32x32xi32, 2> 
    %buf15 = aie.buffer(%tile_1_5) {sym_name = "buf15"} : memref<32x32xi32, 2> 
    %buf14 = aie.buffer(%tile_1_4) {sym_name = "buf14"} : memref<32x32xi32, 2> 
    %buf13 = aie.buffer(%tile_1_4) {sym_name = "buf13"} : memref<32x32xi32, 2> 
    %buf12 = aie.buffer(%tile_1_4) {sym_name = "buf12"} : memref<32x32xi32, 2> 
    %buf11 = aie.buffer(%tile_1_4) {sym_name = "buf11"} : memref<32x32xi32, 2> 
    %buf10 = aie.buffer(%tile_1_4) {sym_name = "buf10"} : memref<32x32xi32, 2> 
    %buf9 = aie.buffer(%tile_1_3) {sym_name = "buf9"} : memref<32x32xi32, 2> 
    %buf8 = aie.buffer(%tile_1_3) {sym_name = "buf8"} : memref<32x32xi32, 2> 
    %buf7 = aie.buffer(%tile_1_3) {sym_name = "buf7"} : memref<32x32xi32, 2> 
    %buf6 = aie.buffer(%tile_1_3) {sym_name = "buf6"} : memref<32x32xi32, 2> 
    %buf5 = aie.buffer(%tile_1_3) {sym_name = "buf5"} : memref<32x32xi32, 2> 
    %buf4 = aie.buffer(%tile_1_2) {sym_name = "buf4"} : memref<32x32xi32, 2> 
    %buf3 = aie.buffer(%tile_1_2) {sym_name = "buf3"} : memref<32x32xi32, 2> 
    %buf2 = aie.buffer(%tile_1_2) {sym_name = "buf2"} : memref<32x32xi32, 2> 
    %buf1 = aie.buffer(%tile_1_2) {sym_name = "buf1"} : memref<32x32xi32, 2> 
    %buf0 = aie.buffer(%tile_1_2) {sym_name = "buf0"} : memref<32x32xi32, 2> 
    %mem_1_5 = aie.mem(%tile_1_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_1_5_21, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf16 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_5_22, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_1_5_21, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf17 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_5_22, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_1_5, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf15 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_5_20, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_1_5, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf18 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_5_20, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb8, ^bb4)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_1_5_24, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf19 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_5_23, Release, 1)
      aie.next_bd ^bb8
    }
    %core_1_5 = aie.core(%tile_1_5) {
      %c64 = arith.constant 64 : index
      %c0_i32 = arith.constant 0 : i32
      %c128 = arith.constant 128 : index
      %c32 = arith.constant 32 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_1_5_23, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c32 step %c1 {
        scf.for %arg1 = %c0 to %c32 step %c1 {
          memref.store %c0_i32, %buf19[%arg0, %arg1] : memref<32x32xi32, 2>
        }
      }
      scf.for %arg0 = %c0 to %c128 step %c64 {
        aie.use_lock(%lock_1_5_22, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_5_20, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c32 step %c1 {
          scf.for %arg2 = %c0 to %c32 step %c1 {
            scf.for %arg3 = %c0 to %c32 step %c1 {
              %0 = memref.load %buf16[%arg1, %arg3] : memref<32x32xi32, 2>
              %1 = memref.load %buf15[%arg3, %arg2] : memref<32x32xi32, 2>
              %2 = memref.load %buf19[%arg1, %arg2] : memref<32x32xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf19[%arg1, %arg2] : memref<32x32xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_5_21, Release, 1)
        aie.use_lock(%lock_1_5, Release, 1)
        aie.use_lock(%lock_1_5_22, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_5_20, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c32 step %c1 {
          scf.for %arg2 = %c0 to %c32 step %c1 {
            scf.for %arg3 = %c0 to %c32 step %c1 {
              %0 = memref.load %buf17[%arg1, %arg3] : memref<32x32xi32, 2>
              %1 = memref.load %buf18[%arg3, %arg2] : memref<32x32xi32, 2>
              %2 = memref.load %buf19[%arg1, %arg2] : memref<32x32xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf19[%arg1, %arg2] : memref<32x32xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_5_21, Release, 1)
        aie.use_lock(%lock_1_5, Release, 1)
      }
      aie.use_lock(%lock_1_5_24, Release, 1)
      cf.br ^bb1
    } {elf_file = "forward_0_core_1_5.elf"}
    %mem_1_4 = aie.mem(%tile_1_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_1_4_16, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf11 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_4_17, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_1_4_16, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf12 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_4_17, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_1_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf10 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_4_15, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_1_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf13 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_4_15, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb8, ^bb4)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_1_4_19, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf14 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_4_18, Release, 1)
      aie.next_bd ^bb8
    }
    %core_1_4 = aie.core(%tile_1_4) {
      %c64 = arith.constant 64 : index
      %c0_i32 = arith.constant 0 : i32
      %c128 = arith.constant 128 : index
      %c32 = arith.constant 32 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_1_4_18, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c32 step %c1 {
        scf.for %arg1 = %c0 to %c32 step %c1 {
          memref.store %c0_i32, %buf14[%arg0, %arg1] : memref<32x32xi32, 2>
        }
      }
      scf.for %arg0 = %c0 to %c128 step %c64 {
        aie.use_lock(%lock_1_4_17, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_4_15, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c32 step %c1 {
          scf.for %arg2 = %c0 to %c32 step %c1 {
            scf.for %arg3 = %c0 to %c32 step %c1 {
              %0 = memref.load %buf11[%arg1, %arg3] : memref<32x32xi32, 2>
              %1 = memref.load %buf10[%arg3, %arg2] : memref<32x32xi32, 2>
              %2 = memref.load %buf14[%arg1, %arg2] : memref<32x32xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf14[%arg1, %arg2] : memref<32x32xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_4_16, Release, 1)
        aie.use_lock(%lock_1_4, Release, 1)
        aie.use_lock(%lock_1_4_17, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_4_15, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c32 step %c1 {
          scf.for %arg2 = %c0 to %c32 step %c1 {
            scf.for %arg3 = %c0 to %c32 step %c1 {
              %0 = memref.load %buf12[%arg1, %arg3] : memref<32x32xi32, 2>
              %1 = memref.load %buf13[%arg3, %arg2] : memref<32x32xi32, 2>
              %2 = memref.load %buf14[%arg1, %arg2] : memref<32x32xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf14[%arg1, %arg2] : memref<32x32xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_4_16, Release, 1)
        aie.use_lock(%lock_1_4, Release, 1)
      }
      aie.use_lock(%lock_1_4_19, Release, 1)
      cf.br ^bb1
    } {elf_file = "forward_0_core_1_4.elf"}
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_1_3_11, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf6 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_3_12, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_1_3_11, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf7 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_3_12, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_1_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf5 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_3_10, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_1_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf8 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_3_10, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb8, ^bb4)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_1_3_14, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf9 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_3_13, Release, 1)
      aie.next_bd ^bb8
    }
    %core_1_3 = aie.core(%tile_1_3) {
      %c64 = arith.constant 64 : index
      %c0_i32 = arith.constant 0 : i32
      %c128 = arith.constant 128 : index
      %c32 = arith.constant 32 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_1_3_13, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c32 step %c1 {
        scf.for %arg1 = %c0 to %c32 step %c1 {
          memref.store %c0_i32, %buf9[%arg0, %arg1] : memref<32x32xi32, 2>
        }
      }
      scf.for %arg0 = %c0 to %c128 step %c64 {
        aie.use_lock(%lock_1_3_12, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_3_10, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c32 step %c1 {
          scf.for %arg2 = %c0 to %c32 step %c1 {
            scf.for %arg3 = %c0 to %c32 step %c1 {
              %0 = memref.load %buf6[%arg1, %arg3] : memref<32x32xi32, 2>
              %1 = memref.load %buf5[%arg3, %arg2] : memref<32x32xi32, 2>
              %2 = memref.load %buf9[%arg1, %arg2] : memref<32x32xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf9[%arg1, %arg2] : memref<32x32xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_3_11, Release, 1)
        aie.use_lock(%lock_1_3, Release, 1)
        aie.use_lock(%lock_1_3_12, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_3_10, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c32 step %c1 {
          scf.for %arg2 = %c0 to %c32 step %c1 {
            scf.for %arg3 = %c0 to %c32 step %c1 {
              %0 = memref.load %buf7[%arg1, %arg3] : memref<32x32xi32, 2>
              %1 = memref.load %buf8[%arg3, %arg2] : memref<32x32xi32, 2>
              %2 = memref.load %buf9[%arg1, %arg2] : memref<32x32xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf9[%arg1, %arg2] : memref<32x32xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_3_11, Release, 1)
        aie.use_lock(%lock_1_3, Release, 1)
      }
      aie.use_lock(%lock_1_3_14, Release, 1)
      cf.br ^bb1
    } {elf_file = "forward_0_core_1_3.elf"}
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_1_2_6, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf1 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_2_7, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_1_2_6, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf2 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_2_7, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_1_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf0 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_2_5, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_1_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf3 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_2_5, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb8, ^bb4)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_1_2_9, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf4 : memref<32x32xi32, 2>, 0, 1024) {task_id = 0 : i32}
      aie.use_lock(%lock_1_2_8, Release, 1)
      aie.next_bd ^bb8
    }
    %core_1_2 = aie.core(%tile_1_2) {
      %c64 = arith.constant 64 : index
      %c0_i32 = arith.constant 0 : i32
      %c128 = arith.constant 128 : index
      %c32 = arith.constant 32 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_1_2_8, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c32 step %c1 {
        scf.for %arg1 = %c0 to %c32 step %c1 {
          memref.store %c0_i32, %buf4[%arg0, %arg1] : memref<32x32xi32, 2>
        }
      }
      scf.for %arg0 = %c0 to %c128 step %c64 {
        aie.use_lock(%lock_1_2_7, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_2_5, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c32 step %c1 {
          scf.for %arg2 = %c0 to %c32 step %c1 {
            scf.for %arg3 = %c0 to %c32 step %c1 {
              %0 = memref.load %buf1[%arg1, %arg3] : memref<32x32xi32, 2>
              %1 = memref.load %buf0[%arg3, %arg2] : memref<32x32xi32, 2>
              %2 = memref.load %buf4[%arg1, %arg2] : memref<32x32xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf4[%arg1, %arg2] : memref<32x32xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_2_6, Release, 1)
        aie.use_lock(%lock_1_2, Release, 1)
        aie.use_lock(%lock_1_2_7, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_1_2_5, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c32 step %c1 {
          scf.for %arg2 = %c0 to %c32 step %c1 {
            scf.for %arg3 = %c0 to %c32 step %c1 {
              %0 = memref.load %buf2[%arg1, %arg3] : memref<32x32xi32, 2>
              %1 = memref.load %buf3[%arg3, %arg2] : memref<32x32xi32, 2>
              %2 = memref.load %buf4[%arg1, %arg2] : memref<32x32xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf4[%arg1, %arg2] : memref<32x32xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_1_2_6, Release, 1)
        aie.use_lock(%lock_1_2, Release, 1)
      }
      aie.use_lock(%lock_1_2_9, Release, 1)
      cf.br ^bb1
    } {elf_file = "forward_0_core_1_2.elf"}
    aie.flow(%tile_0_0, DMA : 0, %tile_0_1, DMA : 0)
    aie.flow(%tile_0_0, DMA : 1, %tile_0_1, DMA : 1)
    aie.flow(%tile_0_1, DMA : 0, %tile_0_0, DMA : 0)
    aie.flow(%tile_0_1, DMA : 1, %tile_1_2, DMA : 0)
    aie.flow(%tile_0_1, DMA : 1, %tile_1_3, DMA : 0)
    aie.flow(%tile_0_1, DMA : 2, %tile_1_4, DMA : 0)
    aie.flow(%tile_0_1, DMA : 2, %tile_1_5, DMA : 0)
    aie.flow(%tile_0_1, DMA : 3, %tile_1_2, DMA : 1)
    aie.flow(%tile_0_1, DMA : 3, %tile_1_4, DMA : 1)
    aie.flow(%tile_0_1, DMA : 4, %tile_1_3, DMA : 1)
    aie.flow(%tile_0_1, DMA : 4, %tile_1_5, DMA : 1)
    aie.flow(%tile_1_2, DMA : 0, %tile_0_1, DMA : 2)
    aie.flow(%tile_1_4, DMA : 0, %tile_0_1, DMA : 3)
    aie.flow(%tile_1_3, DMA : 0, %tile_0_1, DMA : 4)
    aie.flow(%tile_1_5, DMA : 0, %tile_0_1, DMA : 5)
    %memtile_dma_0_1 = aie.memtile_dma(%tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb21)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_1_3, AcquireGreaterEqual, 2)
      aie.dma_bd(%buf21 : memref<64x128xi32, 1>, 0, 8192) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_4, Release, 2)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb5
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb2)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_1_1, AcquireGreaterEqual, 2)
      aie.dma_bd(%buf20 : memref<128x64xi32, 1>, 0, 8192) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_2, Release, 2)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb7
      %2 = aie.dma_start(S2MM, 2, ^bb6, ^bb3)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf22 : memref<64x64xi32, 1>, 0, 1024, [<size = 32, stride = 64>, <size = 32, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_0, Release, 1)
      aie.next_bd ^bb6
    ^bb7:  // pred: ^bb9
      %3 = aie.dma_start(S2MM, 3, ^bb8, ^bb5)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf22 : memref<64x64xi32, 1>, 2048, 1024, [<size = 32, stride = 64>, <size = 32, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_0, Release, 1)
      aie.next_bd ^bb8
    ^bb9:  // pred: ^bb11
      %4 = aie.dma_start(S2MM, 4, ^bb10, ^bb7)
    ^bb10:  // 2 preds: ^bb9, ^bb10
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf22 : memref<64x64xi32, 1>, 32, 1024, [<size = 32, stride = 64>, <size = 32, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_0, Release, 1)
      aie.next_bd ^bb10
    ^bb11:  // pred: ^bb13
      %5 = aie.dma_start(S2MM, 5, ^bb12, ^bb9)
    ^bb12:  // 2 preds: ^bb11, ^bb12
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf22 : memref<64x64xi32, 1>, 2080, 1024, [<size = 32, stride = 64>, <size = 32, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_0, Release, 1)
      aie.next_bd ^bb12
    ^bb13:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 0, ^bb14, ^bb11)
    ^bb14:  // 2 preds: ^bb13, ^bb14
      aie.use_lock(%lock_0_1_0, AcquireGreaterEqual, 4)
      aie.dma_bd(%buf22 : memref<64x64xi32, 1>, 0, 4096) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1, Release, 4)
      aie.next_bd ^bb14
    ^bb15:  // pred: ^bb17
      %7 = aie.dma_start(MM2S, 1, ^bb16, ^bb13)
    ^bb16:  // 2 preds: ^bb15, ^bb16
      aie.use_lock(%lock_0_1_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf21 : memref<64x128xi32, 1>, 0, 4096, [<size = 4, stride = 32>, <size = 32, stride = 128>, <size = 32, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_3, Release, 1)
      aie.next_bd ^bb16
    ^bb17:  // pred: ^bb19
      %8 = aie.dma_start(MM2S, 2, ^bb18, ^bb15)
    ^bb18:  // 2 preds: ^bb17, ^bb18
      aie.use_lock(%lock_0_1_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf21 : memref<64x128xi32, 1>, 4096, 4096, [<size = 4, stride = 32>, <size = 32, stride = 128>, <size = 32, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_3, Release, 1)
      aie.next_bd ^bb18
    ^bb19:  // pred: ^bb21
      %9 = aie.dma_start(MM2S, 3, ^bb20, ^bb17)
    ^bb20:  // 2 preds: ^bb19, ^bb20
      aie.use_lock(%lock_0_1_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf20 : memref<128x64xi32, 1>, 0, 4096, [<size = 128, stride = 64>, <size = 32, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_1, Release, 1)
      aie.next_bd ^bb20
    ^bb21:  // pred: ^bb0
      %10 = aie.dma_start(MM2S, 4, ^bb22, ^bb19)
    ^bb22:  // 2 preds: ^bb21, ^bb22
      aie.use_lock(%lock_0_1_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf20 : memref<128x64xi32, 1>, 32, 4096, [<size = 128, stride = 64>, <size = 32, stride = 1>]) {task_id = 0 : i32}
      aie.use_lock(%lock_0_1_1, Release, 1)
      aie.next_bd ^bb22
    }
    aie.packet_flow(0) {
      aie.packet_source<%tile_0_1, Trace : 0>
      aie.packet_dest<%tile_0_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(1) {
      aie.packet_source<%tile_1_2, Trace : 0>
      aie.packet_dest<%tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(2) {
      aie.packet_source<%tile_1_3, Trace : 0>
      aie.packet_dest<%tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(3) {
      aie.packet_source<%tile_1_4, Trace : 0>
      aie.packet_dest<%tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(4) {
      aie.packet_source<%tile_1_5, Trace : 0>
      aie.packet_dest<%tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.shim_dma_allocation @airMemcpyId23(S2MM, 0, 0)
    memref.global "public" @airMemcpyId23 : memref<64x64xi32, 1>
    aie.shim_dma_allocation @airMemcpyId4(MM2S, 0, 0)
    memref.global "public" @airMemcpyId4 : memref<64x128xi32, 1>
    aie.shim_dma_allocation @airMemcpyId5(MM2S, 1, 0)
    memref.global "public" @airMemcpyId5 : memref<128x64xi32, 1>
  } {sym_name = "forward_0"}
  airrt.module_metadata{
  }
  air.channel @channel_0 [1, 1] {broadcast_shape = [1, 2]}
  air.channel @channel_1 [1, 1] {broadcast_shape = [1, 2]}
  air.channel @channel_2 [1, 1] {broadcast_shape = [2, 1]}
  air.channel @channel_3 [1, 1] {broadcast_shape = [2, 1]}
  air.channel @channel_4 [1, 1]
  air.channel @channel_5 [1, 1]
  air.channel @channel_6 [2, 2]
  air.channel @channel_7 [1, 1]
  func.func @forward(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>, %arg2: memref<128x128xi32>) {
    %c2 = arith.constant 2 : index
    %async_token, %results = air.execute -> (memref<128x128xi32>) {
      %alloc = memref.alloc() : memref<128x128xi32>
      air.execute_terminator %alloc : memref<128x128xi32>
    }
    %0 = air.launch async [%async_token] (%arg3, %arg4) in (%arg5=%c2, %arg6=%c2) args(%arg7=%arg0, %arg8=%arg1, %arg9=%results) : memref<128x128xi32>, memref<128x128xi32>, memref<128x128xi32> attributes {id = 1 : i32} {
      %c1 = arith.constant 1 : index
      %c128 = arith.constant 128 : index
      %c64 = arith.constant 64 : index
      %c0 = arith.constant 0 : index
      %async_token_1, %results_2 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %1 = air.channel.put async [%async_token_1]  @channel_4[] (%arg7[%results_2, %c0] [%c64, %c128] [%c128, %c1]) {id = 1 : i32, metadata = @airMemcpyId4} : (memref<128x128xi32>)
      %async_token_3, %results_4 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %2 = air.channel.put async [%async_token_3]  @channel_5[] (%arg8[%c0, %results_4] [%c128, %c64] [%c128, %c1]) {id = 2 : i32, metadata = @airMemcpyId5} : (memref<128x128xi32>)
      %async_token_5, %results_6 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %async_token_7, %results_8 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %3 = air.channel.get async [%async_token_5, %async_token_7]  @channel_7[] (%arg9[%results_8, %results_6] [%c64, %c64] [%c128, %c1]) {id = 3 : i32, metadata = @airMemcpyId23} : (memref<128x128xi32>)
      %4 = air.segment @forward_0 async  attributes {id = 2 : i32, x_loc = 1 : i64, x_size = 1 : i64, y_loc = 2 : i64, y_size = 4 : i64} {
        %c4 = arith.constant 4 : index
        %c32 = arith.constant 32 : index
        %c1_9 = arith.constant 1 : index
        %c128_10 = arith.constant 128 : index
        %c64_11 = arith.constant 64 : index
        %c0_12 = arith.constant 0 : index
        %async_token_13, %results_14 = air.execute -> (memref<64x64xi32, 1>) {
          %alloc = memref.alloc() : memref<64x64xi32, 1>
          air.execute_terminator %alloc : memref<64x64xi32, 1>
        }
        %async_token_15, %results_16 = air.execute -> (memref<64x128xi32, 1>) {
          %alloc = memref.alloc() : memref<64x128xi32, 1>
          air.execute_terminator %alloc : memref<64x128xi32, 1>
        }
        %async_token_17, %results_18 = air.execute -> (memref<128x64xi32, 1>) {
          %alloc = memref.alloc() : memref<128x64xi32, 1>
          air.execute_terminator %alloc : memref<128x64xi32, 1>
        }
        %5 = air.channel.get async [%async_token_15]  @channel_4[] (%results_16[] [] []) {id = 4 : i32} : (memref<64x128xi32, 1>)
        %6 = air.channel.get async [%async_token_17]  @channel_5[] (%results_18[] [] []) {id = 5 : i32} : (memref<128x64xi32, 1>)
        %7 = air.channel.put async [%5]  @channel_0[] (%results_16[%c0_12, %c0_12, %c0_12] [%c4, %c32, %c32] [%c32, %c128_10, %c1_9]) {id = 6 : i32} : (memref<64x128xi32, 1>)
        %8 = air.channel.put async [%5]  @channel_1[] (%results_16[%c0_12, %c32, %c0_12] [%c4, %c32, %c32] [%c32, %c128_10, %c1_9]) {id = 7 : i32} : (memref<64x128xi32, 1>)
        %9 = air.channel.put async [%6]  @channel_2[] (%results_18[%c0_12, %c0_12] [%c128_10, %c32] [%c64_11, %c1_9]) {id = 8 : i32} : (memref<128x64xi32, 1>)
        %10 = air.channel.put async [%6]  @channel_3[] (%results_18[%c0_12, %c32] [%c128_10, %c32] [%c64_11, %c1_9]) {id = 9 : i32} : (memref<128x64xi32, 1>)
        %11 = air.channel.get async [%async_token_13]  @channel_6[%c0_12, %c0_12] (%results_14[%c0_12, %c0_12] [%c32, %c32] [%c64_11, %c1_9]) {id = 10 : i32} : (memref<64x64xi32, 1>)
        %12 = air.channel.get async [%async_token_13]  @channel_6[%c1_9, %c0_12] (%results_14[%c32, %c0_12] [%c32, %c32] [%c64_11, %c1_9]) {id = 11 : i32} : (memref<64x64xi32, 1>)
        %13 = air.channel.get async [%async_token_13]  @channel_6[%c0_12, %c1_9] (%results_14[%c0_12, %c32] [%c32, %c32] [%c64_11, %c1_9]) {id = 12 : i32} : (memref<64x64xi32, 1>)
        %14 = air.channel.get async [%async_token_13]  @channel_6[%c1_9, %c1_9] (%results_14[%c32, %c32] [%c32, %c32] [%c64_11, %c1_9]) {id = 13 : i32} : (memref<64x64xi32, 1>)
        %15 = air.herd @herd_0 async [%async_token_13]  tile (%arg10, %arg11) in (%arg12=%c1_9, %arg13=%c4) attributes {id = 3 : i32, x_loc = 1 : i64, y_loc = 2 : i64} {
          %c1_22 = arith.constant 1 : index
          %c32_23 = arith.constant 32 : index
          %c128_24 = arith.constant 128 : index
          %c0_25 = arith.constant 0 : index
          %c0_i32 = arith.constant 0 : i32
          %c64_26 = arith.constant 64 : index
          %c2_27 = arith.constant 2 : index
          %17 = arith.remsi %arg11, %c2_27 : index
          %18 = arith.divsi %arg11, %c2_27 : index
          %async_token_28, %results_29 = air.execute -> (memref<32x32xi32, 2>) {
            %alloc = memref.alloc() : memref<32x32xi32, 2>
            air.execute_terminator %alloc : memref<32x32xi32, 2>
          }
          %async_token_30 = air.execute [%async_token_28] {
            scf.for %arg14 = %c0_25 to %c32_23 step %c1_22 {
              scf.for %arg15 = %c0_25 to %c32_23 step %c1_22 {
                memref.store %c0_i32, %results_29[%arg14, %arg15] : memref<32x32xi32, 2>
              }
            }
          }
          %async_token_31, %results_32 = air.execute [%async_token_30] -> (memref<32x32xi32, 2>) {
            %alloc = memref.alloc() : memref<32x32xi32, 2>
            air.execute_terminator %alloc : memref<32x32xi32, 2>
          }
          %async_token_33, %results_34 = air.execute [%async_token_31] -> (memref<32x32xi32, 2>) {
            %alloc = memref.alloc() : memref<32x32xi32, 2>
            air.execute_terminator %alloc : memref<32x32xi32, 2>
          }
          %async_token_35, %results_36 = air.execute [%async_token_33] -> (memref<32x32xi32, 2>) {
            %alloc = memref.alloc() : memref<32x32xi32, 2>
            air.execute_terminator %alloc : memref<32x32xi32, 2>
          }
          %async_token_37, %results_38 = air.execute [%async_token_33] -> (memref<32x32xi32, 2>) {
            %alloc = memref.alloc() : memref<32x32xi32, 2>
            air.execute_terminator %alloc : memref<32x32xi32, 2>
          }
          %19:4 = scf.for %arg14 = %c0_25 to %c128_24 step %c64_26 iter_args(%arg15 = %async_token_35, %arg16 = %async_token_37, %arg17 = %async_token_37, %arg18 = %async_token_37) -> (!air.async.token, !air.async.token, !air.async.token, !air.async.token) {
            %21 = affine.if #set()[%18, %17] -> !air.async.token {
              %26 = air.channel.get async [%arg18, %arg15, %async_token_35]  @channel_0[%18, %17] (%results_36[] [] []) {id = 14 : i32} : (memref<32x32xi32, 2>)
              affine.yield %26 : !air.async.token
            } else {
              %26 = air.channel.get async [%arg18, %arg15, %async_token_35]  @channel_1[%18, %17] (%results_36[] [] []) {id = 15 : i32} : (memref<32x32xi32, 2>)
              affine.yield %26 : !air.async.token
            }
            %22 = affine.if #set1()[%18, %17] -> !air.async.token {
              %26 = air.channel.get async [%arg18, %arg15, %async_token_37]  @channel_2[%18, %17] (%results_38[] [] []) {id = 16 : i32} : (memref<32x32xi32, 2>)
              affine.yield %26 : !air.async.token
            } else {
              %26 = air.channel.get async [%arg18, %arg15, %async_token_37]  @channel_3[%18, %17] (%results_38[] [] []) {id = 17 : i32} : (memref<32x32xi32, 2>)
              affine.yield %26 : !air.async.token
            }
            %async_token_40 = air.execute [%arg17, %22, %21] {
              scf.for %arg19 = %c0_25 to %c32_23 step %c1_22 {
                scf.for %arg20 = %c0_25 to %c32_23 step %c1_22 {
                  scf.for %arg21 = %c0_25 to %c32_23 step %c1_22 {
                    %26 = memref.load %results_36[%arg19, %arg21] : memref<32x32xi32, 2>
                    %27 = memref.load %results_38[%arg21, %arg20] : memref<32x32xi32, 2>
                    %28 = memref.load %results_29[%arg19, %arg20] : memref<32x32xi32, 2>
                    %29 = arith.muli %26, %27 : i32
                    %30 = arith.addi %28, %29 : i32
                    memref.store %30, %results_29[%arg19, %arg20] : memref<32x32xi32, 2>
                  }
                }
              }
            }
            %async_token_41 = air.execute {
              memref.dealloc %results_36 : memref<32x32xi32, 2>
            }
            %async_token_42 = air.execute {
              memref.dealloc %results_38 : memref<32x32xi32, 2>
            }
            %23 = affine.if #set()[%18, %17] -> !air.async.token {
              %26 = air.channel.get async [%22, %21, %arg16]  @channel_0[%18, %17] (%results_34[] [] []) {id = 18 : i32} : (memref<32x32xi32, 2>)
              affine.yield %26 : !air.async.token
            } else {
              %26 = air.channel.get async [%22, %21, %arg16]  @channel_1[%18, %17] (%results_34[] [] []) {id = 19 : i32} : (memref<32x32xi32, 2>)
              affine.yield %26 : !air.async.token
            }
            %24 = affine.if #set1()[%18, %17] -> !air.async.token {
              %26 = air.channel.get async [%22, %21, %arg16]  @channel_2[%18, %17] (%results_32[] [] []) {id = 20 : i32} : (memref<32x32xi32, 2>)
              affine.yield %26 : !air.async.token
            } else {
              %26 = air.channel.get async [%22, %21, %arg16]  @channel_3[%18, %17] (%results_32[] [] []) {id = 21 : i32} : (memref<32x32xi32, 2>)
              affine.yield %26 : !air.async.token
            }
            %async_token_43 = air.execute [%async_token_40, %24, %23] {
              scf.for %arg19 = %c0_25 to %c32_23 step %c1_22 {
                scf.for %arg20 = %c0_25 to %c32_23 step %c1_22 {
                  scf.for %arg21 = %c0_25 to %c32_23 step %c1_22 {
                    %26 = memref.load %results_34[%arg19, %arg21] : memref<32x32xi32, 2>
                    %27 = memref.load %results_32[%arg21, %arg20] : memref<32x32xi32, 2>
                    %28 = memref.load %results_29[%arg19, %arg20] : memref<32x32xi32, 2>
                    %29 = arith.muli %26, %27 : i32
                    %30 = arith.addi %28, %29 : i32
                    memref.store %30, %results_29[%arg19, %arg20] : memref<32x32xi32, 2>
                  }
                }
              }
            }
            %async_token_44 = air.execute {
              memref.dealloc %results_34 : memref<32x32xi32, 2>
            }
            %async_token_45 = air.execute {
              memref.dealloc %results_32 : memref<32x32xi32, 2>
            }
            %25 = air.wait_all async [%23, %24] 
            scf.yield %async_token_40, %async_token_43, %async_token_43, %25 : !air.async.token, !air.async.token, !air.async.token, !air.async.token
          }
          %20 = air.channel.put async [%19#1]  @channel_6[%18, %17] (%results_29[] [] []) {id = 22 : i32} : (memref<32x32xi32, 2>)
          %async_token_39 = air.execute [%20] {
            memref.dealloc %results_29 : memref<32x32xi32, 2>
          }
        }
        %async_token_19 = air.execute [%5] {
          memref.dealloc %results_16 : memref<64x128xi32, 1>
        }
        %async_token_20 = air.execute [%6] {
          memref.dealloc %results_18 : memref<128x64xi32, 1>
        }
        %16 = air.channel.put async [%15]  @channel_7[] (%results_14[] [] []) {id = 23 : i32} : (memref<64x64xi32, 1>)
        %async_token_21 = air.execute [%16] {
          memref.dealloc %results_14 : memref<64x64xi32, 1>
        }
      }
    }
    %async_token_0 = air.execute [%0] {
      memref.copy %results, %arg2 : memref<128x128xi32> to memref<128x128xi32>
    }
    return
  }
}
