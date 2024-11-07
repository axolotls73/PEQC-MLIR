#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> ((d0 floordiv 4) * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    affine.for %arg2 = 0 to 40 {
      affine.for %arg3 = 0 to #map(%arg2) {
        affine.for %arg4 = 0 to #map1(%arg3) step 4 {
          %3 = affine.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %4 = affine.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %7 = arith.subf %6, %5 : f64
          affine.store %7, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %8 = affine.apply #map2(%arg4)
          %9 = affine.load %arg1[%arg2, %8] : memref<?x40xf64>
          %10 = affine.load %arg1[%8, %arg3] : memref<?x40xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %13 = arith.subf %12, %11 : f64
          affine.store %13, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %14 = affine.apply #map3(%arg4)
          %15 = affine.load %arg1[%arg2, %14] : memref<?x40xf64>
          %16 = affine.load %arg1[%14, %arg3] : memref<?x40xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %19 = arith.subf %18, %17 : f64
          affine.store %19, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %20 = affine.apply #map4(%arg4)
          %21 = affine.load %arg1[%arg2, %20] : memref<?x40xf64>
          %22 = affine.load %arg1[%20, %arg3] : memref<?x40xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %25 = arith.subf %24, %23 : f64
          affine.store %25, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        affine.for %arg4 = #map1(%arg3) to #map(%arg3) {
          %3 = affine.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %4 = affine.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %7 = arith.subf %6, %5 : f64
          affine.store %7, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        %0 = affine.load %arg1[%arg3, %arg3] : memref<?x40xf64>
        %1 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
        %2 = arith.divf %1, %0 : f64
        affine.store %2, %arg1[%arg2, %arg3] : memref<?x40xf64>
      }
      affine.for %arg3 = #map(%arg2) to 40 {
        affine.for %arg4 = 0 to #map1(%arg2) step 4 {
          %0 = affine.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %1 = affine.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %4 = arith.subf %3, %2 : f64
          affine.store %4, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %5 = affine.apply #map2(%arg4)
          %6 = affine.load %arg1[%arg2, %5] : memref<?x40xf64>
          %7 = affine.load %arg1[%5, %arg3] : memref<?x40xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %10 = arith.subf %9, %8 : f64
          affine.store %10, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %11 = affine.apply #map3(%arg4)
          %12 = affine.load %arg1[%arg2, %11] : memref<?x40xf64>
          %13 = affine.load %arg1[%11, %arg3] : memref<?x40xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %16 = arith.subf %15, %14 : f64
          affine.store %16, %arg1[%arg2, %arg3] : memref<?x40xf64>
          %17 = affine.apply #map4(%arg4)
          %18 = affine.load %arg1[%arg2, %17] : memref<?x40xf64>
          %19 = affine.load %arg1[%17, %arg3] : memref<?x40xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %22 = arith.subf %21, %20 : f64
          affine.store %22, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
        affine.for %arg4 = #map1(%arg2) to #map(%arg2) {
          %0 = affine.load %arg1[%arg2, %arg4] : memref<?x40xf64>
          %1 = affine.load %arg1[%arg4, %arg3] : memref<?x40xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
          %4 = arith.subf %3, %2 : f64
          affine.store %4, %arg1[%arg2, %arg3] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

