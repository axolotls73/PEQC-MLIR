module {
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>, %arg2: memref<16x16xi32>) {
    %c4 = arith.constant 4 : index
    %alloc = memref.alloc() : memref<16x16xi32>
    air.launch (%arg3, %arg4) in (%arg5=%c4, %arg6=%c4) args(%arg7=%alloc, %arg8=%arg0, %arg9=%arg1) : memref<16x16xi32>, memref<16x16xi32>, memref<16x16xi32> {
      air.segment @segment_0  args(%arg10=%arg3, %arg11=%arg4, %arg12=%arg7, %arg13=%arg8, %arg14=%arg9) : index, index, memref<16x16xi32>, memref<16x16xi32>, memref<16x16xi32> {
        %c1 = arith.constant 1 : index
        %c4_0 = arith.constant 4 : index
        %c2 = arith.constant 2 : index
        %c0 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c8 = arith.constant 8 : index
        %c4_1 = arith.constant 4 : index
        %0 = arith.muli %arg10, %c4_1 : index
        %c4_2 = arith.constant 4 : index
        %1 = arith.muli %arg11, %c4_2 : index
        %alloc_3 = memref.alloc() : memref<4x4xi32, 1>
        scf.for %arg15 = %c0 to %c16 step %c8 {
          %alloc_4 = memref.alloc() : memref<4x8xi32, 1>
          %alloc_5 = memref.alloc() : memref<8x4xi32, 1>
          air.dma_memcpy_nd (%alloc_4[] [] [], %arg13[%0, %arg15] [%c4_0, %c8] [%c16, %c1]) {id = 1 : i32} : (memref<4x8xi32, 1>, memref<16x16xi32>)
          air.dma_memcpy_nd (%alloc_5[] [] [], %arg14[%arg15, %1] [%c8, %c4_0] [%c16, %c1]) {id = 2 : i32} : (memref<8x4xi32, 1>, memref<16x16xi32>)
          air.herd @herd_0  tile (%arg16, %arg17) in (%arg18=%c2, %arg19=%c2) args(%arg20=%alloc_3, %arg21=%alloc_4, %arg22=%alloc_5) : memref<4x4xi32, 1>, memref<4x8xi32, 1>, memref<8x4xi32, 1> {
            %c4_6 = arith.constant 4 : index
            %c1_7 = arith.constant 1 : index
            %c0_i32 = arith.constant 0 : i32
            %c0_8 = arith.constant 0 : index
            %c8_9 = arith.constant 8 : index
            %c2_10 = arith.constant 2 : index
            %c2_11 = arith.constant 2 : index
            %2 = arith.muli %arg16, %c2_11 : index
            %c2_12 = arith.constant 2 : index
            %3 = arith.muli %arg17, %c2_12 : index
            %alloc_13 = memref.alloc() : memref<2x2xi32, 2>
            %c0_14 = arith.constant 0 : index
            %c2_15 = arith.constant 2 : index
            %c1_16 = arith.constant 1 : index
            scf.for %arg23 = %c0_14 to %c2_15 step %c1_16 {
              %c0_17 = arith.constant 0 : index
              %c2_18 = arith.constant 2 : index
              %c1_19 = arith.constant 1 : index
              scf.for %arg24 = %c0_17 to %c2_18 step %c1_19 {
                memref.store %c0_i32, %alloc_13[%arg23, %arg24] : memref<2x2xi32, 2>
              }
            }
            scf.for %arg23 = %c0_8 to %c8_9 step %c2_10 {
              %alloc_17 = memref.alloc() : memref<2x2xi32, 2>
              %alloc_18 = memref.alloc() : memref<2x2xi32, 2>
              air.dma_memcpy_nd (%alloc_17[] [] [], %arg21[%2, %arg23] [%c2_10, %c2_10] [%c8_9, %c1_7]) {id = 3 : i32} : (memref<2x2xi32, 2>, memref<4x8xi32, 1>)
              air.dma_memcpy_nd (%alloc_18[] [] [], %arg22[%arg23, %3] [%c2_10, %c2_10] [%c4_6, %c1_7]) {id = 4 : i32} : (memref<2x2xi32, 2>, memref<8x4xi32, 1>)
              %c0_19 = arith.constant 0 : index
              %c2_20 = arith.constant 2 : index
              %c1_21 = arith.constant 1 : index
              scf.for %arg24 = %c0_19 to %c2_20 step %c1_21 {
                %c0_22 = arith.constant 0 : index
                %c2_23 = arith.constant 2 : index
                %c1_24 = arith.constant 1 : index
                scf.for %arg25 = %c0_22 to %c2_23 step %c1_24 {
                  %c0_25 = arith.constant 0 : index
                  %c2_26 = arith.constant 2 : index
                  %c1_27 = arith.constant 1 : index
                  scf.for %arg26 = %c0_25 to %c2_26 step %c1_27 {
                    %4 = memref.load %alloc_17[%arg24, %arg26] : memref<2x2xi32, 2>
                    %5 = memref.load %alloc_18[%arg26, %arg25] : memref<2x2xi32, 2>
                    %6 = memref.load %alloc_13[%arg24, %arg25] : memref<2x2xi32, 2>
                    %7 = arith.muli %4, %5 : i32
                    %8 = arith.addi %6, %7 : i32
                    memref.store %8, %alloc_13[%arg24, %arg25] : memref<2x2xi32, 2>
                  }
                }
              }
              memref.dealloc %alloc_17 : memref<2x2xi32, 2>
              memref.dealloc %alloc_18 : memref<2x2xi32, 2>
            }
            air.dma_memcpy_nd (%arg20[%2, %3] [%c2_10, %c2_10] [%c4_6, %c1_7], %alloc_13[] [] []) {id = 5 : i32} : (memref<4x4xi32, 1>, memref<2x2xi32, 2>)
            memref.dealloc %alloc_13 : memref<2x2xi32, 2>
            air.herd_terminator
          }
          memref.dealloc %alloc_4 : memref<4x8xi32, 1>
          memref.dealloc %alloc_5 : memref<8x4xi32, 1>
        }
        air.dma_memcpy_nd (%arg12[%0, %1] [%c4_0, %c4_0] [%c16, %c1], %alloc_3[] [] []) {id = 6 : i32} : (memref<16x16xi32>, memref<4x4xi32, 1>)
        memref.dealloc %alloc_3 : memref<4x4xi32, 1>
        air.segment_terminator
      }
      air.launch_terminator
    }
    memref.copy %alloc, %arg2 : memref<16x16xi32> to memref<16x16xi32>
    return
  }
}

