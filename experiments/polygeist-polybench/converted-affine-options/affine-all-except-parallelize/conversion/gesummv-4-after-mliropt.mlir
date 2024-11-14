#map = affine_map<(d0) -> (d0 * 128)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 * 32 + 28)>
#map6 = affine_map<(d0, d1) -> (d0 + d1)>
#map7 = affine_map<(d0) -> (d0 * 32)>
#map8 = affine_map<(d0) -> (d0 * 4)>
#map9 = affine_map<(d0) -> (d0 + 28)>
module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg8 = 0 to 1 {
      %0 = affine.apply #map(%arg8)
      affine.for %arg9 = 0 to 7 {
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
    affine.for %arg8 = 0 to 1 {
      %0 = affine.apply #map5(%arg8)
      affine.for %arg9 = 0 to 2 {
        %1 = affine.apply #map6(%0, %arg9)
        affine.store %cst, %arg7[%1] : memref<?xf64>
      }
    }
    affine.for %arg8 = 0 to 1 {
      %0 = affine.apply #map7(%arg8)
      affine.for %arg9 = 0 to 30 {
        %1 = affine.apply #map6(%0, %arg9)
        affine.for %arg10 = 0 to 7 {
          %2 = affine.apply #map8(%arg10)
          %3 = affine.load %arg4[%1, %2] : memref<?x30xf64>
          %4 = affine.load %arg6[%2] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg7[%1] : memref<?xf64>
          %7 = arith.addf %5, %6 : f64
          affine.store %7, %arg7[%1] : memref<?xf64>
          %8 = affine.apply #map2(%2)
          %9 = affine.load %arg4[%1, %8] : memref<?x30xf64>
          %10 = affine.load %arg6[%8] : memref<?xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = affine.load %arg7[%1] : memref<?xf64>
          %13 = arith.addf %11, %12 : f64
          affine.store %13, %arg7[%1] : memref<?xf64>
          %14 = affine.apply #map3(%2)
          %15 = affine.load %arg4[%1, %14] : memref<?x30xf64>
          %16 = affine.load %arg6[%14] : memref<?xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = affine.load %arg7[%1] : memref<?xf64>
          %19 = arith.addf %17, %18 : f64
          affine.store %19, %arg7[%1] : memref<?xf64>
          %20 = affine.apply #map4(%2)
          %21 = affine.load %arg4[%1, %20] : memref<?x30xf64>
          %22 = affine.load %arg6[%20] : memref<?xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = affine.load %arg7[%1] : memref<?xf64>
          %25 = arith.addf %23, %24 : f64
          affine.store %25, %arg7[%1] : memref<?xf64>
        }
        affine.for %arg10 = 0 to 2 {
          %2 = affine.apply #map9(%arg10)
          %3 = affine.load %arg4[%1, %2] : memref<?x30xf64>
          %4 = affine.load %arg6[%2] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg7[%1] : memref<?xf64>
          %7 = arith.addf %5, %6 : f64
          affine.store %7, %arg7[%1] : memref<?xf64>
        }
      }
    }
    affine.for %arg8 = 0 to 1 {
      %0 = affine.apply #map(%arg8)
      affine.for %arg9 = 0 to 7 {
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
    affine.for %arg8 = 0 to 1 {
      %0 = affine.apply #map5(%arg8)
      affine.for %arg9 = 0 to 2 {
        %1 = affine.apply #map6(%0, %arg9)
        affine.store %cst, %arg5[%1] : memref<?xf64>
      }
    }
    affine.for %arg8 = 0 to 1 {
      %0 = affine.apply #map7(%arg8)
      affine.for %arg9 = 0 to 30 {
        %1 = affine.apply #map6(%0, %arg9)
        affine.for %arg10 = 0 to 7 {
          %2 = affine.apply #map8(%arg10)
          %3 = affine.load %arg3[%1, %2] : memref<?x30xf64>
          %4 = affine.load %arg6[%2] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg5[%1] : memref<?xf64>
          %7 = arith.addf %5, %6 : f64
          affine.store %7, %arg5[%1] : memref<?xf64>
          %8 = affine.apply #map2(%2)
          %9 = affine.load %arg3[%1, %8] : memref<?x30xf64>
          %10 = affine.load %arg6[%8] : memref<?xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = affine.load %arg5[%1] : memref<?xf64>
          %13 = arith.addf %11, %12 : f64
          affine.store %13, %arg5[%1] : memref<?xf64>
          %14 = affine.apply #map3(%2)
          %15 = affine.load %arg3[%1, %14] : memref<?x30xf64>
          %16 = affine.load %arg6[%14] : memref<?xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = affine.load %arg5[%1] : memref<?xf64>
          %19 = arith.addf %17, %18 : f64
          affine.store %19, %arg5[%1] : memref<?xf64>
          %20 = affine.apply #map4(%2)
          %21 = affine.load %arg3[%1, %20] : memref<?x30xf64>
          %22 = affine.load %arg6[%20] : memref<?xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = affine.load %arg5[%1] : memref<?xf64>
          %25 = arith.addf %23, %24 : f64
          affine.store %25, %arg5[%1] : memref<?xf64>
        }
        affine.for %arg10 = 0 to 2 {
          %2 = affine.apply #map9(%arg10)
          %3 = affine.load %arg3[%1, %2] : memref<?x30xf64>
          %4 = affine.load %arg6[%2] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg5[%1] : memref<?xf64>
          %7 = arith.addf %5, %6 : f64
          affine.store %7, %arg5[%1] : memref<?xf64>
        }
      }
    }
    affine.for %arg8 = 0 to 1 {
      %0 = affine.apply #map(%arg8)
      affine.for %arg9 = 0 to 7 {
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
    affine.for %arg8 = 0 to 1 {
      %0 = affine.apply #map5(%arg8)
      affine.for %arg9 = 0 to 2 {
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

