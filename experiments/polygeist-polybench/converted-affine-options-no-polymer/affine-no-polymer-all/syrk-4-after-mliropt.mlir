#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0, d1) -> (((d0 + 1) floordiv 4) * 4 + d1)>
module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    affine.parallel (%arg6) = (0) to (30) {
      affine.parallel (%arg7) = (0) to (1) {
        %0 = affine.apply #map(%arg6, %arg7)
        affine.parallel (%arg8) = (0) to ((%0 + 1) floordiv 4) {
          %1 = affine.apply #map1(%arg8)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %2, %arg3 : f64
          affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
          %4 = affine.apply #map2(%1)
          %5 = affine.load %arg4[%0, %4] : memref<?x30xf64>
          %6 = arith.mulf %5, %arg3 : f64
          affine.store %6, %arg4[%0, %4] : memref<?x30xf64>
          %7 = affine.apply #map3(%1)
          %8 = affine.load %arg4[%0, %7] : memref<?x30xf64>
          %9 = arith.mulf %8, %arg3 : f64
          affine.store %9, %arg4[%0, %7] : memref<?x30xf64>
          %10 = affine.apply #map4(%1)
          %11 = affine.load %arg4[%0, %10] : memref<?x30xf64>
          %12 = arith.mulf %11, %arg3 : f64
          affine.store %12, %arg4[%0, %10] : memref<?x30xf64>
        }
        affine.parallel (%arg8) = (0) to (%0 - ((%0 + 1) floordiv 4) * 4 + 1) {
          %1 = affine.apply #map5(%0, %arg8)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %2, %arg3 : f64
          affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
        }
        affine.for %arg8 = 0 to 20 {
          affine.parallel (%arg9) = (0) to ((%0 + 1) floordiv 4) {
            %1 = affine.apply #map1(%arg9)
            %2 = affine.load %arg5[%0, %arg8] : memref<?x20xf64>
            %3 = arith.mulf %arg2, %2 : f64
            %4 = affine.load %arg5[%1, %arg8] : memref<?x20xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = affine.load %arg4[%0, %1] : memref<?x30xf64>
            %7 = arith.addf %6, %5 : f64
            affine.store %7, %arg4[%0, %1] : memref<?x30xf64>
            %8 = affine.apply #map2(%1)
            %9 = affine.load %arg5[%0, %arg8] : memref<?x20xf64>
            %10 = arith.mulf %arg2, %9 : f64
            %11 = affine.load %arg5[%8, %arg8] : memref<?x20xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = affine.load %arg4[%0, %8] : memref<?x30xf64>
            %14 = arith.addf %13, %12 : f64
            affine.store %14, %arg4[%0, %8] : memref<?x30xf64>
            %15 = affine.apply #map3(%1)
            %16 = affine.load %arg5[%0, %arg8] : memref<?x20xf64>
            %17 = arith.mulf %arg2, %16 : f64
            %18 = affine.load %arg5[%15, %arg8] : memref<?x20xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = affine.load %arg4[%0, %15] : memref<?x30xf64>
            %21 = arith.addf %20, %19 : f64
            affine.store %21, %arg4[%0, %15] : memref<?x30xf64>
            %22 = affine.apply #map4(%1)
            %23 = affine.load %arg5[%0, %arg8] : memref<?x20xf64>
            %24 = arith.mulf %arg2, %23 : f64
            %25 = affine.load %arg5[%22, %arg8] : memref<?x20xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = affine.load %arg4[%0, %22] : memref<?x30xf64>
            %28 = arith.addf %27, %26 : f64
            affine.store %28, %arg4[%0, %22] : memref<?x30xf64>
          }
          affine.parallel (%arg9) = (0) to (%0 - ((%0 + 1) floordiv 4) * 4 + 1) {
            %1 = affine.apply #map5(%0, %arg9)
            %2 = affine.load %arg5[%0, %arg8] : memref<?x20xf64>
            %3 = arith.mulf %arg2, %2 : f64
            %4 = affine.load %arg5[%1, %arg8] : memref<?x20xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = affine.load %arg4[%0, %1] : memref<?x30xf64>
            %7 = arith.addf %6, %5 : f64
            affine.store %7, %arg4[%0, %1] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

