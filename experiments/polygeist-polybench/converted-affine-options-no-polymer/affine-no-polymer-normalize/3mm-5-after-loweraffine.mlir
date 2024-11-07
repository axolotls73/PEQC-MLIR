module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c16 step %c1 {
      %c0_5 = arith.constant 0 : index
      %c18_6 = arith.constant 18 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg13 = %c0_5 to %c18_6 step %c1_7 {
        memref.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
        %c0_8 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg14 = %c0_8 to %c20 step %c1_9 {
          %0 = memref.load %arg6[%arg12, %arg14] : memref<?x20xf64>
          %1 = memref.load %arg7[%arg14, %arg13] : memref<?x18xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg5[%arg12, %arg13] : memref<?x18xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %arg5[%arg12, %arg13] : memref<?x18xf64>
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c18 = arith.constant 18 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg12 = %c0_0 to %c18 step %c1_1 {
      %c0_5 = arith.constant 0 : index
      %c22 = arith.constant 22 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg13 = %c0_5 to %c22 step %c1_6 {
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
        %c0_7 = arith.constant 0 : index
        %c24 = arith.constant 24 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg14 = %c0_7 to %c24 step %c1_8 {
          %0 = memref.load %arg9[%arg12, %arg14] : memref<?x24xf64>
          %1 = memref.load %arg10[%arg14, %arg13] : memref<?x22xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg8[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %arg8[%arg12, %arg13] : memref<?x22xf64>
        }
      }
    }
    %c0_2 = arith.constant 0 : index
    %c16_3 = arith.constant 16 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg12 = %c0_2 to %c16_3 step %c1_4 {
      %c0_5 = arith.constant 0 : index
      %c22 = arith.constant 22 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg13 = %c0_5 to %c22 step %c1_6 {
        memref.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        %c0_7 = arith.constant 0 : index
        %c18_8 = arith.constant 18 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg14 = %c0_7 to %c18_8 step %c1_9 {
          %0 = memref.load %arg5[%arg12, %arg14] : memref<?x18xf64>
          %1 = memref.load %arg8[%arg14, %arg13] : memref<?x22xf64>
          %2 = arith.mulf %0, %1 : f64
          %3 = memref.load %arg11[%arg12, %arg13] : memref<?x22xf64>
          %4 = arith.addf %3, %2 : f64
          memref.store %4, %arg11[%arg12, %arg13] : memref<?x22xf64>
        }
      }
    }
    return
  }
}

