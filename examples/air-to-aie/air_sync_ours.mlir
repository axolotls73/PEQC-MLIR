module {
  func.func @forward(%arg0: memref<2048x2048xi32>, %arg1: memref<2048x2048xi32>, %arg2: memref<2048x2048xi32>) {
    %c32 = arith.constant 32 : index
    %alloc = memref.alloc() : memref<2048x2048xi32>
    air.launch (%arg3, %arg4) in (%arg5=%c32, %arg6=%c32) args(%arg7=%alloc, %arg8=%arg0, %arg9=%arg1) : memref<2048x2048xi32>, memref<2048x2048xi32>, memref<2048x2048xi32> {
      air.segment @segment_0  args(%arg10=%arg3, %arg11=%arg4, %arg12=%arg7, %arg13=%arg8, %arg14=%arg9) : index, index, memref<2048x2048xi32>, memref<2048x2048xi32>, memref<2048x2048xi32> {
        %c1 = arith.constant 1 : index
        %c64 = arith.constant 64 : index
        %c2 = arith.constant 2 : index
        %c0 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c256 = arith.constant 256 : index
        %c64_0 = arith.constant 64 : index
        %0 = arith.muli %arg10, %c64_0 : index
        %c64_1 = arith.constant 64 : index
        %1 = arith.muli %arg11, %c64_1 : index
        %alloc_2 = memref.alloc() : memref<64x64xi32, 1>
        scf.for %arg15 = %c0 to %c2048 step %c256 {
          %alloc_3 = memref.alloc() : memref<64x256xi32, 1>
          %alloc_4 = memref.alloc() : memref<256x64xi32, 1>
          air.dma_memcpy_nd (%alloc_3[] [] [], %arg13[%0, %arg15] [%c64, %c256] [%c2048, %c1]) {id = 1 : i32} : (memref<64x256xi32, 1>, memref<2048x2048xi32>)
          air.dma_memcpy_nd (%alloc_4[] [] [], %arg14[%arg15, %1] [%c256, %c64] [%c2048, %c1]) {id = 2 : i32} : (memref<256x64xi32, 1>, memref<2048x2048xi32>)
          air.herd @herd_0  tile (%arg16, %arg17) in (%arg18=%c2, %arg19=%c2) args(%arg20=%alloc_2, %arg21=%alloc_3, %arg22=%alloc_4) : memref<64x64xi32, 1>, memref<64x256xi32, 1>, memref<256x64xi32, 1> {
            %c64_5 = arith.constant 64 : index
            %c1_6 = arith.constant 1 : index
            %c0_i32 = arith.constant 0 : i32
            %c0_7 = arith.constant 0 : index
            %c256_8 = arith.constant 256 : index
            %c32_9 = arith.constant 32 : index
            %c32_10 = arith.constant 32 : index
            %2 = arith.muli %arg16, %c32_10 : index
            %c32_11 = arith.constant 32 : index
            %3 = arith.muli %arg17, %c32_11 : index
            %alloc_12 = memref.alloc() : memref<32x32xi32, 2>
            %c0_13 = arith.constant 0 : index
            %c32_14 = arith.constant 32 : index
            %c1_15 = arith.constant 1 : index
            scf.for %arg23 = %c0_13 to %c32_14 step %c1_15 {
              %c0_16 = arith.constant 0 : index
              %c32_17 = arith.constant 32 : index
              %c1_18 = arith.constant 1 : index
              scf.for %arg24 = %c0_16 to %c32_17 step %c1_18 {
                memref.store %c0_i32, %alloc_12[%arg23, %arg24] : memref<32x32xi32, 2>
              }
            }
            scf.for %arg23 = %c0_7 to %c256_8 step %c32_9 {
              %alloc_16 = memref.alloc() : memref<32x32xi32, 2>
              %alloc_17 = memref.alloc() : memref<32x32xi32, 2>
              air.dma_memcpy_nd (%alloc_16[] [] [], %arg21[%2, %arg23] [%c32_9, %c32_9] [%c256_8, %c1_6]) {id = 3 : i32} : (memref<32x32xi32, 2>, memref<64x256xi32, 1>)
              air.dma_memcpy_nd (%alloc_17[] [] [], %arg22[%arg23, %3] [%c32_9, %c32_9] [%c64_5, %c1_6]) {id = 4 : i32} : (memref<32x32xi32, 2>, memref<256x64xi32, 1>)
              %c0_18 = arith.constant 0 : index
              %c32_19 = arith.constant 32 : index
              %c1_20 = arith.constant 1 : index
              scf.for %arg24 = %c0_18 to %c32_19 step %c1_20 {
                %c0_21 = arith.constant 0 : index
                %c32_22 = arith.constant 32 : index
                %c1_23 = arith.constant 1 : index
                scf.for %arg25 = %c0_21 to %c32_22 step %c1_23 {
                  %c0_24 = arith.constant 0 : index
                  %c32_25 = arith.constant 32 : index
                  %c1_26 = arith.constant 1 : index
                  scf.for %arg26 = %c0_24 to %c32_25 step %c1_26 {
                    %4 = memref.load %alloc_16[%arg24, %arg26] : memref<32x32xi32, 2>
                    %5 = memref.load %alloc_17[%arg26, %arg25] : memref<32x32xi32, 2>
                    %6 = memref.load %alloc_12[%arg24, %arg25] : memref<32x32xi32, 2>
                    %7 = arith.muli %4, %5 : i32
                    %8 = arith.addi %6, %7 : i32
                    memref.store %8, %alloc_12[%arg24, %arg25] : memref<32x32xi32, 2>
                  }
                }
              }
              memref.dealloc %alloc_16 : memref<32x32xi32, 2>
              memref.dealloc %alloc_17 : memref<32x32xi32, 2>
            }
            air.dma_memcpy_nd (%arg20[%2, %3] [%c32_9, %c32_9] [%c64_5, %c1_6], %alloc_12[] [] []) {id = 5 : i32} : (memref<64x64xi32, 1>, memref<32x32xi32, 2>)
            memref.dealloc %alloc_12 : memref<32x32xi32, 2>
            air.herd_terminator
          }
          memref.dealloc %alloc_3 : memref<64x256xi32, 1>
          memref.dealloc %alloc_4 : memref<256x64xi32, 1>
        }
        air.dma_memcpy_nd (%arg12[%0, %1] [%c64, %c64] [%c2048, %c1], %alloc_2[] [] []) {id = 6 : i32} : (memref<2048x2048xi32>, memref<64x64xi32, 1>)
        memref.dealloc %alloc_2 : memref<64x64xi32, 1>
        air.segment_terminator
      }
      air.launch_terminator
    }
    memref.copy %alloc, %arg2 : memref<2048x2048xi32> to memref<2048x2048xi32>
    return
  }
}

