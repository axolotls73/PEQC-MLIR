module {
  func.func @forward(%arg0: memref<2048x2048xi32>, %arg1: memref<2048x2048xi32>) -> memref<2048x2048xi32> {
    %c32 = arith.constant 32 : index
    %c256 = arith.constant 256 : index
    %c2048 = arith.constant 2048 : index
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<2048x2048xi32>
    scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c2048, %c2048) step (%c64, %c64) {
      %subview = memref.subview %alloc[%arg2, %arg3] [64, 64] [1, 1] : memref<2048x2048xi32> to memref<64x64xi32, strided<[2048, 1], offset: ?>>
      %alloc_0 = memref.alloc() : memref<1x1x64x64xi32, 1>
      scf.parallel (%arg4, %arg5) = (%c0, %c0) to (%c64, %c64) step (%c32, %c32) {
        %alloc_2 = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
        %c0_3 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg6 = %c0_3 to %c1 step %c1_4 {
          %c0_7 = arith.constant 0 : index
          %c1_8 = arith.constant 1 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg7 = %c0_7 to %c1_8 step %c1_9 {
            %c0_10 = arith.constant 0 : index
            %c4 = arith.constant 4 : index
            %c1_11 = arith.constant 1 : index
            scf.for %arg8 = %c0_10 to %c4 step %c1_11 {
              %c0_12 = arith.constant 0 : index
              %c8 = arith.constant 8 : index
              %c1_13 = arith.constant 1 : index
              scf.for %arg9 = %c0_12 to %c8 step %c1_13 {
                %c0_14 = arith.constant 0 : index
                %c4_15 = arith.constant 4 : index
                %c1_16 = arith.constant 1 : index
                scf.for %arg10 = %c0_14 to %c4_15 step %c1_16 {
                  %c0_17 = arith.constant 0 : index
                  %c8_18 = arith.constant 8 : index
                  %c1_19 = arith.constant 1 : index
                  scf.for %arg11 = %c0_17 to %c8_18 step %c1_19 {
                    memref.store %c0_i32, %alloc_2[%arg6, %arg7, %arg8, %arg9, %arg10, %arg11] : memref<1x1x4x8x4x8xi32, 2>
                  }
                }
              }
            }
          }
        }
        %subview_5 = memref.subview %alloc_0[0, 0, %arg4, %arg5] [1, 1, 32, 32] [1, 1, 1, 1] : memref<1x1x64x64xi32, 1> to memref<1x1x32x32xi32, strided<[4096, 4096, 64, 1], offset: ?>, 1>
        scf.for %arg6 = %c0 to %c2048 step %c256 {
          %subview_7 = memref.subview %arg0[%arg2, %arg6] [64, 256] [1, 1] : memref<2048x2048xi32> to memref<64x256xi32, strided<[2048, 1], offset: ?>>
          %subview_8 = memref.subview %arg1[%arg6, %arg3] [256, 64] [1, 1] : memref<2048x2048xi32> to memref<256x64xi32, strided<[2048, 1], offset: ?>>
          %alloc_9 = memref.alloc() : memref<1x1x64x256xi32, 1>
          %alloc_10 = memref.alloc() : memref<1x1x256x64xi32, 1>
          air.dma_memcpy_nd (%alloc_9[] [] [], %subview_7[] [] []) : (memref<1x1x64x256xi32, 1>, memref<64x256xi32, strided<[2048, 1], offset: ?>>)
          air.dma_memcpy_nd (%alloc_10[] [] [], %subview_8[] [] []) : (memref<1x1x256x64xi32, 1>, memref<256x64xi32, strided<[2048, 1], offset: ?>>)
          scf.for %arg7 = %c0 to %c256 step %c32 {
            %subview_11 = memref.subview %alloc_9[0, 0, %arg4, %arg7] [1, 1, 32, 32] [1, 1, 1, 1] : memref<1x1x64x256xi32, 1> to memref<1x1x32x32xi32, strided<[16384, 16384, 256, 1], offset: ?>, 1>
            %subview_12 = memref.subview %alloc_10[0, 0, %arg7, %arg5] [1, 1, 32, 32] [1, 1, 1, 1] : memref<1x1x256x64xi32, 1> to memref<1x1x32x32xi32, strided<[16384, 16384, 64, 1], offset: ?>, 1>
            %alloc_13 = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
            %alloc_14 = memref.alloc() : memref<1x1x4x4x8x8xi32, 2>
            %expand_shape = memref.expand_shape %subview_11 [[0], [1], [2, 3], [4, 5]] : memref<1x1x32x32xi32, strided<[16384, 16384, 256, 1], offset: ?>, 1> into memref<1x1x8x4x4x8xi32, strided<[16384, 16384, 1024, 256, 8, 1], offset: ?>, 1>
            %transpose_15 = memref.transpose %expand_shape (d0, d1, d2, d3, d4, d5) -> (d0, d1, d4, d2, d3, d5) : memref<1x1x8x4x4x8xi32, strided<[16384, 16384, 1024, 256, 8, 1], offset: ?>, 1> to memref<1x1x4x8x4x8xi32, strided<[16384, 16384, 8, 1024, 256, 1], offset: ?>, 1>
            air.dma_memcpy_nd (%alloc_13[] [] [], %transpose_15[] [] []) : (memref<1x1x4x8x4x8xi32, 2>, memref<1x1x4x8x4x8xi32, strided<[16384, 16384, 8, 1024, 256, 1], offset: ?>, 1>)
            %expand_shape_16 = memref.expand_shape %subview_12 [[0], [1], [2, 3], [4, 5]] : memref<1x1x32x32xi32, strided<[16384, 16384, 64, 1], offset: ?>, 1> into memref<1x1x4x8x4x8xi32, strided<[16384, 16384, 512, 64, 8, 1], offset: ?>, 1>
            %transpose_17 = memref.transpose %expand_shape_16 (d0, d1, d2, d3, d4, d5) -> (d0, d1, d4, d2, d3, d5) : memref<1x1x4x8x4x8xi32, strided<[16384, 16384, 512, 64, 8, 1], offset: ?>, 1> to memref<1x1x4x4x8x8xi32, strided<[16384, 16384, 8, 512, 64, 1], offset: ?>, 1>
            air.dma_memcpy_nd (%alloc_14[] [] [], %transpose_17[] [] []) : (memref<1x1x4x4x8x8xi32, 2>, memref<1x1x4x4x8x8xi32, strided<[16384, 16384, 8, 512, 64, 1], offset: ?>, 1>)
            %c0_18 = arith.constant 0 : index
            %c1_19 = arith.constant 1 : index
            %c1_20 = arith.constant 1 : index
            scf.for %arg8 = %c0_18 to %c1_19 step %c1_20 {
              %c0_21 = arith.constant 0 : index
              %c1_22 = arith.constant 1 : index
              %c1_23 = arith.constant 1 : index
              scf.for %arg9 = %c0_21 to %c1_22 step %c1_23 {
                %c0_24 = arith.constant 0 : index
                %c1_25 = arith.constant 1 : index
                %c1_26 = arith.constant 1 : index
                scf.for %arg10 = %c0_24 to %c1_25 step %c1_26 {
                  %c0_27 = arith.constant 0 : index
                  %c8 = arith.constant 8 : index
                  %c1_28 = arith.constant 1 : index
                  scf.for %arg11 = %c0_27 to %c8 step %c1_28 {
                    %c0_29 = arith.constant 0 : index
                    %c4 = arith.constant 4 : index
                    %c1_30 = arith.constant 1 : index
                    scf.for %arg12 = %c0_29 to %c4 step %c1_30 {
                      %c0_31 = arith.constant 0 : index
                      %c4_32 = arith.constant 4 : index
                      %c1_33 = arith.constant 1 : index
                      scf.for %arg13 = %c0_31 to %c4_32 step %c1_33 {
                        %c0_34 = arith.constant 0 : index
                        %c4_35 = arith.constant 4 : index
                        %c1_36 = arith.constant 1 : index
                        scf.for %arg14 = %c0_34 to %c4_35 step %c1_36 {
                          %c0_37 = arith.constant 0 : index
                          %c8_38 = arith.constant 8 : index
                          %c1_39 = arith.constant 1 : index
                          scf.for %arg15 = %c0_37 to %c8_38 step %c1_39 {
                            %c0_40 = arith.constant 0 : index
                            %c8_41 = arith.constant 8 : index
                            %c1_42 = arith.constant 1 : index
                            scf.for %arg16 = %c0_40 to %c8_41 step %c1_42 {
                              %0 = memref.load %alloc_13[%arg8, %arg10, %arg13, %arg11, %arg14, %arg16] : memref<1x1x4x8x4x8xi32, 2>
                              %1 = memref.load %alloc_14[%arg10, %arg9, %arg12, %arg13, %arg16, %arg15] : memref<1x1x4x4x8x8xi32, 2>
                              %2 = memref.load %alloc_2[%arg8, %arg9, %arg12, %arg11, %arg14, %arg15] : memref<1x1x4x8x4x8xi32, 2>
                              %3 = arith.muli %0, %1 : i32
                              %4 = arith.addi %2, %3 : i32
                              memref.store %4, %alloc_2[%arg8, %arg9, %arg12, %arg11, %arg14, %arg15] : memref<1x1x4x8x4x8xi32, 2>
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
            memref.dealloc %alloc_13 : memref<1x1x4x8x4x8xi32, 2>
            memref.dealloc %alloc_14 : memref<1x1x4x4x8x8xi32, 2>
          }
          memref.dealloc %alloc_9 : memref<1x1x64x256xi32, 1>
          memref.dealloc %alloc_10 : memref<1x1x256x64xi32, 1>
        }
        %transpose_6 = memref.transpose %alloc_2 (d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d4, d2, d5) : memref<1x1x4x8x4x8xi32, 2> to memref<1x1x8x4x4x8xi32, strided<[1024, 1024, 32, 8, 256, 1]>, 2>
        air.dma_memcpy_nd (%subview_5[] [] [], %transpose_6[] [] []) : (memref<1x1x32x32xi32, strided<[4096, 4096, 64, 1], offset: ?>, 1>, memref<1x1x8x4x4x8xi32, strided<[1024, 1024, 32, 8, 256, 1]>, 2>)
        memref.dealloc %alloc_2 : memref<1x1x4x8x4x8xi32, 2>
        scf.reduce 
      }
      %subview_1 = memref.subview %alloc_0[0, 0, 0, 0] [1, 1, 64, 64] [1, 1, 1, 1] : memref<1x1x64x64xi32, 1> to memref<64x64xi32, 1>
      %transpose = memref.transpose %subview_1 (d0, d1) -> (d0, d1) : memref<64x64xi32, 1> to memref<64x64xi32, strided<[64, 1]>, 1>
      air.dma_memcpy_nd (%subview[] [] [], %transpose[] [] []) : (memref<64x64xi32, strided<[2048, 1], offset: ?>>, memref<64x64xi32, strided<[64, 1]>, 1>)
      memref.dealloc %alloc_0 : memref<1x1x64x64xi32, 1>
      scf.reduce 
    }
    return %alloc : memref<2048x2048xi32>
  }
}

