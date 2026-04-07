#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg11 = 0 to 16 {
      affine.for %arg12 = 0 to 18 {
        affine.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
        affine.for %arg13 = 0 to 20 step 4 {
          %0 = affine.load %arg7[%arg11, %arg13] : memref<?x22xf64>
          %1 = arith.mulf %arg4, %0 : f64
          %2 = affine.load %arg8[%arg13, %arg12] : memref<?x18xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg6[%arg11, %arg12] : memref<?x18xf64>
          %5 = arith.addf %4, %3 : f64
          affine.store %5, %arg6[%arg11, %arg12] : memref<?x18xf64>
          %6 = affine.apply #map(%arg13)
          %7 = affine.load %arg7[%arg11, %6] : memref<?x22xf64>
          %8 = arith.mulf %arg4, %7 : f64
          %9 = affine.load %arg8[%6, %arg12] : memref<?x18xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %arg6[%arg11, %arg12] : memref<?x18xf64>
          %12 = arith.addf %11, %10 : f64
          affine.store %12, %arg6[%arg11, %arg12] : memref<?x18xf64>
          %13 = affine.apply #map1(%arg13)
          %14 = affine.load %arg7[%arg11, %13] : memref<?x22xf64>
          %15 = arith.mulf %arg4, %14 : f64
          %16 = affine.load %arg8[%13, %arg12] : memref<?x18xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = affine.load %arg6[%arg11, %arg12] : memref<?x18xf64>
          %19 = arith.addf %18, %17 : f64
          affine.store %19, %arg6[%arg11, %arg12] : memref<?x18xf64>
          %20 = affine.apply #map2(%arg13)
          %21 = affine.load %arg7[%arg11, %20] : memref<?x22xf64>
          %22 = arith.mulf %arg4, %21 : f64
          %23 = affine.load %arg8[%20, %arg12] : memref<?x18xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = affine.load %arg6[%arg11, %arg12] : memref<?x18xf64>
          %26 = arith.addf %25, %24 : f64
          affine.store %26, %arg6[%arg11, %arg12] : memref<?x18xf64>
        }
        affine.for %arg13 = 20 to 22 {
          %0 = affine.load %arg7[%arg11, %arg13] : memref<?x22xf64>
          %1 = arith.mulf %arg4, %0 : f64
          %2 = affine.load %arg8[%arg13, %arg12] : memref<?x18xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = affine.load %arg6[%arg11, %arg12] : memref<?x18xf64>
          %5 = arith.addf %4, %3 : f64
          affine.store %5, %arg6[%arg11, %arg12] : memref<?x18xf64>
        }
      }
    }
    affine.for %arg11 = 0 to 16 {
      affine.for %arg12 = 0 to 24 {
        %0 = affine.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %1 = arith.mulf %0, %arg5 : f64
        affine.store %1, %arg10[%arg11, %arg12] : memref<?x24xf64>
        affine.for %arg13 = 0 to 16 step 4 {
          %2 = affine.load %arg6[%arg11, %arg13] : memref<?x18xf64>
          %3 = affine.load %arg9[%arg13, %arg12] : memref<?x24xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg10[%arg11, %arg12] : memref<?x24xf64>
          %6 = arith.addf %5, %4 : f64
          affine.store %6, %arg10[%arg11, %arg12] : memref<?x24xf64>
          %7 = affine.apply #map(%arg13)
          %8 = affine.load %arg6[%arg11, %7] : memref<?x18xf64>
          %9 = affine.load %arg9[%7, %arg12] : memref<?x24xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %arg10[%arg11, %arg12] : memref<?x24xf64>
          %12 = arith.addf %11, %10 : f64
          affine.store %12, %arg10[%arg11, %arg12] : memref<?x24xf64>
          %13 = affine.apply #map1(%arg13)
          %14 = affine.load %arg6[%arg11, %13] : memref<?x18xf64>
          %15 = affine.load %arg9[%13, %arg12] : memref<?x24xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = affine.load %arg10[%arg11, %arg12] : memref<?x24xf64>
          %18 = arith.addf %17, %16 : f64
          affine.store %18, %arg10[%arg11, %arg12] : memref<?x24xf64>
          %19 = affine.apply #map2(%arg13)
          %20 = affine.load %arg6[%arg11, %19] : memref<?x18xf64>
          %21 = affine.load %arg9[%19, %arg12] : memref<?x24xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = affine.load %arg10[%arg11, %arg12] : memref<?x24xf64>
          %24 = arith.addf %23, %22 : f64
          affine.store %24, %arg10[%arg11, %arg12] : memref<?x24xf64>
        }
        affine.for %arg13 = 16 to 18 {
          %2 = affine.load %arg6[%arg11, %arg13] : memref<?x18xf64>
          %3 = affine.load %arg9[%arg13, %arg12] : memref<?x24xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg10[%arg11, %arg12] : memref<?x24xf64>
          %6 = arith.addf %5, %4 : f64
          affine.store %6, %arg10[%arg11, %arg12] : memref<?x24xf64>
        }
      }
    }
    return
  }
}

