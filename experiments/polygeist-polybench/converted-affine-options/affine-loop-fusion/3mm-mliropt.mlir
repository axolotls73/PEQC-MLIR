#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    affine.for %arg12 = 0 to 16 {
      affine.for %arg13 = 0 to 22 {
        affine.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        affine.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
      }
    }
    affine.for %arg12 = 16 to 18 {
      affine.for %arg13 = 0 to 22 {
        affine.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
      }
    }
    affine.for %arg12 = 0 to 18 {
      affine.for %arg13 = 0 to 22 {
        affine.for %arg14 = 0 to 24 {
          %0 = affine.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %1 = affine.load %arg9[%arg12, %arg14] : memref<?x24xf64>
          %2 = affine.load %arg10[%arg14, %arg13] : memref<?x22xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          affine.store %4, %arg8[%arg12, %arg13] : memref<?x22xf64>
        }
      }
    }
    affine.for %arg12 = 0 to 16 {
      affine.for %arg13 = 0 to 18 {
        affine.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
      }
    }
    affine.for %arg12 = 0 to 2 {
      affine.if #set(%arg12) {
        affine.for %arg13 = 0 to 16 {
          affine.for %arg14 = 0 to 18 {
            affine.for %arg15 = 0 to 20 {
              %0 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %1 = affine.load %arg6[%arg13, %arg15] : memref<?x20xf64>
              %2 = affine.load %arg7[%arg15, %arg14] : memref<?x18xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = arith.addf %0, %3 : f64
              affine.store %4, %arg5[%arg13, %arg14] : memref<?x18xf64>
            }
            affine.for %arg15 = 19 to 32 {
              %0 = affine.load %arg11[%arg13, %arg15 - 19] : memref<?x22xf64>
              %1 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %2 = affine.load %arg8[%arg14, %arg15 - 19] : memref<?x22xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = arith.addf %0, %3 : f64
              affine.store %4, %arg11[%arg13, %arg15 - 19] : memref<?x22xf64>
            }
          }
        }
      }
      affine.if #set1(%arg12) {
        affine.for %arg13 = 0 to 16 {
          affine.for %arg14 = 0 to 18 {
            affine.for %arg15 = 32 to 41 {
              %0 = affine.load %arg11[%arg13, %arg15 - 19] : memref<?x22xf64>
              %1 = affine.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %2 = affine.load %arg8[%arg14, %arg15 - 19] : memref<?x22xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = arith.addf %0, %3 : f64
              affine.store %4, %arg11[%arg13, %arg15 - 19] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

