module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c24 = arith.constant 24 : index
    %c22 = arith.constant 22 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg11 = %c0 to %c16 step %c1 {
      scf.for %arg12 = %c0 to %c18 step %c1 {
        memref.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
        scf.for %arg13 = %c0 to %c22 step %c1 {
          %0 = memref.load %arg7[%arg11, %arg13] : memref<?x22xf64>
          %1 = arith.mulf %arg4, %0 : f64
          %2 = memref.load %arg8[%arg13, %arg12] : memref<?x18xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = memref.load %arg6[%arg11, %arg12] : memref<?x18xf64>
          %5 = arith.addf %4, %3 : f64
          memref.store %5, %arg6[%arg11, %arg12] : memref<?x18xf64>
        }
      }
    }
    scf.for %arg11 = %c0 to %c16 step %c1 {
      scf.for %arg12 = %c0 to %c24 step %c1 {
        %0 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %1 = arith.mulf %0, %arg5 : f64
        memref.store %1, %arg10[%arg11, %arg12] : memref<?x24xf64>
        scf.for %arg13 = %c0 to %c18 step %c1 {
          %2 = memref.load %arg6[%arg11, %arg13] : memref<?x18xf64>
          %3 = memref.load %arg9[%arg13, %arg12] : memref<?x24xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
          %6 = arith.addf %5, %4 : f64
          memref.store %6, %arg10[%arg11, %arg12] : memref<?x24xf64>
        }
      }
    }
    return
  }
}

