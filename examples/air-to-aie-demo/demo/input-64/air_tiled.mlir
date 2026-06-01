#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  func.func @forward(%arg0: memref<64x64xi32>, %arg1: memref<64x64xi32>) -> memref<64x64xi32> {
    %c16 = arith.constant 16 : index
    %c64 = arith.constant 64 : index
    %c0 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<64x64xi32>
    scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c64, %c64) step (%c32, %c32) {
      %subview = memref.subview %arg0[%arg2, 0] [32, 64] [1, 1] : memref<64x64xi32> to memref<32x64xi32, strided<[64, 1], offset: ?>>
      %subview_0 = memref.subview %arg1[0, %arg3] [64, 32] [1, 1] : memref<64x64xi32> to memref<64x32xi32, strided<[64, 1], offset: ?>>
      %subview_1 = memref.subview %alloc[%arg2, %arg3] [32, 32] [1, 1] : memref<64x64xi32> to memref<32x32xi32, strided<[64, 1], offset: ?>>
      %alloc_2 = memref.alloc() : memref<32x32xi32, 1>
      %alloc_3 = memref.alloc() : memref<32x64xi32, 1>
      %alloc_4 = memref.alloc() : memref<64x32xi32, 1>
      memref.copy %subview, %alloc_3 : memref<32x64xi32, strided<[64, 1], offset: ?>> to memref<32x64xi32, 1>
      memref.copy %subview_0, %alloc_4 : memref<64x32xi32, strided<[64, 1], offset: ?>> to memref<64x32xi32, 1>
      scf.parallel (%arg4, %arg5) = (%c0, %c0) to (%c32, %c32) step (%c16, %c16) {
        %subview_5 = memref.subview %alloc_2[%arg4, %arg5] [16, 16] [1, 1] : memref<32x32xi32, 1> to memref<16x16xi32, strided<[32, 1], offset: ?>, 1>
        %alloc_6 = memref.alloc() : memref<16x16xi32, 2>
        linalg.fill ins(%c0_i32 : i32) outs(%alloc_6 : memref<16x16xi32, 2>)
        scf.for %arg6 = %c0 to %c64 step %c16 {
          %subview_7 = memref.subview %alloc_3[%arg4, %arg6] [16, 16] [1, 1] : memref<32x64xi32, 1> to memref<16x16xi32, strided<[64, 1], offset: ?>, 1>
          %subview_8 = memref.subview %alloc_4[%arg6, %arg5] [16, 16] [1, 1] : memref<64x32xi32, 1> to memref<16x16xi32, strided<[32, 1], offset: ?>, 1>
          %alloc_9 = memref.alloc() : memref<16x16xi32, 2>
          %alloc_10 = memref.alloc() : memref<16x16xi32, 2>
          memref.copy %subview_7, %alloc_9 : memref<16x16xi32, strided<[64, 1], offset: ?>, 1> to memref<16x16xi32, 2>
          memref.copy %subview_8, %alloc_10 : memref<16x16xi32, strided<[32, 1], offset: ?>, 1> to memref<16x16xi32, 2>
          linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%alloc_9, %alloc_10 : memref<16x16xi32, 2>, memref<16x16xi32, 2>) outs(%alloc_6 : memref<16x16xi32, 2>) {
          ^bb0(%in: i32, %in_11: i32, %out: i32):
            %0 = arith.muli %in, %in_11 : i32
            %1 = arith.addi %out, %0 : i32
            linalg.yield %1 : i32
          }
          memref.dealloc %alloc_9 : memref<16x16xi32, 2>
          memref.dealloc %alloc_10 : memref<16x16xi32, 2>
        }
        memref.copy %alloc_6, %subview_5 : memref<16x16xi32, 2> to memref<16x16xi32, strided<[32, 1], offset: ?>, 1>
        memref.dealloc %alloc_6 : memref<16x16xi32, 2>
        scf.reduce 
      }
      memref.dealloc %alloc_3 : memref<32x64xi32, 1>
      memref.dealloc %alloc_4 : memref<64x32xi32, 1>
      memref.copy %alloc_2, %subview_1 : memref<32x32xi32, 1> to memref<32x32xi32, strided<[64, 1], offset: ?>>
      memref.dealloc %alloc_2 : memref<32x32xi32, 1>
      scf.reduce 
    }
    return %alloc : memref<64x64xi32>
  }
}
