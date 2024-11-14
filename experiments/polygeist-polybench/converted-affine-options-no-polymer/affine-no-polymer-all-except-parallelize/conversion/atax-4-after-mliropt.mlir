#map = affine_map<(d0) -> (d0 * 128)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 * 32 + 40)>
#map6 = affine_map<(d0, d1) -> (d0 + d1)>
#map7 = affine_map<(d0) -> (d0 * 32)>
#map8 = affine_map<(d0) -> (32, -d0 + 38)>
#map9 = affine_map<(d0) -> (d0 * 4)>
#map10 = affine_map<(d0) -> (d0 + 40)>
module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 1 {
      %0 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 10 {
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
    affine.for %arg6 = 0 to 1 {
      %0 = affine.apply #map5(%arg6)
      affine.for %arg7 = 0 to 2 {
        %1 = affine.apply #map6(%0, %arg7)
        affine.store %cst, %arg4[%1] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 2 {
      %0 = affine.apply #map7(%arg6)
      affine.for %arg7 = 0 to min #map8(%0) {
        %1 = affine.apply #map6(%0, %arg7)
        affine.store %cst, %arg5[%1] : memref<?xf64>
        affine.for %arg8 = 0 to 10 {
          %7 = affine.apply #map9(%arg8)
          %8 = affine.load %arg5[%1] : memref<?xf64>
          %9 = affine.load %arg2[%1, %7] : memref<?x42xf64>
          %10 = affine.load %arg3[%7] : memref<?xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = arith.addf %8, %11 : f64
          affine.store %12, %arg5[%1] : memref<?xf64>
          %13 = affine.apply #map2(%7)
          %14 = affine.load %arg5[%1] : memref<?xf64>
          %15 = affine.load %arg2[%1, %13] : memref<?x42xf64>
          %16 = affine.load %arg3[%13] : memref<?xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = arith.addf %14, %17 : f64
          affine.store %18, %arg5[%1] : memref<?xf64>
          %19 = affine.apply #map3(%7)
          %20 = affine.load %arg5[%1] : memref<?xf64>
          %21 = affine.load %arg2[%1, %19] : memref<?x42xf64>
          %22 = affine.load %arg3[%19] : memref<?xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = arith.addf %20, %23 : f64
          affine.store %24, %arg5[%1] : memref<?xf64>
          %25 = affine.apply #map4(%7)
          %26 = affine.load %arg5[%1] : memref<?xf64>
          %27 = affine.load %arg2[%1, %25] : memref<?x42xf64>
          %28 = affine.load %arg3[%25] : memref<?xf64>
          %29 = arith.mulf %27, %28 : f64
          %30 = arith.addf %26, %29 : f64
          affine.store %30, %arg5[%1] : memref<?xf64>
        }
        affine.for %arg8 = 0 to 2 {
          %7 = affine.apply #map10(%arg8)
          %8 = affine.load %arg5[%1] : memref<?xf64>
          %9 = affine.load %arg2[%1, %7] : memref<?x42xf64>
          %10 = affine.load %arg3[%7] : memref<?xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = arith.addf %8, %11 : f64
          affine.store %12, %arg5[%1] : memref<?xf64>
        }
        %2 = affine.load %arg5[%1] : memref<?xf64>
        %3 = affine.load %arg5[%1] : memref<?xf64>
        %4 = affine.load %arg5[%1] : memref<?xf64>
        %5 = affine.load %arg5[%1] : memref<?xf64>
        affine.for %arg8 = 0 to 10 {
          %7 = affine.apply #map9(%arg8)
          %8 = affine.load %arg4[%7] : memref<?xf64>
          %9 = affine.load %arg2[%1, %7] : memref<?x42xf64>
          %10 = arith.mulf %9, %2 : f64
          %11 = arith.addf %8, %10 : f64
          affine.store %11, %arg4[%7] : memref<?xf64>
          %12 = affine.apply #map2(%7)
          %13 = affine.load %arg4[%12] : memref<?xf64>
          %14 = affine.load %arg2[%1, %12] : memref<?x42xf64>
          %15 = arith.mulf %14, %3 : f64
          %16 = arith.addf %13, %15 : f64
          affine.store %16, %arg4[%12] : memref<?xf64>
          %17 = affine.apply #map3(%7)
          %18 = affine.load %arg4[%17] : memref<?xf64>
          %19 = affine.load %arg2[%1, %17] : memref<?x42xf64>
          %20 = arith.mulf %19, %4 : f64
          %21 = arith.addf %18, %20 : f64
          affine.store %21, %arg4[%17] : memref<?xf64>
          %22 = affine.apply #map4(%7)
          %23 = affine.load %arg4[%22] : memref<?xf64>
          %24 = affine.load %arg2[%1, %22] : memref<?x42xf64>
          %25 = arith.mulf %24, %5 : f64
          %26 = arith.addf %23, %25 : f64
          affine.store %26, %arg4[%22] : memref<?xf64>
        }
        %6 = affine.load %arg5[%1] : memref<?xf64>
        affine.for %arg8 = 0 to 2 {
          %7 = affine.apply #map10(%arg8)
          %8 = affine.load %arg4[%7] : memref<?xf64>
          %9 = affine.load %arg2[%1, %7] : memref<?x42xf64>
          %10 = arith.mulf %9, %6 : f64
          %11 = arith.addf %8, %10 : f64
          affine.store %11, %arg4[%7] : memref<?xf64>
        }
      }
    }
    return
  }
}

