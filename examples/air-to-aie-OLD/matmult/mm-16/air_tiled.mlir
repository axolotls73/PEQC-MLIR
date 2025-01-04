#map = affine_map<(d0) -> (-d0 + 16, 64)>
#map1 = affine_map<(d0, d1) -> (d0 - d1, 32)>
#map2 = affine_map<(d0) -> (-d0 + 16, 32)>
module {
  func.func @forward(%arg0: memref<16x16xi32>, %arg1: memref<16x16xi32>) -> memref<16x16xi32> {
    %c32 = arith.constant 32 : index
    %c16 = arith.constant 16 : index
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<16x16xi32>
    scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c16, %c16) step (%c64, %c64) {
      %0 = affine.min #map(%arg2)
      %1 = affine.min #map(%arg3)
      %2 = affine.min #map(%arg2)
      %3 = affine.min #map(%arg3)
      %subview = memref.subview %arg0[%arg2, 0] [%0, 16] [1, 1] : memref<16x16xi32> to memref<?x16xi32, strided<[16, 1], offset: ?>>
      %subview_0 = memref.subview %arg1[0, %arg3] [16, %1] [1, 1] : memref<16x16xi32> to memref<16x?xi32, strided<[16, 1], offset: ?>>
      %subview_1 = memref.subview %alloc[%arg2, %arg3] [%2, %3] [1, 1] : memref<16x16xi32> to memref<?x?xi32, strided<[16, 1], offset: ?>>
      %alloc_2 = memref.alloc(%2, %3) : memref<?x?xi32, 1>
      %alloc_3 = memref.alloc(%0) : memref<?x16xi32, 1>
      %alloc_4 = memref.alloc(%1) : memref<16x?xi32, 1>
      memref.copy %subview, %alloc_3 : memref<?x16xi32, strided<[16, 1], offset: ?>> to memref<?x16xi32, 1>
      memref.copy %subview_0, %alloc_4 : memref<16x?xi32, strided<[16, 1], offset: ?>> to memref<16x?xi32, 1>
      scf.parallel (%arg4, %arg5) = (%c0, %c0) to (%0, %1) step (%c32, %c32) {
        %4 = affine.min #map1(%0, %arg4)
        %5 = affine.min #map1(%1, %arg5)
        %6 = affine.min #map1(%0, %arg4)
        %7 = affine.min #map1(%1, %arg5)
        %subview_5 = memref.subview %alloc_2[%arg4, %arg5] [%6, %7] [1, 1] : memref<?x?xi32, 1> to memref<?x?xi32, strided<[?, 1], offset: ?>, 1>
        %alloc_6 = memref.alloc(%6, %7) : memref<?x?xi32, 2>
        linalg.fill ins(%c0_i32 : i32) outs(%alloc_6 : memref<?x?xi32, 2>)
        scf.for %arg6 = %c0 to %c16 step %c32 {
          %8 = affine.min #map2(%arg6)
          %9 = affine.min #map2(%arg6)
          %subview_7 = memref.subview %alloc_3[%arg4, %arg6] [%4, %8] [1, 1] : memref<?x16xi32, 1> to memref<?x?xi32, strided<[16, 1], offset: ?>, 1>
          %subview_8 = memref.subview %alloc_4[%arg6, %arg5] [%9, %5] [1, 1] : memref<16x?xi32, 1> to memref<?x?xi32, strided<[?, 1], offset: ?>, 1>
          %alloc_9 = memref.alloc(%4, %8) : memref<?x?xi32, 2>
          %alloc_10 = memref.alloc(%9, %5) : memref<?x?xi32, 2>
          memref.copy %subview_7, %alloc_9 : memref<?x?xi32, strided<[16, 1], offset: ?>, 1> to memref<?x?xi32, 2>
          memref.copy %subview_8, %alloc_10 : memref<?x?xi32, strided<[?, 1], offset: ?>, 1> to memref<?x?xi32, 2>
          linalg.matmul {cast = #linalg.type_fn<cast_signed>} ins(%alloc_9, %alloc_10 : memref<?x?xi32, 2>, memref<?x?xi32, 2>) outs(%alloc_6 : memref<?x?xi32, 2>)
          memref.dealloc %alloc_9 : memref<?x?xi32, 2>
          memref.dealloc %alloc_10 : memref<?x?xi32, 2>
        }
        memref.copy %alloc_6, %subview_5 : memref<?x?xi32, 2> to memref<?x?xi32, strided<[?, 1], offset: ?>, 1>
        memref.dealloc %alloc_6 : memref<?x?xi32, 2>
        scf.reduce 
      }
      memref.dealloc %alloc_3 : memref<?x16xi32, 1>
      memref.dealloc %alloc_4 : memref<16x?xi32, 1>
      memref.copy %alloc_2, %subview_1 : memref<?x?xi32, 1> to memref<?x?xi32, strided<[16, 1], offset: ?>>
      memref.dealloc %alloc_2 : memref<?x?xi32, 1>
      scf.reduce 
    }
    return %alloc : memref<16x16xi32>
  }
}
