#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 floordiv 4)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 mod 4)>
#map7 = affine_map<(d0, d1) -> (d1 + (d0 floordiv 4) * 4)>
module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    affine.for %arg4 = 0 to 40 {
      affine.parallel (%arg5) = (0) to (1) {
        %0 = affine.apply #map(%arg4, %arg5)
        %1 = affine.load %arg3[%0] : memref<?xf64>
        affine.store %1, %arg2[%0] : memref<?xf64>
        affine.for %arg6 = 0 to #map1(%0) {
          %5 = affine.apply #map2(%arg6)
          %6 = affine.load %arg1[%0, %5] : memref<?x40xf64>
          %7 = affine.load %arg2[%5] : memref<?xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %arg2[%0] : memref<?xf64>
          %10 = arith.subf %9, %8 : f64
          affine.store %10, %arg2[%0] : memref<?xf64>
          %11 = affine.apply #map3(%5)
          %12 = affine.load %arg1[%0, %11] : memref<?x40xf64>
          %13 = affine.load %arg2[%11] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = affine.load %arg2[%0] : memref<?xf64>
          %16 = arith.subf %15, %14 : f64
          affine.store %16, %arg2[%0] : memref<?xf64>
          %17 = affine.apply #map4(%5)
          %18 = affine.load %arg1[%0, %17] : memref<?x40xf64>
          %19 = affine.load %arg2[%17] : memref<?xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = affine.load %arg2[%0] : memref<?xf64>
          %22 = arith.subf %21, %20 : f64
          affine.store %22, %arg2[%0] : memref<?xf64>
          %23 = affine.apply #map5(%5)
          %24 = affine.load %arg1[%0, %23] : memref<?x40xf64>
          %25 = affine.load %arg2[%23] : memref<?xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = affine.load %arg2[%0] : memref<?xf64>
          %28 = arith.subf %27, %26 : f64
          affine.store %28, %arg2[%0] : memref<?xf64>
        }
        affine.for %arg6 = 0 to #map6(%0) {
          %5 = affine.apply #map7(%0, %arg6)
          %6 = affine.load %arg1[%0, %5] : memref<?x40xf64>
          %7 = affine.load %arg2[%5] : memref<?xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %arg2[%0] : memref<?xf64>
          %10 = arith.subf %9, %8 : f64
          affine.store %10, %arg2[%0] : memref<?xf64>
        }
        %2 = affine.load %arg2[%0] : memref<?xf64>
        %3 = affine.load %arg1[%0, %0] : memref<?x40xf64>
        %4 = arith.divf %2, %3 : f64
        affine.store %4, %arg2[%0] : memref<?xf64>
      }
    }
    return
  }
}

