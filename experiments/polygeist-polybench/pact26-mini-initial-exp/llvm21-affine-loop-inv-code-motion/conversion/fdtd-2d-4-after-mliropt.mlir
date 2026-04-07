module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    affine.for %arg7 = 0 to 20 {
      %0 = affine.load %arg6[%arg7] : memref<?xf64>
      affine.for %arg8 = 0 to 30 {
        affine.store %0, %arg4[0, %arg8] : memref<?x30xf64>
      }
      affine.for %arg8 = 1 to 20 {
        affine.for %arg9 = 0 to 30 {
          %1 = affine.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %2 = affine.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %3 = affine.load %arg5[%arg8 - 1, %arg9] : memref<?x30xf64>
          %4 = arith.subf %2, %3 : f64
          %5 = arith.mulf %4, %cst_0 : f64
          %6 = arith.subf %1, %5 : f64
          affine.store %6, %arg4[%arg8, %arg9] : memref<?x30xf64>
        }
      }
      affine.for %arg8 = 0 to 20 {
        affine.for %arg9 = 1 to 30 {
          %1 = affine.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %2 = affine.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %3 = affine.load %arg5[%arg8, %arg9 - 1] : memref<?x30xf64>
          %4 = arith.subf %2, %3 : f64
          %5 = arith.mulf %4, %cst_0 : f64
          %6 = arith.subf %1, %5 : f64
          affine.store %6, %arg3[%arg8, %arg9] : memref<?x30xf64>
        }
      }
      affine.for %arg8 = 0 to 19 {
        affine.for %arg9 = 0 to 29 {
          %1 = affine.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %2 = affine.load %arg3[%arg8, %arg9 + 1] : memref<?x30xf64>
          %3 = affine.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %4 = arith.subf %2, %3 : f64
          %5 = affine.load %arg4[%arg8 + 1, %arg9] : memref<?x30xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = affine.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %8 = arith.subf %6, %7 : f64
          %9 = arith.mulf %8, %cst : f64
          %10 = arith.subf %1, %9 : f64
          affine.store %10, %arg5[%arg8, %arg9] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

