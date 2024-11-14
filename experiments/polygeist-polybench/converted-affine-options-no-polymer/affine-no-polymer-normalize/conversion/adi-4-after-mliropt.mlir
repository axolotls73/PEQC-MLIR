#map = affine_map<(d0) -> (d0 + 1)>
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
    affine.for %arg6 = 0 to 20 {
      %0 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 18 {
        %1 = affine.apply #map(%arg7)
        affine.store %cst_8, %arg3[0, %1] : memref<?x20xf64>
        affine.store %cst_7, %arg4[%1, 0] : memref<?x20xf64>
        %2 = affine.load %arg3[0, %1] : memref<?x20xf64>
        affine.store %2, %arg5[%1, 0] : memref<?x20xf64>
        affine.for %arg8 = 0 to 18 {
          %3 = affine.apply #map(%arg8)
          %4 = affine.load %arg4[%1, %3 - 1] : memref<?x20xf64>
          %5 = arith.mulf %4, %cst_3 : f64
          %6 = arith.addf %5, %cst_5 : f64
          %7 = arith.divf %cst_6, %6 : f64
          affine.store %7, %arg4[%1, %3] : memref<?x20xf64>
          %8 = affine.load %arg2[%3, %1 - 1] : memref<?x20xf64>
          %9 = arith.mulf %8, %cst : f64
          %10 = affine.load %arg2[%3, %1] : memref<?x20xf64>
          %11 = arith.mulf %10, %cst_0 : f64
          %12 = arith.addf %9, %11 : f64
          %13 = affine.load %arg2[%3, %1 + 1] : memref<?x20xf64>
          %14 = arith.mulf %13, %cst_2 : f64
          %15 = arith.subf %12, %14 : f64
          %16 = affine.load %arg5[%1, %3 - 1] : memref<?x20xf64>
          %17 = arith.mulf %16, %cst_3 : f64
          %18 = arith.subf %15, %17 : f64
          %19 = arith.divf %18, %6 : f64
          affine.store %19, %arg5[%1, %3] : memref<?x20xf64>
        }
        affine.store %cst_8, %arg3[19, %1] : memref<?x20xf64>
        affine.for %arg8 = 0 to 18 {
          %3 = affine.apply #map(%arg8)
          %4 = affine.load %arg4[%1, -%3 + 19] : memref<?x20xf64>
          %5 = affine.load %arg3[-%3 + 20, %1] : memref<?x20xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = affine.load %arg5[%1, -%3 + 19] : memref<?x20xf64>
          %8 = arith.addf %6, %7 : f64
          affine.store %8, %arg3[-%3 + 19, %1] : memref<?x20xf64>
        }
      }
      affine.for %arg7 = 0 to 18 {
        %1 = affine.apply #map(%arg7)
        affine.store %cst_8, %arg2[%1, 0] : memref<?x20xf64>
        affine.store %cst_7, %arg4[%1, 0] : memref<?x20xf64>
        %2 = affine.load %arg2[%1, 0] : memref<?x20xf64>
        affine.store %2, %arg5[%1, 0] : memref<?x20xf64>
        affine.for %arg8 = 0 to 18 {
          %3 = affine.apply #map(%arg8)
          %4 = affine.load %arg4[%1, %3 - 1] : memref<?x20xf64>
          %5 = arith.mulf %4, %cst_2 : f64
          %6 = arith.addf %5, %cst_4 : f64
          %7 = arith.divf %cst, %6 : f64
          affine.store %7, %arg4[%1, %3] : memref<?x20xf64>
          %8 = affine.load %arg3[%1 - 1, %3] : memref<?x20xf64>
          %9 = arith.mulf %8, %cst_6 : f64
          %10 = affine.load %arg3[%1, %3] : memref<?x20xf64>
          %11 = arith.mulf %10, %cst_1 : f64
          %12 = arith.addf %9, %11 : f64
          %13 = affine.load %arg3[%1 + 1, %3] : memref<?x20xf64>
          %14 = arith.mulf %13, %cst_3 : f64
          %15 = arith.subf %12, %14 : f64
          %16 = affine.load %arg5[%1, %3 - 1] : memref<?x20xf64>
          %17 = arith.mulf %16, %cst_2 : f64
          %18 = arith.subf %15, %17 : f64
          %19 = arith.divf %18, %6 : f64
          affine.store %19, %arg5[%1, %3] : memref<?x20xf64>
        }
        affine.store %cst_8, %arg2[%1, 19] : memref<?x20xf64>
        affine.for %arg8 = 0 to 18 {
          %3 = affine.apply #map(%arg8)
          %4 = affine.load %arg4[%1, -%3 + 19] : memref<?x20xf64>
          %5 = affine.load %arg2[%1, -%3 + 20] : memref<?x20xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = affine.load %arg5[%1, -%3 + 19] : memref<?x20xf64>
          %8 = arith.addf %6, %7 : f64
          affine.store %8, %arg2[%1, -%3 + 19] : memref<?x20xf64>
        }
      }
    }
    return
  }
}

