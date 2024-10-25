module {
  func.func @forward(%arg0: memref<2048x2048xi32>, %arg1: memref<2048x2048xi32>, %arg2: memref<2048x2048xi32>) {
    %c32 = arith.constant 32 : index
    %alloc = memref.alloc() : memref<2048x2048xi32>
    air.launch (%arg3, %arg4) in (%arg5=%c32, %arg6=%c32) args(%arg7=%alloc, %arg8=%arg0, %arg9=%arg1) : memref<2048x2048xi32>, memref<2048x2048xi32>, memref<2048x2048xi32> {
      air.segment @segment_0  args(%arg10=%arg3, %arg11=%arg4, %arg12=%arg7, %arg13=%arg8, %arg14=%arg9) : index, index, memref<2048x2048xi32>, memref<2048x2048xi32>, memref<2048x2048xi32> {
        %c4096 = arith.constant 4096 : index
        %c2048 = arith.constant 2048 : index
        %c1 = arith.constant 1 : index
        %c64 = arith.constant 64 : index
        %c0 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c64_0 = arith.constant 64 : index
        %0 = arith.muli %arg10, %c64_0 : index
        %c64_1 = arith.constant 64 : index
        %1 = arith.muli %arg11, %c64_1 : index
        %alloc_2 = memref.alloc() : memref<1x1x64x64xi32, 1>
        air.herd @herd_0  tile (%arg15, %arg16) in (%arg17=%c2, %arg18=%c2) args(%arg19=%alloc_2, %arg20=%arg13, %arg21=%0, %arg22=%arg14, %arg23=%1) : memref<1x1x64x64xi32, 1>, memref<2048x2048xi32>, index, memref<2048x2048xi32>, index {
          %c4096_3 = arith.constant 4096 : index
          %c512 = arith.constant 512 : index
          %c4 = arith.constant 4 : index
          %c1024 = arith.constant 1024 : index
          %c8 = arith.constant 8 : index
          %c16384 = arith.constant 16384 : index
          %c64_4 = arith.constant 64 : index
          %c1_5 = arith.constant 1 : index
          %c0_i32 = arith.constant 0 : i32
          %c0_6 = arith.constant 0 : index
          %c256 = arith.constant 256 : index
          %c32_7 = arith.constant 32 : index
          %c2048_8 = arith.constant 2048 : index
          %c32_9 = arith.constant 32 : index
          %2 = arith.muli %arg15, %c32_9 : index
          %c32_10 = arith.constant 32 : index
          %3 = arith.muli %arg16, %c32_10 : index
          %alloc_11 = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
          %c0_12 = arith.constant 0 : index
          %c1_13 = arith.constant 1 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg24 = %c0_12 to %c1_13 step %c1_14 {
            %c0_15 = arith.constant 0 : index
            %c1_16 = arith.constant 1 : index
            %c1_17 = arith.constant 1 : index
            scf.for %arg25 = %c0_15 to %c1_16 step %c1_17 {
              %c0_18 = arith.constant 0 : index
              %c4_19 = arith.constant 4 : index
              %c1_20 = arith.constant 1 : index
              scf.for %arg26 = %c0_18 to %c4_19 step %c1_20 {
                %c0_21 = arith.constant 0 : index
                %c8_22 = arith.constant 8 : index
                %c1_23 = arith.constant 1 : index
                scf.for %arg27 = %c0_21 to %c8_22 step %c1_23 {
                  %c0_24 = arith.constant 0 : index
                  %c4_25 = arith.constant 4 : index
                  %c1_26 = arith.constant 1 : index
                  scf.for %arg28 = %c0_24 to %c4_25 step %c1_26 {
                    %c0_27 = arith.constant 0 : index
                    %c8_28 = arith.constant 8 : index
                    %c1_29 = arith.constant 1 : index
                    scf.for %arg29 = %c0_27 to %c8_28 step %c1_29 {
                      memref.store %c0_i32, %alloc_11[%arg24, %arg25, %arg26, %arg27, %arg28, %arg29] : memref<1x1x4x8x4x8xi32, 2>
                    }
                  }
                }
              }
            }
          }
          scf.for %arg24 = %c0_6 to %c2048_8 step %c256 {
            %alloc_15 = memref.alloc() : memref<1x1x64x256xi32, 1>
            %alloc_16 = memref.alloc() : memref<1x1x256x64xi32, 1>
            air.dma_memcpy_nd (%alloc_15[] [] [], %arg20[%arg21, %arg24] [%c64_4, %c256] [%c2048_8, %c1_5]) : (memref<1x1x64x256xi32, 1>, memref<2048x2048xi32>)
            air.dma_memcpy_nd (%alloc_16[] [] [], %arg22[%arg24, %arg23] [%c256, %c64_4] [%c2048_8, %c1_5]) : (memref<1x1x256x64xi32, 1>, memref<2048x2048xi32>)
            scf.for %arg25 = %c0_6 to %c256 step %c32_7 {
              %alloc_17 = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
              %alloc_18 = memref.alloc() : memref<1x1x4x4x8x8xi32, 2>
              air.dma_memcpy_nd (%alloc_17[] [] [], %alloc_15[%c0_6, %c0_6, %c0_6, %c0_6, %2, %arg25] [%c1_5, %c1_5, %c4, %c8, %c4, %c8] [%c16384, %c16384, %c8, %c1024, %c256, %c1_5]) : (memref<1x1x4x8x4x8xi32, 2>, memref<1x1x64x256xi32, 1>)
              air.dma_memcpy_nd (%alloc_18[] [] [], %alloc_16[%c0_6, %c0_6, %c0_6, %c0_6, %arg25, %3] [%c1_5, %c1_5, %c4, %c4, %c8, %c8] [%c16384, %c16384, %c8, %c512, %c64_4, %c1_5]) : (memref<1x1x4x4x8x8xi32, 2>, memref<1x1x256x64xi32, 1>)
              %c0_19 = arith.constant 0 : index
              %c1_20 = arith.constant 1 : index
              %c1_21 = arith.constant 1 : index
              scf.for %arg26 = %c0_19 to %c1_20 step %c1_21 {
                %c0_22 = arith.constant 0 : index
                %c1_23 = arith.constant 1 : index
                %c1_24 = arith.constant 1 : index
                scf.for %arg27 = %c0_22 to %c1_23 step %c1_24 {
                  %c0_25 = arith.constant 0 : index
                  %c1_26 = arith.constant 1 : index
                  %c1_27 = arith.constant 1 : index
                  scf.for %arg28 = %c0_25 to %c1_26 step %c1_27 {
                    %c0_28 = arith.constant 0 : index
                    %c8_29 = arith.constant 8 : index
                    %c1_30 = arith.constant 1 : index
                    scf.for %arg29 = %c0_28 to %c8_29 step %c1_30 {
                      %c0_31 = arith.constant 0 : index
                      %c4_32 = arith.constant 4 : index
                      %c1_33 = arith.constant 1 : index
                      scf.for %arg30 = %c0_31 to %c4_32 step %c1_33 {
                        %c0_34 = arith.constant 0 : index
                        %c4_35 = arith.constant 4 : index
                        %c1_36 = arith.constant 1 : index
                        scf.for %arg31 = %c0_34 to %c4_35 step %c1_36 {
                          %c0_37 = arith.constant 0 : index
                          %c4_38 = arith.constant 4 : index
                          %c1_39 = arith.constant 1 : index
                          scf.for %arg32 = %c0_37 to %c4_38 step %c1_39 {
                            %c0_40 = arith.constant 0 : index
                            %c8_41 = arith.constant 8 : index
                            %c1_42 = arith.constant 1 : index
                            scf.for %arg33 = %c0_40 to %c8_41 step %c1_42 {
                              %c0_43 = arith.constant 0 : index
                              %c8_44 = arith.constant 8 : index
                              %c1_45 = arith.constant 1 : index
                              scf.for %arg34 = %c0_43 to %c8_44 step %c1_45 {
                                %4 = memref.load %alloc_17[%arg26, %arg28, %arg31, %arg29, %arg32, %arg34] : memref<1x1x4x8x4x8xi32, 2>
                                %5 = memref.load %alloc_18[%arg28, %arg27, %arg30, %arg31, %arg34, %arg33] : memref<1x1x4x4x8x8xi32, 2>
                                %6 = memref.load %alloc_11[%arg26, %arg27, %arg30, %arg29, %arg32, %arg33] : memref<1x1x4x8x4x8xi32, 2>
                                %7 = arith.muli %4, %5 : i32
                                %8 = arith.addi %6, %7 : i32
                                memref.store %8, %alloc_11[%arg26, %arg27, %arg30, %arg29, %arg32, %arg33] : memref<1x1x4x8x4x8xi32, 2>
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
              memref.dealloc %alloc_17 : memref<1x1x4x8x4x8xi32, 2>
              memref.dealloc %alloc_18 : memref<1x1x4x4x8x8xi32, 2>
            }
            memref.dealloc %alloc_15 : memref<1x1x64x256xi32, 1>
            memref.dealloc %alloc_16 : memref<1x1x256x64xi32, 1>
          }
          air.dma_memcpy_nd (%arg19[%c0_6, %c0_6, %2, %3] [%c1_5, %c1_5, %c32_7, %c32_7] [%c4096_3, %c4096_3, %c64_4, %c1_5], %alloc_11[%c0_6, %c0_6, %c0_6, %c0_6, %c0_6, %c0_6] [%c1_5, %c1_5, %c8, %c4, %c4, %c8] [%c1024, %c1024, %c32_7, %c8, %c256, %c1_5]) : (memref<1x1x64x64xi32, 1>, memref<1x1x4x8x4x8xi32, 2>)
          memref.dealloc %alloc_11 : memref<1x1x4x8x4x8xi32, 2>
          air.herd_terminator
        }
        air.dma_memcpy_nd (%arg12[%0, %1] [%c64, %c64] [%c2048, %c1], %alloc_2[%c0, %c0, %c0, %c0] [%c1, %c1, %c64, %c64] [%c4096, %c4096, %c64, %c1]) : (memref<2048x2048xi32>, memref<1x1x64x64xi32, 1>)
        memref.dealloc %alloc_2 : memref<1x1x64x64xi32, 1>
        air.segment_terminator
      }
      air.launch_terminator
    }
    memref.copy %alloc, %arg2 : memref<2048x2048xi32> to memref<2048x2048xi32>
    return
  }
}

