#map = affine_map<(d0) -> (-d0 + 19)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    affine.for %arg5 = 0 to 19 {
      affine.for %arg6 = 0 to #map(%arg5) {
        %0 = affine.apply #map1(%arg5, %arg6)
        affine.for %arg7 = 0 to 30 {
          %1 = affine.load %arg4[%arg5, %arg7] : memref<?x30xf64>
          %2 = affine.load %arg3[%0, %arg5] : memref<?x20xf64>
          %3 = affine.load %arg4[%0, %arg7] : memref<?x30xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %1, %4 : f64
          affine.store %5, %arg4[%arg5, %arg7] : memref<?x30xf64>
        }
      }
    }
    affine.for %arg5 = 0 to 20 {
      affine.for %arg6 = 0 to 30 {
        %0 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %1 = arith.mulf %arg2, %0 : f64
        affine.store %1, %arg4[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}

