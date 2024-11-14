#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (32, -d0 + 40)>
#map2 = affine_map<(d0, d1) -> (d0 + d1)>
#map3 = affine_map<(d0) -> (d0)>
#map4 = affine_map<(d0) -> (d0 floordiv 4)>
#map5 = affine_map<(d0) -> (d0 * 4)>
#map6 = affine_map<(d0) -> (d0 + 1)>
#map7 = affine_map<(d0) -> (d0 + 2)>
#map8 = affine_map<(d0) -> (d0 + 3)>
#map9 = affine_map<(d0) -> (d0 mod 4)>
#map10 = affine_map<(d0, d1) -> (d1 + (d0 floordiv 4) * 4)>
module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    affine.for %arg2 = 0 to 2 {
      %0 = affine.apply #map(%arg2)
      affine.for %arg3 = 0 to min #map1(%0) {
        %1 = affine.apply #map2(%0, %arg3)
        affine.for %arg4 = 0 to #map3(%1) {
          affine.for %arg5 = 0 to #map4(%arg4) {
            %7 = affine.apply #map5(%arg5)
            %8 = affine.load %arg1[%1, %7] : memref<?x40xf64>
            %9 = affine.load %arg1[%arg4, %7] : memref<?x40xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = affine.load %arg1[%1, %arg4] : memref<?x40xf64>
            %12 = arith.subf %11, %10 : f64
            affine.store %12, %arg1[%1, %arg4] : memref<?x40xf64>
            %13 = affine.apply #map6(%7)
            %14 = affine.load %arg1[%1, %13] : memref<?x40xf64>
            %15 = affine.load %arg1[%arg4, %13] : memref<?x40xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = affine.load %arg1[%1, %arg4] : memref<?x40xf64>
            %18 = arith.subf %17, %16 : f64
            affine.store %18, %arg1[%1, %arg4] : memref<?x40xf64>
            %19 = affine.apply #map7(%7)
            %20 = affine.load %arg1[%1, %19] : memref<?x40xf64>
            %21 = affine.load %arg1[%arg4, %19] : memref<?x40xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = affine.load %arg1[%1, %arg4] : memref<?x40xf64>
            %24 = arith.subf %23, %22 : f64
            affine.store %24, %arg1[%1, %arg4] : memref<?x40xf64>
            %25 = affine.apply #map8(%7)
            %26 = affine.load %arg1[%1, %25] : memref<?x40xf64>
            %27 = affine.load %arg1[%arg4, %25] : memref<?x40xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = affine.load %arg1[%1, %arg4] : memref<?x40xf64>
            %30 = arith.subf %29, %28 : f64
            affine.store %30, %arg1[%1, %arg4] : memref<?x40xf64>
          }
          affine.for %arg5 = 0 to #map9(%arg4) {
            %7 = affine.apply #map10(%arg4, %arg5)
            %8 = affine.load %arg1[%1, %7] : memref<?x40xf64>
            %9 = affine.load %arg1[%arg4, %7] : memref<?x40xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = affine.load %arg1[%1, %arg4] : memref<?x40xf64>
            %12 = arith.subf %11, %10 : f64
            affine.store %12, %arg1[%1, %arg4] : memref<?x40xf64>
          }
          %4 = affine.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %5 = affine.load %arg1[%1, %arg4] : memref<?x40xf64>
          %6 = arith.divf %5, %4 : f64
          affine.store %6, %arg1[%1, %arg4] : memref<?x40xf64>
        }
        affine.for %arg4 = 0 to #map4(%1) {
          %4 = affine.apply #map5(%arg4)
          %5 = affine.load %arg1[%1, %4] : memref<?x40xf64>
          %6 = arith.mulf %5, %5 : f64
          %7 = affine.load %arg1[%1, %1] : memref<?x40xf64>
          %8 = arith.subf %7, %6 : f64
          affine.store %8, %arg1[%1, %1] : memref<?x40xf64>
          %9 = affine.apply #map6(%4)
          %10 = affine.load %arg1[%1, %9] : memref<?x40xf64>
          %11 = arith.mulf %10, %10 : f64
          %12 = affine.load %arg1[%1, %1] : memref<?x40xf64>
          %13 = arith.subf %12, %11 : f64
          affine.store %13, %arg1[%1, %1] : memref<?x40xf64>
          %14 = affine.apply #map7(%4)
          %15 = affine.load %arg1[%1, %14] : memref<?x40xf64>
          %16 = arith.mulf %15, %15 : f64
          %17 = affine.load %arg1[%1, %1] : memref<?x40xf64>
          %18 = arith.subf %17, %16 : f64
          affine.store %18, %arg1[%1, %1] : memref<?x40xf64>
          %19 = affine.apply #map8(%4)
          %20 = affine.load %arg1[%1, %19] : memref<?x40xf64>
          %21 = arith.mulf %20, %20 : f64
          %22 = affine.load %arg1[%1, %1] : memref<?x40xf64>
          %23 = arith.subf %22, %21 : f64
          affine.store %23, %arg1[%1, %1] : memref<?x40xf64>
        }
        affine.for %arg4 = 0 to #map9(%1) {
          %4 = affine.apply #map10(%1, %arg4)
          %5 = affine.load %arg1[%1, %4] : memref<?x40xf64>
          %6 = arith.mulf %5, %5 : f64
          %7 = affine.load %arg1[%1, %1] : memref<?x40xf64>
          %8 = arith.subf %7, %6 : f64
          affine.store %8, %arg1[%1, %1] : memref<?x40xf64>
        }
        %2 = affine.load %arg1[%1, %1] : memref<?x40xf64>
        %3 = math.sqrt %2 : f64
        affine.store %3, %arg1[%1, %1] : memref<?x40xf64>
      }
    }
    return
  }
}

