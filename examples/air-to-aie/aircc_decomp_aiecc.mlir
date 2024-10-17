#map = affine_map<()[s0] -> (s0 * 64)>
#map1 = affine_map<()[s0] -> (s0 * 32)>
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
    %lock_0_1 = aie.lock(%tile_0_1, 9) {init = 4 : i32}
    %lock_0_1_0 = aie.lock(%tile_0_1, 8) {init = 0 : i32}
    %lock_0_1_1 = aie.lock(%tile_0_1, 7) {init = 2 : i32}
    %lock_0_1_2 = aie.lock(%tile_0_1, 6) {init = 0 : i32}
    %lock_0_1_3 = aie.lock(%tile_0_1, 5) {init = 2 : i32}
    %lock_0_1_4 = aie.lock(%tile_0_1, 4) {init = 0 : i32}
    %lock_0_1_5 = aie.lock(%tile_0_1, 3) {init = 2 : i32}
    %lock_0_1_6 = aie.lock(%tile_0_1, 2) {init = 0 : i32}
    %lock_0_1_7 = aie.lock(%tile_0_1, 1) {init = 2 : i32}
    %lock_0_1_8 = aie.lock(%tile_0_1, 0) {init = 0 : i32}
    %lock_0_2 = aie.lock(%tile_0_2, 5) {init = 2 : i32}
    %lock_0_2_9 = aie.lock(%tile_0_2, 4) {init = 0 : i32}
    %lock_0_2_10 = aie.lock(%tile_0_2, 3) {init = 2 : i32}
    %lock_0_2_11 = aie.lock(%tile_0_2, 2) {init = 0 : i32}
    %lock_0_2_12 = aie.lock(%tile_0_2, 1) {init = 1 : i32}
    %lock_0_2_13 = aie.lock(%tile_0_2, 0) {init = 0 : i32}
    %lock_0_3 = aie.lock(%tile_0_3, 5) {init = 2 : i32}
    %lock_0_3_14 = aie.lock(%tile_0_3, 4) {init = 0 : i32}
    %lock_0_3_15 = aie.lock(%tile_0_3, 3) {init = 2 : i32}
    %lock_0_3_16 = aie.lock(%tile_0_3, 2) {init = 0 : i32}
    %lock_0_3_17 = aie.lock(%tile_0_3, 1) {init = 1 : i32}
    %lock_0_3_18 = aie.lock(%tile_0_3, 0) {init = 0 : i32}
    %lock_0_4 = aie.lock(%tile_0_4, 5) {init = 2 : i32}
    %lock_0_4_19 = aie.lock(%tile_0_4, 4) {init = 0 : i32}
    %lock_0_4_20 = aie.lock(%tile_0_4, 3) {init = 2 : i32}
    %lock_0_4_21 = aie.lock(%tile_0_4, 2) {init = 0 : i32}
    %lock_0_4_22 = aie.lock(%tile_0_4, 1) {init = 1 : i32}
    %lock_0_4_23 = aie.lock(%tile_0_4, 0) {init = 0 : i32}
    %lock_0_5 = aie.lock(%tile_0_5, 5) {init = 2 : i32}
    %lock_0_5_24 = aie.lock(%tile_0_5, 4) {init = 0 : i32}
    %lock_0_5_25 = aie.lock(%tile_0_5, 3) {init = 2 : i32}
    %lock_0_5_26 = aie.lock(%tile_0_5, 2) {init = 0 : i32}
    %lock_0_5_27 = aie.lock(%tile_0_5, 1) {init = 1 : i32}
    %lock_0_5_28 = aie.lock(%tile_0_5, 0) {init = 0 : i32}
    %buf24 = aie.buffer(%tile_0_1) {sym_name = "buf24"} : memref<1x1x64x256xi32, 1> 
    %buf23 = aie.buffer(%tile_0_1) {sym_name = "buf23"} : memref<1x1x256x64xi32, 1> 
    %buf22 = aie.buffer(%tile_0_1) {sym_name = "buf22"} : memref<1x1x64x256xi32, 1> 
    %buf21 = aie.buffer(%tile_0_1) {sym_name = "buf21"} : memref<1x1x256x64xi32, 1> 
    %buf20 = aie.buffer(%tile_0_1) {sym_name = "buf20"} : memref<1x1x64x64xi32, 1> 
    %buf19 = aie.buffer(%tile_0_5) {sym_name = "buf19"} : memref<1x1x4x8x4x8xi32, 2> 
    %buf18 = aie.buffer(%tile_0_5) {sym_name = "buf18"} : memref<1x1x4x4x8x8xi32, 2> 
    %buf17 = aie.buffer(%tile_0_5) {sym_name = "buf17"} : memref<1x1x4x8x4x8xi32, 2> 
    %buf16 = aie.buffer(%tile_0_5) {sym_name = "buf16"} : memref<1x1x4x8x4x8xi32, 2> 
    %buf15 = aie.buffer(%tile_0_5) {sym_name = "buf15"} : memref<1x1x4x4x8x8xi32, 2> 
    %buf14 = aie.buffer(%tile_0_4) {sym_name = "buf14"} : memref<1x1x4x8x4x8xi32, 2> 
    %buf13 = aie.buffer(%tile_0_4) {sym_name = "buf13"} : memref<1x1x4x4x8x8xi32, 2> 
    %buf12 = aie.buffer(%tile_0_4) {sym_name = "buf12"} : memref<1x1x4x8x4x8xi32, 2> 
    %buf11 = aie.buffer(%tile_0_4) {sym_name = "buf11"} : memref<1x1x4x8x4x8xi32, 2> 
    %buf10 = aie.buffer(%tile_0_4) {sym_name = "buf10"} : memref<1x1x4x4x8x8xi32, 2> 
    %buf9 = aie.buffer(%tile_0_3) {sym_name = "buf9"} : memref<1x1x4x8x4x8xi32, 2> 
    %buf8 = aie.buffer(%tile_0_3) {sym_name = "buf8"} : memref<1x1x4x4x8x8xi32, 2> 
    %buf7 = aie.buffer(%tile_0_3) {sym_name = "buf7"} : memref<1x1x4x8x4x8xi32, 2> 
    %buf6 = aie.buffer(%tile_0_3) {sym_name = "buf6"} : memref<1x1x4x8x4x8xi32, 2> 
    %buf5 = aie.buffer(%tile_0_3) {sym_name = "buf5"} : memref<1x1x4x4x8x8xi32, 2> 
    %buf4 = aie.buffer(%tile_0_2) {sym_name = "buf4"} : memref<1x1x4x8x4x8xi32, 2> 
    %buf3 = aie.buffer(%tile_0_2) {sym_name = "buf3"} : memref<1x1x4x4x8x8xi32, 2> 
    %buf2 = aie.buffer(%tile_0_2) {sym_name = "buf2"} : memref<1x1x4x8x4x8xi32, 2> 
    %buf1 = aie.buffer(%tile_0_2) {sym_name = "buf1"} : memref<1x1x4x8x4x8xi32, 2> 
    %buf0 = aie.buffer(%tile_0_2) {sym_name = "buf0"} : memref<1x1x4x4x8x8xi32, 2> 
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7, repeat_count = 1)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_0_5_25, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf16 : memref<1x1x4x8x4x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_5_26, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_0_5_25, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf17 : memref<1x1x4x8x4x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_5_26, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3, repeat_count = 1)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_0_5, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf15 : memref<1x1x4x4x8x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_5_24, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_0_5, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf18 : memref<1x1x4x4x8x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_5_24, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb8, ^bb4, repeat_count = 1)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_0_5_28, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf19 : memref<1x1x4x8x4x8xi32, 2>, 0, 1024, [<size = 32, stride = 8>, <size = 4, stride = 256>, <size = 8, stride = 1>])
      aie.use_lock(%lock_0_5_27, Release, 1)
      aie.next_bd ^bb8
    }
    %core_0_5 = aie.core(%tile_0_5) {
      %c64 = arith.constant 64 : index
      %c8 = arith.constant 8 : index
      %c0_i32 = arith.constant 0 : i32
      %c256 = arith.constant 256 : index
      %c2048 = arith.constant 2048 : index
      %c4 = arith.constant 4 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_5_27, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c4 step %c1 {
        scf.for %arg1 = %c0 to %c8 step %c1 {
          scf.for %arg2 = %c0 to %c4 step %c1 {
            scf.for %arg3 = %c0 to %c8 step %c1 {
              memref.store %c0_i32, %buf19[%c0, %c0, %arg0, %arg1, %arg2, %arg3] : memref<1x1x4x8x4x8xi32, 2>
            }
          }
        }
      }
      scf.for %arg0 = %c0 to %c2048 step %c256 {
        scf.for %arg1 = %c0 to %c256 step %c64 {
          aie.use_lock(%lock_0_5_26, AcquireGreaterEqual, 1)
          aie.use_lock(%lock_0_5_24, AcquireGreaterEqual, 1)
          scf.for %arg2 = %c0 to %c8 step %c1 {
            scf.for %arg3 = %c0 to %c4 step %c1 {
              scf.for %arg4 = %c0 to %c4 step %c1 {
                scf.for %arg5 = %c0 to %c4 step %c1 {
                  scf.for %arg6 = %c0 to %c8 step %c1 {
                    scf.for %arg7 = %c0 to %c8 step %c1 {
                      %0 = memref.load %buf16[%c0, %c0, %arg4, %arg2, %arg5, %arg7] : memref<1x1x4x8x4x8xi32, 2>
                      %1 = memref.load %buf15[%c0, %c0, %arg3, %arg4, %arg7, %arg6] : memref<1x1x4x4x8x8xi32, 2>
                      %2 = memref.load %buf19[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                      %3 = arith.muli %0, %1 : i32
                      %4 = arith.addi %2, %3 : i32
                      memref.store %4, %buf19[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                    }
                  }
                }
              }
            }
          }
          aie.use_lock(%lock_0_5_25, Release, 1)
          aie.use_lock(%lock_0_5, Release, 1)
          aie.use_lock(%lock_0_5_26, AcquireGreaterEqual, 1)
          aie.use_lock(%lock_0_5_24, AcquireGreaterEqual, 1)
          scf.for %arg2 = %c0 to %c8 step %c1 {
            scf.for %arg3 = %c0 to %c4 step %c1 {
              scf.for %arg4 = %c0 to %c4 step %c1 {
                scf.for %arg5 = %c0 to %c4 step %c1 {
                  scf.for %arg6 = %c0 to %c8 step %c1 {
                    scf.for %arg7 = %c0 to %c8 step %c1 {
                      %0 = memref.load %buf17[%c0, %c0, %arg4, %arg2, %arg5, %arg7] : memref<1x1x4x8x4x8xi32, 2>
                      %1 = memref.load %buf18[%c0, %c0, %arg3, %arg4, %arg7, %arg6] : memref<1x1x4x4x8x8xi32, 2>
                      %2 = memref.load %buf19[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                      %3 = arith.muli %0, %1 : i32
                      %4 = arith.addi %2, %3 : i32
                      memref.store %4, %buf19[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                    }
                  }
                }
              }
            }
          }
          aie.use_lock(%lock_0_5_25, Release, 1)
          aie.use_lock(%lock_0_5, Release, 1)
        }
      }
      aie.use_lock(%lock_0_5_28, Release, 1)
      cf.br ^bb1
    } {elf_file = "segment_0_core_0_5.elf"}
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7, repeat_count = 1)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_0_4_20, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf11 : memref<1x1x4x8x4x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_4_21, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_0_4_20, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf12 : memref<1x1x4x8x4x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_4_21, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3, repeat_count = 1)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_0_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf10 : memref<1x1x4x4x8x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_4_19, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_0_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf13 : memref<1x1x4x4x8x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_4_19, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb8, ^bb4, repeat_count = 1)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_0_4_23, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf14 : memref<1x1x4x8x4x8xi32, 2>, 0, 1024, [<size = 32, stride = 8>, <size = 4, stride = 256>, <size = 8, stride = 1>])
      aie.use_lock(%lock_0_4_22, Release, 1)
      aie.next_bd ^bb8
    }
    %core_0_4 = aie.core(%tile_0_4) {
      %c64 = arith.constant 64 : index
      %c8 = arith.constant 8 : index
      %c0_i32 = arith.constant 0 : i32
      %c256 = arith.constant 256 : index
      %c2048 = arith.constant 2048 : index
      %c4 = arith.constant 4 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_4_22, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c4 step %c1 {
        scf.for %arg1 = %c0 to %c8 step %c1 {
          scf.for %arg2 = %c0 to %c4 step %c1 {
            scf.for %arg3 = %c0 to %c8 step %c1 {
              memref.store %c0_i32, %buf14[%c0, %c0, %arg0, %arg1, %arg2, %arg3] : memref<1x1x4x8x4x8xi32, 2>
            }
          }
        }
      }
      scf.for %arg0 = %c0 to %c2048 step %c256 {
        scf.for %arg1 = %c0 to %c256 step %c64 {
          aie.use_lock(%lock_0_4_21, AcquireGreaterEqual, 1)
          aie.use_lock(%lock_0_4_19, AcquireGreaterEqual, 1)
          scf.for %arg2 = %c0 to %c8 step %c1 {
            scf.for %arg3 = %c0 to %c4 step %c1 {
              scf.for %arg4 = %c0 to %c4 step %c1 {
                scf.for %arg5 = %c0 to %c4 step %c1 {
                  scf.for %arg6 = %c0 to %c8 step %c1 {
                    scf.for %arg7 = %c0 to %c8 step %c1 {
                      %0 = memref.load %buf11[%c0, %c0, %arg4, %arg2, %arg5, %arg7] : memref<1x1x4x8x4x8xi32, 2>
                      %1 = memref.load %buf10[%c0, %c0, %arg3, %arg4, %arg7, %arg6] : memref<1x1x4x4x8x8xi32, 2>
                      %2 = memref.load %buf14[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                      %3 = arith.muli %0, %1 : i32
                      %4 = arith.addi %2, %3 : i32
                      memref.store %4, %buf14[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                    }
                  }
                }
              }
            }
          }
          aie.use_lock(%lock_0_4_20, Release, 1)
          aie.use_lock(%lock_0_4, Release, 1)
          aie.use_lock(%lock_0_4_21, AcquireGreaterEqual, 1)
          aie.use_lock(%lock_0_4_19, AcquireGreaterEqual, 1)
          scf.for %arg2 = %c0 to %c8 step %c1 {
            scf.for %arg3 = %c0 to %c4 step %c1 {
              scf.for %arg4 = %c0 to %c4 step %c1 {
                scf.for %arg5 = %c0 to %c4 step %c1 {
                  scf.for %arg6 = %c0 to %c8 step %c1 {
                    scf.for %arg7 = %c0 to %c8 step %c1 {
                      %0 = memref.load %buf12[%c0, %c0, %arg4, %arg2, %arg5, %arg7] : memref<1x1x4x8x4x8xi32, 2>
                      %1 = memref.load %buf13[%c0, %c0, %arg3, %arg4, %arg7, %arg6] : memref<1x1x4x4x8x8xi32, 2>
                      %2 = memref.load %buf14[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                      %3 = arith.muli %0, %1 : i32
                      %4 = arith.addi %2, %3 : i32
                      memref.store %4, %buf14[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                    }
                  }
                }
              }
            }
          }
          aie.use_lock(%lock_0_4_20, Release, 1)
          aie.use_lock(%lock_0_4, Release, 1)
        }
      }
      aie.use_lock(%lock_0_4_23, Release, 1)
      cf.br ^bb1
    } {elf_file = "segment_0_core_0_4.elf"}
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7, repeat_count = 1)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_0_3_15, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf6 : memref<1x1x4x8x4x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_3_16, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_0_3_15, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf7 : memref<1x1x4x8x4x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_3_16, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3, repeat_count = 1)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_0_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf5 : memref<1x1x4x4x8x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_3_14, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_0_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf8 : memref<1x1x4x4x8x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_3_14, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb8, ^bb4, repeat_count = 1)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_0_3_18, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf9 : memref<1x1x4x8x4x8xi32, 2>, 0, 1024, [<size = 32, stride = 8>, <size = 4, stride = 256>, <size = 8, stride = 1>])
      aie.use_lock(%lock_0_3_17, Release, 1)
      aie.next_bd ^bb8
    }
    %core_0_3 = aie.core(%tile_0_3) {
      %c64 = arith.constant 64 : index
      %c8 = arith.constant 8 : index
      %c0_i32 = arith.constant 0 : i32
      %c256 = arith.constant 256 : index
      %c2048 = arith.constant 2048 : index
      %c4 = arith.constant 4 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_3_17, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c4 step %c1 {
        scf.for %arg1 = %c0 to %c8 step %c1 {
          scf.for %arg2 = %c0 to %c4 step %c1 {
            scf.for %arg3 = %c0 to %c8 step %c1 {
              memref.store %c0_i32, %buf9[%c0, %c0, %arg0, %arg1, %arg2, %arg3] : memref<1x1x4x8x4x8xi32, 2>
            }
          }
        }
      }
      scf.for %arg0 = %c0 to %c2048 step %c256 {
        scf.for %arg1 = %c0 to %c256 step %c64 {
          aie.use_lock(%lock_0_3_16, AcquireGreaterEqual, 1)
          aie.use_lock(%lock_0_3_14, AcquireGreaterEqual, 1)
          scf.for %arg2 = %c0 to %c8 step %c1 {
            scf.for %arg3 = %c0 to %c4 step %c1 {
              scf.for %arg4 = %c0 to %c4 step %c1 {
                scf.for %arg5 = %c0 to %c4 step %c1 {
                  scf.for %arg6 = %c0 to %c8 step %c1 {
                    scf.for %arg7 = %c0 to %c8 step %c1 {
                      %0 = memref.load %buf6[%c0, %c0, %arg4, %arg2, %arg5, %arg7] : memref<1x1x4x8x4x8xi32, 2>
                      %1 = memref.load %buf5[%c0, %c0, %arg3, %arg4, %arg7, %arg6] : memref<1x1x4x4x8x8xi32, 2>
                      %2 = memref.load %buf9[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                      %3 = arith.muli %0, %1 : i32
                      %4 = arith.addi %2, %3 : i32
                      memref.store %4, %buf9[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                    }
                  }
                }
              }
            }
          }
          aie.use_lock(%lock_0_3_15, Release, 1)
          aie.use_lock(%lock_0_3, Release, 1)
          aie.use_lock(%lock_0_3_16, AcquireGreaterEqual, 1)
          aie.use_lock(%lock_0_3_14, AcquireGreaterEqual, 1)
          scf.for %arg2 = %c0 to %c8 step %c1 {
            scf.for %arg3 = %c0 to %c4 step %c1 {
              scf.for %arg4 = %c0 to %c4 step %c1 {
                scf.for %arg5 = %c0 to %c4 step %c1 {
                  scf.for %arg6 = %c0 to %c8 step %c1 {
                    scf.for %arg7 = %c0 to %c8 step %c1 {
                      %0 = memref.load %buf7[%c0, %c0, %arg4, %arg2, %arg5, %arg7] : memref<1x1x4x8x4x8xi32, 2>
                      %1 = memref.load %buf8[%c0, %c0, %arg3, %arg4, %arg7, %arg6] : memref<1x1x4x4x8x8xi32, 2>
                      %2 = memref.load %buf9[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                      %3 = arith.muli %0, %1 : i32
                      %4 = arith.addi %2, %3 : i32
                      memref.store %4, %buf9[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                    }
                  }
                }
              }
            }
          }
          aie.use_lock(%lock_0_3_15, Release, 1)
          aie.use_lock(%lock_0_3, Release, 1)
        }
      }
      aie.use_lock(%lock_0_3_18, Release, 1)
      cf.br ^bb1
    } {elf_file = "segment_0_core_0_3.elf"}
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7, repeat_count = 1)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_0_2_10, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf1 : memref<1x1x4x8x4x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_2_11, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_0_2_10, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf2 : memref<1x1x4x8x4x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_2_11, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3, repeat_count = 1)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_0_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf0 : memref<1x1x4x4x8x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_2_9, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_0_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf3 : memref<1x1x4x4x8x8xi32, 2>, 0, 1024)
      aie.use_lock(%lock_0_2_9, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb0
      %2 = aie.dma_start(MM2S, 0, ^bb8, ^bb4, repeat_count = 1)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_0_2_13, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf4 : memref<1x1x4x8x4x8xi32, 2>, 0, 1024, [<size = 32, stride = 8>, <size = 4, stride = 256>, <size = 8, stride = 1>])
      aie.use_lock(%lock_0_2_12, Release, 1)
      aie.next_bd ^bb8
    }
    %core_0_2 = aie.core(%tile_0_2) {
      %c64 = arith.constant 64 : index
      %c8 = arith.constant 8 : index
      %c0_i32 = arith.constant 0 : i32
      %c256 = arith.constant 256 : index
      %c2048 = arith.constant 2048 : index
      %c4 = arith.constant 4 : index
      %c1 = arith.constant 1 : index
      %c0 = arith.constant 0 : index
      cf.br ^bb1
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%lock_0_2_12, AcquireGreaterEqual, 1)
      scf.for %arg0 = %c0 to %c4 step %c1 {
        scf.for %arg1 = %c0 to %c8 step %c1 {
          scf.for %arg2 = %c0 to %c4 step %c1 {
            scf.for %arg3 = %c0 to %c8 step %c1 {
              memref.store %c0_i32, %buf4[%c0, %c0, %arg0, %arg1, %arg2, %arg3] : memref<1x1x4x8x4x8xi32, 2>
            }
          }
        }
      }
      scf.for %arg0 = %c0 to %c2048 step %c256 {
        scf.for %arg1 = %c0 to %c256 step %c64 {
          aie.use_lock(%lock_0_2_11, AcquireGreaterEqual, 1)
          aie.use_lock(%lock_0_2_9, AcquireGreaterEqual, 1)
          scf.for %arg2 = %c0 to %c8 step %c1 {
            scf.for %arg3 = %c0 to %c4 step %c1 {
              scf.for %arg4 = %c0 to %c4 step %c1 {
                scf.for %arg5 = %c0 to %c4 step %c1 {
                  scf.for %arg6 = %c0 to %c8 step %c1 {
                    scf.for %arg7 = %c0 to %c8 step %c1 {
                      %0 = memref.load %buf1[%c0, %c0, %arg4, %arg2, %arg5, %arg7] : memref<1x1x4x8x4x8xi32, 2>
                      %1 = memref.load %buf0[%c0, %c0, %arg3, %arg4, %arg7, %arg6] : memref<1x1x4x4x8x8xi32, 2>
                      %2 = memref.load %buf4[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                      %3 = arith.muli %0, %1 : i32
                      %4 = arith.addi %2, %3 : i32
                      memref.store %4, %buf4[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                    }
                  }
                }
              }
            }
          }
          aie.use_lock(%lock_0_2_10, Release, 1)
          aie.use_lock(%lock_0_2, Release, 1)
          aie.use_lock(%lock_0_2_11, AcquireGreaterEqual, 1)
          aie.use_lock(%lock_0_2_9, AcquireGreaterEqual, 1)
          scf.for %arg2 = %c0 to %c8 step %c1 {
            scf.for %arg3 = %c0 to %c4 step %c1 {
              scf.for %arg4 = %c0 to %c4 step %c1 {
                scf.for %arg5 = %c0 to %c4 step %c1 {
                  scf.for %arg6 = %c0 to %c8 step %c1 {
                    scf.for %arg7 = %c0 to %c8 step %c1 {
                      %0 = memref.load %buf2[%c0, %c0, %arg4, %arg2, %arg5, %arg7] : memref<1x1x4x8x4x8xi32, 2>
                      %1 = memref.load %buf3[%c0, %c0, %arg3, %arg4, %arg7, %arg6] : memref<1x1x4x4x8x8xi32, 2>
                      %2 = memref.load %buf4[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                      %3 = arith.muli %0, %1 : i32
                      %4 = arith.addi %2, %3 : i32
                      memref.store %4, %buf4[%c0, %c0, %arg3, %arg2, %arg5, %arg6] : memref<1x1x4x8x4x8xi32, 2>
                    }
                  }
                }
              }
            }
          }
          aie.use_lock(%lock_0_2_10, Release, 1)
          aie.use_lock(%lock_0_2, Release, 1)
        }
      }
      aie.use_lock(%lock_0_2_13, Release, 1)
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
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb26, repeat_count = 1)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%lock_0_1_7, AcquireGreaterEqual, 2)
      aie.dma_bd(%buf24 : memref<1x1x64x256xi32, 1>, 0, 16384)
      aie.use_lock(%lock_0_1_8, Release, 2)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%lock_0_1_5, AcquireGreaterEqual, 2)
      aie.dma_bd(%buf22 : memref<1x1x64x256xi32, 1>, 0, 16384)
      aie.use_lock(%lock_0_1_6, Release, 2)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb4
      aie.end
    ^bb4:  // pred: ^bb7
      %1 = aie.dma_start(S2MM, 1, ^bb5, ^bb3, repeat_count = 1)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%lock_0_1_3, AcquireGreaterEqual, 2)
      aie.dma_bd(%buf23 : memref<1x1x256x64xi32, 1>, 0, 16384)
      aie.use_lock(%lock_0_1_4, Release, 2)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%lock_0_1_1, AcquireGreaterEqual, 2)
      aie.dma_bd(%buf21 : memref<1x1x256x64xi32, 1>, 0, 16384)
      aie.use_lock(%lock_0_1_2, Release, 2)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb9
      %2 = aie.dma_start(S2MM, 2, ^bb8, ^bb4, repeat_count = 1)
    ^bb8:  // 2 preds: ^bb7, ^bb8
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf20 : memref<1x1x64x64xi32, 1>, 0, 1024, [<size = 32, stride = 64>, <size = 32, stride = 1>])
      aie.use_lock(%lock_0_1_0, Release, 1)
      aie.next_bd ^bb8
    ^bb9:  // pred: ^bb11
      %3 = aie.dma_start(S2MM, 3, ^bb10, ^bb7, repeat_count = 1)
    ^bb10:  // 2 preds: ^bb9, ^bb10
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf20 : memref<1x1x64x64xi32, 1>, 2048, 1024, [<size = 32, stride = 64>, <size = 32, stride = 1>])
      aie.use_lock(%lock_0_1_0, Release, 1)
      aie.next_bd ^bb10
    ^bb11:  // pred: ^bb13
      %4 = aie.dma_start(S2MM, 4, ^bb12, ^bb9, repeat_count = 1)
    ^bb12:  // 2 preds: ^bb11, ^bb12
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf20 : memref<1x1x64x64xi32, 1>, 32, 1024, [<size = 32, stride = 64>, <size = 32, stride = 1>])
      aie.use_lock(%lock_0_1_0, Release, 1)
      aie.next_bd ^bb12
    ^bb13:  // pred: ^bb15
      %5 = aie.dma_start(S2MM, 5, ^bb14, ^bb11, repeat_count = 1)
    ^bb14:  // 2 preds: ^bb13, ^bb14
      aie.use_lock(%lock_0_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf20 : memref<1x1x64x64xi32, 1>, 2080, 1024, [<size = 32, stride = 64>, <size = 32, stride = 1>])
      aie.use_lock(%lock_0_1_0, Release, 1)
      aie.next_bd ^bb14
    ^bb15:  // pred: ^bb17
      %6 = aie.dma_start(MM2S, 0, ^bb16, ^bb13, repeat_count = 1)
    ^bb16:  // 2 preds: ^bb15, ^bb16
      aie.use_lock(%lock_0_1_0, AcquireGreaterEqual, 4)
      aie.dma_bd(%buf20 : memref<1x1x64x64xi32, 1>, 0, 4096)
      aie.use_lock(%lock_0_1, Release, 4)
      aie.next_bd ^bb16
    ^bb17:  // pred: ^bb20
      %7 = aie.dma_start(MM2S, 1, ^bb18, ^bb15, repeat_count = 1)
    ^bb18:  // 2 preds: ^bb17, ^bb19
      aie.use_lock(%lock_0_1_8, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf24 : memref<1x1x64x256xi32, 1>, 0, 8192, [<size = 32, stride = 8>, <size = 32, stride = 256>, <size = 8, stride = 1>])
      aie.use_lock(%lock_0_1_7, Release, 1)
      aie.next_bd ^bb19
    ^bb19:  // pred: ^bb18
      aie.use_lock(%lock_0_1_6, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf22 : memref<1x1x64x256xi32, 1>, 0, 8192, [<size = 32, stride = 8>, <size = 32, stride = 256>, <size = 8, stride = 1>])
      aie.use_lock(%lock_0_1_5, Release, 1)
      aie.next_bd ^bb18
    ^bb20:  // pred: ^bb23
      %8 = aie.dma_start(MM2S, 2, ^bb21, ^bb17, repeat_count = 1)
    ^bb21:  // 2 preds: ^bb20, ^bb22
      aie.use_lock(%lock_0_1_8, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf24 : memref<1x1x64x256xi32, 1>, 8192, 8192, [<size = 32, stride = 8>, <size = 32, stride = 256>, <size = 8, stride = 1>])
      aie.use_lock(%lock_0_1_7, Release, 1)
      aie.next_bd ^bb22
    ^bb22:  // pred: ^bb21
      aie.use_lock(%lock_0_1_6, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf22 : memref<1x1x64x256xi32, 1>, 8192, 8192, [<size = 32, stride = 8>, <size = 32, stride = 256>, <size = 8, stride = 1>])
      aie.use_lock(%lock_0_1_5, Release, 1)
      aie.next_bd ^bb21
    ^bb23:  // pred: ^bb26
      %9 = aie.dma_start(MM2S, 3, ^bb24, ^bb20, repeat_count = 1)
    ^bb24:  // 2 preds: ^bb23, ^bb25
      aie.use_lock(%lock_0_1_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf23 : memref<1x1x256x64xi32, 1>, 0, 8192, [<size = 8, stride = 2048>, <size = 4, stride = 8>, <size = 32, stride = 64>, <size = 8, stride = 1>])
      aie.use_lock(%lock_0_1_3, Release, 1)
      aie.next_bd ^bb25
    ^bb25:  // pred: ^bb24
      aie.use_lock(%lock_0_1_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf21 : memref<1x1x256x64xi32, 1>, 0, 8192, [<size = 8, stride = 2048>, <size = 4, stride = 8>, <size = 32, stride = 64>, <size = 8, stride = 1>])
      aie.use_lock(%lock_0_1_1, Release, 1)
      aie.next_bd ^bb24
    ^bb26:  // pred: ^bb0
      %10 = aie.dma_start(MM2S, 4, ^bb27, ^bb23, repeat_count = 1)
    ^bb27:  // 2 preds: ^bb26, ^bb28
      aie.use_lock(%lock_0_1_4, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf23 : memref<1x1x256x64xi32, 1>, 32, 8192, [<size = 8, stride = 2048>, <size = 4, stride = 8>, <size = 32, stride = 64>, <size = 8, stride = 1>])
      aie.use_lock(%lock_0_1_3, Release, 1)
      aie.next_bd ^bb28
    ^bb28:  // pred: ^bb27
      aie.use_lock(%lock_0_1_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%buf21 : memref<1x1x256x64xi32, 1>, 32, 8192, [<size = 8, stride = 2048>, <size = 4, stride = 8>, <size = 32, stride = 64>, <size = 8, stride = 1>])
      aie.use_lock(%lock_0_1_1, Release, 1)
      aie.next_bd ^bb27
    }
    aie.shim_dma_allocation @airMemcpyId26(S2MM, 0, 0)
    memref.global "public" @airMemcpyId26 : memref<1x1x64x64xi32, 1>
    aie.shim_dma_allocation @airMemcpyId4(MM2S, 0, 0)
    memref.global "public" @airMemcpyId4 : memref<1x1x64x256xi32, 1>
    aie.shim_dma_allocation @airMemcpyId10(MM2S, 0, 0)
    memref.global "public" @airMemcpyId10 : memref<1x1x64x256xi32, 1>
    aie.shim_dma_allocation @airMemcpyId7(MM2S, 1, 0)
    memref.global "public" @airMemcpyId7 : memref<1x1x256x64xi32, 1>
    aie.shim_dma_allocation @airMemcpyId13(MM2S, 1, 0)
    memref.global "public" @airMemcpyId13 : memref<1x1x256x64xi32, 1>
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
  func.func @forward(%arg0: memref<2048x2048xi32>, %arg1: memref<2048x2048xi32>, %arg2: memref<2048x2048xi32>) {
    %c32 = arith.constant 32 : index
    %async_token, %results = air.execute -> (memref<2048x2048xi32>) {
      %alloc = memref.alloc() : memref<2048x2048xi32>
      air.execute_terminator %alloc : memref<2048x2048xi32>
    }
    %0 = air.launch async [%async_token] (%arg3, %arg4) in (%arg5=%c32, %arg6=%c32) args(%arg7=%results, %arg8=%arg0, %arg9=%arg1) : memref<2048x2048xi32>, memref<2048x2048xi32>, memref<2048x2048xi32> attributes {id = 1 : i32} {
      %c8 = arith.constant 8 : index
      %c0 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c256 = arith.constant 256 : index
      %c1 = arith.constant 1 : index
      %c64 = arith.constant 64 : index
      %async_token_1, %results_2 = air.execute -> (index) {
        %7 = affine.apply #map()[%arg3]
        air.execute_terminator %7 : index
      }
      %1 = air.wait_all async 
      %2 = air.channel.put async [%1]  @channel_4[] (%arg8[%c0, %results_2, %c0] [%c8, %c64, %c256] [%c256, %c2048, %c1]) {id = 1 : i32, metadata = @airMemcpyId4} : (memref<2048x2048xi32>)
      %async_token_3, %results_4 = air.execute -> (index) {
        %7 = affine.apply #map()[%arg4]
        air.execute_terminator %7 : index
      }
      %3 = air.wait_all async 
      %4 = air.channel.put async [%3]  @channel_5[] (%arg9[%c0, %results_4] [%c2048, %c64] [%c2048, %c1]) {id = 2 : i32, metadata = @airMemcpyId7} : (memref<2048x2048xi32>)
      %async_token_5, %results_6 = air.execute -> (index) {
        %7 = affine.apply #map()[%arg3]
        air.execute_terminator %7 : index
      }
      %async_token_7, %results_8 = air.execute -> (index) {
        %7 = affine.apply #map()[%arg4]
        air.execute_terminator %7 : index
      }
      %5 = air.channel.get async [%async_token_5, %async_token_7]  @channel_7[] (%arg7[%results_6, %results_8] [%c64, %c64] [%c2048, %c1]) {id = 3 : i32, metadata = @airMemcpyId26} : (memref<2048x2048xi32>)
      %6 = air.segment @segment_0 async  attributes {id = 2 : i32, x_loc = 0 : i64, x_size = 1 : i64, y_loc = 2 : i64, y_size = 4 : i64} {
        %c512 = arith.constant 512 : index
        %c32_9 = arith.constant 32 : index
        %c256_10 = arith.constant 256 : index
        %c8_11 = arith.constant 8 : index
        %c4 = arith.constant 4 : index
        %c2048_12 = arith.constant 2048 : index
        %c1_13 = arith.constant 1 : index
        %c64_14 = arith.constant 64 : index
        %c0_15 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %7 = air.wait_all async 
        %8 = air.wait_all async 
        %async_token_16, %results_17 = air.execute -> (memref<1x1x64x64xi32, 1>) {
          %alloc = memref.alloc() : memref<1x1x64x64xi32, 1>
          air.execute_terminator %alloc : memref<1x1x64x64xi32, 1>
        }
        %9 = air.wait_all async 
        %async_token_18, %results_19 = air.execute [%9] -> (memref<1x1x256x64xi32, 1>) {
          %alloc = memref.alloc() : memref<1x1x256x64xi32, 1>
          air.execute_terminator %alloc : memref<1x1x256x64xi32, 1>
        }
        %async_token_20, %results_21 = air.execute [%async_token_18] -> (memref<1x1x64x256xi32, 1>) {
          %alloc = memref.alloc() : memref<1x1x64x256xi32, 1>
          air.execute_terminator %alloc : memref<1x1x64x256xi32, 1>
        }
        %async_token_22, %results_23 = air.execute [%async_token_20] -> (memref<1x1x64x256xi32, 1>) {
          %alloc = memref.alloc() : memref<1x1x64x256xi32, 1>
          air.execute_terminator %alloc : memref<1x1x64x256xi32, 1>
        }
        %async_token_24, %results_25 = air.execute [%async_token_20] -> (memref<1x1x256x64xi32, 1>) {
          %alloc = memref.alloc() : memref<1x1x256x64xi32, 1>
          air.execute_terminator %alloc : memref<1x1x256x64xi32, 1>
        }
        %10:4 = scf.for %arg10 = %c0_15 to %c2048_12 step %c512 iter_args(%arg11 = %async_token_22, %arg12 = %async_token_24, %arg13 = %async_token_24, %arg14 = %async_token_24) -> (!air.async.token, !air.async.token, !air.async.token, !air.async.token) {
          %14 = air.channel.get async [%arg14, %arg11, %7]  @channel_4[] (%results_23[] [] []) {id = 4 : i32} : (memref<1x1x64x256xi32, 1>)
          %15 = air.wait_all async [%arg13, %14] 
          %16 = air.channel.put async [%15]  @channel_0[] (%results_23[%c0_15, %c0_15, %c0_15] [%c32_9, %c32_9, %c8_11] [%c8_11, %c256_10, %c1_13]) {id = 5 : i32} : (memref<1x1x64x256xi32, 1>)
          %17 = air.wait_all async [%arg13, %14] 
          %18 = air.channel.put async [%17]  @channel_1[] (%results_23[%c0_15, %c32_9, %c0_15] [%c32_9, %c32_9, %c8_11] [%c8_11, %c256_10, %c1_13]) {id = 6 : i32} : (memref<1x1x64x256xi32, 1>)
          %19 = air.channel.get async [%arg14, %arg11, %8]  @channel_5[] (%results_25[] [] []) {id = 7 : i32} : (memref<1x1x256x64xi32, 1>)
          %20 = air.wait_all async [%arg13, %19] 
          %21 = air.channel.put async [%20]  @channel_2[] (%results_25[%c0_15, %c0_15, %c0_15, %c0_15] [%c8_11, %c4, %c32_9, %c8_11] [%c2048_12, %c8_11, %c64_14, %c1_13]) {id = 8 : i32} : (memref<1x1x256x64xi32, 1>)
          %22 = air.wait_all async [%arg13, %19] 
          %23 = air.channel.put async [%22]  @channel_3[] (%results_25[%c0_15, %c0_15, %c0_15, %c32_9] [%c8_11, %c4, %c32_9, %c8_11] [%c2048_12, %c8_11, %c64_14, %c1_13]) {id = 9 : i32} : (memref<1x1x256x64xi32, 1>)
          %async_token_27 = air.execute [%arg14, %arg11] {
            memref.dealloc %results_23 : memref<1x1x64x256xi32, 1>
          }
          %async_token_28 = air.execute [%arg14, %arg11] {
            memref.dealloc %results_25 : memref<1x1x256x64xi32, 1>
          }
          %24 = air.wait_all async [%14, %16, %18, %19, %21, %23, %async_token_27, %async_token_28] 
          %25 = air.channel.get async [%19, %14, %arg12]  @channel_4[] (%results_21[] [] []) {id = 10 : i32} : (memref<1x1x64x256xi32, 1>)
          %26 = air.wait_all async [%24, %25] 
          %27 = air.channel.put async [%26]  @channel_0[] (%results_21[%c0_15, %c0_15, %c0_15] [%c32_9, %c32_9, %c8_11] [%c8_11, %c256_10, %c1_13]) {id = 11 : i32} : (memref<1x1x64x256xi32, 1>)
          %28 = air.wait_all async [%24, %25] 
          %29 = air.channel.put async [%28]  @channel_1[] (%results_21[%c0_15, %c32_9, %c0_15] [%c32_9, %c32_9, %c8_11] [%c8_11, %c256_10, %c1_13]) {id = 12 : i32} : (memref<1x1x64x256xi32, 1>)
          %30 = air.channel.get async [%19, %14, %arg12]  @channel_5[] (%results_19[] [] []) {id = 13 : i32} : (memref<1x1x256x64xi32, 1>)
          %31 = air.wait_all async [%24, %30] 
          %32 = air.channel.put async [%31]  @channel_2[] (%results_19[%c0_15, %c0_15, %c0_15, %c0_15] [%c8_11, %c4, %c32_9, %c8_11] [%c2048_12, %c8_11, %c64_14, %c1_13]) {id = 14 : i32} : (memref<1x1x256x64xi32, 1>)
          %33 = air.wait_all async [%24, %30] 
          %34 = air.channel.put async [%33]  @channel_3[] (%results_19[%c0_15, %c0_15, %c0_15, %c32_9] [%c8_11, %c4, %c32_9, %c8_11] [%c2048_12, %c8_11, %c64_14, %c1_13]) {id = 15 : i32} : (memref<1x1x256x64xi32, 1>)
          %async_token_29 = air.execute [%19, %14, %arg12] {
            memref.dealloc %results_21 : memref<1x1x64x256xi32, 1>
          }
          %async_token_30 = air.execute [%19, %14, %arg12] {
            memref.dealloc %results_19 : memref<1x1x256x64xi32, 1>
          }
          %35 = air.wait_all async [%25, %27, %29, %30, %32, %34, %async_token_29, %async_token_30] 
          %36 = air.wait_all async [%25, %30] 
          scf.yield %24, %35, %35, %36 : !air.async.token, !air.async.token, !air.async.token, !air.async.token
        }
        %11 = scf.parallel (%arg10, %arg11) = (%c0_15, %c0_15) to (%c2, %c2) step (%c1_13, %c1_13) init (%async_token_16) -> !air.async.token {
          %async_token_27, %results_28 = air.execute -> (index) {
            %15 = affine.apply #map1()[%arg10]
            air.execute_terminator %15 : index
          }
          %async_token_29, %results_30 = air.execute -> (index) {
            %15 = affine.apply #map1()[%arg11]
            air.execute_terminator %15 : index
          }
          %14 = air.channel.get async [%async_token_16, %async_token_29, %async_token_27]  @channel_6[%arg10, %arg11] (%results_17[%results_28, %results_30] [%c32_9, %c32_9] [%c64_14, %c1_13]) {id = 16 : i32} : (memref<1x1x64x64xi32, 1>)
          scf.reduce(%14 : !air.async.token) {
          ^bb0(%arg12: !air.async.token, %arg13: !air.async.token):
            %15 = air.wait_all async [%arg12, %arg13] 
            scf.reduce.return %15 : !air.async.token
          }
        }
        %12 = air.herd @herd_0 async  tile (%arg10, %arg11) in (%arg12=%c1_13, %arg13=%c4) attributes {id = 3 : i32, x_loc = 0 : i64, y_loc = 2 : i64} {
          %c2048_27 = arith.constant 2048 : index
          %c256_28 = arith.constant 256 : index
          %c0_29 = arith.constant 0 : index
          %c0_i32 = arith.constant 0 : i32
          %c1_30 = arith.constant 1 : index
          %c8_31 = arith.constant 8 : index
          %c4_32 = arith.constant 4 : index
          %c64_33 = arith.constant 64 : index
          %c32_34 = arith.constant 32 : index
          %c2_35 = arith.constant 2 : index
          %14 = arith.remsi %arg11, %c2_35 : index
          %15 = arith.divsi %arg11, %c2_35 : index
          %async_token_36, %results_37 = air.execute -> (memref<1x1x4x8x4x8xi32, 2>) {
            %alloc = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
            air.execute_terminator %alloc : memref<1x1x4x8x4x8xi32, 2>
          }
          %async_token_38 = air.execute [%async_token_36] {
            scf.for %arg14 = %c0_29 to %c4_32 step %c1_30 {
              scf.for %arg15 = %c0_29 to %c8_31 step %c1_30 {
                scf.for %arg16 = %c0_29 to %c4_32 step %c1_30 {
                  scf.for %arg17 = %c0_29 to %c8_31 step %c1_30 {
                    memref.store %c0_i32, %results_37[%c0_29, %c0_29, %arg14, %arg15, %arg16, %arg17] : memref<1x1x4x8x4x8xi32, 2>
                  }
                }
              }
            }
          }
          %16 = scf.for %arg14 = %c0_29 to %c2048_27 step %c256_28 iter_args(%arg15 = %async_token_38) -> (!air.async.token) {
            %async_token_40, %results_41 = air.execute [%arg15] -> (memref<1x1x4x4x8x8xi32, 2>) {
              %alloc = memref.alloc() : memref<1x1x4x4x8x8xi32, 2>
              air.execute_terminator %alloc : memref<1x1x4x4x8x8xi32, 2>
            }
            %async_token_42, %results_43 = air.execute [%async_token_40] -> (memref<1x1x4x8x4x8xi32, 2>) {
              %alloc = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
              air.execute_terminator %alloc : memref<1x1x4x8x4x8xi32, 2>
            }
            %async_token_44, %results_45 = air.execute [%async_token_42] -> (memref<1x1x4x8x4x8xi32, 2>) {
              %alloc = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
              air.execute_terminator %alloc : memref<1x1x4x8x4x8xi32, 2>
            }
            %async_token_46, %results_47 = air.execute [%async_token_42] -> (memref<1x1x4x4x8x8xi32, 2>) {
              %alloc = memref.alloc() : memref<1x1x4x4x8x8xi32, 2>
              air.execute_terminator %alloc : memref<1x1x4x4x8x8xi32, 2>
            }
            %18:4 = scf.for %arg16 = %c0_29 to %c256_28 step %c64_33 iter_args(%arg17 = %async_token_44, %arg18 = %async_token_46, %arg19 = %async_token_46, %arg20 = %async_token_46) -> (!air.async.token, !air.async.token, !air.async.token, !air.async.token) {
              %19 = affine.if #set()[%15, %14] -> !air.async.token {
                %24 = air.channel.get async [%arg20, %arg17, %async_token_44]  @channel_0[%15, %14] (%results_45[] [] []) {id = 17 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
                affine.yield %24 : !air.async.token
              } else {
                %24 = air.channel.get async [%arg20, %arg17, %async_token_44]  @channel_1[%15, %14] (%results_45[] [] []) {id = 18 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
                affine.yield %24 : !air.async.token
              }
              %20 = affine.if #set1()[%15, %14] -> !air.async.token {
                %24 = air.channel.get async [%arg20, %arg17, %async_token_46]  @channel_2[%15, %14] (%results_47[] [] []) {id = 19 : i32} : (memref<1x1x4x4x8x8xi32, 2>)
                affine.yield %24 : !air.async.token
              } else {
                %24 = air.channel.get async [%arg20, %arg17, %async_token_46]  @channel_3[%15, %14] (%results_47[] [] []) {id = 20 : i32} : (memref<1x1x4x4x8x8xi32, 2>)
                affine.yield %24 : !air.async.token
              }
              %async_token_48 = air.execute [%arg19, %20, %19] {
                scf.for %arg21 = %c0_29 to %c8_31 step %c1_30 {
                  scf.for %arg22 = %c0_29 to %c4_32 step %c1_30 {
                    scf.for %arg23 = %c0_29 to %c4_32 step %c1_30 {
                      scf.for %arg24 = %c0_29 to %c4_32 step %c1_30 {
                        scf.for %arg25 = %c0_29 to %c8_31 step %c1_30 {
                          scf.for %arg26 = %c0_29 to %c8_31 step %c1_30 {
                            %24 = memref.load %results_45[%c0_29, %c0_29, %arg23, %arg21, %arg24, %arg26] : memref<1x1x4x8x4x8xi32, 2>
                            %25 = memref.load %results_47[%c0_29, %c0_29, %arg22, %arg23, %arg26, %arg25] : memref<1x1x4x4x8x8xi32, 2>
                            %26 = memref.load %results_37[%c0_29, %c0_29, %arg22, %arg21, %arg24, %arg25] : memref<1x1x4x8x4x8xi32, 2>
                            %27 = arith.muli %24, %25 : i32
                            %28 = arith.addi %26, %27 : i32
                            memref.store %28, %results_37[%c0_29, %c0_29, %arg22, %arg21, %arg24, %arg25] : memref<1x1x4x8x4x8xi32, 2>
                          }
                        }
                      }
                    }
                  }
                }
              }
              %async_token_49 = air.execute {
                memref.dealloc %results_45 : memref<1x1x4x8x4x8xi32, 2>
              }
              %async_token_50 = air.execute {
                memref.dealloc %results_47 : memref<1x1x4x4x8x8xi32, 2>
              }
              %21 = affine.if #set()[%15, %14] -> !air.async.token {
                %24 = air.channel.get async [%20, %19, %arg18]  @channel_0[%15, %14] (%results_43[] [] []) {id = 21 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
                affine.yield %24 : !air.async.token
              } else {
                %24 = air.channel.get async [%20, %19, %arg18]  @channel_1[%15, %14] (%results_43[] [] []) {id = 22 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
                affine.yield %24 : !air.async.token
              }
              %22 = affine.if #set1()[%15, %14] -> !air.async.token {
                %24 = air.channel.get async [%20, %19, %arg18]  @channel_2[%15, %14] (%results_41[] [] []) {id = 23 : i32} : (memref<1x1x4x4x8x8xi32, 2>)
                affine.yield %24 : !air.async.token
              } else {
                %24 = air.channel.get async [%20, %19, %arg18]  @channel_3[%15, %14] (%results_41[] [] []) {id = 24 : i32} : (memref<1x1x4x4x8x8xi32, 2>)
                affine.yield %24 : !air.async.token
              }
              %async_token_51 = air.execute [%async_token_48, %22, %21] {
                scf.for %arg21 = %c0_29 to %c8_31 step %c1_30 {
                  scf.for %arg22 = %c0_29 to %c4_32 step %c1_30 {
                    scf.for %arg23 = %c0_29 to %c4_32 step %c1_30 {
                      scf.for %arg24 = %c0_29 to %c4_32 step %c1_30 {
                        scf.for %arg25 = %c0_29 to %c8_31 step %c1_30 {
                          scf.for %arg26 = %c0_29 to %c8_31 step %c1_30 {
                            %24 = memref.load %results_43[%c0_29, %c0_29, %arg23, %arg21, %arg24, %arg26] : memref<1x1x4x8x4x8xi32, 2>
                            %25 = memref.load %results_41[%c0_29, %c0_29, %arg22, %arg23, %arg26, %arg25] : memref<1x1x4x4x8x8xi32, 2>
                            %26 = memref.load %results_37[%c0_29, %c0_29, %arg22, %arg21, %arg24, %arg25] : memref<1x1x4x8x4x8xi32, 2>
                            %27 = arith.muli %24, %25 : i32
                            %28 = arith.addi %26, %27 : i32
                            memref.store %28, %results_37[%c0_29, %c0_29, %arg22, %arg21, %arg24, %arg25] : memref<1x1x4x8x4x8xi32, 2>
                          }
                        }
                      }
                    }
                  }
                }
              }
              %async_token_52 = air.execute {
                memref.dealloc %results_43 : memref<1x1x4x8x4x8xi32, 2>
              }
              %async_token_53 = air.execute {
                memref.dealloc %results_41 : memref<1x1x4x4x8x8xi32, 2>
              }
              %23 = air.wait_all async [%21, %22] 
              scf.yield %async_token_48, %async_token_51, %async_token_51, %23 : !air.async.token, !air.async.token, !air.async.token, !air.async.token
            }
            scf.yield %18#1 : !air.async.token
          }
          %17 = air.channel.put async [%16]  @channel_6[%15, %14] (%results_37[%c0_29, %c0_29, %c0_29] [%c32_34, %c4_32, %c8_31] [%c8_31, %c256_28, %c1_30]) {id = 25 : i32} : (memref<1x1x4x8x4x8xi32, 2>)
          %async_token_39 = air.execute [%17] {
            memref.dealloc %results_37 : memref<1x1x4x8x4x8xi32, 2>
          }
          air.herd_terminator
        }
        %13 = air.channel.put async [%7, %8, %12]  @channel_7[] (%results_17[] [] []) {id = 26 : i32} : (memref<1x1x64x64xi32, 1>)
        %async_token_26 = air.execute [%13] {
          memref.dealloc %results_17 : memref<1x1x64x64xi32, 1>
        }
        air.segment_terminator
      }
      air.launch_terminator
    }
    %async_token_0 = air.execute [%0] {
      memref.copy %results, %arg2 : memref<2048x2048xi32> to memref<2048x2048xi32>
    }
    return
  }
}
