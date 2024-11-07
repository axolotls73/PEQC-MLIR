module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    affine.for %arg8 = 0 to 20 {
      affine.for %arg9 = 0 to 25 {
        %0 = affine.load %arg5[%arg8, %arg9] : memref<?x25xf64>
        %1 = arith.mulf %0, %arg4 : f64
        affine.store %1, %arg5[%arg8, %arg9] : memref<?x25xf64>
        affine.for %arg10 = 0 to 30 {
          %2 = affine.load %arg5[%arg8, %arg9] : memref<?x25xf64>
          %3 = affine.load %arg6[%arg8, %arg10] : memref<?x30xf64>
          %4 = arith.mulf %arg3, %3 : f64
          %5 = affine.load %arg7[%arg10, %arg9] : memref<?x25xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = arith.addf %2, %6 : f64
          affine.store %7, %arg5[%arg8, %arg9] : memref<?x25xf64>
        }
      }
    }
    return
  }
}

