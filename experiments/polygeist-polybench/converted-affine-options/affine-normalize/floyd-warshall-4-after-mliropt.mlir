#map = affine_map<(d0) -> (d0 * -32 + 60, 32)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    affine.for %arg2 = 0 to 60 {
      affine.for %arg3 = 0 to 2 {
        affine.for %arg4 = 0 to 2 {
          affine.for %arg5 = 0 to min #map(%arg3) {
            %0 = affine.apply #map1(%arg3, %arg5)
            affine.for %arg6 = 0 to min #map(%arg4) {
              %1 = affine.apply #map1(%arg4, %arg6)
              %2 = affine.load %arg1[%0, %1] : memref<?x60xi32>
              %3 = affine.load %arg1[%0, %arg2] : memref<?x60xi32>
              %4 = affine.load %arg1[%arg2, %1] : memref<?x60xi32>
              %5 = arith.addi %3, %4 : i32
              %6 = arith.cmpi slt, %2, %5 : i32
              %7 = arith.select %6, %2, %5 : i32
              affine.store %7, %arg1[%0, %1] : memref<?x60xi32>
            }
          }
        }
      }
    }
    return
  }
}

