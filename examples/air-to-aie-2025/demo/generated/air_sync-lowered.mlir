module {
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>, %arg2: memref<16x16xi32>) {
    %c2 = arith.constant 2 : index
    %alloc = memref.alloc() : memref<16x16xi32>
    air.launch (%arg3, %arg4) in (%arg5=%c2, %arg6=%c2) args(%arg7=%arg0, %arg8=%arg1, %arg9=%alloc) : memref<16x16xi32>, memref<16x16xi32>, memref<16x16xi32> {
      air.segment @forward_0  args(%arg10=%arg3, %arg11=%arg4, %arg12=%arg7, %arg13=%arg8, %arg14=%arg9) : index, index, memref<16x16xi32>, memref<16x16xi32>, memref<16x16xi32> {
        %c1 = arith.constant 1 : index
        %c16 = arith.constant 16 : index
        %c8 = arith.constant 8 : index
        %c0 = arith.constant 0 : index
        %c2_0 = arith.constant 2 : index
        %c8_1 = arith.constant 8 : index
        %0 = arith.muli %arg11, %c8_1 overflow<nsw> : index
        %c8_2 = arith.constant 8 : index
        %1 = arith.muli %arg10, %c8_2 overflow<nsw> : index
        %alloc_3 = memref.alloc() : memref<8x8xi32, 1>
        %alloc_4 = memref.alloc() : memref<8x16xi32, 1>
        %alloc_5 = memref.alloc() : memref<16x8xi32, 1>
        air.dma_memcpy_nd (%alloc_4[] [] [], %arg12[%1, %c0] [%c8, %c16] [%c16, %c1]) {id = 1 : i32} : (memref<8x16xi32, 1>, memref<16x16xi32>)
        air.dma_memcpy_nd (%alloc_5[] [] [], %arg13[%c0, %0] [%c16, %c8] [%c16, %c1]) {id = 2 : i32} : (memref<16x8xi32, 1>, memref<16x16xi32>)
        air.herd @herd_0  tile (%arg15, %arg16) in (%arg17=%c2_0, %arg18=%c2_0) args(%arg19=%alloc_3, %arg20=%alloc_4, %arg21=%alloc_5) : memref<8x8xi32, 1>, memref<8x16xi32, 1>, memref<16x8xi32, 1> {
          %c8_6 = arith.constant 8 : index
          %c1_7 = arith.constant 1 : index
          %c0_i32 = arith.constant 0 : i32
          %c0_8 = arith.constant 0 : index
          %c16_9 = arith.constant 16 : index
          %c4 = arith.constant 4 : index
          %c4_10 = arith.constant 4 : index
          %2 = arith.muli %arg16, %c4_10 overflow<nsw> : index
          %c4_11 = arith.constant 4 : index
          %3 = arith.muli %arg15, %c4_11 overflow<nsw> : index
          %alloc_12 = memref.alloc() : memref<4x4xi32, 2>
          %c0_13 = arith.constant 0 : index
          %c4_14 = arith.constant 4 : index
          %c1_15 = arith.constant 1 : index
          scf.for %arg22 = %c0_13 to %c4_14 step %c1_15 {
            %c0_16 = arith.constant 0 : index
            %c4_17 = arith.constant 4 : index
            %c1_18 = arith.constant 1 : index
            scf.for %arg23 = %c0_16 to %c4_17 step %c1_18 {
              memref.store %c0_i32, %alloc_12[%arg22, %arg23] : memref<4x4xi32, 2>
            }
          }
          scf.for %arg22 = %c0_8 to %c16_9 step %c4 {
            %alloc_16 = memref.alloc() : memref<4x4xi32, 2>
            %alloc_17 = memref.alloc() : memref<4x4xi32, 2>
            air.dma_memcpy_nd (%alloc_16[] [] [], %arg20[%3, %arg22] [%c4, %c4] [%c16_9, %c1_7]) {id = 3 : i32} : (memref<4x4xi32, 2>, memref<8x16xi32, 1>)
            air.dma_memcpy_nd (%alloc_17[] [] [], %arg21[%arg22, %2] [%c4, %c4] [%c8_6, %c1_7]) {id = 4 : i32} : (memref<4x4xi32, 2>, memref<16x8xi32, 1>)
            %c0_18 = arith.constant 0 : index
            %c4_19 = arith.constant 4 : index
            %c1_20 = arith.constant 1 : index
            scf.for %arg23 = %c0_18 to %c4_19 step %c1_20 {
              %c0_21 = arith.constant 0 : index
              %c4_22 = arith.constant 4 : index
              %c1_23 = arith.constant 1 : index
              scf.for %arg24 = %c0_21 to %c4_22 step %c1_23 {
                %c0_24 = arith.constant 0 : index
                %c4_25 = arith.constant 4 : index
                %c1_26 = arith.constant 1 : index
                scf.for %arg25 = %c0_24 to %c4_25 step %c1_26 {
                  %4 = memref.load %alloc_16[%arg23, %arg25] : memref<4x4xi32, 2>
                  %5 = memref.load %alloc_17[%arg25, %arg24] : memref<4x4xi32, 2>
                  %6 = memref.load %alloc_12[%arg23, %arg24] : memref<4x4xi32, 2>
                  %7 = arith.muli %4, %5 : i32
                  %8 = arith.addi %6, %7 : i32
                  memref.store %8, %alloc_12[%arg23, %arg24] : memref<4x4xi32, 2>
                }
              }
            }
            memref.dealloc %alloc_16 : memref<4x4xi32, 2>
            memref.dealloc %alloc_17 : memref<4x4xi32, 2>
          }
          air.dma_memcpy_nd (%arg19[%3, %2] [%c4, %c4] [%c8_6, %c1_7], %alloc_12[] [] []) {id = 5 : i32} : (memref<8x8xi32, 1>, memref<4x4xi32, 2>)
          memref.dealloc %alloc_12 : memref<4x4xi32, 2>
        }
        memref.dealloc %alloc_4 : memref<8x16xi32, 1>
        memref.dealloc %alloc_5 : memref<16x8xi32, 1>
        air.dma_memcpy_nd (%arg14[%1, %0] [%c8, %c8] [%c16, %c1], %alloc_3[] [] []) {id = 6 : i32} : (memref<16x16xi32>, memref<8x8xi32, 1>)
        memref.dealloc %alloc_3 : memref<8x8xi32, 1>
      }
    }
    memref.copy %alloc, %arg2 : memref<16x16xi32> to memref<16x16xi32>
    return
  }
}

