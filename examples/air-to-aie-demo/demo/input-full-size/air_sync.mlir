#map = affine_map<()[s0] -> (s0 * 64)>
#map1 = affine_map<()[s0] -> (s0 * 32)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  func.func @forward(%arg0: memref<128x256xi32>, %arg1: memref<256x128xi32>, %arg2: memref<128x128xi32>) {
    %c2 = arith.constant 2 : index
    %alloc = memref.alloc() : memref<128x128xi32>
    air.launch (%arg3, %arg4) in (%arg5=%c2, %arg6=%c2) args(%arg7=%arg0, %arg8=%arg1, %arg9=%alloc) : memref<128x256xi32>, memref<256x128xi32>, memref<128x128xi32> {
      air.segment @forward_0  args(%arg10=%arg3, %arg11=%arg4, %arg12=%arg7, %arg13=%arg8, %arg14=%arg9) : index, index, memref<128x256xi32>, memref<256x128xi32>, memref<128x128xi32> {
        %c128 = arith.constant 128 : index
        %c1 = arith.constant 1 : index
        %c256 = arith.constant 256 : index
        %c64 = arith.constant 64 : index
        %c0 = arith.constant 0 : index
        %c2_0 = arith.constant 2 : index
        %0 = affine.apply #map()[%arg11]
        %1 = affine.apply #map()[%arg10]
        %alloc_1 = memref.alloc() : memref<64x64xi32, 1>
        %alloc_2 = memref.alloc() : memref<64x256xi32, 1>
        %alloc_3 = memref.alloc() : memref<256x64xi32, 1>
        air.dma_memcpy_nd (%alloc_2[] [] [], %arg12[%1, %c0] [%c64, %c256] [%c256, %c1]) {id = 1 : i32} : (memref<64x256xi32, 1>, memref<128x256xi32>)
        air.dma_memcpy_nd (%alloc_3[] [] [], %arg13[%c0, %0] [%c256, %c64] [%c128, %c1]) {id = 2 : i32} : (memref<256x64xi32, 1>, memref<256x128xi32>)
        air.herd @herd_0  tile (%arg15, %arg16) in (%arg17=%c2_0, %arg18=%c2_0) args(%arg19=%alloc_1, %arg20=%alloc_2, %arg21=%alloc_3) : memref<64x64xi32, 1>, memref<64x256xi32, 1>, memref<256x64xi32, 1> {
          %c64_4 = arith.constant 64 : index
          %c1_5 = arith.constant 1 : index
          %c0_i32 = arith.constant 0 : i32
          %c0_6 = arith.constant 0 : index
          %c256_7 = arith.constant 256 : index
          %c32 = arith.constant 32 : index
          %2 = affine.apply #map1()[%arg16]
          %3 = affine.apply #map1()[%arg15]
          %alloc_8 = memref.alloc() : memref<32x32xi32, 2>
          linalg.fill ins(%c0_i32 : i32) outs(%alloc_8 : memref<32x32xi32, 2>)
          scf.for %arg22 = %c0_6 to %c256_7 step %c32 {
            %alloc_9 = memref.alloc() : memref<32x32xi32, 2>
            %alloc_10 = memref.alloc() : memref<32x32xi32, 2>
            air.dma_memcpy_nd (%alloc_9[] [] [], %arg20[%3, %arg22] [%c32, %c32] [%c256_7, %c1_5]) {id = 3 : i32} : (memref<32x32xi32, 2>, memref<64x256xi32, 1>)
            air.dma_memcpy_nd (%alloc_10[] [] [], %arg21[%arg22, %2] [%c32, %c32] [%c64_4, %c1_5]) {id = 4 : i32} : (memref<32x32xi32, 2>, memref<256x64xi32, 1>)
            linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "reduction"]} ins(%alloc_9, %alloc_10 : memref<32x32xi32, 2>, memref<32x32xi32, 2>) outs(%alloc_8 : memref<32x32xi32, 2>) {
            ^bb0(%in: i32, %in_11: i32, %out: i32):
              %4 = arith.muli %in, %in_11 : i32
              %5 = arith.addi %out, %4 : i32
              linalg.yield %5 : i32
            }
            memref.dealloc %alloc_9 : memref<32x32xi32, 2>
            memref.dealloc %alloc_10 : memref<32x32xi32, 2>
          }
          air.dma_memcpy_nd (%arg19[%3, %2] [%c32, %c32] [%c64_4, %c1_5], %alloc_8[] [] []) {id = 5 : i32} : (memref<64x64xi32, 1>, memref<32x32xi32, 2>)
          memref.dealloc %alloc_8 : memref<32x32xi32, 2>
        }
        memref.dealloc %alloc_2 : memref<64x256xi32, 1>
        memref.dealloc %alloc_3 : memref<256x64xi32, 1>
        air.dma_memcpy_nd (%arg14[%1, %0] [%c64, %c64] [%c128, %c1], %alloc_1[] [] []) {id = 6 : i32} : (memref<128x128xi32>, memref<64x64xi32, 1>)
        memref.dealloc %alloc_1 : memref<64x64xi32, 1>
      }
    }
    memref.copy %alloc, %arg2 : memref<128x128xi32> to memref<128x128xi32>
    return
  }
}
