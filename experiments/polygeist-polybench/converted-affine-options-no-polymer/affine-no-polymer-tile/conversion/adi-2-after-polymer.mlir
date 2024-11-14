module {
  func.func @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x20xf64>, %arg3: memref<?x20xf64>, %arg4: memref<?x20xf64>, %arg5: memref<?x20xf64>) {
    %cst = arith.constant 9.9999999999999982 : f64
    %cst_0 = arith.constant -18.999999999999996 : f64
    %cst_1 = arith.constant -38.999999999999993 : f64
    %cst_2 = arith.constant -9.9999999999999982 : f64
    %cst_3 = arith.constant -19.999999999999996 : f64
    %cst_4 = arith.constant 20.999999999999996 : f64
    %cst_5 = arith.constant 40.999999999999993 : f64
    %cst_6 = arith.constant 19.999999999999996 : f64
    %cst_7 = arith.constant 0.000000e+00 : f64
    %cst_8 = arith.constant 1.000000e+00 : f64
    affine.for %arg6 = 1 to 21 {
      affine.for %arg7 = 1 to 19 {
        affine.store %cst_8, %arg3[0, %arg7] : memref<?x20xf64>
        affine.store %cst_7, %arg4[%arg7, 0] : memref<?x20xf64>
        %0 = affine.load %arg3[0, %arg7] : memref<?x20xf64>
        affine.store %0, %arg5[%arg7, 0] : memref<?x20xf64>
        affine.for %arg8 = 1 to 19 {
          %1 = affine.load %arg4[%arg7, %arg8 - 1] : memref<?x20xf64>
          %2 = arith.mulf %1, %cst_3 : f64
          %3 = arith.addf %2, %cst_5 : f64
          %4 = arith.divf %cst_6, %3 : f64
          affine.store %4, %arg4[%arg7, %arg8] : memref<?x20xf64>
          %5 = affine.load %arg2[%arg8, %arg7 - 1] : memref<?x20xf64>
          %6 = arith.mulf %5, %cst : f64
          %7 = affine.load %arg2[%arg8, %arg7] : memref<?x20xf64>
          %8 = arith.mulf %7, %cst_0 : f64
          %9 = arith.addf %6, %8 : f64
          %10 = affine.load %arg2[%arg8, %arg7 + 1] : memref<?x20xf64>
          %11 = arith.mulf %10, %cst_2 : f64
          %12 = arith.subf %9, %11 : f64
          %13 = affine.load %arg5[%arg7, %arg8 - 1] : memref<?x20xf64>
          %14 = arith.mulf %13, %cst_3 : f64
          %15 = arith.subf %12, %14 : f64
          %16 = arith.divf %15, %3 : f64
          affine.store %16, %arg5[%arg7, %arg8] : memref<?x20xf64>
        }
        affine.store %cst_8, %arg3[19, %arg7] : memref<?x20xf64>
        affine.for %arg8 = 1 to 19 {
          %1 = affine.load %arg4[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %2 = affine.load %arg3[-%arg8 + 20, %arg7] : memref<?x20xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg5[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %5 = arith.addf %3, %4 : f64
          affine.store %5, %arg3[-%arg8 + 19, %arg7] : memref<?x20xf64>
        }
      }
      affine.for %arg7 = 1 to 19 {
        affine.store %cst_8, %arg2[%arg7, 0] : memref<?x20xf64>
        affine.store %cst_7, %arg4[%arg7, 0] : memref<?x20xf64>
        %0 = affine.load %arg2[%arg7, 0] : memref<?x20xf64>
        affine.store %0, %arg5[%arg7, 0] : memref<?x20xf64>
        affine.for %arg8 = 1 to 19 {
          %1 = affine.load %arg4[%arg7, %arg8 - 1] : memref<?x20xf64>
          %2 = arith.mulf %1, %cst_2 : f64
          %3 = arith.addf %2, %cst_4 : f64
          %4 = arith.divf %cst, %3 : f64
          affine.store %4, %arg4[%arg7, %arg8] : memref<?x20xf64>
          %5 = affine.load %arg3[%arg7 - 1, %arg8] : memref<?x20xf64>
          %6 = arith.mulf %5, %cst_6 : f64
          %7 = affine.load %arg3[%arg7, %arg8] : memref<?x20xf64>
          %8 = arith.mulf %7, %cst_1 : f64
          %9 = arith.addf %6, %8 : f64
          %10 = affine.load %arg3[%arg7 + 1, %arg8] : memref<?x20xf64>
          %11 = arith.mulf %10, %cst_3 : f64
          %12 = arith.subf %9, %11 : f64
          %13 = affine.load %arg5[%arg7, %arg8 - 1] : memref<?x20xf64>
          %14 = arith.mulf %13, %cst_2 : f64
          %15 = arith.subf %12, %14 : f64
          %16 = arith.divf %15, %3 : f64
          affine.store %16, %arg5[%arg7, %arg8] : memref<?x20xf64>
        }
        affine.store %cst_8, %arg2[%arg7, 19] : memref<?x20xf64>
        affine.for %arg8 = 1 to 19 {
          %1 = affine.load %arg4[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %2 = affine.load %arg2[%arg7, -%arg8 + 20] : memref<?x20xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg5[%arg7, -%arg8 + 19] : memref<?x20xf64>
          %5 = arith.addf %3, %4 : f64
          affine.store %5, %arg2[%arg7, -%arg8 + 19] : memref<?x20xf64>
        }
      }
    }
    return
  }
}

