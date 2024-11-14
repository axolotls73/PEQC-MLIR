#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 20)>
#map2 = affine_map<(d0) -> (-d0 + 17)>
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
    affine.for %arg6 = 0 to 20 step 32 {
      affine.for %arg7 = #map(%arg6) to #map1(%arg6) {
        affine.for %arg8 = 0 to 18 {
          affine.store %cst_8, %arg3[0, %arg8 + 1] : memref<?x20xf64>
          affine.store %cst_7, %arg4[%arg8 + 1, 0] : memref<?x20xf64>
          %0 = affine.load %arg3[0, %arg8 + 1] : memref<?x20xf64>
          affine.store %0, %arg5[%arg8 + 1, 0] : memref<?x20xf64>
          affine.for %arg9 = 0 to 18 {
            %1 = affine.load %arg4[%arg8 + 1, %arg9] : memref<?x20xf64>
            %2 = arith.mulf %1, %cst_3 : f64
            %3 = arith.addf %2, %cst_5 : f64
            %4 = arith.divf %cst_6, %3 : f64
            affine.store %4, %arg4[%arg8 + 1, %arg9 + 1] : memref<?x20xf64>
            %5 = affine.load %arg2[%arg9 + 1, %arg8] : memref<?x20xf64>
            %6 = arith.mulf %5, %cst : f64
            %7 = affine.load %arg2[%arg9 + 1, %arg8 + 1] : memref<?x20xf64>
            %8 = arith.mulf %7, %cst_0 : f64
            %9 = arith.addf %6, %8 : f64
            %10 = affine.load %arg2[%arg9 + 1, %arg8 + 2] : memref<?x20xf64>
            %11 = arith.mulf %10, %cst_2 : f64
            %12 = arith.subf %9, %11 : f64
            %13 = affine.load %arg5[%arg8 + 1, %arg9] : memref<?x20xf64>
            %14 = arith.mulf %13, %cst_3 : f64
            %15 = arith.subf %12, %14 : f64
            %16 = arith.divf %15, %3 : f64
            affine.store %16, %arg5[%arg8 + 1, %arg9 + 1] : memref<?x20xf64>
          }
          affine.store %cst_8, %arg3[19, %arg8 + 1] : memref<?x20xf64>
          affine.for %arg9 = 0 to 18 {
            %1 = affine.apply #map2(%arg9)
            %2 = affine.load %arg4[%arg8 + 1, %1] : memref<?x20xf64>
            %3 = arith.mulf %2, %cst_3 : f64
            %4 = arith.addf %3, %cst_5 : f64
            %5 = arith.divf %cst_6, %4 : f64
            affine.store %5, %arg4[%arg8 + 1, %1 + 1] : memref<?x20xf64>
            %6 = affine.load %arg2[%1 + 1, %arg8] : memref<?x20xf64>
            %7 = arith.mulf %6, %cst : f64
            %8 = affine.load %arg2[%1 + 1, %arg8 + 1] : memref<?x20xf64>
            %9 = arith.mulf %8, %cst_0 : f64
            %10 = arith.addf %7, %9 : f64
            %11 = affine.load %arg2[%1 + 1, %arg8 + 2] : memref<?x20xf64>
            %12 = arith.mulf %11, %cst_2 : f64
            %13 = arith.subf %10, %12 : f64
            %14 = affine.load %arg5[%arg8 + 1, %1] : memref<?x20xf64>
            %15 = arith.mulf %14, %cst_3 : f64
            %16 = arith.subf %13, %15 : f64
            %17 = arith.divf %16, %4 : f64
            affine.store %17, %arg5[%arg8 + 1, %1 + 1] : memref<?x20xf64>
            %18 = affine.load %arg4[%arg8 + 1, -%arg9 + 18] : memref<?x20xf64>
            %19 = affine.load %arg3[-%arg9 + 19, %arg8 + 1] : memref<?x20xf64>
            %20 = arith.mulf %18, %19 : f64
            %21 = affine.load %arg5[%arg8 + 1, -%arg9 + 18] : memref<?x20xf64>
            %22 = arith.addf %20, %21 : f64
            affine.store %22, %arg3[-%arg9 + 18, %arg8 + 1] : memref<?x20xf64>
          }
        }
        affine.for %arg8 = 0 to 18 {
          affine.store %cst_8, %arg2[%arg8 + 1, 0] : memref<?x20xf64>
          affine.store %cst_7, %arg4[%arg8 + 1, 0] : memref<?x20xf64>
          %0 = affine.load %arg2[%arg8 + 1, 0] : memref<?x20xf64>
          affine.store %0, %arg5[%arg8 + 1, 0] : memref<?x20xf64>
          affine.for %arg9 = 0 to 18 {
            %1 = affine.load %arg4[%arg8 + 1, %arg9] : memref<?x20xf64>
            %2 = arith.mulf %1, %cst_2 : f64
            %3 = arith.addf %2, %cst_4 : f64
            %4 = arith.divf %cst, %3 : f64
            affine.store %4, %arg4[%arg8 + 1, %arg9 + 1] : memref<?x20xf64>
            %5 = affine.load %arg3[%arg8, %arg9 + 1] : memref<?x20xf64>
            %6 = arith.mulf %5, %cst_6 : f64
            %7 = affine.load %arg3[%arg8 + 1, %arg9 + 1] : memref<?x20xf64>
            %8 = arith.mulf %7, %cst_1 : f64
            %9 = arith.addf %6, %8 : f64
            %10 = affine.load %arg3[%arg8 + 2, %arg9 + 1] : memref<?x20xf64>
            %11 = arith.mulf %10, %cst_3 : f64
            %12 = arith.subf %9, %11 : f64
            %13 = affine.load %arg5[%arg8 + 1, %arg9] : memref<?x20xf64>
            %14 = arith.mulf %13, %cst_2 : f64
            %15 = arith.subf %12, %14 : f64
            %16 = arith.divf %15, %3 : f64
            affine.store %16, %arg5[%arg8 + 1, %arg9 + 1] : memref<?x20xf64>
          }
          affine.store %cst_8, %arg2[%arg8 + 1, 19] : memref<?x20xf64>
          affine.for %arg9 = 0 to 18 {
            %1 = affine.apply #map2(%arg9)
            %2 = affine.load %arg4[%arg8 + 1, %1] : memref<?x20xf64>
            %3 = arith.mulf %2, %cst_2 : f64
            %4 = arith.addf %3, %cst_4 : f64
            %5 = arith.divf %cst, %4 : f64
            affine.store %5, %arg4[%arg8 + 1, %1 + 1] : memref<?x20xf64>
            %6 = affine.load %arg3[%arg8, %1 + 1] : memref<?x20xf64>
            %7 = arith.mulf %6, %cst_6 : f64
            %8 = affine.load %arg3[%arg8 + 1, %1 + 1] : memref<?x20xf64>
            %9 = arith.mulf %8, %cst_1 : f64
            %10 = arith.addf %7, %9 : f64
            %11 = affine.load %arg3[%arg8 + 2, %1 + 1] : memref<?x20xf64>
            %12 = arith.mulf %11, %cst_3 : f64
            %13 = arith.subf %10, %12 : f64
            %14 = affine.load %arg5[%arg8 + 1, %1] : memref<?x20xf64>
            %15 = arith.mulf %14, %cst_2 : f64
            %16 = arith.subf %13, %15 : f64
            %17 = arith.divf %16, %4 : f64
            affine.store %17, %arg5[%arg8 + 1, %1 + 1] : memref<?x20xf64>
            %18 = affine.load %arg4[%arg8 + 1, -%arg9 + 18] : memref<?x20xf64>
            %19 = affine.load %arg2[%arg8 + 1, -%arg9 + 19] : memref<?x20xf64>
            %20 = arith.mulf %18, %19 : f64
            %21 = affine.load %arg5[%arg8 + 1, -%arg9 + 18] : memref<?x20xf64>
            %22 = arith.addf %20, %21 : f64
            affine.store %22, %arg2[%arg8 + 1, -%arg9 + 18] : memref<?x20xf64>
          }
        }
      }
    }
    return
  }
}

