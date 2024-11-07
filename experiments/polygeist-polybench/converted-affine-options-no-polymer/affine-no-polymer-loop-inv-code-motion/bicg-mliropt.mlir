module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg7 = 0 to 38 {
      affine.store %cst, %arg3[%arg7] : memref<?xf64>
    }
    affine.for %arg7 = 0 to 42 {
      affine.store %cst, %arg4[%arg7] : memref<?xf64>
      %0 = affine.load %arg6[%arg7] : memref<?xf64>
      affine.for %arg8 = 0 to 38 {
        %1 = affine.load %arg3[%arg8] : memref<?xf64>
        %2 = affine.load %arg2[%arg7, %arg8] : memref<?x38xf64>
        %3 = arith.mulf %0, %2 : f64
        %4 = arith.addf %1, %3 : f64
        affine.store %4, %arg3[%arg8] : memref<?xf64>
        %5 = affine.load %arg4[%arg7] : memref<?xf64>
        %6 = affine.load %arg2[%arg7, %arg8] : memref<?x38xf64>
        %7 = affine.load %arg5[%arg8] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = arith.addf %5, %8 : f64
        affine.store %9, %arg4[%arg7] : memref<?xf64>
      }
    }
    return
  }
}

