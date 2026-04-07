#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> ((d0 floordiv 4) * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    affine.for %arg2 = 0 to 40 {
      affine.for %arg3 = 0 to #map(%arg2) {
        affine.for %arg4 = 0 to #map1(%arg3) step 4 {
          %5 = affine.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %6 = affine.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %9 = arith.subf %8, %7 : f64
          affine.store %9, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %10 = affine.apply #map2(%arg4)
          %11 = affine.load %arg1[%arg2, %10] : memref<?x40xf64>
          %12 = affine.load %arg1[%arg3, %10] : memref<?x40xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %15 = arith.subf %14, %13 : f64
          affine.store %15, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %16 = affine.apply #map3(%arg4)
          %17 = affine.load %arg1[%arg2, %16] : memref<?x40xf64>
          %18 = affine.load %arg1[%arg3, %16] : memref<?x40xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %21 = arith.subf %20, %19 : f64
          affine.store %21, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %22 = affine.apply #map4(%arg4)
          %23 = affine.load %arg1[%arg2, %22] : memref<?x40xf64>
          %24 = affine.load %arg1[%arg3, %22] : memref<?x40xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %27 = arith.subf %26, %25 : f64
          affine.store %27, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        affine.for %arg4 = #map1(%arg3) to #map(%arg3) {
          %5 = affine.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %6 = affine.load %arg1[%arg3, %arg4] : memref<?x40xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %9 = arith.subf %8, %7 : f64
          affine.store %9, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %2 = affine.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %3 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %4 = arith.divf %3, %2 : f64
        affine.store %4, %arg1[%arg2, %arg3] : memref<?x40xf64>
      }
      affine.for %arg3 = 0 to #map1(%arg2) step 4 {
        %2 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %3 = arith.mulf %2, %2 : f64
        %4 = affine.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %5 = arith.subf %4, %3 : f64
        affine.store %5, %arg1[%arg2, %arg2] : memref<?x40xf64>
        %6 = affine.apply #map2(%arg3)
        %7 = affine.load %arg1[%arg2, %6] : memref<?x40xf64>
        %8 = arith.mulf %7, %7 : f64
        %9 = affine.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %10 = arith.subf %9, %8 : f64
        affine.store %10, %arg1[%arg2, %arg2] : memref<?x40xf64>
        %11 = affine.apply #map3(%arg3)
        %12 = affine.load %arg1[%arg2, %11] : memref<?x40xf64>
        %13 = arith.mulf %12, %12 : f64
        %14 = affine.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %15 = arith.subf %14, %13 : f64
        affine.store %15, %arg1[%arg2, %arg2] : memref<?x40xf64>
        %16 = affine.apply #map4(%arg3)
        %17 = affine.load %arg1[%arg2, %16] : memref<?x40xf64>
        %18 = arith.mulf %17, %17 : f64
        %19 = affine.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %20 = arith.subf %19, %18 : f64
        affine.store %20, %arg1[%arg2, %arg2] : memref<?x40xf64>
      }
      affine.for %arg3 = #map1(%arg2) to #map(%arg2) {
        %2 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %3 = arith.mulf %2, %2 : f64
        %4 = affine.load %arg1[%arg2, %arg2] : memref<?x40xf64>
        %5 = arith.subf %4, %3 : f64
        affine.store %5, %arg1[%arg2, %arg2] : memref<?x40xf64>
      }
      %0 = affine.load %arg1[%arg2, %arg2] : memref<?x40xf64>
      %1 = math.sqrt %0 : f64
      affine.store %1, %arg1[%arg2, %arg2] : memref<?x40xf64>
    }
    return
  }
}

