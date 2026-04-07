#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    affine.for %arg4 = 0 to 20 {
      affine.for %arg5 = 0 to 28 {
        %0 = affine.apply #map(%arg5)
        affine.for %arg6 = 0 to 28 {
          %1 = affine.apply #map(%arg6)
          %2 = affine.load %arg2[%0, %1] : memref<?x30xf64>
          %3 = affine.load %arg2[%0, %1 - 1] : memref<?x30xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg2[%0, %1 + 1] : memref<?x30xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = affine.load %arg2[%0 + 1, %1] : memref<?x30xf64>
          %8 = arith.addf %6, %7 : f64
          %9 = affine.load %arg2[%0 - 1, %1] : memref<?x30xf64>
          %10 = arith.addf %8, %9 : f64
          %11 = arith.mulf %10, %cst : f64
          affine.store %11, %arg3[%0, %1] : memref<?x30xf64>
        }
      }
      affine.for %arg5 = 0 to 28 {
        %0 = affine.apply #map(%arg5)
        affine.for %arg6 = 0 to 28 {
          %1 = affine.apply #map(%arg6)
          %2 = affine.load %arg3[%0, %1] : memref<?x30xf64>
          %3 = affine.load %arg3[%0, %1 - 1] : memref<?x30xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg3[%0, %1 + 1] : memref<?x30xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = affine.load %arg3[%0 + 1, %1] : memref<?x30xf64>
          %8 = arith.addf %6, %7 : f64
          %9 = affine.load %arg3[%0 - 1, %1] : memref<?x30xf64>
          %10 = arith.addf %8, %9 : f64
          %11 = arith.mulf %10, %cst : f64
          affine.store %11, %arg2[%0, %1] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

