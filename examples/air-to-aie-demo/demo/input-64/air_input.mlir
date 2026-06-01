#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  func.func @forward(%arg0: memref<64x64xi32>, %arg1: memref<64x64xi32>) -> memref<64x64xi32> {
    %alloc = memref.alloc() : memref<64x64xi32>
    %c0_i32 = arith.constant 0 : i32
    linalg.fill ins(%c0_i32 : i32) outs(%alloc : memref<64x64xi32>)
    linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%arg0, %arg1 : memref<64x64xi32>, memref<64x64xi32>) outs(%alloc : memref<64x64xi32>) {
    ^bb0(%in: i32, %in_0: i32, %out: i32):
      %0 = arith.muli %in, %in_0 : i32
      %1 = arith.addi %out, %0 : i32
      linalg.yield %1 : i32
    }
    return %alloc : memref<64x64xi32>
  }
}
