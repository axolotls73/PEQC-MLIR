#map = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0)>
#map3 = affine_map<(d0) -> (d0 floordiv 4)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (d0 mod 4)>
#map8 = affine_map<(d0, d1) -> (d1 + (d0 floordiv 4) * 4)>
#map9 = affine_map<(d0) -> (-d0 + 40)>
module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    affine.for %arg2 = 0 to 10 {
      %0 = affine.apply #map(%arg2)
      affine.for %arg3 = 0 to 4 {
        %1 = affine.apply #map1(%0, %arg3)
        affine.for %arg4 = 0 to #map2(%1) {
          affine.for %arg5 = 0 to #map3(%arg4) {
            %5 = affine.apply #map(%arg5)
            %6 = affine.load %arg1[%1, %5] : memref<?x40xf64>
            %7 = affine.load %arg1[%5, %arg4] : memref<?x40xf64>
            %8 = arith.mulf %6, %7 : f64
            %9 = affine.load %arg1[%1, %arg4] : memref<?x40xf64>
            %10 = arith.subf %9, %8 : f64
            affine.store %10, %arg1[%1, %arg4] : memref<?x40xf64>
            %11 = affine.apply #map4(%5)
            %12 = affine.load %arg1[%1, %11] : memref<?x40xf64>
            %13 = affine.load %arg1[%11, %arg4] : memref<?x40xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = affine.load %arg1[%1, %arg4] : memref<?x40xf64>
            %16 = arith.subf %15, %14 : f64
            affine.store %16, %arg1[%1, %arg4] : memref<?x40xf64>
            %17 = affine.apply #map5(%5)
            %18 = affine.load %arg1[%1, %17] : memref<?x40xf64>
            %19 = affine.load %arg1[%17, %arg4] : memref<?x40xf64>
            %20 = arith.mulf %18, %19 : f64
            %21 = affine.load %arg1[%1, %arg4] : memref<?x40xf64>
            %22 = arith.subf %21, %20 : f64
            affine.store %22, %arg1[%1, %arg4] : memref<?x40xf64>
            %23 = affine.apply #map6(%5)
            %24 = affine.load %arg1[%1, %23] : memref<?x40xf64>
            %25 = affine.load %arg1[%23, %arg4] : memref<?x40xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = affine.load %arg1[%1, %arg4] : memref<?x40xf64>
            %28 = arith.subf %27, %26 : f64
            affine.store %28, %arg1[%1, %arg4] : memref<?x40xf64>
          }
          affine.for %arg5 = 0 to #map7(%arg4) {
            %5 = affine.apply #map8(%arg4, %arg5)
            %6 = affine.load %arg1[%1, %5] : memref<?x40xf64>
            %7 = affine.load %arg1[%5, %arg4] : memref<?x40xf64>
            %8 = arith.mulf %6, %7 : f64
            %9 = affine.load %arg1[%1, %arg4] : memref<?x40xf64>
            %10 = arith.subf %9, %8 : f64
            affine.store %10, %arg1[%1, %arg4] : memref<?x40xf64>
          }
          %2 = affine.load %arg1[%arg4, %arg4] : memref<?x40xf64>
          %3 = affine.load %arg1[%1, %arg4] : memref<?x40xf64>
          %4 = arith.divf %3, %2 : f64
          affine.store %4, %arg1[%1, %arg4] : memref<?x40xf64>
        }
        affine.for %arg4 = 0 to #map9(%1) {
          %2 = affine.apply #map1(%1, %arg4)
          affine.for %arg5 = 0 to #map3(%1) {
            %3 = affine.apply #map(%arg5)
            %4 = affine.load %arg1[%1, %3] : memref<?x40xf64>
            %5 = affine.load %arg1[%3, %2] : memref<?x40xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = affine.load %arg1[%1, %2] : memref<?x40xf64>
            %8 = arith.subf %7, %6 : f64
            affine.store %8, %arg1[%1, %2] : memref<?x40xf64>
            %9 = affine.apply #map4(%3)
            %10 = affine.load %arg1[%1, %9] : memref<?x40xf64>
            %11 = affine.load %arg1[%9, %2] : memref<?x40xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = affine.load %arg1[%1, %2] : memref<?x40xf64>
            %14 = arith.subf %13, %12 : f64
            affine.store %14, %arg1[%1, %2] : memref<?x40xf64>
            %15 = affine.apply #map5(%3)
            %16 = affine.load %arg1[%1, %15] : memref<?x40xf64>
            %17 = affine.load %arg1[%15, %2] : memref<?x40xf64>
            %18 = arith.mulf %16, %17 : f64
            %19 = affine.load %arg1[%1, %2] : memref<?x40xf64>
            %20 = arith.subf %19, %18 : f64
            affine.store %20, %arg1[%1, %2] : memref<?x40xf64>
            %21 = affine.apply #map6(%3)
            %22 = affine.load %arg1[%1, %21] : memref<?x40xf64>
            %23 = affine.load %arg1[%21, %2] : memref<?x40xf64>
            %24 = arith.mulf %22, %23 : f64
            %25 = affine.load %arg1[%1, %2] : memref<?x40xf64>
            %26 = arith.subf %25, %24 : f64
            affine.store %26, %arg1[%1, %2] : memref<?x40xf64>
          }
          affine.for %arg5 = 0 to #map7(%1) {
            %3 = affine.apply #map8(%1, %arg5)
            %4 = affine.load %arg1[%1, %3] : memref<?x40xf64>
            %5 = affine.load %arg1[%3, %2] : memref<?x40xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = affine.load %arg1[%1, %2] : memref<?x40xf64>
            %8 = arith.subf %7, %6 : f64
            affine.store %8, %arg1[%1, %2] : memref<?x40xf64>
          }
        }
      }
    }
    return
  }
}

