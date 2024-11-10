#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 20)>
#map2 = affine_map<(d0) -> (d0 + 25)>
module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    affine.for %arg8 = 0 to 20 step 32 {
      affine.for %arg9 = 0 to 25 step 32 {
        affine.for %arg10 = #map(%arg8) to #map1(%arg8) {
          affine.for %arg11 = #map(%arg9) to #map2(%arg9) {
            %0 = affine.load %arg5[%arg10, %arg11] : memref<?x25xf64>
            %1 = arith.mulf %0, %arg4 : f64
            affine.store %1, %arg5[%arg10, %arg11] : memref<?x25xf64>
            affine.for %arg12 = 0 to 30 {
              %2 = affine.load %arg5[%arg10, %arg11] : memref<?x25xf64>
              %3 = affine.load %arg6[%arg10, %arg12] : memref<?x30xf64>
              %4 = arith.mulf %arg3, %3 : f64
              %5 = affine.load %arg7[%arg12, %arg11] : memref<?x25xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = arith.addf %2, %6 : f64
              affine.store %7, %arg5[%arg10, %arg11] : memref<?x25xf64>
            }
          }
        }
      }
    }
    return
  }
}

