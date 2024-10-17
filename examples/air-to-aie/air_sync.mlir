#map = affine_map<()[s0] -> (s0 * 64)>
#map1 = affine_map<()[s0] -> (s0 * 32)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7, d8) -> (d0, d2, d5, d3, d6, d8)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7, d8) -> (d2, d1, d4, d5, d8, d7)>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5, d6, d7, d8) -> (d0, d1, d4, d3, d6, d7)>
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
        %0 = affine.apply #map()[%arg10]
        %1 = affine.apply #map()[%arg11]
        %alloc_0 = memref.alloc() : memref<1x1x64x64xi32, 1>
        air.herd @herd_0  tile (%arg15, %arg16) in (%arg17=%c2, %arg18=%c2) args(%arg19=%alloc_0, %arg20=%arg13, %arg21=%0, %arg22=%arg14, %arg23=%1) : memref<1x1x64x64xi32, 1>, memref<2048x2048xi32>, index, memref<2048x2048xi32>, index {
          %c4096_1 = arith.constant 4096 : index
          %c512 = arith.constant 512 : index
          %c4 = arith.constant 4 : index
          %c1024 = arith.constant 1024 : index
          %c8 = arith.constant 8 : index
          %c16384 = arith.constant 16384 : index
          %c64_2 = arith.constant 64 : index
          %c1_3 = arith.constant 1 : index
          %c0_i32 = arith.constant 0 : i32
          %c0_4 = arith.constant 0 : index
          %c256 = arith.constant 256 : index
          %c32_5 = arith.constant 32 : index
          %c2048_6 = arith.constant 2048 : index
          %2 = affine.apply #map1()[%arg15]
          %3 = affine.apply #map1()[%arg16]
          %alloc_7 = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
          linalg.fill ins(%c0_i32 : i32) outs(%alloc_7 : memref<1x1x4x8x4x8xi32, 2>)
          scf.for %arg24 = %c0_4 to %c2048_6 step %c256 {
            %alloc_8 = memref.alloc() : memref<1x1x64x256xi32, 1>
            %alloc_9 = memref.alloc() : memref<1x1x256x64xi32, 1>
            air.dma_memcpy_nd (%alloc_8[] [] [], %arg20[%arg21, %arg24] [%c64_2, %c256] [%c2048_6, %c1_3]) : (memref<1x1x64x256xi32, 1>, memref<2048x2048xi32>)
            air.dma_memcpy_nd (%alloc_9[] [] [], %arg22[%arg24, %arg23] [%c256, %c64_2] [%c2048_6, %c1_3]) : (memref<1x1x256x64xi32, 1>, memref<2048x2048xi32>)
            scf.for %arg25 = %c0_4 to %c256 step %c32_5 {
              %alloc_10 = memref.alloc() : memref<1x1x4x8x4x8xi32, 2>
              %alloc_11 = memref.alloc() : memref<1x1x4x4x8x8xi32, 2>
              air.dma_memcpy_nd (%alloc_10[] [] [], %alloc_8[%c0_4, %c0_4, %c0_4, %c0_4, %2, %arg25] [%c1_3, %c1_3, %c4, %c8, %c4, %c8] [%c16384, %c16384, %c8, %c1024, %c256, %c1_3]) : (memref<1x1x4x8x4x8xi32, 2>, memref<1x1x64x256xi32, 1>)
              air.dma_memcpy_nd (%alloc_11[] [] [], %alloc_9[%c0_4, %c0_4, %c0_4, %c0_4, %arg25, %3] [%c1_3, %c1_3, %c4, %c4, %c8, %c8] [%c16384, %c16384, %c8, %c512, %c64_2, %c1_3]) : (memref<1x1x4x4x8x8xi32, 2>, memref<1x1x256x64xi32, 1>)
              linalg.generic {indexing_maps = [#map2, #map3, #map4], iterator_types = ["parallel", "parallel", "reduction", "parallel", "parallel", "reduction", "parallel", "parallel", "reduction"]} ins(%alloc_10, %alloc_11 : memref<1x1x4x8x4x8xi32, 2>, memref<1x1x4x4x8x8xi32, 2>) outs(%alloc_7 : memref<1x1x4x8x4x8xi32, 2>) {
              ^bb0(%in: i32, %in_12: i32, %out: i32):
                %4 = arith.muli %in, %in_12 : i32
                %5 = arith.addi %out, %4 : i32
                linalg.yield %5 : i32
              }
              memref.dealloc %alloc_10 : memref<1x1x4x8x4x8xi32, 2>
              memref.dealloc %alloc_11 : memref<1x1x4x4x8x8xi32, 2>
            }
            memref.dealloc %alloc_8 : memref<1x1x64x256xi32, 1>
            memref.dealloc %alloc_9 : memref<1x1x256x64xi32, 1>
          }
          air.dma_memcpy_nd (%arg19[%c0_4, %c0_4, %2, %3] [%c1_3, %c1_3, %c32_5, %c32_5] [%c4096_1, %c4096_1, %c64_2, %c1_3], %alloc_7[%c0_4, %c0_4, %c0_4, %c0_4, %c0_4, %c0_4] [%c1_3, %c1_3, %c8, %c4, %c4, %c8] [%c1024, %c1024, %c32_5, %c8, %c256, %c1_3]) : (memref<1x1x64x64xi32, 1>, memref<1x1x4x8x4x8xi32, 2>)
          memref.dealloc %alloc_7 : memref<1x1x4x8x4x8xi32, 2>
          air.herd_terminator
        }
        air.dma_memcpy_nd (%arg12[%0, %1] [%c64, %c64] [%c2048, %c1], %alloc_0[%c0, %c0, %c0, %c0] [%c1, %c1, %c64, %c64] [%c4096, %c4096, %c64, %c1]) : (memref<2048x2048xi32>, memref<1x1x64x64xi32, 1>)
        memref.dealloc %alloc_0 : memref<1x1x64x64xi32, 1>
        air.segment_terminator
      }
      air.launch_terminator
    }
    memref.copy %alloc, %arg2 : memref<2048x2048xi32> to memref<2048x2048xi32>
    return
  }
}
