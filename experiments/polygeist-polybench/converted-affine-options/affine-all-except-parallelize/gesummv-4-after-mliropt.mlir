#map = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 + 28)>
#map6 = affine_map<(d0, d1) -> (d0 + d1)>
module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg8 = 0 to 7 {
      %0 = affine.apply #map(%arg8)
      affine.for %arg9 = 0 to 1 {
        %1 = affine.apply #map1(%0, %arg9)
        affine.store %cst, %arg7[%1] : memref<?xf64>
        %2 = affine.apply #map2(%1)
        affine.store %cst, %arg7[%2] : memref<?xf64>
        %3 = affine.apply #map3(%1)
        affine.store %cst, %arg7[%3] : memref<?xf64>
        %4 = affine.apply #map4(%1)
        affine.store %cst, %arg7[%4] : memref<?xf64>
      }
    }
    affine.parallel (%arg8) = (0) to (2) {
      %0 = affine.apply #map5(%arg8)
      affine.parallel (%arg9) = (0) to (1) {
        %1 = affine.apply #map6(%0, %arg9)
        affine.store %cst, %arg7[%1] : memref<?xf64>
      }
    }
    affine.parallel (%arg8) = (0) to (30) {
      affine.parallel (%arg9) = (0) to (1) {
        %0 = affine.apply #map6(%arg8, %arg9)
        affine.for %arg10 = 0 to 7 {
          %1 = affine.apply #map(%arg10)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = affine.load %arg6[%1] : memref<?xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg7[%0] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          affine.store %6, %arg7[%0] : memref<?xf64>
          %7 = affine.apply #map2(%1)
          %8 = affine.load %arg4[%0, %7] : memref<?x30xf64>
          %9 = affine.load %arg6[%7] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %arg7[%0] : memref<?xf64>
          %12 = arith.addf %10, %11 : f64
          affine.store %12, %arg7[%0] : memref<?xf64>
          %13 = affine.apply #map3(%1)
          %14 = affine.load %arg4[%0, %13] : memref<?x30xf64>
          %15 = affine.load %arg6[%13] : memref<?xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = affine.load %arg7[%0] : memref<?xf64>
          %18 = arith.addf %16, %17 : f64
          affine.store %18, %arg7[%0] : memref<?xf64>
          %19 = affine.apply #map4(%1)
          %20 = affine.load %arg4[%0, %19] : memref<?x30xf64>
          %21 = affine.load %arg6[%19] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = affine.load %arg7[%0] : memref<?xf64>
          %24 = arith.addf %22, %23 : f64
          affine.store %24, %arg7[%0] : memref<?xf64>
        }
        affine.for %arg10 = 0 to 2 {
          %1 = affine.apply #map5(%arg10)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = affine.load %arg6[%1] : memref<?xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg7[%0] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          affine.store %6, %arg7[%0] : memref<?xf64>
        }
      }
    }
    affine.for %arg8 = 0 to 7 {
      %0 = affine.apply #map(%arg8)
      affine.for %arg9 = 0 to 1 {
        %1 = affine.apply #map1(%0, %arg9)
        affine.store %cst, %arg5[%1] : memref<?xf64>
        %2 = affine.apply #map2(%1)
        affine.store %cst, %arg5[%2] : memref<?xf64>
        %3 = affine.apply #map3(%1)
        affine.store %cst, %arg5[%3] : memref<?xf64>
        %4 = affine.apply #map4(%1)
        affine.store %cst, %arg5[%4] : memref<?xf64>
      }
    }
    affine.parallel (%arg8) = (0) to (2) {
      %0 = affine.apply #map5(%arg8)
      affine.parallel (%arg9) = (0) to (1) {
        %1 = affine.apply #map6(%0, %arg9)
        affine.store %cst, %arg5[%1] : memref<?xf64>
      }
    }
    affine.parallel (%arg8) = (0) to (30) {
      affine.parallel (%arg9) = (0) to (1) {
        %0 = affine.apply #map6(%arg8, %arg9)
        affine.for %arg10 = 0 to 7 {
          %1 = affine.apply #map(%arg10)
          %2 = affine.load %arg3[%0, %1] : memref<?x30xf64>
          %3 = affine.load %arg6[%1] : memref<?xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg5[%0] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          affine.store %6, %arg5[%0] : memref<?xf64>
          %7 = affine.apply #map2(%1)
          %8 = affine.load %arg3[%0, %7] : memref<?x30xf64>
          %9 = affine.load %arg6[%7] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %arg5[%0] : memref<?xf64>
          %12 = arith.addf %10, %11 : f64
          affine.store %12, %arg5[%0] : memref<?xf64>
          %13 = affine.apply #map3(%1)
          %14 = affine.load %arg3[%0, %13] : memref<?x30xf64>
          %15 = affine.load %arg6[%13] : memref<?xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = affine.load %arg5[%0] : memref<?xf64>
          %18 = arith.addf %16, %17 : f64
          affine.store %18, %arg5[%0] : memref<?xf64>
          %19 = affine.apply #map4(%1)
          %20 = affine.load %arg3[%0, %19] : memref<?x30xf64>
          %21 = affine.load %arg6[%19] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = affine.load %arg5[%0] : memref<?xf64>
          %24 = arith.addf %22, %23 : f64
          affine.store %24, %arg5[%0] : memref<?xf64>
        }
        affine.for %arg10 = 0 to 2 {
          %1 = affine.apply #map5(%arg10)
          %2 = affine.load %arg3[%0, %1] : memref<?x30xf64>
          %3 = affine.load %arg6[%1] : memref<?xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = affine.load %arg5[%0] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          affine.store %6, %arg5[%0] : memref<?xf64>
        }
      }
    }
    affine.for %arg8 = 0 to 7 {
      %0 = affine.apply #map(%arg8)
      affine.for %arg9 = 0 to 1 {
        %1 = affine.apply #map1(%0, %arg9)
        %2 = affine.load %arg5[%1] : memref<?xf64>
        %3 = arith.mulf %arg1, %2 : f64
        %4 = affine.load %arg7[%1] : memref<?xf64>
        %5 = arith.mulf %arg2, %4 : f64
        %6 = arith.addf %3, %5 : f64
        affine.store %6, %arg7[%1] : memref<?xf64>
        %7 = affine.apply #map2(%1)
        %8 = affine.load %arg5[%7] : memref<?xf64>
        %9 = arith.mulf %arg1, %8 : f64
        %10 = affine.load %arg7[%7] : memref<?xf64>
        %11 = arith.mulf %arg2, %10 : f64
        %12 = arith.addf %9, %11 : f64
        affine.store %12, %arg7[%7] : memref<?xf64>
        %13 = affine.apply #map3(%1)
        %14 = affine.load %arg5[%13] : memref<?xf64>
        %15 = arith.mulf %arg1, %14 : f64
        %16 = affine.load %arg7[%13] : memref<?xf64>
        %17 = arith.mulf %arg2, %16 : f64
        %18 = arith.addf %15, %17 : f64
        affine.store %18, %arg7[%13] : memref<?xf64>
        %19 = affine.apply #map4(%1)
        %20 = affine.load %arg5[%19] : memref<?xf64>
        %21 = arith.mulf %arg1, %20 : f64
        %22 = affine.load %arg7[%19] : memref<?xf64>
        %23 = arith.mulf %arg2, %22 : f64
        %24 = arith.addf %21, %23 : f64
        affine.store %24, %arg7[%19] : memref<?xf64>
      }
    }
    affine.parallel (%arg8) = (0) to (2) {
      %0 = affine.apply #map5(%arg8)
      affine.parallel (%arg9) = (0) to (1) {
        %1 = affine.apply #map6(%0, %arg9)
        %2 = affine.load %arg5[%1] : memref<?xf64>
        %3 = arith.mulf %arg1, %2 : f64
        %4 = affine.load %arg7[%1] : memref<?xf64>
        %5 = arith.mulf %arg2, %4 : f64
        %6 = arith.addf %3, %5 : f64
        affine.store %6, %arg7[%1] : memref<?xf64>
      }
    }
    return
  }
}

