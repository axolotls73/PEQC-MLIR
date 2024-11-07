module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    affine.for %arg7 = 0 to 20 {
      affine.for %arg8 = 0 to 30 {
        %0 = affine.load %arg6[%arg7] : memref<?xf64>
        affine.store %0, %arg4[0, %arg8] : memref<?x30xf64>
      }
      affine.for %arg8 = 1 to 20 {
        affine.for %arg9 = 0 to 30 {
          %0 = affine.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %1 = affine.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %2 = affine.load %arg5[%arg8 - 1, %arg9] : memref<?x30xf64>
          %3 = arith.subf %1, %2 : f64
          %4 = arith.mulf %3, %cst_0 : f64
          %5 = arith.subf %0, %4 : f64
          affine.store %5, %arg4[%arg8, %arg9] : memref<?x30xf64>
        }
      }
      affine.for %arg8 = 0 to 20 {
        affine.for %arg9 = 1 to 30 {
          %0 = affine.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %1 = affine.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %2 = affine.load %arg5[%arg8, %arg9 - 1] : memref<?x30xf64>
          %3 = arith.subf %1, %2 : f64
          %4 = arith.mulf %3, %cst_0 : f64
          %5 = arith.subf %0, %4 : f64
          affine.store %5, %arg3[%arg8, %arg9] : memref<?x30xf64>
        }
      }
      affine.for %arg8 = 0 to 19 {
        affine.for %arg9 = 0 to 29 {
          %0 = affine.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %1 = affine.load %arg3[%arg8, %arg9 + 1] : memref<?x30xf64>
          %2 = affine.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %3 = arith.subf %1, %2 : f64
          %4 = affine.load %arg4[%arg8 + 1, %arg9] : memref<?x30xf64>
          %5 = arith.addf %3, %4 : f64
          %6 = affine.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %7 = arith.subf %5, %6 : f64
          %8 = arith.mulf %7, %cst : f64
          %9 = arith.subf %0, %8 : f64
          affine.store %9, %arg5[%arg8, %arg9] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

