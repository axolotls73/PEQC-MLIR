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
        affine.for %arg8 = 0 to 20 {
          %2 = affine.load %arg5[%1, %arg8] : memref<?x20xf64>
          %3 = arith.mulf %arg2, %2 : f64
          %4 = affine.load %arg5[%1, %arg8] : memref<?x20xf64>
          %5 = arith.mulf %arg2, %4 : f64
          %6 = affine.load %arg5[%1, %arg8] : memref<?x20xf64>
          %7 = arith.mulf %arg2, %6 : f64
          %8 = affine.load %arg5[%1, %arg8] : memref<?x20xf64>
          %9 = arith.mulf %arg2, %8 : f64
          affine.for %arg9 = 0 to #map2(%1) {
            %12 = affine.apply #map3(%arg9)
            %13 = affine.load %arg5[%12, %arg8] : memref<?x20xf64>
            %14 = arith.mulf %3, %13 : f64
            %15 = affine.load %arg4[%1, %12] : memref<?x30xf64>
            %16 = arith.addf %15, %14 : f64
            affine.store %16, %arg4[%1, %12] : memref<?x30xf64>
            %17 = affine.apply #map4(%12)
            %18 = affine.load %arg5[%17, %arg8] : memref<?x20xf64>
            %19 = arith.mulf %5, %18 : f64
            %20 = affine.load %arg4[%1, %17] : memref<?x30xf64>
            %21 = arith.addf %20, %19 : f64
            affine.store %21, %arg4[%1, %17] : memref<?x30xf64>
            %22 = affine.apply #map5(%12)
            %23 = affine.load %arg5[%22, %arg8] : memref<?x20xf64>
            %24 = arith.mulf %7, %23 : f64
            %25 = affine.load %arg4[%1, %22] : memref<?x30xf64>
            %26 = arith.addf %25, %24 : f64
            affine.store %26, %arg4[%1, %22] : memref<?x30xf64>
            %27 = affine.apply #map6(%12)
            %28 = affine.load %arg5[%27, %arg8] : memref<?x20xf64>
            %29 = arith.mulf %9, %28 : f64
            %30 = affine.load %arg4[%1, %27] : memref<?x30xf64>
            %31 = arith.addf %30, %29 : f64
            affine.store %31, %arg4[%1, %27] : memref<?x30xf64>
          }
          %10 = affine.load %arg5[%1, %arg8] : memref<?x20xf64>
          %11 = arith.mulf %arg2, %10 : f64
          affine.for %arg9 = 0 to #map7(%1) {
            %12 = affine.apply #map8(%1, %arg9)
            %13 = affine.load %arg5[%12, %arg8] : memref<?x20xf64>
            %14 = arith.mulf %11, %13 : f64
            %15 = affine.load %arg4[%1, %12] : memref<?x30xf64>
            %16 = arith.addf %15, %14 : f64
            affine.store %16, %arg4[%1, %12] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

