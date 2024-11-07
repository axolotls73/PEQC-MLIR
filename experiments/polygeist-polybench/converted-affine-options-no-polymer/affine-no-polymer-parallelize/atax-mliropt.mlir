module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.parallel (%arg6) = (0) to (42) {
      affine.store %cst, %arg4[%arg6] : memref<?xf64>
    }
    affine.for %arg6 = 0 to 38 {
      affine.store %cst, %arg5[%arg6] : memref<?xf64>
      affine.for %arg7 = 0 to 42 {
        %0 = affine.load %arg5[%arg6] : memref<?xf64>
        %1 = affine.load %arg2[%arg6, %arg7] : memref<?x42xf64>
        %2 = affine.load %arg3[%arg7] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        affine.store %4, %arg5[%arg6] : memref<?xf64>
      }
      affine.parallel (%arg7) = (0) to (42) {
        %0 = affine.load %arg4[%arg7] : memref<?xf64>
        %1 = affine.load %arg2[%arg6, %arg7] : memref<?x42xf64>
        %2 = affine.load %arg5[%arg6] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        affine.store %4, %arg4[%arg7] : memref<?xf64>
      }
    }
    return
  }
}

