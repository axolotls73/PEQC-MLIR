#map = affine_map<()[s0] -> (s0 * 4)>
#map1 = affine_map<()[s0] -> (s0 * 2)>
#set = affine_set<()[s0, s1] : (s0 == 0, s1 >= 0, -s1 + 1 >= 0)>
#set1 = affine_set<()[s0, s1] : (s0 >= 0, -s0 + 1 >= 0, s1 == 0)>
module {
  aie.device(ipu) {
    %tile_0_0 = aie.tile(0, 0)
    %tile_0_1 = aie.tile(0, 1)
    %tile_0_2 = aie.tile(0, 2)
    %tile_0_3 = aie.tile(0, 3)
    %tile_0_4 = aie.tile(0, 4)
    %tile_0_5 = aie.tile(0, 5)
    %lock_0_1 = aie.lock(%tile_0_1, 5) {init = 4 : i32}
    %lock_0_1_0 = aie.lock(%tile_0_1, 4) {init = 0 : i32}
    %lock_0_1_1 = aie.lock(%tile_0_1, 3) {init = 2 : i32}
    %lock_0_1_2 = aie.lock(%tile_0_1, 2) {init = 0 : i32}
    %lock_0_1_3 = aie.lock(%tile_0_1, 1) {init = 2 : i32}
    %lock_0_1_4 = aie.lock(%tile_0_1, 0) {init = 0 : i32}
    %lock_0_2 = aie.lock(%tile_0_2, 5) {init = 1 : i32}
    %lock_0_2_5 = aie.lock(%tile_0_2, 4) {init = 0 : i32}
    %lock_0_2_6 = aie.lock(%tile_0_2, 3) {init = 1 : i32}
    %lock_0_2_7 = aie.lock(%tile_0_2, 2) {init = 0 : i32}
    %lock_0_2_8 = aie.lock(%tile_0_2, 1) {init = 1 : i32}
    %lock_0_2_9 = aie.lock(%tile_0_2, 0) {init = 0 : i32}
    %lock_0_3 = aie.lock(%tile_0_3, 5) {init = 1 : i32}
    %lock_0_3_10 = aie.lock(%tile_0_3, 4) {init = 0 : i32}
    %lock_0_3_11 = aie.lock(%tile_0_3, 3) {init = 1 : i32}
    %lock_0_3_12 = aie.lock(%tile_0_3, 2) {init = 0 : i32}
    %lock_0_3_13 = aie.lock(%tile_0_3, 1) {init = 1 : i32}
    %lock_0_3_14 = aie.lock(%tile_0_3, 0) {init = 0 : i32}
    %lock_0_4 = aie.lock(%tile_0_4, 5) {init = 1 : i32}
    %lock_0_4_15 = aie.lock(%tile_0_4, 4) {init = 0 : i32}
    %lock_0_4_16 = aie.lock(%tile_0_4, 3) {init = 1 : i32}
    %lock_0_4_17 = aie.lock(%tile_0_4, 2) {init = 0 : i32}
    %lock_0_4_18 = aie.lock(%tile_0_4, 1) {init = 1 : i32}
    %lock_0_4_19 = aie.lock(%tile_0_4, 0) {init = 0 : i32}
    %lock_0_5 = aie.lock(%tile_0_5, 5) {init = 1 : i32}
    %lock_0_5_20 = aie.lock(%tile_0_5, 4) {init = 0 : i32}
    %lock_0_5_21 = aie.lock(%tile_0_5, 3) {init = 1 : i32}
    %lock_0_5_22 = aie.lock(%tile_0_5, 2) {init = 0 : i32}
    %lock_0_5_23 = aie.lock(%tile_0_5, 1) {init = 1 : i32}
    %lock_0_5_24 = aie.lock(%tile_0_5, 0) {init = 0 : i32}
    %buf14 = aie.buffer(%tile_0_1) {sym_name = "buf14"} : memref<4x8xi32, 1> 
    %buf13 = aie.buffer(%tile_0_1) {sym_name = "buf13"} : memref<8x4xi32, 1> 
    %buf12 = aie.buffer(%tile_0_1) {sym_name = "buf12"} : memref<4x4xi32, 1> 
    %buf11 = aie.buffer(%tile_0_5) {sym_name = "buf11"} : memref<2x2xi32, 2> 
    %buf10 = aie.buffer(%tile_0_5) {sym_name = "buf10"} : memref<2x2xi32, 2> 
    %buf9 = aie.buffer(%tile_0_5) {sym_name = "buf9"} : memref<2x2xi32, 2> 
    %buf8 = aie.buffer(%tile_0_4) {sym_name = "buf8"} : memref<2x2xi32, 2> 
    %buf7 = aie.buffer(%tile_0_4) {sym_name = "buf7"} : memref<2x2xi32, 2> 
    %buf6 = aie.buffer(%tile_0_4) {sym_name = "buf6"} : memref<2x2xi32, 2> 
    %buf5 = aie.buffer(%tile_0_3) {sym_name = "buf5"} : memref<2x2xi32, 2> 
    %buf4 = aie.buffer(%tile_0_3) {sym_name = "buf4"} : memref<2x2xi32, 2> 
    %buf3 = aie.buffer(%tile_0_3) {sym_name = "buf3"} : memref<2x2xi32, 2> 
    %buf2 = aie.buffer(%tile_0_2) {sym_name = "buf2"} : memref<2x2xi32, 2> 
    %buf1 = aie.buffer(%tile_0_2) {sym_name = "buf1"} : memref<2x2xi32, 2> 
    %buf0 = aie.buffer(%tile_0_2) {sym_name = "buf0"} : memref<2x2xi32, 2> 
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5, repeat_count = 1)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_5_21, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf10 : memref<2x2xi32, 2>, 0, 4)
      aie.use_lock(%lock_0_5_22, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb5
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb2, repeat_count = 1)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_5, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf9 : memref<2x2xi32, 2>, 0, 4)
      aie.use_lock(%lock_0_5_20, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb6, ^bb3, repeat_count = 1)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%lock_0_5_24, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf11 : memref<2x2xi32, 2>, 0, 4)
      aie.use_lock(%lock_0_5_23, Release, 1)
      aie.next_bd ^bb6
    }
    %core_0_5 = aie.core(%tile_0_5) {
      %c2 = arith.constant 2 : index
      %c0_i32 = arith.constant 0 : i32
      %c8 = arith.constant 8 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_5_23, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c2 step %c1 {
        scf.for %arg1 = %c0 to %c2 step %c1 {
          memref.store %c0_i32, %buf11[%arg0, %arg1] : memref<2x2xi32, 2>
        }
      }
      scf.for %arg0 = %c0 to %c8 step %c2 {
        aie.use_lock(%lock_0_5_22, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_0_5_20, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c2 step %c1 {
          scf.for %arg2 = %c0 to %c2 step %c1 {
            scf.for %arg3 = %c0 to %c2 step %c1 {
              %0 = memref.load %buf10[%arg1, %arg3] : memref<2x2xi32, 2>
              %1 = memref.load %buf9[%arg3, %arg2] : memref<2x2xi32, 2>
              %2 = memref.load %buf11[%arg1, %arg2] : memref<2x2xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf11[%arg1, %arg2] : memref<2x2xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_0_5_21, Release, 1)
        aie.use_lock(%lock_0_5, Release, 1)
      } {unroll = 2 : i32}
      aie.use_lock(%lock_0_5_24, Release, 1)
      cf.br ^bb1
    } {elf_file = "segment_0_core_0_5.elf"}
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5, repeat_count = 1)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_4_16, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf7 : memref<2x2xi32, 2>, 0, 4)
      aie.use_lock(%lock_0_4_17, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb5
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb2, repeat_count = 1)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf6 : memref<2x2xi32, 2>, 0, 4)
      aie.use_lock(%lock_0_4_15, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb6, ^bb3, repeat_count = 1)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%lock_0_4_19, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf8 : memref<2x2xi32, 2>, 0, 4)
      aie.use_lock(%lock_0_4_18, Release, 1)
      aie.next_bd ^bb6
    }
    %core_0_4 = aie.core(%tile_0_4) {
      %c0_i32 = arith.constant 0 : i32
      %c8 = arith.constant 8 : index
      %c1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_4_18, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c2 step %c1 {
        scf.for %arg1 = %c0 to %c2 step %c1 {
          memref.store %c0_i32, %buf8[%arg0, %arg1] : memref<2x2xi32, 2>
        }
      }
      scf.for %arg0 = %c0 to %c8 step %c2 {
        aie.use_lock(%lock_0_4_17, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_0_4_15, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c2 step %c1 {
          scf.for %arg2 = %c0 to %c2 step %c1 {
            scf.for %arg3 = %c0 to %c2 step %c1 {
              %0 = memref.load %buf7[%arg1, %arg3] : memref<2x2xi32, 2>
              %1 = memref.load %buf6[%arg3, %arg2] : memref<2x2xi32, 2>
              %2 = memref.load %buf8[%arg1, %arg2] : memref<2x2xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf8[%arg1, %arg2] : memref<2x2xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_0_4_16, Release, 1)
        aie.use_lock(%lock_0_4, Release, 1)
      } {unroll = 2 : i32}
      aie.use_lock(%lock_0_4_19, Release, 1)
      cf.br ^bb1
    } {elf_file = "segment_0_core_0_4.elf"}
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5, repeat_count = 1)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_3_11, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf4 : memref<2x2xi32, 2>, 0, 4)
      aie.use_lock(%lock_0_3_12, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb5
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb2, repeat_count = 1)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf3 : memref<2x2xi32, 2>, 0, 4)
      aie.use_lock(%lock_0_3_10, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb6, ^bb3, repeat_count = 1)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%lock_0_3_14, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf5 : memref<2x2xi32, 2>, 0, 4)
      aie.use_lock(%lock_0_3_13, Release, 1)
      aie.next_bd ^bb6
    }
    %core_0_3 = aie.core(%tile_0_3) {
      %c2 = arith.constant 2 : index
      %c0_i32 = arith.constant 0 : i32
      %c8 = arith.constant 8 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_3_13, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c2 step %c1 {
        scf.for %arg1 = %c0 to %c2 step %c1 {
          memref.store %c0_i32, %buf5[%arg0, %arg1] : memref<2x2xi32, 2>
        }
      }
      scf.for %arg0 = %c0 to %c8 step %c2 {
        aie.use_lock(%lock_0_3_12, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_0_3_10, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c2 step %c1 {
          scf.for %arg2 = %c0 to %c2 step %c1 {
            scf.for %arg3 = %c0 to %c2 step %c1 {
              %0 = memref.load %buf4[%arg1, %arg3] : memref<2x2xi32, 2>
              %1 = memref.load %buf3[%arg3, %arg2] : memref<2x2xi32, 2>
              %2 = memref.load %buf5[%arg1, %arg2] : memref<2x2xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf5[%arg1, %arg2] : memref<2x2xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_0_3_11, Release, 1)
        aie.use_lock(%lock_0_3, Release, 1)
      } {unroll = 2 : i32}
      aie.use_lock(%lock_0_3_14, Release, 1)
      cf.br ^bb1
    } {elf_file = "segment_0_core_0_3.elf"}
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5, repeat_count = 1)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_2_6, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf1 : memref<2x2xi32, 2>, 0, 4)
      aie.use_lock(%lock_0_2_7, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb5
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb2, repeat_count = 1)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf0 : memref<2x2xi32, 2>, 0, 4)
      aie.use_lock(%lock_0_2_5, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb6, ^bb3, repeat_count = 1)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%lock_0_2_9, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf2 : memref<2x2xi32, 2>, 0, 4)
      aie.use_lock(%lock_0_2_8, Release, 1)
      aie.next_bd ^bb6
    }
    %core_0_2 = aie.core(%tile_0_2) {
      %c2 = arith.constant 2 : index
      %c0_i32 = arith.constant 0 : i32
      %c8 = arith.constant 8 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_2_8, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c2 step %c1 {
        scf.for %arg1 = %c0 to %c2 step %c1 {
          memref.store %c0_i32, %buf2[%arg0, %arg1] : memref<2x2xi32, 2>
        }
      }
      scf.for %arg0 = %c0 to %c8 step %c2 {
        aie.use_lock(%lock_0_2_7, AcquireGreaterEqual, 1)
        aie.use_lock(%lock_0_2_5, AcquireGreaterEqual, 1)
        scf.for %arg1 = %c0 to %c2 step %c1 {
          scf.for %arg2 = %c0 to %c2 step %c1 {
            scf.for %arg3 = %c0 to %c2 step %c1 {
              %0 = memref.load %buf1[%arg1, %arg3] : memref<2x2xi32, 2>
              %1 = memref.load %buf0[%arg3, %arg2] : memref<2x2xi32, 2>
              %2 = memref.load %buf2[%arg1, %arg2] : memref<2x2xi32, 2>
              %3 = arith.muli %0, %1 : i32
              %4 = arith.addi %2, %3 : i32
              memref.store %4, %buf2[%arg1, %arg2] : memref<2x2xi32, 2>
            }
          }
        }
        aie.use_lock(%lock_0_2_6, Release, 1)
        aie.use_lock(%lock_0_2, Release, 1)
      } {unroll = 2 : i32}
      aie.use_lock(%lock_0_2_9, Release, 1)
      cf.br ^bb1
    } {elf_file = "segment_0_core_0_2.elf"}
    aie.flow(%tile_0_0, DMA : 0, %tile_0_1, DMA : 0)
    aie.flow(%tile_0_0, DMA : 1, %tile_0_1, DMA : 1)
    aie.flow(%tile_0_1, DMA : 0, %tile_0_0, DMA : 0)
    aie.flow(%tile_0_1, DMA : 1, %tile_0_2, DMA : 0)
    aie.flow(%tile_0_1, DMA : 1, %tile_0_3, DMA : 0)
    aie.flow(%tile_0_1, DMA : 2, %tile_0_4, DMA : 0)
    aie.flow(%tile_0_1, DMA : 2, %tile_0_5, DMA : 0)
    aie.flow(%tile_0_1, DMA : 3, %tile_0_2, DMA : 1)
    aie.flow(%tile_0_1, DMA : 3, %tile_0_4, DMA : 1)
    aie.flow(%tile_0_1, DMA : 4, %tile_0_3, DMA : 1)
    aie.flow(%tile_0_1, DMA : 4, %tile_0_5, DMA : 1)
    aie.flow(%tile_0_2, DMA : 0, %tile_0_1, DMA : 2)
    aie.flow(%tile_0_4, DMA : 0, %tile_0_1, DMA : 3)
    aie.flow(%tile_0_3, DMA : 0, %tile_0_1, DMA : 4)
    aie.flow(%tile_0_5, DMA : 0, %tile_0_1, DMA : 5)
    %memtile_dma_0_1 = aie.memtile_dma(%tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb21, repeat_count = 1)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_1_3, AcquireGreaterEqual, 2)
      aie.dma_bd(%buf14 : memref<4x8xi32, 1>, 0, 32)
      aie.use_lock(%lock_0_1_4, Release, 2)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb3
      aie.end
    ^bb3:  // pred: ^bb5
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb2, repeat_count = 1)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%lock_0_1_1, AcquireGreaterEqual, 2)
      aie.dma_bd(%buf13 : memref<8x4xi32, 1>, 0, 32)
      aie.use_lock(%lock_0_1_2, Release, 2)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb7
      %2 = aie.dma_start(S2MM, 2, ^bb6, ^bb3, repeat_count = 1)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf12 : memref<4x4xi32, 1>, 0, 4, [<size = 2, stride = 4>, <size = 2, stride = 1>])
      aie.use_lock(%lock_0_1_0, Release, 1)
      aie.next_bd ^bb6
    ^bb7:  // pred: ^bb9
      %3 = aie.dma_start(S2MM, 3, ^bb8, ^bb5, repeat_count = 1)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf12 : memref<4x4xi32, 1>, 8, 4, [<size = 2, stride = 4>, <size = 2, stride = 1>])
      aie.use_lock(%lock_0_1_0, Release, 1)
      aie.next_bd ^bb8
    ^bb9:  // pred: ^bb11
      %4 = aie.dma_start(S2MM, 4, ^bb10, ^bb7, repeat_count = 1)
    ^bb10:  // 2 preds: ^bb9, ^bb10
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf12 : memref<4x4xi32, 1>, 2, 4, [<size = 2, stride = 4>, <size = 2, stride = 1>])
      aie.use_lock(%lock_0_1_0, Release, 1)
      aie.next_bd ^bb10
    ^bb11:  // pred: ^bb13
      %5 = aie.dma_start(S2MM, 5, ^bb12, ^bb9, repeat_count = 1)
    ^bb12:  // 2 preds: ^bb11, ^bb12
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf12 : memref<4x4xi32, 1>, 10, 4, [<size = 2, stride = 4>, <size = 2, stride = 1>])
      aie.use_lock(%lock_0_1_0, Release, 1)
      aie.next_bd ^bb12
    ^bb13:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 0, ^bb14, ^bb11, repeat_count = 1)
    ^bb14:  // 2 preds: ^bb13, ^bb14
      aie.use_lock(%lock_0_1_0, AcquireGreaterEqual, 4)
      aie.dma_bd(%buf12 : memref<4x4xi32, 1>, 0, 16)
      aie.use_lock(%lock_0_1, Release, 4)
      aie.next_bd ^bb14
    ^bb15:  // pred: ^bb17
      %7 = aie.dma_start(MM2S, 1, ^bb16, ^bb13, repeat_count = 1)
    ^bb16:  // 2 preds: ^bb15, ^bb16
      aie.use_lock(%lock_0_1_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf14 : memref<4x8xi32, 1>, 0, 4, [<size = 2, stride = 8>, <size = 2, stride = 1>])
      aie.use_lock(%lock_0_1_3, Release, 1)
      aie.next_bd ^bb16
    ^bb17:  // pred: ^bb19
      %8 = aie.dma_start(MM2S, 2, ^bb18, ^bb15, repeat_count = 1)
    ^bb18:  // 2 preds: ^bb17, ^bb18
      aie.use_lock(%lock_0_1_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf14 : memref<4x8xi32, 1>, 16, 4, [<size = 2, stride = 8>, <size = 2, stride = 1>])
      aie.use_lock(%lock_0_1_3, Release, 1)
      aie.next_bd ^bb18
    ^bb19:  // pred: ^bb21
      %9 = aie.dma_start(MM2S, 3, ^bb20, ^bb17, repeat_count = 1)
    ^bb20:  // 2 preds: ^bb19, ^bb20
      aie.use_lock(%lock_0_1_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf13 : memref<8x4xi32, 1>, 0, 4, [<size = 2, stride = 4>, <size = 2, stride = 1>])
      aie.use_lock(%lock_0_1_1, Release, 1)
      aie.next_bd ^bb20
    ^bb21:  // pred: ^bb0
      %10 = aie.dma_start(MM2S, 4, ^bb22, ^bb19, repeat_count = 1)
    ^bb22:  // 2 preds: ^bb21, ^bb22
      aie.use_lock(%lock_0_1_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf13 : memref<8x4xi32, 1>, 2, 4, [<size = 2, stride = 4>, <size = 2, stride = 1>])
      aie.use_lock(%lock_0_1_1, Release, 1)
      aie.next_bd ^bb22
    }
    aie.shim_dma_allocation @airMemcpyId16(S2MM, 0, 0)
    memref.global "public" @airMemcpyId16 : memref<4x4xi32, 1>
    aie.shim_dma_allocation @airMemcpyId4(MM2S, 0, 0)
    memref.global "public" @airMemcpyId4 : memref<4x8xi32, 1>
    aie.shim_dma_allocation @airMemcpyId5(MM2S, 1, 0)
    memref.global "public" @airMemcpyId5 : memref<8x4xi32, 1>
  } {sym_name = "segment_0"}
  airrt.module_metadata{
  }
  air.channel @channel_7 [1, 1]
  air.channel @channel_6 [2, 2]
  air.channel @channel_5 [1, 1]
  air.channel @channel_4 [1, 1]
  air.channel @channel_3 [1, 1] {broadcast_shape = [2, 1]}
  air.channel @channel_2 [1, 1] {broadcast_shape = [2, 1]}
  air.channel @channel_1 [1, 1] {broadcast_shape = [1, 2]}
  air.channel @channel_0 [1, 1] {broadcast_shape = [1, 2]}
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>, %arg2: memref<16x16xi32>) {
    %c4 = arith.constant 4 : index
    %async_token, %results = air.execute -> (memref<16x16xi32>) {
      %alloc = memref.alloc() : memref<16x16xi32>
      air.execute_terminator %alloc : memref<16x16xi32>
    }
    %0 = air.launch async [%async_token] (%arg3, %arg4) in (%arg5=%c4, %arg6=%c4) args(%arg7=%results, %arg8=%arg0, %arg9=%arg1) : memref<16x16xi32>, memref<16x16xi32>, memref<16x16xi32> attributes {id = 1 : i32} {
      %c1 = arith.constant 1 : index
      %c4_1 = arith.constant 4 : index
      %c0 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %c8 = arith.constant 8 : index
      %async_token_2, %results_3 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %1 = scf.for %arg10 = %c0 to %c16 step %c8 iter_args(%arg11 = %async_token_2) -> (!air.async.token) {
        %5 = air.channel.put async [%arg11]  @channel_4[] (%arg8[%results_3, %arg10] [%c4_1, %c8] [%c16, %c1]) {id = 1 : i32, metadata = @airMemcpyId4} : (memref<16x16xi32>)
        scf.yield %5 : !air.async.token
      }
      %async_token_4, %results_5 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %2 = scf.for %arg10 = %c0 to %c16 step %c8 iter_args(%arg11 = %async_token_4) -> (!air.async.token) {
        %5 = air.channel.put async [%arg11]  @channel_5[] (%arg9[%arg10, %results_5] [%c8, %c4_1] [%c16, %c1]) {id = 2 : i32, metadata = @airMemcpyId5} : (memref<16x16xi32>)
        scf.yield %5 : !air.async.token
      }
      %async_token_6, %results_7 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg3]
        air.execute_terminator %5 : index
      }
      %async_token_8, %results_9 = air.execute -> (index) {
        %5 = affine.apply #map()[%arg4]
        air.execute_terminator %5 : index
      }
      %3 = air.channel.get async [%async_token_6, %async_token_8]  @channel_7[] (%arg7[%results_7, %results_9] [%c4_1, %c4_1] [%c16, %c1]) {id = 3 : i32, metadata = @airMemcpyId16} : (memref<16x16xi32>)
      %4 = air.segment @segment_0 async  attributes {id = 2 : i32, x_loc = 0 : i64, x_size = 1 : i64, y_loc = 2 : i64, y_size = 4 : i64} {
        %c1_10 = arith.constant 1 : index
        %c4_11 = arith.constant 4 : index
        %c2 = arith.constant 2 : index
        %c0_12 = arith.constant 0 : index
        %c16_13 = arith.constant 16 : index
        %c8_14 = arith.constant 8 : index
        %async_token_15, %results_16 = air.execute -> (memref<4x4xi32, 1>) {
          %alloc = memref.alloc() : memref<4x4xi32, 1>
          air.execute_terminator %alloc : memref<4x4xi32, 1>
        }
        %5 = scf.for %arg10 = %c0_12 to %c16_13 step %c8_14 iter_args(%arg11 = %async_token_15) -> (!air.async.token) {
          %async_token_18, %results_19 = air.execute -> (memref<4x8xi32, 1>) {
            %alloc = memref.alloc() {hoist_alloc = true} : memref<4x8xi32, 1>
            air.execute_terminator %alloc : memref<4x8xi32, 1>
          }
          %async_token_20, %results_21 = air.execute -> (memref<8x4xi32, 1>) {
            %alloc = memref.alloc() {hoist_alloc = true} : memref<8x4xi32, 1>
            air.execute_terminator %alloc : memref<8x4xi32, 1>
          }
          %7 = air.channel.get async [%arg11, %async_token_18]  @channel_4[] (%results_19[] [] []) {id = 4 : i32} : (memref<4x8xi32, 1>)
          %8 = air.channel.get async [%arg11, %async_token_20]  @channel_5[] (%results_21[] [] []) {id = 5 : i32} : (memref<8x4xi32, 1>)
          %9 = scf.for %arg12 = %c0_12 to %c8_14 step %c2 iter_args(%arg13 = %7) -> (!air.async.token) {
            %16 = air.channel.put async [%arg13]  @channel_0[] (%results_19[%c0_12, %arg12] [%c2, %c2] [%c8_14, %c1_10]) {id = 6 : i32} : (memref<4x8xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          %10 = scf.for %arg12 = %c0_12 to %c8_14 step %c2 iter_args(%arg13 = %7) -> (!air.async.token) {
            %16 = air.channel.put async [%arg13]  @channel_1[] (%results_19[%c2, %arg12] [%c2, %c2] [%c8_14, %c1_10]) {id = 7 : i32} : (memref<4x8xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          %11 = scf.for %arg12 = %c0_12 to %c8_14 step %c2 iter_args(%arg13 = %8) -> (!air.async.token) {
            %16 = air.channel.put async [%arg13]  @channel_2[] (%results_21[%arg12, %c0_12] [%c2, %c2] [%c4_11, %c1_10]) {id = 8 : i32} : (memref<8x4xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          %12 = scf.for %arg12 = %c0_12 to %c8_14 step %c2 iter_args(%arg13 = %8) -> (!air.async.token) {
            %16 = air.channel.put async [%arg13]  @channel_3[] (%results_21[%arg12, %c2] [%c2, %c2] [%c4_11, %c1_10]) {id = 9 : i32} : (memref<8x4xi32, 1>)
            scf.yield %16 : !air.async.token
          }
          %13 = scf.parallel (%arg12, %arg13) = (%c0_12, %c0_12) to (%c2, %c2) step (%c1_10, %c1_10) init (%arg11) -> !air.async.token {
            %async_token_24, %results_25 = air.execute -> (index) {
              %17 = affine.apply #map1()[%arg12]
              air.execute_terminator %17 : index
            }
            %async_token_26, %results_27 = air.execute -> (index) {
              %17 = affine.apply #map1()[%arg13]
              air.execute_terminator %17 : index
            }
            %16 = air.channel.get async [%arg11, %async_token_26, %async_token_24]  @channel_6[%arg12, %arg13] (%results_16[%results_25, %results_27] [%c2, %c2] [%c4_11, %c1_10]) {id = 10 : i32} : (memref<4x4xi32, 1>)
            scf.reduce(%16 : !air.async.token) {
            ^bb0(%arg14: !air.async.token, %arg15: !air.async.token):
              %17 = air.wait_all async [%arg14, %arg15] 
              scf.reduce.return %17 : !air.async.token
            }
          }
          %14 = air.herd @herd_0 async [%7, %8]  tile (%arg12, %arg13) in (%arg14=%c1_10, %arg15=%c4_11) attributes {id = 3 : i32, x_loc = 0 : i64, y_loc = 2 : i64} {
            %c1_24 = arith.constant 1 : index
            %c8_25 = arith.constant 8 : index
            %c0_26 = arith.constant 0 : index
            %c0_i32 = arith.constant 0 : i32
            %c2_27 = arith.constant 2 : index
            %16 = arith.remsi %arg13, %c2_27 : index
            %17 = arith.divsi %arg13, %c2_27 : index
            %async_token_28, %results_29 = air.execute -> (memref<2x2xi32, 2>) {
              %alloc = memref.alloc() : memref<2x2xi32, 2>
              air.execute_terminator %alloc : memref<2x2xi32, 2>
            }
            %async_token_30 = air.execute [%async_token_28] {
              scf.for %arg16 = %c0_26 to %c2_27 step %c1_24 {
                scf.for %arg17 = %c0_26 to %c2_27 step %c1_24 {
                  memref.store %c0_i32, %results_29[%arg16, %arg17] : memref<2x2xi32, 2>
                }
              }
            }
            %18 = scf.for %arg16 = %c0_26 to %c8_25 step %c2_27 iter_args(%arg17 = %async_token_30) -> (!air.async.token) {
              %async_token_32, %results_33 = air.execute -> (memref<2x2xi32, 2>) {
                %alloc = memref.alloc() {hoist_alloc = true} : memref<2x2xi32, 2>
                air.execute_terminator %alloc : memref<2x2xi32, 2>
              }
              %async_token_34, %results_35 = air.execute -> (memref<2x2xi32, 2>) {
                %alloc = memref.alloc() {hoist_alloc = true} : memref<2x2xi32, 2>
                air.execute_terminator %alloc : memref<2x2xi32, 2>
              }
              %20 = affine.if #set()[%17, %16] -> !air.async.token {
                %22 = air.channel.get async [%arg17, %async_token_32]  @channel_0[%17, %16] (%results_33[] [] []) {id = 11 : i32} : (memref<2x2xi32, 2>)
                affine.yield %22 : !air.async.token
              } else {
                %22 = air.channel.get async [%arg17, %async_token_32]  @channel_1[%17, %16] (%results_33[] [] []) {id = 12 : i32} : (memref<2x2xi32, 2>)
                affine.yield %22 : !air.async.token
              }
              %21 = affine.if #set1()[%17, %16] -> !air.async.token {
                %22 = air.channel.get async [%arg17, %async_token_34]  @channel_2[%17, %16] (%results_35[] [] []) {id = 13 : i32} : (memref<2x2xi32, 2>)
                affine.yield %22 : !air.async.token
              } else {
                %22 = air.channel.get async [%arg17, %async_token_34]  @channel_3[%17, %16] (%results_35[] [] []) {id = 14 : i32} : (memref<2x2xi32, 2>)
                affine.yield %22 : !air.async.token
              }
              %async_token_36 = air.execute [%21, %20] {
                scf.for %arg18 = %c0_26 to %c2_27 step %c1_24 {
                  scf.for %arg19 = %c0_26 to %c2_27 step %c1_24 {
                    scf.for %arg20 = %c0_26 to %c2_27 step %c1_24 {
                      %22 = memref.load %results_33[%arg18, %arg20] : memref<2x2xi32, 2>
                      %23 = memref.load %results_35[%arg20, %arg19] : memref<2x2xi32, 2>
                      %24 = memref.load %results_29[%arg18, %arg19] : memref<2x2xi32, 2>
                      %25 = arith.muli %22, %23 : i32
                      %26 = arith.addi %24, %25 : i32
                      memref.store %26, %results_29[%arg18, %arg19] : memref<2x2xi32, 2>
                    }
                  }
                }
              }
              %async_token_37 = air.execute [%async_token_36] {
                memref.dealloc %results_33 : memref<2x2xi32, 2>
              }
              %async_token_38 = air.execute [%async_token_36] {
                memref.dealloc %results_35 : memref<2x2xi32, 2>
              }
              scf.yield %async_token_36 : !air.async.token
            } {unroll = 2 : i32}
            %19 = air.channel.put async [%18]  @channel_6[%17, %16] (%results_29[] [] []) {id = 15 : i32} : (memref<2x2xi32, 2>)
            %async_token_31 = air.execute [%19] {
              memref.dealloc %results_29 : memref<2x2xi32, 2>
            }
            air.herd_terminator
          }
          %async_token_22 = air.execute [%7] {
            memref.dealloc %results_19 : memref<4x8xi32, 1>
          }
          %async_token_23 = air.execute [%8] {
            memref.dealloc %results_21 : memref<8x4xi32, 1>
          }
          %15 = air.wait_all async [%9, %10, %11, %12, %13, %14] 
          scf.yield %15 : !air.async.token
        } {unroll = 2 : i32}
        %6 = air.channel.put async [%5]  @channel_7[] (%results_16[] [] []) {id = 16 : i32} : (memref<4x4xi32, 1>)
        %async_token_17 = air.execute [%6] {
          memref.dealloc %results_16 : memref<4x4xi32, 1>
        }
        air.segment_terminator
      }
      air.launch_terminator
    }
    %async_token_0 = air.execute [%0] {
      memref.copy %results, %arg2 : memref<16x16xi32> to memref<16x16xi32>
    }
    return
  }
}
