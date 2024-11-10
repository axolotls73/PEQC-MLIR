#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    affine.for %arg3 = 0 to 20 {
      affine.for %arg4 = 0 to 38 {
        %0 = affine.apply #map(%arg4)
        affine.for %arg5 = 0 to 38 {
          %1 = affine.apply #map(%arg5)
          %2 = affine.load %arg2[%0 - 1, %1 - 1] : memref<?x40xf64>
          %3 = affine.load %arg2[%0 - 1, %1] : memref<?x40xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg2[%0 - 1, %1 + 1] : memref<?x40xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = affine.load %arg2[%0, %1 - 1] : memref<?x40xf64>
          %8 = arith.addf %6, %7 : f64
          %9 = affine.load %arg2[%0, %1] : memref<?x40xf64>
          %10 = arith.addf %8, %9 : f64
          %11 = affine.load %arg2[%0, %1 + 1] : memref<?x40xf64>
          %12 = arith.addf %10, %11 : f64
          %13 = affine.load %arg2[%0 + 1, %1 - 1] : memref<?x40xf64>
          %14 = arith.addf %12, %13 : f64
          %15 = affine.load %arg2[%0 + 1, %1] : memref<?x40xf64>
          %16 = arith.addf %14, %15 : f64
          %17 = affine.load %arg2[%0 + 1, %1 + 1] : memref<?x40xf64>
          %18 = arith.addf %16, %17 : f64
          %19 = arith.divf %18, %cst : f64
          affine.store %19, %arg2[%0, %1] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

