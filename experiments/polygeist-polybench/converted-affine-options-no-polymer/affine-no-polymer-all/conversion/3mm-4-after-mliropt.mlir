#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 + 16)>
module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg12) = (0) to (16) {
      affine.for %arg13 = 0 to 18 {
        affine.for %arg14 = 0 to 1 {
          %0 = affine.apply #map(%arg12, %arg14)
          affine.for %arg15 = 0 to 1 {
            %1 = affine.apply #map(%arg13, %arg15)
            affine.store %cst, %arg5[%0, %1] : memref<?x18xf64>
            affine.for %arg16 = 0 to 5 {
              %2 = affine.apply #map1(%arg16)
              %3 = affine.load %arg6[%0, %2] : memref<?x20xf64>
              %4 = affine.load %arg7[%2, %1] : memref<?x18xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = affine.load %arg5[%0, %1] : memref<?x18xf64>
              %7 = arith.addf %6, %5 : f64
              affine.store %7, %arg5[%0, %1] : memref<?x18xf64>
              %8 = affine.apply #map2(%2)
              %9 = affine.load %arg6[%0, %8] : memref<?x20xf64>
              %10 = affine.load %arg7[%8, %1] : memref<?x18xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = affine.load %arg5[%0, %1] : memref<?x18xf64>
              %13 = arith.addf %12, %11 : f64
              affine.store %13, %arg5[%0, %1] : memref<?x18xf64>
              %14 = affine.apply #map3(%2)
              %15 = affine.load %arg6[%0, %14] : memref<?x20xf64>
              %16 = affine.load %arg7[%14, %1] : memref<?x18xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = affine.load %arg5[%0, %1] : memref<?x18xf64>
              %19 = arith.addf %18, %17 : f64
              affine.store %19, %arg5[%0, %1] : memref<?x18xf64>
              %20 = affine.apply #map4(%2)
              %21 = affine.load %arg6[%0, %20] : memref<?x20xf64>
              %22 = affine.load %arg7[%20, %1] : memref<?x18xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = affine.load %arg5[%0, %1] : memref<?x18xf64>
              %25 = arith.addf %24, %23 : f64
              affine.store %25, %arg5[%0, %1] : memref<?x18xf64>
            }
          }
        }
      }
    }
    affine.parallel (%arg12) = (0) to (18) {
      affine.for %arg13 = 0 to 22 {
        affine.for %arg14 = 0 to 1 {
          %0 = affine.apply #map(%arg12, %arg14)
          affine.for %arg15 = 0 to 1 {
            %1 = affine.apply #map(%arg13, %arg15)
            affine.store %cst, %arg8[%0, %1] : memref<?x22xf64>
            affine.for %arg16 = 0 to 6 {
              %2 = affine.apply #map1(%arg16)
              %3 = affine.load %arg9[%0, %2] : memref<?x24xf64>
              %4 = affine.load %arg10[%2, %1] : memref<?x22xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = affine.load %arg8[%0, %1] : memref<?x22xf64>
              %7 = arith.addf %6, %5 : f64
              affine.store %7, %arg8[%0, %1] : memref<?x22xf64>
              %8 = affine.apply #map2(%2)
              %9 = affine.load %arg9[%0, %8] : memref<?x24xf64>
              %10 = affine.load %arg10[%8, %1] : memref<?x22xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = affine.load %arg8[%0, %1] : memref<?x22xf64>
              %13 = arith.addf %12, %11 : f64
              affine.store %13, %arg8[%0, %1] : memref<?x22xf64>
              %14 = affine.apply #map3(%2)
              %15 = affine.load %arg9[%0, %14] : memref<?x24xf64>
              %16 = affine.load %arg10[%14, %1] : memref<?x22xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = affine.load %arg8[%0, %1] : memref<?x22xf64>
              %19 = arith.addf %18, %17 : f64
              affine.store %19, %arg8[%0, %1] : memref<?x22xf64>
              %20 = affine.apply #map4(%2)
              %21 = affine.load %arg9[%0, %20] : memref<?x24xf64>
              %22 = affine.load %arg10[%20, %1] : memref<?x22xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = affine.load %arg8[%0, %1] : memref<?x22xf64>
              %25 = arith.addf %24, %23 : f64
              affine.store %25, %arg8[%0, %1] : memref<?x22xf64>
            }
          }
        }
      }
    }
    affine.parallel (%arg12) = (0) to (16) {
      affine.for %arg13 = 0 to 22 {
        affine.for %arg14 = 0 to 1 {
          %0 = affine.apply #map(%arg12, %arg14)
          affine.for %arg15 = 0 to 1 {
            %1 = affine.apply #map(%arg13, %arg15)
            affine.store %cst, %arg11[%0, %1] : memref<?x22xf64>
            affine.for %arg16 = 0 to 4 {
              %2 = affine.apply #map1(%arg16)
              %3 = affine.load %arg5[%0, %2] : memref<?x18xf64>
              %4 = affine.load %arg8[%2, %1] : memref<?x22xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = affine.load %arg11[%0, %1] : memref<?x22xf64>
              %7 = arith.addf %6, %5 : f64
              affine.store %7, %arg11[%0, %1] : memref<?x22xf64>
              %8 = affine.apply #map2(%2)
              %9 = affine.load %arg5[%0, %8] : memref<?x18xf64>
              %10 = affine.load %arg8[%8, %1] : memref<?x22xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = affine.load %arg11[%0, %1] : memref<?x22xf64>
              %13 = arith.addf %12, %11 : f64
              affine.store %13, %arg11[%0, %1] : memref<?x22xf64>
              %14 = affine.apply #map3(%2)
              %15 = affine.load %arg5[%0, %14] : memref<?x18xf64>
              %16 = affine.load %arg8[%14, %1] : memref<?x22xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = affine.load %arg11[%0, %1] : memref<?x22xf64>
              %19 = arith.addf %18, %17 : f64
              affine.store %19, %arg11[%0, %1] : memref<?x22xf64>
              %20 = affine.apply #map4(%2)
              %21 = affine.load %arg5[%0, %20] : memref<?x18xf64>
              %22 = affine.load %arg8[%20, %1] : memref<?x22xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = affine.load %arg11[%0, %1] : memref<?x22xf64>
              %25 = arith.addf %24, %23 : f64
              affine.store %25, %arg11[%0, %1] : memref<?x22xf64>
            }
            affine.for %arg16 = 0 to 2 {
              %2 = affine.apply #map5(%arg16)
              %3 = affine.load %arg5[%0, %2] : memref<?x18xf64>
              %4 = affine.load %arg8[%2, %1] : memref<?x22xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = affine.load %arg11[%0, %1] : memref<?x22xf64>
              %7 = arith.addf %6, %5 : f64
              affine.store %7, %arg11[%0, %1] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

