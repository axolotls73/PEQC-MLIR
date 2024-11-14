#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 + 16)>
module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg12) = (0) to (1) {
      %0 = affine.apply #map(%arg12)
      affine.for %arg13 = 0 to 1 {
        %1 = affine.apply #map(%arg13)
        affine.for %arg14 = 0 to 16 {
          %2 = affine.apply #map1(%0, %arg14)
          affine.for %arg15 = 0 to 18 {
            %3 = affine.apply #map1(%1, %arg15)
            affine.store %cst, %arg5[%2, %3] : memref<?x18xf64>
            affine.for %arg16 = 0 to 5 {
              %4 = affine.apply #map2(%arg16)
              %5 = affine.load %arg6[%2, %4] : memref<?x20xf64>
              %6 = affine.load %arg7[%4, %3] : memref<?x18xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = affine.load %arg5[%2, %3] : memref<?x18xf64>
              %9 = arith.addf %8, %7 : f64
              affine.store %9, %arg5[%2, %3] : memref<?x18xf64>
              %10 = affine.apply #map3(%4)
              %11 = affine.load %arg6[%2, %10] : memref<?x20xf64>
              %12 = affine.load %arg7[%10, %3] : memref<?x18xf64>
              %13 = arith.mulf %11, %12 : f64
              %14 = affine.load %arg5[%2, %3] : memref<?x18xf64>
              %15 = arith.addf %14, %13 : f64
              affine.store %15, %arg5[%2, %3] : memref<?x18xf64>
              %16 = affine.apply #map4(%4)
              %17 = affine.load %arg6[%2, %16] : memref<?x20xf64>
              %18 = affine.load %arg7[%16, %3] : memref<?x18xf64>
              %19 = arith.mulf %17, %18 : f64
              %20 = affine.load %arg5[%2, %3] : memref<?x18xf64>
              %21 = arith.addf %20, %19 : f64
              affine.store %21, %arg5[%2, %3] : memref<?x18xf64>
              %22 = affine.apply #map5(%4)
              %23 = affine.load %arg6[%2, %22] : memref<?x20xf64>
              %24 = affine.load %arg7[%22, %3] : memref<?x18xf64>
              %25 = arith.mulf %23, %24 : f64
              %26 = affine.load %arg5[%2, %3] : memref<?x18xf64>
              %27 = arith.addf %26, %25 : f64
              affine.store %27, %arg5[%2, %3] : memref<?x18xf64>
            }
          }
        }
      }
    }
    affine.parallel (%arg12) = (0) to (1) {
      %0 = affine.apply #map(%arg12)
      affine.for %arg13 = 0 to 1 {
        %1 = affine.apply #map(%arg13)
        affine.for %arg14 = 0 to 18 {
          %2 = affine.apply #map1(%0, %arg14)
          affine.for %arg15 = 0 to 22 {
            %3 = affine.apply #map1(%1, %arg15)
            affine.store %cst, %arg8[%2, %3] : memref<?x22xf64>
            affine.for %arg16 = 0 to 6 {
              %4 = affine.apply #map2(%arg16)
              %5 = affine.load %arg9[%2, %4] : memref<?x24xf64>
              %6 = affine.load %arg10[%4, %3] : memref<?x22xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = affine.load %arg8[%2, %3] : memref<?x22xf64>
              %9 = arith.addf %8, %7 : f64
              affine.store %9, %arg8[%2, %3] : memref<?x22xf64>
              %10 = affine.apply #map3(%4)
              %11 = affine.load %arg9[%2, %10] : memref<?x24xf64>
              %12 = affine.load %arg10[%10, %3] : memref<?x22xf64>
              %13 = arith.mulf %11, %12 : f64
              %14 = affine.load %arg8[%2, %3] : memref<?x22xf64>
              %15 = arith.addf %14, %13 : f64
              affine.store %15, %arg8[%2, %3] : memref<?x22xf64>
              %16 = affine.apply #map4(%4)
              %17 = affine.load %arg9[%2, %16] : memref<?x24xf64>
              %18 = affine.load %arg10[%16, %3] : memref<?x22xf64>
              %19 = arith.mulf %17, %18 : f64
              %20 = affine.load %arg8[%2, %3] : memref<?x22xf64>
              %21 = arith.addf %20, %19 : f64
              affine.store %21, %arg8[%2, %3] : memref<?x22xf64>
              %22 = affine.apply #map5(%4)
              %23 = affine.load %arg9[%2, %22] : memref<?x24xf64>
              %24 = affine.load %arg10[%22, %3] : memref<?x22xf64>
              %25 = arith.mulf %23, %24 : f64
              %26 = affine.load %arg8[%2, %3] : memref<?x22xf64>
              %27 = arith.addf %26, %25 : f64
              affine.store %27, %arg8[%2, %3] : memref<?x22xf64>
            }
          }
        }
      }
    }
    affine.parallel (%arg12) = (0) to (1) {
      %0 = affine.apply #map(%arg12)
      affine.for %arg13 = 0 to 1 {
        %1 = affine.apply #map(%arg13)
        affine.for %arg14 = 0 to 16 {
          %2 = affine.apply #map1(%0, %arg14)
          affine.for %arg15 = 0 to 22 {
            %3 = affine.apply #map1(%1, %arg15)
            affine.store %cst, %arg11[%2, %3] : memref<?x22xf64>
            affine.for %arg16 = 0 to 4 {
              %4 = affine.apply #map2(%arg16)
              %5 = affine.load %arg5[%2, %4] : memref<?x18xf64>
              %6 = affine.load %arg8[%4, %3] : memref<?x22xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = affine.load %arg11[%2, %3] : memref<?x22xf64>
              %9 = arith.addf %8, %7 : f64
              affine.store %9, %arg11[%2, %3] : memref<?x22xf64>
              %10 = affine.apply #map3(%4)
              %11 = affine.load %arg5[%2, %10] : memref<?x18xf64>
              %12 = affine.load %arg8[%10, %3] : memref<?x22xf64>
              %13 = arith.mulf %11, %12 : f64
              %14 = affine.load %arg11[%2, %3] : memref<?x22xf64>
              %15 = arith.addf %14, %13 : f64
              affine.store %15, %arg11[%2, %3] : memref<?x22xf64>
              %16 = affine.apply #map4(%4)
              %17 = affine.load %arg5[%2, %16] : memref<?x18xf64>
              %18 = affine.load %arg8[%16, %3] : memref<?x22xf64>
              %19 = arith.mulf %17, %18 : f64
              %20 = affine.load %arg11[%2, %3] : memref<?x22xf64>
              %21 = arith.addf %20, %19 : f64
              affine.store %21, %arg11[%2, %3] : memref<?x22xf64>
              %22 = affine.apply #map5(%4)
              %23 = affine.load %arg5[%2, %22] : memref<?x18xf64>
              %24 = affine.load %arg8[%22, %3] : memref<?x22xf64>
              %25 = arith.mulf %23, %24 : f64
              %26 = affine.load %arg11[%2, %3] : memref<?x22xf64>
              %27 = arith.addf %26, %25 : f64
              affine.store %27, %arg11[%2, %3] : memref<?x22xf64>
            }
            affine.for %arg16 = 0 to 2 {
              %4 = affine.apply #map6(%arg16)
              %5 = affine.load %arg5[%2, %4] : memref<?x18xf64>
              %6 = affine.load %arg8[%4, %3] : memref<?x22xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = affine.load %arg11[%2, %3] : memref<?x22xf64>
              %9 = arith.addf %8, %7 : f64
              affine.store %9, %arg11[%2, %3] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

