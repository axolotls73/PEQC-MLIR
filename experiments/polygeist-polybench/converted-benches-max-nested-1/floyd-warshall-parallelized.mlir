#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (60, d0 * 32 + 32)>
module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    affine.for %arg2 = 0 to 60 {
      affine.for %arg3 = 0 to 2 {
        affine.for %arg4 = 0 to 2 {
          affine.for %arg5 = #map(%arg3) to min #map1(%arg3) {
            affine.for %arg6 = #map(%arg4) to min #map1(%arg4) {
              %0 = affine.load %arg1[%arg5, %arg6] : memref<?x60xi32>
              %1 = affine.load %arg1[%arg5, %arg2] : memref<?x60xi32>
              %2 = affine.load %arg1[%arg2, %arg6] : memref<?x60xi32>
              %3 = arith.addi %1, %2 : i32
              %4 = arith.cmpi slt, %0, %3 : i32
              %5 = arith.select %4, %0, %3 : i32
              affine.store %5, %arg1[%arg5, %arg6] : memref<?x60xi32>
            }
          }
        }
      }
    }
    return
  }
}

