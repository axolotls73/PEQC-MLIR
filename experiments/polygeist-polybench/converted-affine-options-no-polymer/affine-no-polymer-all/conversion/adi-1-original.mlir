module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %cst = arith.constant 9.9999999999999982 : f64
    %cst_0 = arith.constant -18.999999999999996 : f64
    %cst_1 = arith.constant -9.9999999999999982 : f64
    %cst_2 = arith.constant -19.999999999999996 : f64
    %cst_3 = arith.constant 40.999999999999993 : f64
    %cst_4 = arith.constant 19.999999999999996 : f64
    %cst_5 = arith.constant 0.000000e+00 : f64
    %cst_6 = arith.constant 1.000000e+00 : f64
    affine.store %cst_6, %arg3[0, 1] : memref<?x20xf64>
    affine.store %cst_5, %arg4[1, 0] : memref<?x20xf64>
    %0 = affine.load %arg3[0, 1] : memref<?x20xf64>
    affine.store %0, %arg5[1, 0] : memref<?x20xf64>
    %1 = affine.load %arg4[1, 0] : memref<?x20xf64>
    %2 = arith.mulf %1, %cst_2 : f64
    %3 = arith.addf %2, %cst_3 : f64
    %4 = arith.divf %cst_4, %3 : f64
    affine.store %4, %arg4[1, 1] : memref<?x20xf64>
    %5 = affine.load %arg2[1, 0] : memref<?x20xf64>
    %6 = arith.mulf %5, %cst : f64
    %7 = affine.load %arg2[1, 1] : memref<?x20xf64>
    %8 = arith.mulf %7, %cst_0 : f64
    %9 = arith.addf %6, %8 : f64
    %10 = affine.load %arg2[1, 2] : memref<?x20xf64>
    %11 = arith.mulf %10, %cst_1 : f64
    %12 = arith.subf %9, %11 : f64
    %13 = affine.load %arg5[1, 0] : memref<?x20xf64>
    %14 = arith.mulf %13, %cst_2 : f64
    %15 = arith.subf %12, %14 : f64
    %16 = arith.divf %15, %3 : f64
    affine.store %16, %arg5[1, 1] : memref<?x20xf64>
    affine.store %cst_6, %arg3[19, 1] : memref<?x20xf64>
    affine.for %arg6 = 1 to 19 {
      %17 = affine.load %arg4[1, -%arg6 + 19] : memref<?x20xf64>
      %18 = affine.load %arg3[-%arg6 + 20, 1] : memref<?x20xf64>
      %19 = arith.mulf %17, %18 : f64
      %20 = affine.load %arg5[1, -%arg6 + 19] : memref<?x20xf64>
      %21 = arith.addf %19, %20 : f64
      affine.store %21, %arg3[-%arg6 + 19, 1] : memref<?x20xf64>
    }
    return
  }
}
