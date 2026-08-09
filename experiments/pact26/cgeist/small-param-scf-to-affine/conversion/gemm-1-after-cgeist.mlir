module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x70xf64>, %arg6: memref<?x80xf64>, %arg7: memref<?x70xf64>) {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    affine.for %arg8 = 0 to %2 {
      affine.for %arg9 = 0 to %0 {
        %3 = affine.load %arg5[%arg8, %arg9] : memref<?x70xf64>
        %4 = arith.mulf %3, %arg4 : f64
        affine.store %4, %arg5[%arg8, %arg9] : memref<?x70xf64>
      }
      affine.for %arg9 = 0 to %1 {
        affine.for %arg10 = 0 to %0 {
          %3 = affine.load %arg6[%arg8, %arg9] : memref<?x80xf64>
          %4 = arith.mulf %arg3, %3 : f64
          %5 = affine.load %arg7[%arg9, %arg10] : memref<?x70xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = affine.load %arg5[%arg8, %arg10] : memref<?x70xf64>
          %8 = arith.addf %7, %6 : f64
          affine.store %8, %arg5[%arg8, %arg10] : memref<?x70xf64>
        }
      }
    }
    return
  }
}
