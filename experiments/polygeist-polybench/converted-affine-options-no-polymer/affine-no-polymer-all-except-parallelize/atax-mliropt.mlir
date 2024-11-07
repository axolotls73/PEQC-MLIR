#map = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 + 40)>
#map6 = affine_map<(d0, d1) -> (d0 + d1)>
module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 10 {
      %0 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 1 {
        %1 = affine.apply #map1(%0, %arg7)
        affine.store %cst, %arg4[%1] : memref<?xf64>
        %2 = affine.apply #map2(%1)
        affine.store %cst, %arg4[%2] : memref<?xf64>
        %3 = affine.apply #map3(%1)
        affine.store %cst, %arg4[%3] : memref<?xf64>
        %4 = affine.apply #map4(%1)
        affine.store %cst, %arg4[%4] : memref<?xf64>
      }
    }
    affine.parallel (%arg6) = (0) to (2) {
      %0 = affine.apply #map5(%arg6)
      affine.parallel (%arg7) = (0) to (1) {
        %1 = affine.apply #map6(%0, %arg7)
        affine.store %cst, %arg4[%1] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 38 {
      affine.parallel (%arg7) = (0) to (1) {
        %0 = affine.apply #map6(%arg6, %arg7)
        affine.store %cst, %arg5[%0] : memref<?xf64>
        affine.for %arg8 = 0 to 10 {
          %1 = affine.apply #map(%arg8)
          %2 = affine.load %arg5[%0] : memref<?xf64>
          %3 = affine.load %arg2[%0, %1] : memref<?x42xf64>
          %4 = affine.load %arg3[%1] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          affine.store %6, %arg5[%0] : memref<?xf64>
          %7 = affine.apply #map2(%1)
          %8 = affine.load %arg5[%0] : memref<?xf64>
          %9 = affine.load %arg2[%0, %7] : memref<?x42xf64>
          %10 = affine.load %arg3[%7] : memref<?xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = arith.addf %8, %11 : f64
          affine.store %12, %arg5[%0] : memref<?xf64>
          %13 = affine.apply #map3(%1)
          %14 = affine.load %arg5[%0] : memref<?xf64>
          %15 = affine.load %arg2[%0, %13] : memref<?x42xf64>
          %16 = affine.load %arg3[%13] : memref<?xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = arith.addf %14, %17 : f64
          affine.store %18, %arg5[%0] : memref<?xf64>
          %19 = affine.apply #map4(%1)
          %20 = affine.load %arg5[%0] : memref<?xf64>
          %21 = affine.load %arg2[%0, %19] : memref<?x42xf64>
          %22 = affine.load %arg3[%19] : memref<?xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = arith.addf %20, %23 : f64
          affine.store %24, %arg5[%0] : memref<?xf64>
        }
        affine.for %arg8 = 0 to 2 {
          %1 = affine.apply #map5(%arg8)
          %2 = affine.load %arg5[%0] : memref<?xf64>
          %3 = affine.load %arg2[%0, %1] : memref<?x42xf64>
          %4 = affine.load %arg3[%1] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          affine.store %6, %arg5[%0] : memref<?xf64>
        }
        affine.parallel (%arg8) = (0) to (10) {
          %1 = affine.apply #map(%arg8)
          %2 = affine.load %arg4[%1] : memref<?xf64>
          %3 = affine.load %arg2[%0, %1] : memref<?x42xf64>
          %4 = affine.load %arg5[%0] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          affine.store %6, %arg4[%1] : memref<?xf64>
          %7 = affine.apply #map2(%1)
          %8 = affine.load %arg4[%7] : memref<?xf64>
          %9 = affine.load %arg2[%0, %7] : memref<?x42xf64>
          %10 = affine.load %arg5[%0] : memref<?xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = arith.addf %8, %11 : f64
          affine.store %12, %arg4[%7] : memref<?xf64>
          %13 = affine.apply #map3(%1)
          %14 = affine.load %arg4[%13] : memref<?xf64>
          %15 = affine.load %arg2[%0, %13] : memref<?x42xf64>
          %16 = affine.load %arg5[%0] : memref<?xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = arith.addf %14, %17 : f64
          affine.store %18, %arg4[%13] : memref<?xf64>
          %19 = affine.apply #map4(%1)
          %20 = affine.load %arg4[%19] : memref<?xf64>
          %21 = affine.load %arg2[%0, %19] : memref<?x42xf64>
          %22 = affine.load %arg5[%0] : memref<?xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = arith.addf %20, %23 : f64
          affine.store %24, %arg4[%19] : memref<?xf64>
        }
        affine.parallel (%arg8) = (0) to (2) {
          %1 = affine.apply #map5(%arg8)
          %2 = affine.load %arg4[%1] : memref<?xf64>
          %3 = affine.load %arg2[%0, %1] : memref<?x42xf64>
          %4 = affine.load %arg5[%0] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          affine.store %6, %arg4[%1] : memref<?xf64>
        }
      }
    }
    return
  }
}

