#map = affine_map<()[s0] -> (s0 * 64)>
#map1 = affine_map<()[s0] -> (s0 * 32)>
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
        %0 = affine.apply #map()[%arg10]
        %1 = affine.apply #map()[%arg11]
        %alloc_0 = memref.alloc() : memref<64x64xi32, 1>
        scf.for %arg15 = %c0 to %c2048 step %c256 {
          %alloc_1 = memref.alloc() : memref<64x256xi32, 1>
          %alloc_2 = memref.alloc() : memref<256x64xi32, 1>
          air.dma_memcpy_nd (%alloc_1[] [] [], %arg13[%0, %arg15] [%c64, %c256] [%c2048, %c1]) {id = 1 : i32} : (memref<64x256xi32, 1>, memref<2048x2048xi32>)
          air.dma_memcpy_nd (%alloc_2[] [] [], %arg14[%arg15, %1] [%c256, %c64] [%c2048, %c1]) {id = 2 : i32} : (memref<256x64xi32, 1>, memref<2048x2048xi32>)
          air.herd @herd_0  tile (%arg16, %arg17) in (%arg18=%c2, %arg19=%c2) args(%arg20=%alloc_0, %arg21=%alloc_1, %arg22=%alloc_2) : memref<64x64xi32, 1>, memref<64x256xi32, 1>, memref<256x64xi32, 1> {
            %c64_3 = arith.constant 64 : index
            %c1_4 = arith.constant 1 : index
            %c0_i32 = arith.constant 0 : i32
            %c0_5 = arith.constant 0 : index
            %c256_6 = arith.constant 256 : index
            %c32_7 = arith.constant 32 : index
            %2 = affine.apply #map1()[%arg16]
            %3 = affine.apply #map1()[%arg17]
            %alloc_8 = memref.alloc() : memref<32x32xi32, 2>
            linalg.fill ins(%c0_i32 : i32) outs(%alloc_8 : memref<32x32xi32, 2>)
            scf.for %arg23 = %c0_5 to %c256_6 step %c32_7 {
              %alloc_9 = memref.alloc() : memref<32x32xi32, 2>
              %alloc_10 = memref.alloc() : memref<32x32xi32, 2>
              air.dma_memcpy_nd (%alloc_9[] [] [], %arg21[%2, %arg23] [%c32_7, %c32_7] [%c256_6, %c1_4]) {id = 3 : i32} : (memref<32x32xi32, 2>, memref<64x256xi32, 1>)
              air.dma_memcpy_nd (%alloc_10[] [] [], %arg22[%arg23, %3] [%c32_7, %c32_7] [%c64_3, %c1_4]) {id = 4 : i32} : (memref<32x32xi32, 2>, memref<256x64xi32, 1>)
              linalg.matmul {cast = #linalg.type_fn<cast_signed>} ins(%alloc_9, %alloc_10 : memref<32x32xi32, 2>, memref<32x32xi32, 2>) outs(%alloc_8 : memref<32x32xi32, 2>)
              memref.dealloc %alloc_9 : memref<32x32xi32, 2>
              memref.dealloc %alloc_10 : memref<32x32xi32, 2>
            }
            air.dma_memcpy_nd (%arg20[%2, %3] [%c32_7, %c32_7] [%c64_3, %c1_4], %alloc_8[] [] []) {id = 5 : i32} : (memref<64x64xi32, 1>, memref<32x32xi32, 2>)
            memref.dealloc %alloc_8 : memref<32x32xi32, 2>
            air.herd_terminator
          }
          memref.dealloc %alloc_1 : memref<64x256xi32, 1>
          memref.dealloc %alloc_2 : memref<256x64xi32, 1>
        }
        air.dma_memcpy_nd (%arg12[%0, %1] [%c64, %c64] [%c2048, %c1], %alloc_0[] [] []) {id = 6 : i32} : (memref<2048x2048xi32>, memref<64x64xi32, 1>)
        memref.dealloc %alloc_0 : memref<64x64xi32, 1>
        air.segment_terminator
      }
      air.launch_terminator
    }
    memref.copy %alloc, %arg2 : memref<2048x2048xi32> to memref<2048x2048xi32>
    return
  }
}
