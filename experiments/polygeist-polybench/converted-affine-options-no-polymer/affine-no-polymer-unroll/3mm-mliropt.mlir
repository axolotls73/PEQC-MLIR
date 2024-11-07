#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg12 = 0 to 16 {
      affine.for %arg13 = 0 to 18 {
        affine.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
        affine.for %arg14 = 0 to 20 step 4 {
          %0 = affine.load %arg6[%arg12, %arg14] : memref<?x20xf64>
          %1 = affine.load %arg7[%arg14, %arg13] : memref<?x18xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg5[%arg12, %arg13] : memref<?x18xf64>
          %4 = arith.addf %3, %2 : f64
          affine.store %4, %arg5[%arg12, %arg13] : memref<?x18xf64>
          %5 = affine.apply #map(%arg14)
          %6 = affine.load %arg6[%arg12, %5] : memref<?x20xf64>
          %7 = affine.load %arg7[%5, %arg13] : memref<?x18xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %arg5[%arg12, %arg13] : memref<?x18xf64>
          %10 = arith.addf %9, %8 : f64
          affine.store %10, %arg5[%arg12, %arg13] : memref<?x18xf64>
          %11 = affine.apply #map1(%arg14)
          %12 = affine.load %arg6[%arg12, %11] : memref<?x20xf64>
          %13 = affine.load %arg7[%11, %arg13] : memref<?x18xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = affine.load %arg5[%arg12, %arg13] : memref<?x18xf64>
          %16 = arith.addf %15, %14 : f64
          affine.store %16, %arg5[%arg12, %arg13] : memref<?x18xf64>
          %17 = affine.apply #map2(%arg14)
          %18 = affine.load %arg6[%arg12, %17] : memref<?x20xf64>
          %19 = affine.load %arg7[%17, %arg13] : memref<?x18xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = affine.load %arg5[%arg12, %arg13] : memref<?x18xf64>
          %22 = arith.addf %21, %20 : f64
          affine.store %22, %arg5[%arg12, %arg13] : memref<?x18xf64>
        }
      }
    }
    affine.for %arg12 = 0 to 18 {
      affine.for %arg13 = 0 to 22 {
        affine.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
        affine.for %arg14 = 0 to 24 step 4 {
          %0 = affine.load %arg9[%arg12, %arg14] : memref<?x24xf64>
          %1 = affine.load %arg10[%arg14, %arg13] : memref<?x22xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          affine.store %4, %arg8[%arg12, %arg13] : memref<?x22xf64>
          %5 = affine.apply #map(%arg14)
          %6 = affine.load %arg9[%arg12, %5] : memref<?x24xf64>
          %7 = affine.load %arg10[%5, %arg13] : memref<?x22xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %10 = arith.addf %9, %8 : f64
          affine.store %10, %arg8[%arg12, %arg13] : memref<?x22xf64>
          %11 = affine.apply #map1(%arg14)
          %12 = affine.load %arg9[%arg12, %11] : memref<?x24xf64>
          %13 = affine.load %arg10[%11, %arg13] : memref<?x22xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = affine.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %16 = arith.addf %15, %14 : f64
          affine.store %16, %arg8[%arg12, %arg13] : memref<?x22xf64>
          %17 = affine.apply #map2(%arg14)
          %18 = affine.load %arg9[%arg12, %17] : memref<?x24xf64>
          %19 = affine.load %arg10[%17, %arg13] : memref<?x22xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = affine.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %22 = arith.addf %21, %20 : f64
          affine.store %22, %arg8[%arg12, %arg13] : memref<?x22xf64>
        }
      }
    }
    affine.for %arg12 = 0 to 16 {
      affine.for %arg13 = 0 to 22 {
        affine.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        affine.for %arg14 = 0 to 16 step 4 {
          %0 = affine.load %arg5[%arg12, %arg14] : memref<?x18xf64>
          %1 = affine.load %arg8[%arg14, %arg13] : memref<?x22xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          affine.store %4, %arg11[%arg12, %arg13] : memref<?x22xf64>
          %5 = affine.apply #map(%arg14)
          %6 = affine.load %arg5[%arg12, %5] : memref<?x18xf64>
          %7 = affine.load %arg8[%5, %arg13] : memref<?x22xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %10 = arith.addf %9, %8 : f64
          affine.store %10, %arg11[%arg12, %arg13] : memref<?x22xf64>
          %11 = affine.apply #map1(%arg14)
          %12 = affine.load %arg5[%arg12, %11] : memref<?x18xf64>
          %13 = affine.load %arg8[%11, %arg13] : memref<?x22xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = affine.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %16 = arith.addf %15, %14 : f64
          affine.store %16, %arg11[%arg12, %arg13] : memref<?x22xf64>
          %17 = affine.apply #map2(%arg14)
          %18 = affine.load %arg5[%arg12, %17] : memref<?x18xf64>
          %19 = affine.load %arg8[%17, %arg13] : memref<?x22xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = affine.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %22 = arith.addf %21, %20 : f64
          affine.store %22, %arg11[%arg12, %arg13] : memref<?x22xf64>
        }
        affine.for %arg14 = 16 to 18 {
          %0 = affine.load %arg5[%arg12, %arg14] : memref<?x18xf64>
          %1 = affine.load %arg8[%arg14, %arg13] : memref<?x22xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          affine.store %4, %arg11[%arg12, %arg13] : memref<?x22xf64>
        }
      }
    }
    return
  }
}

