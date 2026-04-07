#map = affine_map<(d0) -> (-d0 + 19)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    affine.for %arg5 = 0 to 20 {
      affine.for %arg6 = 0 to 30 {
        affine.for %arg7 = 0 to #map(%arg5) {
          %2 = affine.apply #map1(%arg5, %arg7)
          %3 = affine.load %arg3[%2, %arg5] : memref<?x20xf64>
          %4 = affine.load %arg4[%2, %arg6] : memref<?x30xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %7 = arith.addf %6, %5 : f64
          affine.store %7, %arg4[%arg5, %arg6] : memref<?x30xf64>
        }
        %0 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %1 = arith.mulf %arg2, %0 : f64
        affine.store %1, %arg4[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}

