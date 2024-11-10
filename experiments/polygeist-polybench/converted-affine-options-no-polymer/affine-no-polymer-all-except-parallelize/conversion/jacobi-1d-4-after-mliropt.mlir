#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4 + 1)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    affine.for %arg4 = 0 to 20 {
      affine.for %arg5 = 0 to 1 {
        %0 = affine.apply #map(%arg4, %arg5)
        affine.for %arg6 = 0 to 7 {
          %1 = affine.apply #map1(%arg6)
          %2 = affine.load %arg2[%1 - 1] : memref<?xf64>
          %3 = affine.load %arg2[%1] : memref<?xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg2[%1 + 1] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = arith.mulf %6, %cst : f64
          affine.store %7, %arg3[%1] : memref<?xf64>
          %8 = affine.apply #map2(%1)
          %9 = affine.load %arg2[%8 - 1] : memref<?xf64>
          %10 = affine.load %arg2[%8] : memref<?xf64>
          %11 = arith.addf %9, %10 : f64
          %12 = affine.load %arg2[%8 + 1] : memref<?xf64>
          %13 = arith.addf %11, %12 : f64
          %14 = arith.mulf %13, %cst : f64
          affine.store %14, %arg3[%8] : memref<?xf64>
          %15 = affine.apply #map3(%1)
          %16 = affine.load %arg2[%15 - 1] : memref<?xf64>
          %17 = affine.load %arg2[%15] : memref<?xf64>
          %18 = arith.addf %16, %17 : f64
          %19 = affine.load %arg2[%15 + 1] : memref<?xf64>
          %20 = arith.addf %18, %19 : f64
          %21 = arith.mulf %20, %cst : f64
          affine.store %21, %arg3[%15] : memref<?xf64>
          %22 = affine.apply #map4(%1)
          %23 = affine.load %arg2[%22 - 1] : memref<?xf64>
          %24 = affine.load %arg2[%22] : memref<?xf64>
          %25 = arith.addf %23, %24 : f64
          %26 = affine.load %arg2[%22 + 1] : memref<?xf64>
          %27 = arith.addf %25, %26 : f64
          %28 = arith.mulf %27, %cst : f64
          affine.store %28, %arg3[%22] : memref<?xf64>
        }
        affine.for %arg6 = 0 to 7 {
          %1 = affine.apply #map1(%arg6)
          %2 = affine.load %arg3[%1 - 1] : memref<?xf64>
          %3 = affine.load %arg3[%1] : memref<?xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg3[%1 + 1] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = arith.mulf %6, %cst : f64
          affine.store %7, %arg2[%1] : memref<?xf64>
          %8 = affine.apply #map2(%1)
          %9 = affine.load %arg3[%8 - 1] : memref<?xf64>
          %10 = affine.load %arg3[%8] : memref<?xf64>
          %11 = arith.addf %9, %10 : f64
          %12 = affine.load %arg3[%8 + 1] : memref<?xf64>
          %13 = arith.addf %11, %12 : f64
          %14 = arith.mulf %13, %cst : f64
          affine.store %14, %arg2[%8] : memref<?xf64>
          %15 = affine.apply #map3(%1)
          %16 = affine.load %arg3[%15 - 1] : memref<?xf64>
          %17 = affine.load %arg3[%15] : memref<?xf64>
          %18 = arith.addf %16, %17 : f64
          %19 = affine.load %arg3[%15 + 1] : memref<?xf64>
          %20 = arith.addf %18, %19 : f64
          %21 = arith.mulf %20, %cst : f64
          affine.store %21, %arg2[%15] : memref<?xf64>
          %22 = affine.apply #map4(%1)
          %23 = affine.load %arg3[%22 - 1] : memref<?xf64>
          %24 = affine.load %arg3[%22] : memref<?xf64>
          %25 = arith.addf %23, %24 : f64
          %26 = affine.load %arg3[%22 + 1] : memref<?xf64>
          %27 = arith.addf %25, %26 : f64
          %28 = arith.mulf %27, %cst : f64
          affine.store %28, %arg2[%22] : memref<?xf64>
        }
      }
    }
    return
  }
}

