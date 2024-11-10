module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    affine.for %arg3 = 0 to 20 {
      affine.for %arg4 = 1 to 39 {
        affine.for %arg5 = 1 to 39 {
          %0 = affine.load %arg2[%arg4 - 1, %arg5 - 1] : memref<?x40xf64>
          %1 = affine.load %arg2[%arg4 - 1, %arg5] : memref<?x40xf64>
          %2 = arith.addf %0, %1 : f64
          %3 = affine.load %arg2[%arg4 - 1, %arg5 + 1] : memref<?x40xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg2[%arg4, %arg5 - 1] : memref<?x40xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = affine.load %arg2[%arg4, %arg5] : memref<?x40xf64>
          %8 = arith.addf %6, %7 : f64
          %9 = affine.load %arg2[%arg4, %arg5 + 1] : memref<?x40xf64>
          %10 = arith.addf %8, %9 : f64
          %11 = affine.load %arg2[%arg4 + 1, %arg5 - 1] : memref<?x40xf64>
          %12 = arith.addf %10, %11 : f64
          %13 = affine.load %arg2[%arg4 + 1, %arg5] : memref<?x40xf64>
          %14 = arith.addf %12, %13 : f64
          %15 = affine.load %arg2[%arg4 + 1, %arg5 + 1] : memref<?x40xf64>
          %16 = arith.addf %14, %15 : f64
          %17 = arith.divf %16, %cst : f64
          affine.store %17, %arg2[%arg4, %arg5] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

