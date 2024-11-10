#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    affine.for %arg6 = 0 to 30 {
      affine.for %arg7 = 0 to #map(%arg6) {
        %0 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
        %1 = arith.mulf %0, %arg3 : f64
        affine.store %1, %arg4[%arg6, %arg7] : memref<?x30xf64>
      }
    }
    affine.for %arg6 = 0 to 30 {
      affine.for %arg7 = 0 to #map(%arg6) {
        affine.for %arg8 = 0 to 20 {
          %0 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %1 = affine.load %arg5[%arg6, %arg8] : memref<?x20xf64>
          %2 = arith.mulf %arg2, %1 : f64
          %3 = affine.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %0, %4 : f64
          affine.store %5, %arg4[%arg6, %arg7] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

