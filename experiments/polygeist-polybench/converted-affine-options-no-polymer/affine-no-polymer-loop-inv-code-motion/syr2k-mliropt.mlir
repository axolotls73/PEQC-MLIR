#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    affine.for %arg7 = 0 to 30 {
      affine.for %arg8 = 0 to #map(%arg7) {
        %0 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %1 = arith.mulf %0, %arg3 : f64
        affine.store %1, %arg4[%arg7, %arg8] : memref<?x30xf64>
      }
      affine.for %arg8 = 0 to 20 {
        %0 = affine.load %arg6[%arg7, %arg8] : memref<?x20xf64>
        %1 = affine.load %arg5[%arg7, %arg8] : memref<?x20xf64>
        affine.for %arg9 = 0 to #map(%arg7) {
          %2 = affine.load %arg5[%arg9, %arg8] : memref<?x20xf64>
          %3 = arith.mulf %2, %arg2 : f64
          %4 = arith.mulf %3, %0 : f64
          %5 = affine.load %arg6[%arg9, %arg8] : memref<?x20xf64>
          %6 = arith.mulf %5, %arg2 : f64
          %7 = arith.mulf %6, %1 : f64
          %8 = arith.addf %4, %7 : f64
          %9 = affine.load %arg4[%arg7, %arg9] : memref<?x30xf64>
          %10 = arith.addf %9, %8 : f64
          affine.store %10, %arg4[%arg7, %arg9] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

