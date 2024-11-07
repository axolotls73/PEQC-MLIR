module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg6 = 0 to 10 {
      affine.for %arg7 = 0 to 8 {
        affine.parallel (%arg8) = (0) to (12) {
          affine.store %cst, %arg5[%arg8] : memref<?xf64>
          affine.for %arg9 = 0 to 12 {
            %0 = affine.load %arg3[%arg6, %arg7, %arg9] : memref<?x8x12xf64>
            %1 = affine.load %arg4[%arg9, %arg8] : memref<?x12xf64>
            %2 = arith.mulf %0, %1 : f64
            %3 = affine.load %arg5[%arg8] : memref<?xf64>
            %4 = arith.addf %3, %2 : f64
            affine.store %4, %arg5[%arg8] : memref<?xf64>
          }
        }
        affine.parallel (%arg8) = (0) to (12) {
          %0 = affine.load %arg5[%arg8] : memref<?xf64>
          affine.store %0, %arg3[%arg6, %arg7, %arg8] : memref<?x8x12xf64>
        }
      }
    }
    return
  }
}

