module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    affine.for %arg4 = 0 to 20 {
      affine.for %arg5 = 1 to 29 {
        %0 = affine.load %arg2[%arg5 - 1] : memref<?xf64>
        %1 = affine.load %arg2[%arg5] : memref<?xf64>
        %2 = arith.addf %0, %1 : f64
        %3 = affine.load %arg2[%arg5 + 1] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        %5 = arith.mulf %4, %cst : f64
        affine.store %5, %arg3[%arg5] : memref<?xf64>
      }
      affine.for %arg5 = 1 to 29 {
        %0 = affine.load %arg3[%arg5 - 1] : memref<?xf64>
        %1 = affine.load %arg3[%arg5] : memref<?xf64>
        %2 = arith.addf %0, %1 : f64
        %3 = affine.load %arg3[%arg5 + 1] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        %5 = arith.mulf %4, %cst : f64
        affine.store %5, %arg2[%arg5] : memref<?xf64>
      }
    }
    return
  }
}
