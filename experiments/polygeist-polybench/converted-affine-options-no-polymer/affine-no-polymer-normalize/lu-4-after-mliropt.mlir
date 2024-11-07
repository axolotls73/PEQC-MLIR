#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (-d0 + 40)>
#map2 = affine_map<(d0, d1) -> (d0 + d1)>
module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    affine.for %arg2 = 0 to 40 {
      affine.for %arg3 = 0 to #map(%arg2) {
        affine.for %arg4 = 0 to #map(%arg3) {
          %3 = affine.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %4 = affine.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %7 = arith.subf %6, %5 : f64
          affine.store %7, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %0 = affine.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %1 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %2 = arith.divf %1, %0 : f64
        affine.store %2, %arg1[%arg2, %arg3] : memref<?x40xf64>
      }
      affine.for %arg3 = 0 to #map1(%arg2) {
        %0 = affine.apply #map2(%arg2, %arg3)
        affine.for %arg4 = 0 to #map(%arg2) {
          %1 = affine.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %2 = affine.load %arg1[%arg4, %0] : memref<?x40xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg1[%arg2, %0] : memref<?x40xf64>
          %5 = arith.subf %4, %3 : f64
          affine.store %5, %arg1[%arg2, %0] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

