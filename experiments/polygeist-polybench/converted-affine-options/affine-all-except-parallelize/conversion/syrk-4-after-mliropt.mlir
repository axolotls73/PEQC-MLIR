#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> ((d0 + 1) floordiv 4)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 - ((d0 + 1) floordiv 4) * 4 + 1)>
#map7 = affine_map<(d0, d1) -> (d1 + ((d0 + 1) floordiv 4) * 4)>
module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    affine.for %arg6 = 0 to 30 {
      affine.for %arg7 = 0 to 1 {
        %0 = affine.apply #map(%arg6, %arg7)
        affine.for %arg8 = 0 to #map1(%0) {
          %1 = affine.apply #map2(%arg8)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %2, %arg3 : f64
          affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
          %4 = affine.apply #map3(%1)
          %5 = affine.load %arg4[%0, %4] : memref<?x30xf64>
          %6 = arith.mulf %5, %arg3 : f64
          affine.store %6, %arg4[%0, %4] : memref<?x30xf64>
          %7 = affine.apply #map4(%1)
          %8 = affine.load %arg4[%0, %7] : memref<?x30xf64>
          %9 = arith.mulf %8, %arg3 : f64
          affine.store %9, %arg4[%0, %7] : memref<?x30xf64>
          %10 = affine.apply #map5(%1)
          %11 = affine.load %arg4[%0, %10] : memref<?x30xf64>
          %12 = arith.mulf %11, %arg3 : f64
          affine.store %12, %arg4[%0, %10] : memref<?x30xf64>
        }
        affine.for %arg8 = 0 to #map6(%0) {
          %1 = affine.apply #map7(%0, %arg8)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %2, %arg3 : f64
          affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
        }
      }
    }
    affine.for %arg6 = 0 to 30 {
      affine.for %arg7 = 0 to #map3(%arg6) {
        affine.for %arg8 = 0 to 5 {
          %0 = affine.apply #map2(%arg8)
          %1 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %2 = affine.load %arg5[%arg6, %0] : memref<?x20xf64>
          %3 = arith.mulf %arg2, %2 : f64
          %4 = affine.load %arg5[%arg7, %0] : memref<?x20xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %1, %5 : f64
          affine.store %6, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %7 = affine.apply #map3(%0)
          %8 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %9 = affine.load %arg5[%arg6, %7] : memref<?x20xf64>
          %10 = arith.mulf %arg2, %9 : f64
          %11 = affine.load %arg5[%arg7, %7] : memref<?x20xf64>
          %12 = arith.mulf %10, %11 : f64
          %13 = arith.addf %8, %12 : f64
          affine.store %13, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %14 = affine.apply #map4(%0)
          %15 = affine.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %16 = affine.load %arg5[%arg6, %14] : memref<?x20xf64>
          %17 = arith.mulf %arg2, %16 : f64
          %18 = affine.load %arg5[%arg7, %14] : memref<?x20xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = arith.addf %15, %19 : f64
          affine.store %20, %arg4[%arg6, %arg7] : memref<?x30xf64>
          %21 = affine.apply #map5(%0)
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

