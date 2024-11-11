#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> ((-d0 + 19) floordiv 4)>
#map2 = affine_map<(d0, d1) -> (d0 + d1 * 4 + 1)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (-d0 - ((-d0 + 19) floordiv 4) * 4 + 19)>
#map7 = affine_map<(d0, d1) -> (d0 + d1 + ((-d0 + 19) floordiv 4) * 4 + 1)>
module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    affine.for %arg5 = 0 to 20 {
      affine.parallel (%arg6) = (0) to (30) {
        affine.for %arg7 = 0 to 1 {
          %0 = affine.apply #map(%arg5, %arg7)
          affine.for %arg8 = 0 to 1 {
            %1 = affine.apply #map(%arg6, %arg8)
            affine.for %arg9 = 0 to #map1(%0) {
              %4 = affine.apply #map2(%0, %arg9)
              %5 = affine.load %arg3[%4, %0] : memref<?x20xf64>
              %6 = affine.load %arg4[%4, %1] : memref<?x30xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = affine.load %arg4[%0, %1] : memref<?x30xf64>
              %9 = arith.addf %8, %7 : f64
              affine.store %9, %arg4[%0, %1] : memref<?x30xf64>
              %10 = affine.apply #map3(%4)
              %11 = affine.load %arg3[%10, %0] : memref<?x20xf64>
              %12 = affine.load %arg4[%10, %1] : memref<?x30xf64>
              %13 = arith.mulf %11, %12 : f64
              %14 = affine.load %arg4[%0, %1] : memref<?x30xf64>
              %15 = arith.addf %14, %13 : f64
              affine.store %15, %arg4[%0, %1] : memref<?x30xf64>
              %16 = affine.apply #map4(%4)
              %17 = affine.load %arg3[%16, %0] : memref<?x20xf64>
              %18 = affine.load %arg4[%16, %1] : memref<?x30xf64>
              %19 = arith.mulf %17, %18 : f64
              %20 = affine.load %arg4[%0, %1] : memref<?x30xf64>
              %21 = arith.addf %20, %19 : f64
              affine.store %21, %arg4[%0, %1] : memref<?x30xf64>
              %22 = affine.apply #map5(%4)
              %23 = affine.load %arg3[%22, %0] : memref<?x20xf64>
              %24 = affine.load %arg4[%22, %1] : memref<?x30xf64>
              %25 = arith.mulf %23, %24 : f64
              %26 = affine.load %arg4[%0, %1] : memref<?x30xf64>
              %27 = arith.addf %26, %25 : f64
              affine.store %27, %arg4[%0, %1] : memref<?x30xf64>
            }
            affine.for %arg9 = 0 to #map6(%0) {
              %4 = affine.apply #map7(%0, %arg9)
              %5 = affine.load %arg3[%4, %0] : memref<?x20xf64>
              %6 = affine.load %arg4[%4, %1] : memref<?x30xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = affine.load %arg4[%0, %1] : memref<?x30xf64>
              %9 = arith.addf %8, %7 : f64
              affine.store %9, %arg4[%0, %1] : memref<?x30xf64>
            }
            %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
            %3 = arith.mulf %arg2, %2 : f64
            affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

