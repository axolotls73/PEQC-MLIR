#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    affine.for %arg8 = 0 to 20 step 4 {
      affine.for %arg9 = 0 to 25 {
        %0 = affine.load %arg5[%arg8, %arg9] : memref<?x25xf64>
        %1 = arith.mulf %0, %arg4 : f64
        affine.store %1, %arg5[%arg8, %arg9] : memref<?x25xf64>
        %2 = affine.apply #map(%arg8)
        %3 = affine.load %arg5[%2, %arg9] : memref<?x25xf64>
        %4 = arith.mulf %3, %arg4 : f64
        affine.store %4, %arg5[%2, %arg9] : memref<?x25xf64>
        %5 = affine.apply #map1(%arg8)
        %6 = affine.load %arg5[%5, %arg9] : memref<?x25xf64>
        %7 = arith.mulf %6, %arg4 : f64
        affine.store %7, %arg5[%5, %arg9] : memref<?x25xf64>
        %8 = affine.apply #map2(%arg8)
        %9 = affine.load %arg5[%8, %arg9] : memref<?x25xf64>
        %10 = arith.mulf %9, %arg4 : f64
        affine.store %10, %arg5[%8, %arg9] : memref<?x25xf64>
      }
    }
    affine.for %arg8 = 0 to 20 {
      affine.for %arg9 = 0 to 30 {
        affine.for %arg10 = 0 to 25 {
          %0 = affine.load %arg5[%arg8, %arg10] : memref<?x25xf64>
          %1 = affine.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %2 = arith.mulf %arg3, %1 : f64
          %3 = affine.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %0, %4 : f64
          affine.store %5, %arg5[%arg8, %arg10] : memref<?x25xf64>
        }
      }
    }
    return
  }
}

