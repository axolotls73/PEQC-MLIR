module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg12 = 0 to 16 {
      affine.for %arg13 = 0 to 18 {
        affine.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
        affine.for %arg14 = 0 to 20 {
          %0 = affine.load %arg6[%arg12, %arg14] : memref<?x20xf64>
          %1 = affine.load %arg7[%arg14, %arg13] : memref<?x18xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg5[%arg12, %arg13] : memref<?x18xf64>
          %4 = arith.addf %3, %2 : f64
          affine.store %4, %arg5[%arg12, %arg13] : memref<?x18xf64>
        }
      }
    }
    affine.for %arg12 = 0 to 18 {
      affine.for %arg13 = 0 to 22 {
        affine.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
        affine.for %arg14 = 0 to 24 {
          %0 = affine.load %arg9[%arg12, %arg14] : memref<?x24xf64>
          %1 = affine.load %arg10[%arg14, %arg13] : memref<?x22xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          affine.store %4, %arg8[%arg12, %arg13] : memref<?x22xf64>
        }
      }
    }
    affine.for %arg12 = 0 to 16 {
      affine.for %arg13 = 0 to 22 {
        affine.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        affine.for %arg14 = 0 to 18 {
          %0 = affine.load %arg5[%arg12, %arg14] : memref<?x18xf64>
          %1 = affine.load %arg8[%arg14, %arg13] : memref<?x22xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = affine.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          affine.store %4, %arg11[%arg12, %arg13] : memref<?x22xf64>
        }
      }
    }
    return
  }
}

