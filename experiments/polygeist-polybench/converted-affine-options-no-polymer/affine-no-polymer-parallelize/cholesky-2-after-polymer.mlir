#map = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    affine.for %arg2 = 0 to 40 {
      affine.for %arg3 = 0 to #map(%arg2) {
        affine.for %arg4 = 0 to #map(%arg3) {
          %5 = affine.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %6 = affine.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %9 = arith.subf %8, %7 : f64
          affine.store %9, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %2 = affine.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %3 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %4 = arith.divf %3, %2 : f64
        affine.store %4, %arg1[%arg2, %arg3] : memref<?x40xf64>
      }
      affine.for %arg3 = 0 to #map(%arg2) {
        %2 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %3 = arith.mulf %2, %2 : f64
        %4 = affine.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %5 = arith.subf %4, %3 : f64
        affine.store %5, %arg1[%arg2, %arg2] : memref<?x40xf64>
      }
      %0 = affine.load %arg1[%arg2, %arg2] : memref<?x40xf64>
      %1 = math.sqrt %0 : f64
      affine.store %1, %arg1[%arg2, %arg2] : memref<?x40xf64>
    }
    return
  }
}

