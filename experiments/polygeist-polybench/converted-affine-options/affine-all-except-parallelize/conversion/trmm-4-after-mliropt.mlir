#map = affine_map<(d0) -> (-d0 + 19)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 + 28)>
#map7 = affine_map<(d0) -> (d0 * 32)>
#map8 = affine_map<(d0, d1) -> (d0 + d1)>
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
    affine.for %arg5 = 0 to 1 {
      %0 = affine.apply #map7(%arg5)
      affine.for %arg6 = 0 to 20 {
        %1 = affine.apply #map8(%0, %arg6)
        affine.for %arg7 = 0 to 7 {
          %2 = affine.apply #map2(%arg7)
          %3 = affine.load %arg4[%1, %2] : memref<?x30xf64>
          %4 = arith.mulf %arg2, %3 : f64
          affine.store %4, %arg4[%1, %2] : memref<?x30xf64>
          %5 = affine.apply #map3(%2)
          %6 = affine.load %arg4[%1, %5] : memref<?x30xf64>
          %7 = arith.mulf %arg2, %6 : f64
          affine.store %7, %arg4[%1, %5] : memref<?x30xf64>
          %8 = affine.apply #map4(%2)
          %9 = affine.load %arg4[%1, %8] : memref<?x30xf64>
          %10 = arith.mulf %arg2, %9 : f64
          affine.store %10, %arg4[%1, %8] : memref<?x30xf64>
          %11 = affine.apply #map5(%2)
          %12 = affine.load %arg4[%1, %11] : memref<?x30xf64>
          %13 = arith.mulf %arg2, %12 : f64
          affine.store %13, %arg4[%1, %11] : memref<?x30xf64>
        }
        affine.for %arg7 = 0 to 2 {
          %2 = affine.apply #map6(%arg7)
          %3 = affine.load %arg4[%1, %2] : memref<?x30xf64>
          %4 = arith.mulf %arg2, %3 : f64
          affine.store %4, %arg4[%1, %2] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

