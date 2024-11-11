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
    affine.parallel (%arg6) = (0) to (30) {
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
        affine.for %arg8 = 0 to 20 {
          %1 = affine.load %arg5[%0, %arg8] : memref<?x20xf64>
          %2 = arith.mulf %arg2, %1 : f64
          %3 = affine.load %arg5[%0, %arg8] : memref<?x20xf64>
          %4 = arith.mulf %arg2, %3 : f64
          %5 = affine.load %arg5[%0, %arg8] : memref<?x20xf64>
          %6 = arith.mulf %arg2, %5 : f64
          %7 = affine.load %arg5[%0, %arg8] : memref<?x20xf64>
          %8 = arith.mulf %arg2, %7 : f64
          affine.for %arg9 = 0 to #map1(%0) {
            %11 = affine.apply #map2(%arg9)
            %12 = affine.load %arg5[%11, %arg8] : memref<?x20xf64>
            %13 = arith.mulf %2, %12 : f64
            %14 = affine.load %arg4[%0, %11] : memref<?x30xf64>
            %15 = arith.addf %14, %13 : f64
            affine.store %15, %arg4[%0, %11] : memref<?x30xf64>
            %16 = affine.apply #map3(%11)
            %17 = affine.load %arg5[%16, %arg8] : memref<?x20xf64>
            %18 = arith.mulf %4, %17 : f64
            %19 = affine.load %arg4[%0, %16] : memref<?x30xf64>
            %20 = arith.addf %19, %18 : f64
            affine.store %20, %arg4[%0, %16] : memref<?x30xf64>
            %21 = affine.apply #map4(%11)
            %22 = affine.load %arg5[%21, %arg8] : memref<?x20xf64>
            %23 = arith.mulf %6, %22 : f64
            %24 = affine.load %arg4[%0, %21] : memref<?x30xf64>
            %25 = arith.addf %24, %23 : f64
            affine.store %25, %arg4[%0, %21] : memref<?x30xf64>
            %26 = affine.apply #map5(%11)
            %27 = affine.load %arg5[%26, %arg8] : memref<?x20xf64>
            %28 = arith.mulf %8, %27 : f64
            %29 = affine.load %arg4[%0, %26] : memref<?x30xf64>
            %30 = arith.addf %29, %28 : f64
            affine.store %30, %arg4[%0, %26] : memref<?x30xf64>
          }
          %9 = affine.load %arg5[%0, %arg8] : memref<?x20xf64>
          %10 = arith.mulf %arg2, %9 : f64
          affine.for %arg9 = 0 to #map6(%0) {
            %11 = affine.apply #map7(%0, %arg9)
            %12 = affine.load %arg5[%11, %arg8] : memref<?x20xf64>
            %13 = arith.mulf %10, %12 : f64
            %14 = affine.load %arg4[%0, %11] : memref<?x30xf64>
            %15 = arith.addf %14, %13 : f64
            affine.store %15, %arg4[%0, %11] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

