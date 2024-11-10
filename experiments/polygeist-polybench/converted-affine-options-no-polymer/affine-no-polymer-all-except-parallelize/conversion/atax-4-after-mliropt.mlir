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
    affine.for %arg6 = 0 to 2 {
      %0 = affine.apply #map5(%arg6)
      affine.for %arg7 = 0 to 1 {
        %1 = affine.apply #map6(%0, %arg7)
        affine.store %cst, %arg4[%1] : memref<?xf64>
      }
    }
    affine.for %arg6 = 0 to 38 {
      affine.for %arg7 = 0 to 1 {
        %0 = affine.apply #map6(%arg6, %arg7)
        affine.store %cst, %arg5[%0] : memref<?xf64>
        affine.for %arg8 = 0 to 10 {
          %6 = affine.apply #map(%arg8)
          %7 = affine.load %arg5[%0] : memref<?xf64>
          %8 = affine.load %arg2[%0, %6] : memref<?x42xf64>
          %9 = affine.load %arg3[%6] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %7, %10 : f64
          affine.store %11, %arg5[%0] : memref<?xf64>
          %12 = affine.apply #map2(%6)
          %13 = affine.load %arg5[%0] : memref<?xf64>
          %14 = affine.load %arg2[%0, %12] : memref<?x42xf64>
          %15 = affine.load %arg3[%12] : memref<?xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = arith.addf %13, %16 : f64
          affine.store %17, %arg5[%0] : memref<?xf64>
          %18 = affine.apply #map3(%6)
          %19 = affine.load %arg5[%0] : memref<?xf64>
          %20 = affine.load %arg2[%0, %18] : memref<?x42xf64>
          %21 = affine.load %arg3[%18] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %19, %22 : f64
          affine.store %23, %arg5[%0] : memref<?xf64>
          %24 = affine.apply #map4(%6)
          %25 = affine.load %arg5[%0] : memref<?xf64>
          %26 = affine.load %arg2[%0, %24] : memref<?x42xf64>
          %27 = affine.load %arg3[%24] : memref<?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = arith.addf %25, %28 : f64
          affine.store %29, %arg5[%0] : memref<?xf64>
        }
        affine.for %arg8 = 0 to 2 {
          %6 = affine.apply #map5(%arg8)
          %7 = affine.load %arg5[%0] : memref<?xf64>
          %8 = affine.load %arg2[%0, %6] : memref<?x42xf64>
          %9 = affine.load %arg3[%6] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %7, %10 : f64
          affine.store %11, %arg5[%0] : memref<?xf64>
        }
        %1 = affine.load %arg5[%0] : memref<?xf64>
        %2 = affine.load %arg5[%0] : memref<?xf64>
        %3 = affine.load %arg5[%0] : memref<?xf64>
        %4 = affine.load %arg5[%0] : memref<?xf64>
        affine.for %arg8 = 0 to 10 {
          %6 = affine.apply #map(%arg8)
          %7 = affine.load %arg4[%6] : memref<?xf64>
          %8 = affine.load %arg2[%0, %6] : memref<?x42xf64>
          %9 = arith.mulf %8, %1 : f64
          %10 = arith.addf %7, %9 : f64
          affine.store %10, %arg4[%6] : memref<?xf64>
          %11 = affine.apply #map2(%6)
          %12 = affine.load %arg4[%11] : memref<?xf64>
          %13 = affine.load %arg2[%0, %11] : memref<?x42xf64>
          %14 = arith.mulf %13, %2 : f64
          %15 = arith.addf %12, %14 : f64
          affine.store %15, %arg4[%11] : memref<?xf64>
          %16 = affine.apply #map3(%6)
          %17 = affine.load %arg4[%16] : memref<?xf64>
          %18 = affine.load %arg2[%0, %16] : memref<?x42xf64>
          %19 = arith.mulf %18, %3 : f64
          %20 = arith.addf %17, %19 : f64
          affine.store %20, %arg4[%16] : memref<?xf64>
          %21 = affine.apply #map4(%6)
          %22 = affine.load %arg4[%21] : memref<?xf64>
          %23 = affine.load %arg2[%0, %21] : memref<?x42xf64>
          %24 = arith.mulf %23, %4 : f64
          %25 = arith.addf %22, %24 : f64
          affine.store %25, %arg4[%21] : memref<?xf64>
        }
        %5 = affine.load %arg5[%0] : memref<?xf64>
        affine.for %arg8 = 0 to 2 {
          %6 = affine.apply #map5(%arg8)
          %7 = affine.load %arg4[%6] : memref<?xf64>
          %8 = affine.load %arg2[%0, %6] : memref<?x42xf64>
          %9 = arith.mulf %8, %5 : f64
          %10 = arith.addf %7, %9 : f64
          affine.store %10, %arg4[%6] : memref<?xf64>
        }
      }
    }
    return
  }
}

