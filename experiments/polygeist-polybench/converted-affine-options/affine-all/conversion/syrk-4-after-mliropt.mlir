#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> ((d0 + 1) floordiv 4)>
#map3 = affine_map<(d0) -> (d0 * 4)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (d0 - ((d0 + 1) floordiv 4) * 4 + 1)>
#map8 = affine_map<(d0, d1) -> (d1 + ((d0 + 1) floordiv 4) * 4)>
module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    affine.parallel (%arg6) = (0) to (1) {
      %0 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 30 {
        %1 = affine.apply #map1(%0, %arg7)
        affine.for %arg8 = 0 to #map2(%1) {
          %2 = affine.apply #map3(%arg8)
          %3 = affine.load %arg4[%1, %2] : memref<?x30xf64>
          %4 = arith.mulf %3, %arg3 : f64
          affine.store %4, %arg4[%1, %2] : memref<?x30xf64>
          %5 = affine.apply #map4(%2)
          %6 = affine.load %arg4[%1, %5] : memref<?x30xf64>
          %7 = arith.mulf %6, %arg3 : f64
          affine.store %7, %arg4[%1, %5] : memref<?x30xf64>
          %8 = affine.apply #map5(%2)
          %9 = affine.load %arg4[%1, %8] : memref<?x30xf64>
          %10 = arith.mulf %9, %arg3 : f64
          affine.store %10, %arg4[%1, %8] : memref<?x30xf64>
          %11 = affine.apply #map6(%2)
          %12 = affine.load %arg4[%1, %11] : memref<?x30xf64>
          %13 = arith.mulf %12, %arg3 : f64
          affine.store %13, %arg4[%1, %11] : memref<?x30xf64>
        }
        affine.for %arg8 = 0 to #map7(%1) {
          %2 = affine.apply #map8(%1, %arg8)
          %3 = affine.load %arg4[%1, %2] : memref<?x30xf64>
          %4 = arith.mulf %3, %arg3 : f64
          affine.store %4, %arg4[%1, %2] : memref<?x30xf64>
        }
      }
    }
    affine.parallel (%arg6) = (0) to (30) {
      affine.for %arg7 = 0 to #map4(%arg6) {
        affine.for %arg8 = 0 to 5 {
          %0 = affine.apply #map3(%arg8)
          %1 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %2 = affine.load %arg5[%arg6, %0] : memref<?x20xf64>
          %3 = arith.mulf %arg2, %2 : f64
          %4 = affine.load %arg5[%arg7, %0] : memref<?x20xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %1, %5 : f64
          affine.store %6, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %7 = affine.apply #map4(%0)
          %8 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %9 = affine.load %arg5[%arg6, %7] : memref<?x20xf64>
          %10 = arith.mulf %arg2, %9 : f64
          %11 = affine.load %arg5[%arg7, %7] : memref<?x20xf64>
          %12 = arith.mulf %10, %11 : f64
          %13 = arith.addf %8, %12 : f64
          affine.store %13, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %14 = affine.apply #map5(%0)
          %15 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %16 = affine.load %arg5[%arg6, %14] : memref<?x20xf64>
          %17 = arith.mulf %arg2, %16 : f64
          %18 = affine.load %arg5[%arg7, %14] : memref<?x20xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = arith.addf %15, %19 : f64
          affine.store %20, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %21 = affine.apply #map6(%0)
          %22 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %23 = affine.load %arg5[%arg6, %21] : memref<?x20xf64>
          %24 = arith.mulf %arg2, %23 : f64
          %25 = affine.load %arg5[%arg7, %21] : memref<?x20xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = arith.addf %22, %26 : f64
          affine.store %27, %arg4[%arg6, %arg7] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

