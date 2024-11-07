#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0)>
#map2 = affine_map<(d0) -> (d0 floordiv 4)>
#map3 = affine_map<(d0) -> (d0 * 4)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (d0 mod 4)>
#map8 = affine_map<(d0, d1) -> (d1 + (d0 floordiv 4) * 4)>
module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    affine.for %arg2 = 0 to 40 {
      affine.parallel (%arg3) = (0) to (1) {
        %0 = affine.apply #map(%arg2, %arg3)
        affine.for %arg4 = 0 to #map1(%0) {
          affine.for %arg5 = 0 to #map2(%arg4) {
            %6 = affine.apply #map3(%arg5)
            %7 = affine.load %arg1[%0, %6] : memref<?x40xf64>
            %8 = affine.load %arg1[%arg4, %6] : memref<?x40xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = affine.load %arg1[%0, %arg4] : memref<?x40xf64>
            %11 = arith.subf %10, %9 : f64
            affine.store %11, %arg1[%0, %arg4] : memref<?x40xf64>
            %12 = affine.apply #map4(%6)
            %13 = affine.load %arg1[%0, %12] : memref<?x40xf64>
            %14 = affine.load %arg1[%arg4, %12] : memref<?x40xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = affine.load %arg1[%0, %arg4] : memref<?x40xf64>
            %17 = arith.subf %16, %15 : f64
            affine.store %17, %arg1[%0, %arg4] : memref<?x40xf64>
            %18 = affine.apply #map5(%6)
            %19 = affine.load %arg1[%0, %18] : memref<?x40xf64>
            %20 = affine.load %arg1[%arg4, %18] : memref<?x40xf64>
            %21 = arith.mulf %19, %20 : f64
            %22 = affine.load %arg1[%0, %arg4] : memref<?x40xf64>
            %23 = arith.subf %22, %21 : f64
            affine.store %23, %arg1[%0, %arg4] : memref<?x40xf64>
            %24 = affine.apply #map6(%6)
            %25 = affine.load %arg1[%0, %24] : memref<?x40xf64>
            %26 = affine.load %arg1[%arg4, %24] : memref<?x40xf64>
            %27 = arith.mulf %25, %26 : f64
            %28 = affine.load %arg1[%0, %arg4] : memref<?x40xf64>
            %29 = arith.subf %28, %27 : f64
            affine.store %29, %arg1[%0, %arg4] : memref<?x40xf64>
          }
          affine.for %arg5 = 0 to #map7(%arg4) {
            %6 = affine.apply #map8(%arg4, %arg5)
            %7 = affine.load %arg1[%0, %6] : memref<?x40xf64>
            %8 = affine.load %arg1[%arg4, %6] : memref<?x40xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = affine.load %arg1[%0, %arg4] : memref<?x40xf64>
            %11 = arith.subf %10, %9 : f64
            affine.store %11, %arg1[%0, %arg4] : memref<?x40xf64>
          }
          %3 = affine.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %4 = affine.load %arg1[%0, %arg4] : memref<?x40xf64>
          %5 = arith.divf %4, %3 : f64
          affine.store %5, %arg1[%0, %arg4] : memref<?x40xf64>
        }
        affine.for %arg4 = 0 to #map2(%0) {
          %3 = affine.apply #map3(%arg4)
          %4 = affine.load %arg1[%0, %3] : memref<?x40xf64>
          %5 = arith.mulf %4, %4 : f64
          %6 = affine.load %arg1[%0, %0] : memref<?x40xf64>
          %7 = arith.subf %6, %5 : f64
          affine.store %7, %arg1[%0, %0] : memref<?x40xf64>
          %8 = affine.apply #map4(%3)
          %9 = affine.load %arg1[%0, %8] : memref<?x40xf64>
          %10 = arith.mulf %9, %9 : f64
          %11 = affine.load %arg1[%0, %0] : memref<?x40xf64>
          %12 = arith.subf %11, %10 : f64
          affine.store %12, %arg1[%0, %0] : memref<?x40xf64>
          %13 = affine.apply #map5(%3)
          %14 = affine.load %arg1[%0, %13] : memref<?x40xf64>
          %15 = arith.mulf %14, %14 : f64
          %16 = affine.load %arg1[%0, %0] : memref<?x40xf64>
          %17 = arith.subf %16, %15 : f64
          affine.store %17, %arg1[%0, %0] : memref<?x40xf64>
          %18 = affine.apply #map6(%3)
          %19 = affine.load %arg1[%0, %18] : memref<?x40xf64>
          %20 = arith.mulf %19, %19 : f64
          %21 = affine.load %arg1[%0, %0] : memref<?x40xf64>
          %22 = arith.subf %21, %20 : f64
          affine.store %22, %arg1[%0, %0] : memref<?x40xf64>
        }
        affine.for %arg4 = 0 to #map7(%0) {
          %3 = affine.apply #map8(%0, %arg4)
          %4 = affine.load %arg1[%0, %3] : memref<?x40xf64>
          %5 = arith.mulf %4, %4 : f64
          %6 = affine.load %arg1[%0, %0] : memref<?x40xf64>
          %7 = arith.subf %6, %5 : f64
          affine.store %7, %arg1[%0, %0] : memref<?x40xf64>
        }
        %1 = affine.load %arg1[%0, %0] : memref<?x40xf64>
        %2 = math.sqrt %1 : f64
        affine.store %2, %arg1[%0, %0] : memref<?x40xf64>
      }
    }
    return
  }
}

