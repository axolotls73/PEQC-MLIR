module {
  func.func @forward(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>, %arg2: memref<128x128xi32>) {
    %c2 = arith.constant 2 : index
    %alloc = memref.alloc() : memref<128x128xi32>
    air.launch (%arg3, %arg4) in (%arg5=%c2, %arg6=%c2) args(%arg7=%alloc, %arg8=%arg0, %arg9=%arg1) : memref<128x128xi32>, memref<128x128xi32>, memref<128x128xi32> {
      air.segment @segment_0  args(%arg10=%arg3, %arg11=%arg4, %arg12=%arg7, %arg13=%arg8, %arg14=%arg9) : index, index, memref<128x128xi32>, memref<128x128xi32>, memref<128x128xi32> {
        %c1 = arith.constant 1 : index
        %c2_0 = arith.constant 2 : index
        %c0 = arith.constant 0 : index
        %c128 = arith.constant 128 : index
        %c64 = arith.constant 64 : index
        %c64_1 = arith.constant 64 : index
        %0 = arith.muli %arg10, %c64_1 : index
        %c64_2 = arith.constant 64 : index
        %1 = arith.muli %arg11, %c64_2 : index
        %alloc_3 = memref.alloc() : memref<64x64xi32, 1>
        scf.for %arg15 = %c0 to %c128 step %c64 {
          %alloc_4 = memref.alloc() : memref<64x64xi32, 1>
          %alloc_5 = memref.alloc() : memref<64x64xi32, 1>
          air.dma_memcpy_nd (%alloc_4[] [] [], %arg13[%0, %arg15] [%c64, %c64] [%c128, %c1]) {id = 1 : i32} : (memref<64x64xi32, 1>, memref<128x128xi32>)
          air.dma_memcpy_nd (%alloc_5[] [] [], %arg14[%arg15, %1] [%c64, %c64] [%c128, %c1]) {id = 2 : i32} : (memref<64x64xi32, 1>, memref<128x128xi32>)
          air.herd @herd_0  tile (%arg16, %arg17) in (%arg18=%c2_0, %arg19=%c2_0) args(%arg20=%alloc_3, %arg21=%alloc_4, %arg22=%alloc_5) : memref<64x64xi32, 1>, memref<64x64xi32, 1>, memref<64x64xi32, 1> {
            %c1_6 = arith.constant 1 : index
            %c0_i32 = arith.constant 0 : i32
            %c0_7 = arith.constant 0 : index
            %c64_8 = arith.constant 64 : index
            %c32 = arith.constant 32 : index
            %c32_9 = arith.constant 32 : index
            %2 = arith.muli %arg16, %c32_9 : index
            %c32_10 = arith.constant 32 : index
            %3 = arith.muli %arg17, %c32_10 : index
            %alloc_11 = memref.alloc() : memref<32x32xi32, 2>
            %c0_12 = arith.constant 0 : index
            %c32_13 = arith.constant 32 : index
            %c1_14 = arith.constant 1 : index
            scf.for %arg23 = %c0_12 to %c32_13 step %c1_14 {
              %c0_15 = arith.constant 0 : index
              %c32_16 = arith.constant 32 : index
              %c1_17 = arith.constant 1 : index
              scf.for %arg24 = %c0_15 to %c32_16 step %c1_17 {
                memref.store %c0_i32, %alloc_11[%arg23, %arg24] : memref<32x32xi32, 2>
              }
            }
            scf.for %arg23 = %c0_7 to %c64_8 step %c32 {
              %alloc_15 = memref.alloc() : memref<32x32xi32, 2>
              %alloc_16 = memref.alloc() : memref<32x32xi32, 2>
              air.dma_memcpy_nd (%alloc_15[] [] [], %arg21[%2, %arg23] [%c32, %c32] [%c64_8, %c1_6]) {id = 3 : i32} : (memref<32x32xi32, 2>, memref<64x64xi32, 1>)
              air.dma_memcpy_nd (%alloc_16[] [] [], %arg22[%arg23, %3] [%c32, %c32] [%c64_8, %c1_6]) {id = 4 : i32} : (memref<32x32xi32, 2>, memref<64x64xi32, 1>)
              %c0_17 = arith.constant 0 : index
              %c32_18 = arith.constant 32 : index
              %c1_19 = arith.constant 1 : index
              scf.for %arg24 = %c0_17 to %c32_18 step %c1_19 {
                %c0_20 = arith.constant 0 : index
                %c32_21 = arith.constant 32 : index
                %c1_22 = arith.constant 1 : index
                scf.for %arg25 = %c0_20 to %c32_21 step %c1_22 {
                  %c0_23 = arith.constant 0 : index
                  %c32_24 = arith.constant 32 : index
                  %c1_25 = arith.constant 1 : index
                  scf.for %arg26 = %c0_23 to %c32_24 step %c1_25 {
                    %4 = memref.load %alloc_15[%arg24, %arg26] : memref<32x32xi32, 2>
                    %5 = memref.load %alloc_16[%arg26, %arg25] : memref<32x32xi32, 2>
                    %6 = memref.load %alloc_11[%arg24, %arg25] : memref<32x32xi32, 2>
                    %7 = arith.muli %4, %5 : i32
                    %8 = arith.addi %6, %7 : i32
                    memref.store %8, %alloc_11[%arg24, %arg25] : memref<32x32xi32, 2>
                  }
                }
              }
              memref.dealloc %alloc_15 : memref<32x32xi32, 2>
              memref.dealloc %alloc_16 : memref<32x32xi32, 2>
            }
            air.dma_memcpy_nd (%arg20[%2, %3] [%c32, %c32] [%c64_8, %c1_6], %alloc_11[] [] []) {id = 5 : i32} : (memref<64x64xi32, 1>, memref<32x32xi32, 2>)
            memref.dealloc %alloc_11 : memref<32x32xi32, 2>
            air.herd_terminator
          }
          memref.dealloc %alloc_4 : memref<64x64xi32, 1>
          memref.dealloc %alloc_5 : memref<64x64xi32, 1>
        }
        air.dma_memcpy_nd (%arg12[%0, %1] [%c64, %c64] [%c128, %c1], %alloc_3[] [] []) {id = 6 : i32} : (memref<128x128xi32>, memref<64x64xi32, 1>)
        memref.dealloc %alloc_3 : memref<64x64xi32, 1>
        air.segment_terminator
      }
      air.launch_terminator
    }
    memref.copy %alloc, %arg2 : memref<128x128xi32> to memref<128x128xi32>
    return
  }
}

