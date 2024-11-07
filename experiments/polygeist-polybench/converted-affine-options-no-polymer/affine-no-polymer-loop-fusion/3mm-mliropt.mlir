module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %alloc = memref.alloc() : memref<1x1xf64>
    %alloc_0 = memref.alloc() : memref<1x1xf64>
    %cst = arith.constant 0.000000e+00 : f64
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
      affine.for %arg13 = 0 to 22 {
        affine.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        affine.for %arg14 = 0 to 18 {
          affine.store %cst, %alloc[0, 0] : memref<1x1xf64>
          affine.for %arg15 = 0 to 20 {
            %5 = affine.load %arg6[%arg12, %arg15] : memref<?x20xf64>
            %6 = affine.load %arg7[%arg15, %arg14] : memref<?x18xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = affine.load %alloc[0, 0] : memref<1x1xf64>
            %9 = arith.addf %8, %7 : f64
            affine.store %9, %alloc[0, 0] : memref<1x1xf64>
          }
          affine.store %cst, %alloc_0[0, 0] : memref<1x1xf64>
          affine.for %arg15 = 0 to 24 {
            %5 = affine.load %arg9[%arg14, %arg15] : memref<?x24xf64>
            %6 = affine.load %arg10[%arg15, %arg13] : memref<?x22xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = affine.load %alloc_0[0, 0] : memref<1x1xf64>
            %9 = arith.addf %8, %7 : f64
            affine.store %9, %alloc_0[0, 0] : memref<1x1xf64>
          }
          %0 = affine.load %alloc[0, 0] : memref<1x1xf64>
          %1 = affine.load %alloc_0[0, 0] : memref<1x1xf64>
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

