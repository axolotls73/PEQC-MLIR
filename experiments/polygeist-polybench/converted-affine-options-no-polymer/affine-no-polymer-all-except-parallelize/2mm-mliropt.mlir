#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 + 20)>
#map6 = affine_map<(d0) -> (d0 + 16)>
module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg11) = (0) to (16) {
      affine.parallel (%arg12) = (0) to (18) {
        affine.parallel (%arg13) = (0) to (1) {
          %0 = affine.apply #map(%arg11, %arg13)
          affine.parallel (%arg14) = (0) to (1) {
            %1 = affine.apply #map(%arg12, %arg14)
            affine.store %cst, %arg6[%0, %1] : memref<?x18xf64>
            affine.for %arg15 = 0 to 5 {
              %2 = affine.apply #map1(%arg15)
              %3 = affine.load %arg7[%0, %2] : memref<?x22xf64>
              %4 = arith.mulf %arg4, %3 : f64
              %5 = affine.load %arg8[%2, %1] : memref<?x18xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = affine.load %arg6[%0, %1] : memref<?x18xf64>
              %8 = arith.addf %7, %6 : f64
              affine.store %8, %arg6[%0, %1] : memref<?x18xf64>
              %9 = affine.apply #map2(%2)
              %10 = affine.load %arg7[%0, %9] : memref<?x22xf64>
              %11 = arith.mulf %arg4, %10 : f64
              %12 = affine.load %arg8[%9, %1] : memref<?x18xf64>
              %13 = arith.mulf %11, %12 : f64
              %14 = affine.load %arg6[%0, %1] : memref<?x18xf64>
              %15 = arith.addf %14, %13 : f64
              affine.store %15, %arg6[%0, %1] : memref<?x18xf64>
              %16 = affine.apply #map3(%2)
              %17 = affine.load %arg7[%0, %16] : memref<?x22xf64>
              %18 = arith.mulf %arg4, %17 : f64
              %19 = affine.load %arg8[%16, %1] : memref<?x18xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = affine.load %arg6[%0, %1] : memref<?x18xf64>
              %22 = arith.addf %21, %20 : f64
              affine.store %22, %arg6[%0, %1] : memref<?x18xf64>
              %23 = affine.apply #map4(%2)
              %24 = affine.load %arg7[%0, %23] : memref<?x22xf64>
              %25 = arith.mulf %arg4, %24 : f64
              %26 = affine.load %arg8[%23, %1] : memref<?x18xf64>
              %27 = arith.mulf %25, %26 : f64
              %28 = affine.load %arg6[%0, %1] : memref<?x18xf64>
              %29 = arith.addf %28, %27 : f64
              affine.store %29, %arg6[%0, %1] : memref<?x18xf64>
            }
            affine.for %arg15 = 0 to 2 {
              %2 = affine.apply #map5(%arg15)
              %3 = affine.load %arg7[%0, %2] : memref<?x22xf64>
              %4 = arith.mulf %arg4, %3 : f64
              %5 = affine.load %arg8[%2, %1] : memref<?x18xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = affine.load %arg6[%0, %1] : memref<?x18xf64>
              %8 = arith.addf %7, %6 : f64
              affine.store %8, %arg6[%0, %1] : memref<?x18xf64>
            }
          }
        }
      }
    }
    affine.parallel (%arg11) = (0) to (16) {
      affine.parallel (%arg12) = (0) to (24) {
        affine.parallel (%arg13) = (0) to (1) {
          %0 = affine.apply #map(%arg11, %arg13)
          affine.parallel (%arg14) = (0) to (1) {
            %1 = affine.apply #map(%arg12, %arg14)
            %2 = affine.load %arg10[%0, %1] : memref<?x24xf64>
            %3 = arith.mulf %2, %arg5 : f64
            affine.store %3, %arg10[%0, %1] : memref<?x24xf64>
            affine.for %arg15 = 0 to 4 {
              %4 = affine.apply #map1(%arg15)
              %5 = affine.load %arg6[%0, %4] : memref<?x18xf64>
              %6 = affine.load %arg9[%4, %1] : memref<?x24xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = affine.load %arg10[%0, %1] : memref<?x24xf64>
              %9 = arith.addf %8, %7 : f64
              affine.store %9, %arg10[%0, %1] : memref<?x24xf64>
              %10 = affine.apply #map2(%4)
              %11 = affine.load %arg6[%0, %10] : memref<?x18xf64>
              %12 = affine.load %arg9[%10, %1] : memref<?x24xf64>
              %13 = arith.mulf %11, %12 : f64
              %14 = affine.load %arg10[%0, %1] : memref<?x24xf64>
              %15 = arith.addf %14, %13 : f64
              affine.store %15, %arg10[%0, %1] : memref<?x24xf64>
              %16 = affine.apply #map3(%4)
              %17 = affine.load %arg6[%0, %16] : memref<?x18xf64>
              %18 = affine.load %arg9[%16, %1] : memref<?x24xf64>
              %19 = arith.mulf %17, %18 : f64
              %20 = affine.load %arg10[%0, %1] : memref<?x24xf64>
              %21 = arith.addf %20, %19 : f64
              affine.store %21, %arg10[%0, %1] : memref<?x24xf64>
              %22 = affine.apply #map4(%4)
              %23 = affine.load %arg6[%0, %22] : memref<?x18xf64>
              %24 = affine.load %arg9[%22, %1] : memref<?x24xf64>
              %25 = arith.mulf %23, %24 : f64
              %26 = affine.load %arg10[%0, %1] : memref<?x24xf64>
              %27 = arith.addf %26, %25 : f64
              affine.store %27, %arg10[%0, %1] : memref<?x24xf64>
            }
            affine.for %arg15 = 0 to 2 {
              %4 = affine.apply #map6(%arg15)
              %5 = affine.load %arg6[%0, %4] : memref<?x18xf64>
              %6 = affine.load %arg9[%4, %1] : memref<?x24xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = affine.load %arg10[%0, %1] : memref<?x24xf64>
              %9 = arith.addf %8, %7 : f64
              affine.store %9, %arg10[%0, %1] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

