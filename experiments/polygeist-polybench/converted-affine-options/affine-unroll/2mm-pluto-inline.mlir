#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg11 = 0 to 16 {
      affine.for %arg12 = 0 to 18 {
        %0 = affine.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %1 = arith.mulf %0, %arg5 : f64
        affine.store %1, %arg10[%arg11, %arg12] : memref<?x24xf64>
        affine.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
      }
      affine.for %arg12 = 18 to 24 {
        %0 = affine.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %1 = arith.mulf %0, %arg5 : f64
        affine.store %1, %arg10[%arg11, %arg12] : memref<?x24xf64>
      }
    }
    affine.for %arg11 = 0 to 2 {
      affine.if #set(%arg11) {
        affine.for %arg12 = 0 to 16 {
          affine.for %arg13 = 0 to 18 {
            affine.for %arg14 = 0 to 22 {
              %0 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %1 = affine.load %arg7[%arg12, %arg14] : memref<?x22xf64>
              %2 = arith.mulf %arg4, %1 : f64
              %3 = affine.load %arg8[%arg14, %arg13] : memref<?x18xf64>
              %4 = arith.mulf %2, %3 : f64
              %5 = arith.addf %0, %4 : f64
              affine.store %5, %arg6[%arg12, %arg13] : memref<?x18xf64>
            }
            affine.for %arg14 = 21 to 32 {
              %0 = affine.load %arg10[%arg12, %arg14 - 21] : memref<?x24xf64>
              %1 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %2 = affine.load %arg9[%arg13, %arg14 - 21] : memref<?x24xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = arith.addf %0, %3 : f64
              affine.store %4, %arg10[%arg12, %arg14 - 21] : memref<?x24xf64>
            }
          }
        }
      }
      affine.if #set1(%arg11) {
        affine.for %arg12 = 0 to 16 {
          affine.for %arg13 = 0 to 18 {
            affine.for %arg14 = 32 to 45 {
              %0 = affine.load %arg10[%arg12, %arg14 - 21] : memref<?x24xf64>
              %1 = affine.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %2 = affine.load %arg9[%arg13, %arg14 - 21] : memref<?x24xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = arith.addf %0, %3 : f64
              affine.store %4, %arg10[%arg12, %arg14 - 21] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

