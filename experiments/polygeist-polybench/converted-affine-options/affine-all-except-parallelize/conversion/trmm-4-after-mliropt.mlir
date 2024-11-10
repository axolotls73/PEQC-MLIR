#map = affine_map<(d0) -> (-d0 + 19)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 + 28)>
#map7 = affine_map<(d0, d1) -> (d0 + d1)>
module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    affine.for %arg5 = 0 to 19 {
      affine.for %arg6 = 0 to #map(%arg5) {
        %0 = affine.apply #map1(%arg5, %arg6)
        %1 = affine.load %arg3[%0, %arg5] : memref<?x20xf64>
        %2 = affine.load %arg3[%0, %arg5] : memref<?x20xf64>
        %3 = affine.load %arg3[%0, %arg5] : memref<?x20xf64>
        %4 = affine.load %arg3[%0, %arg5] : memref<?x20xf64>
        affine.for %arg7 = 0 to 7 {
          %6 = affine.apply #map2(%arg7)
          %7 = affine.load %arg4[%arg5, %6] : memref<?x30xf64>
          %8 = affine.load %arg4[%0, %6] : memref<?x30xf64>
          %9 = arith.mulf %1, %8 : f64
          %10 = arith.addf %7, %9 : f64
          affine.store %10, %arg4[%arg5, %6] : memref<?x30xf64>
          %11 = affine.apply #map3(%6)
          %12 = affine.load %arg4[%arg5, %11] : memref<?x30xf64>
          %13 = affine.load %arg4[%0, %11] : memref<?x30xf64>
          %14 = arith.mulf %2, %13 : f64
          %15 = arith.addf %12, %14 : f64
          affine.store %15, %arg4[%arg5, %11] : memref<?x30xf64>
          %16 = affine.apply #map4(%6)
          %17 = affine.load %arg4[%arg5, %16] : memref<?x30xf64>
          %18 = affine.load %arg4[%0, %16] : memref<?x30xf64>
          %19 = arith.mulf %3, %18 : f64
          %20 = arith.addf %17, %19 : f64
          affine.store %20, %arg4[%arg5, %16] : memref<?x30xf64>
          %21 = affine.apply #map5(%6)
          %22 = affine.load %arg4[%arg5, %21] : memref<?x30xf64>
          %23 = affine.load %arg4[%0, %21] : memref<?x30xf64>
          %24 = arith.mulf %4, %23 : f64
          %25 = arith.addf %22, %24 : f64
          affine.store %25, %arg4[%arg5, %21] : memref<?x30xf64>
        }
        %5 = affine.load %arg3[%0, %arg5] : memref<?x20xf64>
        affine.for %arg7 = 0 to 2 {
          %6 = affine.apply #map6(%arg7)
          %7 = affine.load %arg4[%arg5, %6] : memref<?x30xf64>
          %8 = affine.load %arg4[%0, %6] : memref<?x30xf64>
          %9 = arith.mulf %5, %8 : f64
          %10 = arith.addf %7, %9 : f64
          affine.store %10, %arg4[%arg5, %6] : memref<?x30xf64>
        }
      }
    }
    affine.for %arg5 = 0 to 20 {
      affine.for %arg6 = 0 to 1 {
        %0 = affine.apply #map7(%arg5, %arg6)
        affine.for %arg7 = 0 to 7 {
          %1 = affine.apply #map2(%arg7)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %arg2, %2 : f64
          affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
          %4 = affine.apply #map3(%1)
          %5 = affine.load %arg4[%0, %4] : memref<?x30xf64>
          %6 = arith.mulf %arg2, %5 : f64
          affine.store %6, %arg4[%0, %4] : memref<?x30xf64>
          %7 = affine.apply #map4(%1)
          %8 = affine.load %arg4[%0, %7] : memref<?x30xf64>
          %9 = arith.mulf %arg2, %8 : f64
          affine.store %9, %arg4[%0, %7] : memref<?x30xf64>
          %10 = affine.apply #map5(%1)
          %11 = affine.load %arg4[%0, %10] : memref<?x30xf64>
          %12 = arith.mulf %arg2, %11 : f64
          affine.store %12, %arg4[%0, %10] : memref<?x30xf64>
        }
        affine.for %arg7 = 0 to 2 {
          %1 = affine.apply #map6(%arg7)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %arg2, %2 : f64
          affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

