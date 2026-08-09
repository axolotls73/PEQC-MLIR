module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x50xf64>, %arg6: memref<?x60xf64>, %arg7: memref<?x50xf64>, %arg8: memref<?x70xf64>, %arg9: memref<?x80xf64>, %arg10: memref<?x70xf64>, %arg11: memref<?x70xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg12 = 0 to 40 {
      affine.for %arg13 = 0 to 50 {
        affine.store %cst, %arg5[%arg12, %arg13] : memref<?x50xf64>
        affine.for %arg14 = 0 to 60 {
          %0 = affine.load %arg6[%arg12, %arg14] : memref<?x60xf64>
          %1 = affine.load %arg7[%arg14, %arg13] : memref<?x50xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg5[%arg12, %arg13] : memref<?x50xf64>
          %4 = arith.addf %3, %2 : f64
          affine.store %4, %arg5[%arg12, %arg13] : memref<?x50xf64>
        }
      }
    }
    affine.for %arg12 = 0 to 50 {
      affine.for %arg13 = 0 to 70 {
        affine.store %cst, %arg8[%arg12, %arg13] : memref<?x70xf64>
        affine.for %arg14 = 0 to 80 {
          %0 = affine.load %arg9[%arg12, %arg14] : memref<?x80xf64>
          %1 = affine.load %arg10[%arg14, %arg13] : memref<?x70xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg8[%arg12, %arg13] : memref<?x70xf64>
          %4 = arith.addf %3, %2 : f64
          affine.store %4, %arg8[%arg12, %arg13] : memref<?x70xf64>
        }
      }
    }
    affine.for %arg12 = 0 to 40 {
      affine.for %arg13 = 0 to 70 {
        affine.store %cst, %arg11[%arg12, %arg13] : memref<?x70xf64>
        affine.for %arg14 = 0 to 50 {
          %0 = affine.load %arg5[%arg12, %arg14] : memref<?x50xf64>
          %1 = affine.load %arg8[%arg14, %arg13] : memref<?x70xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg11[%arg12, %arg13] : memref<?x70xf64>
          %4 = arith.addf %3, %2 : f64
          affine.store %4, %arg11[%arg12, %arg13] : memref<?x70xf64>
        }
      }
    }
    return
  }
}
