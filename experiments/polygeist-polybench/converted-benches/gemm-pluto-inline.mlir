module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    affine.for %arg8 = 0 to 20 {
      affine.for %arg9 = 0 to 25 {
        %0 = affine.load %arg5[%arg8, %arg9] : memref<?x25xf64>
        %1 = arith.mulf %0, %arg4 : f64
        affine.store %1, %arg5[%arg8, %arg9] : memref<?x25xf64>
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

