#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    affine.for %arg5 = 0 to 20 {
      affine.parallel (%arg6) = (0) to (30) {
        affine.for %arg7 = #map(%arg5) to 20 {
          %2 = affine.load %arg3[%arg7, %arg5] : memref<?x20xf64>
          %3 = affine.load %arg4[%arg7, %arg6] : memref<?x30xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %6 = arith.addf %5, %4 : f64
          affine.store %6, %arg4[%arg5, %arg6] : memref<?x30xf64>
        }
        %0 = affine.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %1 = arith.mulf %arg2, %0 : f64
        affine.store %1, %arg4[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}

