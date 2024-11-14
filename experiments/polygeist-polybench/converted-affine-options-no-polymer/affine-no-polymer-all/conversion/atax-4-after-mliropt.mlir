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
    affine.parallel (%arg6) = (0) to (1) {
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
    affine.parallel (%arg6) = (0) to (1) {
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
          %2 = affine.apply #map9(%arg8)
          %3 = affine.load %arg5[%1] : memref<?xf64>
          %4 = affine.load %arg2[%1, %2] : memref<?x42xf64>
          %5 = affine.load %arg3[%2] : memref<?xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = arith.addf %3, %6 : f64
          affine.store %7, %arg5[%1] : memref<?xf64>
          %8 = affine.apply #map2(%2)
          %9 = affine.load %arg5[%1] : memref<?xf64>
          %10 = affine.load %arg2[%1, %8] : memref<?x42xf64>
          %11 = affine.load %arg3[%8] : memref<?xf64>
          %12 = arith.mulf %10, %11 : f64
          %13 = arith.addf %9, %12 : f64
          affine.store %13, %arg5[%1] : memref<?xf64>
          %14 = affine.apply #map3(%2)
          %15 = affine.load %arg5[%1] : memref<?xf64>
          %16 = affine.load %arg2[%1, %14] : memref<?x42xf64>
          %17 = affine.load %arg3[%14] : memref<?xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = arith.addf %15, %18 : f64
          affine.store %19, %arg5[%1] : memref<?xf64>
          %20 = affine.apply #map4(%2)
          %21 = affine.load %arg5[%1] : memref<?xf64>
          %22 = affine.load %arg2[%1, %20] : memref<?x42xf64>
          %23 = affine.load %arg3[%20] : memref<?xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.addf %21, %24 : f64
          affine.store %25, %arg5[%1] : memref<?xf64>
        }
        affine.for %arg8 = 0 to 2 {
          %2 = affine.apply #map10(%arg8)
          %3 = affine.load %arg5[%1] : memref<?xf64>
          %4 = affine.load %arg2[%1, %2] : memref<?x42xf64>
          %5 = affine.load %arg3[%2] : memref<?xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = arith.addf %3, %6 : f64
          affine.store %7, %arg5[%1] : memref<?xf64>
        }
        affine.parallel (%arg8) = (0) to (10) {
          %2 = affine.apply #map9(%arg8)
          %3 = affine.load %arg4[%2] : memref<?xf64>
          %4 = affine.load %arg2[%1, %2] : memref<?x42xf64>
          %5 = affine.load %arg5[%1] : memref<?xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = arith.addf %3, %6 : f64
          affine.store %7, %arg4[%2] : memref<?xf64>
          %8 = affine.apply #map2(%2)
          %9 = affine.load %arg4[%8] : memref<?xf64>
          %10 = affine.load %arg2[%1, %8] : memref<?x42xf64>
          %11 = affine.load %arg5[%1] : memref<?xf64>
          %12 = arith.mulf %10, %11 : f64
          %13 = arith.addf %9, %12 : f64
          affine.store %13, %arg4[%8] : memref<?xf64>
          %14 = affine.apply #map3(%2)
          %15 = affine.load %arg4[%14] : memref<?xf64>
          %16 = affine.load %arg2[%1, %14] : memref<?x42xf64>
          %17 = affine.load %arg5[%1] : memref<?xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = arith.addf %15, %18 : f64
          affine.store %19, %arg4[%14] : memref<?xf64>
          %20 = affine.apply #map4(%2)
          %21 = affine.load %arg4[%20] : memref<?xf64>
          %22 = affine.load %arg2[%1, %20] : memref<?x42xf64>
          %23 = affine.load %arg5[%1] : memref<?xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.addf %21, %24 : f64
          affine.store %25, %arg4[%20] : memref<?xf64>
        }
        affine.parallel (%arg8) = (0) to (2) {
          %2 = affine.apply #map10(%arg8)
          %3 = affine.load %arg4[%2] : memref<?xf64>
          %4 = affine.load %arg2[%1, %2] : memref<?x42xf64>
          %5 = affine.load %arg5[%1] : memref<?xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = arith.addf %3, %6 : f64
          affine.store %7, %arg4[%2] : memref<?xf64>
        }
      }
    }
    return
  }
}

