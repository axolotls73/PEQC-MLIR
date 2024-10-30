#map = affine_map<()[s0] -> (s0 * 4)>
#map1 = affine_map<()[s0] -> (s0 * 2)>
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
        %0 = affine.apply #map()[%arg10]
        %1 = affine.apply #map()[%arg11]
        %alloc_1 = memref.alloc() : memref<4x4xi32, 1>
        scf.for %arg15 = %c0 to %c16 step %c8 {
          %alloc_2 = memref.alloc() : memref<4x8xi32, 1>
          %alloc_3 = memref.alloc() : memref<8x4xi32, 1>
          air.dma_memcpy_nd (%alloc_2[] [] [], %arg13[%0, %arg15] [%c4_0, %c8] [%c16, %c1]) {id = 1 : i32} : (memref<4x8xi32, 1>, memref<16x16xi32>)
          air.dma_memcpy_nd (%alloc_3[] [] [], %arg14[%arg15, %1] [%c8, %c4_0] [%c16, %c1]) {id = 2 : i32} : (memref<8x4xi32, 1>, memref<16x16xi32>)
          air.herd @herd_0  tile (%arg16, %arg17) in (%arg18=%c2, %arg19=%c2) args(%arg20=%alloc_1, %arg21=%alloc_2, %arg22=%alloc_3) : memref<4x4xi32, 1>, memref<4x8xi32, 1>, memref<8x4xi32, 1> {
            %c4_4 = arith.constant 4 : index
            %c1_5 = arith.constant 1 : index
            %c0_i32 = arith.constant 0 : i32
            %c0_6 = arith.constant 0 : index
            %c8_7 = arith.constant 8 : index
            %c2_8 = arith.constant 2 : index
            %2 = affine.apply #map1()[%arg16]
            %3 = affine.apply #map1()[%arg17]
            %alloc_9 = memref.alloc() : memref<2x2xi32, 2>
            linalg.fill ins(%c0_i32 : i32) outs(%alloc_9 : memref<2x2xi32, 2>)
            scf.for %arg23 = %c0_6 to %c8_7 step %c2_8 {
              %alloc_10 = memref.alloc() : memref<2x2xi32, 2>
              %alloc_11 = memref.alloc() : memref<2x2xi32, 2>
              air.dma_memcpy_nd (%alloc_10[] [] [], %arg21[%2, %arg23] [%c2_8, %c2_8] [%c8_7, %c1_5]) {id = 3 : i32} : (memref<2x2xi32, 2>, memref<4x8xi32, 1>)
              air.dma_memcpy_nd (%alloc_11[] [] [], %arg22[%arg23, %3] [%c2_8, %c2_8] [%c4_4, %c1_5]) {id = 4 : i32} : (memref<2x2xi32, 2>, memref<8x4xi32, 1>)
              linalg.matmul {cast = #linalg.type_fn<cast_signed>} ins(%alloc_10, %alloc_11 : memref<2x2xi32, 2>, memref<2x2xi32, 2>) outs(%alloc_9 : memref<2x2xi32, 2>)
              memref.dealloc %alloc_10 : memref<2x2xi32, 2>
              memref.dealloc %alloc_11 : memref<2x2xi32, 2>
            }
            air.dma_memcpy_nd (%arg20[%2, %3] [%c2_8, %c2_8] [%c4_4, %c1_5], %alloc_9[] [] []) {id = 5 : i32} : (memref<4x4xi32, 1>, memref<2x2xi32, 2>)
            memref.dealloc %alloc_9 : memref<2x2xi32, 2>
            air.herd_terminator
          }
          memref.dealloc %alloc_2 : memref<4x8xi32, 1>
          memref.dealloc %alloc_3 : memref<8x4xi32, 1>
        }
        air.dma_memcpy_nd (%arg12[%0, %1] [%c4_0, %c4_0] [%c16, %c1], %alloc_1[] [] []) {id = 6 : i32} : (memref<16x16xi32>, memref<4x4xi32, 1>)
        memref.dealloc %alloc_1 : memref<4x4xi32, 1>
        air.segment_terminator
      }
      air.launch_terminator
    }
    memref.copy %alloc, %arg2 : memref<16x16xi32> to memref<16x16xi32>
    return
  }
}
