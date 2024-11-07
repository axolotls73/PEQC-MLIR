#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    affine.for %arg6 = 0 to 30 {
      affine.for %arg7 = #map(%arg6) to #map1(%arg6) {
        affine.for %arg8 = 0 to #map1(%arg7) {
          %0 = affine.load %arg4[%arg7, %arg8] : memref<?x30xf64>
          %1 = arith.mulf %0, %arg3 : f64
          affine.store %1, %arg4[%arg7, %arg8] : memref<?x30xf64>
        }
        affine.for %arg8 = 0 to 20 {
          affine.for %arg9 = 0 to #map1(%arg7) {
            %0 = affine.load %arg5[%arg7, %arg8] : memref<?x20xf64>
            %1 = arith.mulf %arg2, %0 : f64
            %2 = affine.load %arg5[%arg9, %arg8] : memref<?x20xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = affine.load %arg4[%arg7, %arg9] : memref<?x30xf64>
            %5 = arith.addf %4, %3 : f64
            affine.store %5, %arg4[%arg7, %arg9] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

