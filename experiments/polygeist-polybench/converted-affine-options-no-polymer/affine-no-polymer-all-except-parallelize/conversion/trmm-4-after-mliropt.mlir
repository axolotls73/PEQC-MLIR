#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> ((-d0 + 19) floordiv 4)>
#map3 = affine_map<(d0, d1) -> (d0 + d1 * 4 + 1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (-d0 - ((-d0 + 19) floordiv 4) * 4 + 19)>
#map8 = affine_map<(d0, d1) -> (d0 + d1 + ((-d0 + 19) floordiv 4) * 4 + 1)>
module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    affine.for %arg5 = 0 to 1 {
      %0 = affine.apply #map(%arg5)
      affine.for %arg6 = 0 to 1 {
        %1 = affine.apply #map(%arg6)
        affine.for %arg7 = 0 to 20 {
          %2 = affine.apply #map1(%0, %arg7)
          affine.for %arg8 = 0 to 30 {
            %3 = affine.apply #map1(%1, %arg8)
            affine.for %arg9 = 0 to #map2(%2) {
              %6 = affine.apply #map3(%2, %arg9)
              %7 = affine.load %arg3[%6, %2] : memref<?x20xf64>
              %8 = affine.load %arg4[%6, %3] : memref<?x30xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = affine.load %arg4[%2, %3] : memref<?x30xf64>
              %11 = arith.addf %10, %9 : f64
              affine.store %11, %arg4[%2, %3] : memref<?x30xf64>
              %12 = affine.apply #map4(%6)
              %13 = affine.load %arg3[%12, %2] : memref<?x20xf64>
              %14 = affine.load %arg4[%12, %3] : memref<?x30xf64>
              %15 = arith.mulf %13, %14 : f64
              %16 = affine.load %arg4[%2, %3] : memref<?x30xf64>
              %17 = arith.addf %16, %15 : f64
              affine.store %17, %arg4[%2, %3] : memref<?x30xf64>
              %18 = affine.apply #map5(%6)
              %19 = affine.load %arg3[%18, %2] : memref<?x20xf64>
              %20 = affine.load %arg4[%18, %3] : memref<?x30xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = affine.load %arg4[%2, %3] : memref<?x30xf64>
              %23 = arith.addf %22, %21 : f64
              affine.store %23, %arg4[%2, %3] : memref<?x30xf64>
              %24 = affine.apply #map6(%6)
              %25 = affine.load %arg3[%24, %2] : memref<?x20xf64>
              %26 = affine.load %arg4[%24, %3] : memref<?x30xf64>
              %27 = arith.mulf %25, %26 : f64
              %28 = affine.load %arg4[%2, %3] : memref<?x30xf64>
              %29 = arith.addf %28, %27 : f64
              affine.store %29, %arg4[%2, %3] : memref<?x30xf64>
            }
            affine.for %arg9 = 0 to #map7(%2) {
              %6 = affine.apply #map8(%2, %arg9)
              %7 = affine.load %arg3[%6, %2] : memref<?x20xf64>
              %8 = affine.load %arg4[%6, %3] : memref<?x30xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = affine.load %arg4[%2, %3] : memref<?x30xf64>
              %11 = arith.addf %10, %9 : f64
              affine.store %11, %arg4[%2, %3] : memref<?x30xf64>
            }
            %4 = affine.load %arg4[%2, %3] : memref<?x30xf64>
            %5 = arith.mulf %arg2, %4 : f64
            affine.store %5, %arg4[%2, %3] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

