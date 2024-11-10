module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg8 = 0 to 30 {
      affine.store %cst, %arg5[%arg8] : memref<?xf64>
      affine.store %cst, %arg7[%arg8] : memref<?xf64>
      affine.for %arg9 = 0 to 30 {
        %5 = affine.load %arg3[%arg8, %arg9] : memref<?x30xf64>
        %6 = affine.load %arg6[%arg9] : memref<?xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = affine.load %arg5[%arg8] : memref<?xf64>
        %9 = arith.addf %7, %8 : f64
        affine.store %9, %arg5[%arg8] : memref<?xf64>
        %10 = affine.load %arg4[%arg8, %arg9] : memref<?x30xf64>
        %11 = affine.load %arg6[%arg9] : memref<?xf64>
        %12 = arith.mulf %10, %11 : f64
        %13 = affine.load %arg7[%arg8] : memref<?xf64>
        %14 = arith.addf %12, %13 : f64
        affine.store %14, %arg7[%arg8] : memref<?xf64>
      }
      %0 = affine.load %arg5[%arg8] : memref<?xf64>
      %1 = arith.mulf %arg1, %0 : f64
      %2 = affine.load %arg7[%arg8] : memref<?xf64>
      %3 = arith.mulf %arg2, %2 : f64
      %4 = arith.addf %1, %3 : f64
      affine.store %4, %arg7[%arg8] : memref<?xf64>
    }
    return
  }
}
