#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 + 20)>
#map7 = affine_map<(d0) -> (d0 + 16)>
module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg11 = 0 to 1 {
      %0 = affine.apply #map(%arg11)
      affine.for %arg12 = 0 to 1 {
        %1 = affine.apply #map(%arg12)
        affine.for %arg13 = 0 to 16 {
          %2 = affine.apply #map1(%0, %arg13)
          affine.for %arg14 = 0 to 18 {
            %3 = affine.apply #map1(%1, %arg14)
            affine.store %cst, %arg6[%2, %3] : memref<?x18xf64>
            affine.for %arg15 = 0 to 5 {
              %4 = affine.apply #map2(%arg15)
              %5 = affine.load %arg7[%2, %4] : memref<?x22xf64>
              %6 = arith.mulf %arg4, %5 : f64
              %7 = affine.load %arg8[%4, %3] : memref<?x18xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = affine.load %arg6[%2, %3] : memref<?x18xf64>
              %10 = arith.addf %9, %8 : f64
              affine.store %10, %arg6[%2, %3] : memref<?x18xf64>
              %11 = affine.apply #map3(%4)
              %12 = affine.load %arg7[%2, %11] : memref<?x22xf64>
              %13 = arith.mulf %arg4, %12 : f64
              %14 = affine.load %arg8[%11, %3] : memref<?x18xf64>
              %15 = arith.mulf %13, %14 : f64
              %16 = affine.load %arg6[%2, %3] : memref<?x18xf64>
              %17 = arith.addf %16, %15 : f64
              affine.store %17, %arg6[%2, %3] : memref<?x18xf64>
              %18 = affine.apply #map4(%4)
              %19 = affine.load %arg7[%2, %18] : memref<?x22xf64>
              %20 = arith.mulf %arg4, %19 : f64
              %21 = affine.load %arg8[%18, %3] : memref<?x18xf64>
              %22 = arith.mulf %20, %21 : f64
              %23 = affine.load %arg6[%2, %3] : memref<?x18xf64>
              %24 = arith.addf %23, %22 : f64
              affine.store %24, %arg6[%2, %3] : memref<?x18xf64>
              %25 = affine.apply #map5(%4)
              %26 = affine.load %arg7[%2, %25] : memref<?x22xf64>
              %27 = arith.mulf %arg4, %26 : f64
              %28 = affine.load %arg8[%25, %3] : memref<?x18xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = affine.load %arg6[%2, %3] : memref<?x18xf64>
              %31 = arith.addf %30, %29 : f64
              affine.store %31, %arg6[%2, %3] : memref<?x18xf64>
            }
            affine.for %arg15 = 0 to 2 {
              %4 = affine.apply #map6(%arg15)
              %5 = affine.load %arg7[%2, %4] : memref<?x22xf64>
              %6 = arith.mulf %arg4, %5 : f64
              %7 = affine.load %arg8[%4, %3] : memref<?x18xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = affine.load %arg6[%2, %3] : memref<?x18xf64>
              %10 = arith.addf %9, %8 : f64
              affine.store %10, %arg6[%2, %3] : memref<?x18xf64>
            }
          }
        }
      }
    }
    affine.for %arg11 = 0 to 1 {
      %0 = affine.apply #map(%arg11)
      affine.for %arg12 = 0 to 1 {
        %1 = affine.apply #map(%arg12)
        affine.for %arg13 = 0 to 16 {
          %2 = affine.apply #map1(%0, %arg13)
          affine.for %arg14 = 0 to 24 {
            %3 = affine.apply #map1(%1, %arg14)
            %4 = affine.load %arg10[%2, %3] : memref<?x24xf64>
            %5 = arith.mulf %4, %arg5 : f64
            affine.store %5, %arg10[%2, %3] : memref<?x24xf64>
            affine.for %arg15 = 0 to 4 {
              %6 = affine.apply #map2(%arg15)
              %7 = affine.load %arg6[%2, %6] : memref<?x18xf64>
              %8 = affine.load %arg9[%6, %3] : memref<?x24xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = affine.load %arg10[%2, %3] : memref<?x24xf64>
              %11 = arith.addf %10, %9 : f64
              affine.store %11, %arg10[%2, %3] : memref<?x24xf64>
              %12 = affine.apply #map3(%6)
              %13 = affine.load %arg6[%2, %12] : memref<?x18xf64>
              %14 = affine.load %arg9[%12, %3] : memref<?x24xf64>
              %15 = arith.mulf %13, %14 : f64
              %16 = affine.load %arg10[%2, %3] : memref<?x24xf64>
              %17 = arith.addf %16, %15 : f64
              affine.store %17, %arg10[%2, %3] : memref<?x24xf64>
              %18 = affine.apply #map4(%6)
              %19 = affine.load %arg6[%2, %18] : memref<?x18xf64>
              %20 = affine.load %arg9[%18, %3] : memref<?x24xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = affine.load %arg10[%2, %3] : memref<?x24xf64>
              %23 = arith.addf %22, %21 : f64
              affine.store %23, %arg10[%2, %3] : memref<?x24xf64>
              %24 = affine.apply #map5(%6)
              %25 = affine.load %arg6[%2, %24] : memref<?x18xf64>
              %26 = affine.load %arg9[%24, %3] : memref<?x24xf64>
              %27 = arith.mulf %25, %26 : f64
              %28 = affine.load %arg10[%2, %3] : memref<?x24xf64>
              %29 = arith.addf %28, %27 : f64
              affine.store %29, %arg10[%2, %3] : memref<?x24xf64>
            }
            affine.for %arg15 = 0 to 2 {
              %6 = affine.apply #map7(%arg15)
              %7 = affine.load %arg6[%2, %6] : memref<?x18xf64>
              %8 = affine.load %arg9[%6, %3] : memref<?x24xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = affine.load %arg10[%2, %3] : memref<?x24xf64>
              %11 = arith.addf %10, %9 : f64
              affine.store %11, %arg10[%2, %3] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

