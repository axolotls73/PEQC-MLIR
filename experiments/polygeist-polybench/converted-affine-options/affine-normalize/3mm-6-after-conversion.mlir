module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c32 = arith.constant 32 : index
    %c9 = arith.constant 9 : index
    %c-1 = arith.constant -1 : index
    %c-19 = arith.constant -19 : index
    %c19 = arith.constant 19 : index
    %c13 = arith.constant 13 : index
    %c20 = arith.constant 20 : index
    %c24 = arith.constant 24 : index
    %c18 = arith.constant 18 : index
    %c2 = arith.constant 2 : index
    %c22 = arith.constant 22 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c22 step %c1 {
        memref.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %0 = arith.addi %arg12, %c16 : index
      scf.for %arg13 = %c0 to %c22 step %c1 {
        memref.store %cst, %arg8[%0, %arg13] : memref<?x22xf64>
      }
    }
    scf.for %arg12 = %c0 to %c18 step %c1 {
      scf.for %arg13 = %c0 to %c24 step %c1 {
        scf.for %arg14 = %c0 to %c22 step %c1 {
          %0 = memref.load %arg8[%arg12, %arg14] : memref<?x22xf64>
          %1 = memref.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %2 = memref.load %arg10[%arg13, %arg14] : memref<?x22xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          memref.store %4, %arg8[%arg12, %arg14] : memref<?x22xf64>
        }
      }
    }
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c18 step %c1 {
        memref.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %0 = arith.cmpi eq, %arg12, %c0 : index
      scf.if %0 {
        scf.for %arg13 = %c0 to %c16 step %c1 {
          scf.for %arg14 = %c0 to %c18 step %c1 {
            scf.for %arg15 = %c0 to %c20 step %c1 {
              %3 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %4 = memref.load %arg6[%arg13, %arg15] : memref<?x20xf64>
              %5 = memref.load %arg7[%arg15, %arg14] : memref<?x18xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = arith.addf %3, %6 : f64
              memref.store %7, %arg5[%arg13, %arg14] : memref<?x18xf64>
            }
            scf.for %arg15 = %c0 to %c13 step %c1 {
              %3 = arith.addi %arg15, %c19 : index
              %4 = arith.addi %3, %c-19 : index
              %5 = memref.load %arg11[%arg13, %4] : memref<?x22xf64>
              %6 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %7 = arith.addi %3, %c-19 : index
              %8 = memref.load %arg8[%arg14, %7] : memref<?x22xf64>
              %9 = arith.mulf %6, %8 : f64
              %10 = arith.addf %5, %9 : f64
              %11 = arith.addi %3, %c-19 : index
              memref.store %10, %arg11[%arg13, %11] : memref<?x22xf64>
            }
          }
        }
      }
      %1 = arith.addi %arg12, %c-1 : index
      %2 = arith.cmpi eq, %1, %c0 : index
      scf.if %2 {
        scf.for %arg13 = %c0 to %c16 step %c1 {
          scf.for %arg14 = %c0 to %c18 step %c1 {
            scf.for %arg15 = %c0 to %c9 step %c1 {
              %3 = arith.addi %arg15, %c32 : index
              %4 = arith.addi %3, %c-19 : index
              %5 = memref.load %arg11[%arg13, %4] : memref<?x22xf64>
              %6 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %7 = arith.addi %3, %c-19 : index
              %8 = memref.load %arg8[%arg14, %7] : memref<?x22xf64>
              %9 = arith.mulf %6, %8 : f64
              %10 = arith.addf %5, %9 : f64
              %11 = arith.addi %3, %c-19 : index
              memref.store %10, %arg11[%arg13, %11] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

