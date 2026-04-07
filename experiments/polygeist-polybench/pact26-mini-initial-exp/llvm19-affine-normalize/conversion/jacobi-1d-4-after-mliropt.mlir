#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    affine.for %arg4 = 0 to 20 {
      affine.for %arg5 = 0 to 28 {
        %0 = affine.apply #map(%arg5)
        %1 = affine.load %arg2[%0 - 1] : memref<?xf64>
        %2 = affine.load %arg2[%0] : memref<?xf64>
        %3 = arith.addf %1, %2 : f64
        %4 = affine.load %arg2[%0 + 1] : memref<?xf64>
        %5 = arith.addf %3, %4 : f64
        %6 = arith.mulf %5, %cst : f64
        affine.store %6, %arg3[%0] : memref<?xf64>
      }
      affine.for %arg5 = 0 to 28 {
        %0 = affine.apply #map(%arg5)
        %1 = affine.load %arg3[%0 - 1] : memref<?xf64>
        %2 = affine.load %arg3[%0] : memref<?xf64>
        %3 = arith.addf %1, %2 : f64
        %4 = affine.load %arg3[%0 + 1] : memref<?xf64>
        %5 = arith.addf %3, %4 : f64
        %6 = arith.mulf %5, %cst : f64
        affine.store %6, %arg2[%0] : memref<?xf64>
      }
    }
    return
  }
}

