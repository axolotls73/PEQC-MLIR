#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4 + 1)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    affine.for %arg4 = 0 to 1 {
      %0 = affine.apply #map(%arg4)
      affine.for %arg5 = 0 to 20 {
        %1 = affine.apply #map1(%0, %arg5)
        affine.for %arg6 = 0 to 7 {
          %2 = affine.apply #map2(%arg6)
          %3 = affine.load %arg2[%2 - 1] : memref<?xf64>
          %4 = affine.load %arg2[%2] : memref<?xf64>
          %5 = arith.addf %3, %4 : f64
          %6 = affine.load %arg2[%2 + 1] : memref<?xf64>
          %7 = arith.addf %5, %6 : f64
          %8 = arith.mulf %7, %cst : f64
          affine.store %8, %arg3[%2] : memref<?xf64>
          %9 = affine.apply #map3(%2)
          %10 = affine.load %arg2[%9 - 1] : memref<?xf64>
          %11 = affine.load %arg2[%9] : memref<?xf64>
          %12 = arith.addf %10, %11 : f64
          %13 = affine.load %arg2[%9 + 1] : memref<?xf64>
          %14 = arith.addf %12, %13 : f64
          %15 = arith.mulf %14, %cst : f64
          affine.store %15, %arg3[%9] : memref<?xf64>
          %16 = affine.apply #map4(%2)
          %17 = affine.load %arg2[%16 - 1] : memref<?xf64>
          %18 = affine.load %arg2[%16] : memref<?xf64>
          %19 = arith.addf %17, %18 : f64
          %20 = affine.load %arg2[%16 + 1] : memref<?xf64>
          %21 = arith.addf %19, %20 : f64
          %22 = arith.mulf %21, %cst : f64
          affine.store %22, %arg3[%16] : memref<?xf64>
          %23 = affine.apply #map5(%2)
          %24 = affine.load %arg2[%23 - 1] : memref<?xf64>
          %25 = affine.load %arg2[%23] : memref<?xf64>
          %26 = arith.addf %24, %25 : f64
          %27 = affine.load %arg2[%23 + 1] : memref<?xf64>
          %28 = arith.addf %26, %27 : f64
          %29 = arith.mulf %28, %cst : f64
          affine.store %29, %arg3[%23] : memref<?xf64>
        }
        affine.for %arg6 = 0 to 7 {
          %2 = affine.apply #map2(%arg6)
          %3 = affine.load %arg3[%2 - 1] : memref<?xf64>
          %4 = affine.load %arg3[%2] : memref<?xf64>
          %5 = arith.addf %3, %4 : f64
          %6 = affine.load %arg3[%2 + 1] : memref<?xf64>
          %7 = arith.addf %5, %6 : f64
          %8 = arith.mulf %7, %cst : f64
          affine.store %8, %arg2[%2] : memref<?xf64>
          %9 = affine.apply #map3(%2)
          %10 = affine.load %arg3[%9 - 1] : memref<?xf64>
          %11 = affine.load %arg3[%9] : memref<?xf64>
          %12 = arith.addf %10, %11 : f64
          %13 = affine.load %arg3[%9 + 1] : memref<?xf64>
          %14 = arith.addf %12, %13 : f64
          %15 = arith.mulf %14, %cst : f64
          affine.store %15, %arg2[%9] : memref<?xf64>
          %16 = affine.apply #map4(%2)
          %17 = affine.load %arg3[%16 - 1] : memref<?xf64>
          %18 = affine.load %arg3[%16] : memref<?xf64>
          %19 = arith.addf %17, %18 : f64
          %20 = affine.load %arg3[%16 + 1] : memref<?xf64>
          %21 = arith.addf %19, %20 : f64
          %22 = arith.mulf %21, %cst : f64
          affine.store %22, %arg2[%16] : memref<?xf64>
          %23 = affine.apply #map5(%2)
          %24 = affine.load %arg3[%23 - 1] : memref<?xf64>
          %25 = affine.load %arg3[%23] : memref<?xf64>
          %26 = arith.addf %24, %25 : f64
          %27 = affine.load %arg3[%23 + 1] : memref<?xf64>
          %28 = arith.addf %26, %27 : f64
          %29 = arith.mulf %28, %cst : f64
          affine.store %29, %arg2[%23] : memref<?xf64>
        }
      }
    }
    return
  }
}

