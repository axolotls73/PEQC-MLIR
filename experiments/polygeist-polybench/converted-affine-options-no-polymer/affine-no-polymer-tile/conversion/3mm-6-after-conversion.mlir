module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c24 = arith.constant 24 : index
    %c22 = arith.constant 22 : index
    %c20 = arith.constant 20 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c18 step %c1 {
        %0 = arith.addi %arg12, %c1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %1 = arith.addi %arg13, %c1 : index
          scf.for %arg15 = %arg13 to %1 step %c1 {
            memref.store %cst, %arg5[%arg14, %arg15] : memref<?x18xf64>
            scf.for %arg16 = %c0 to %c20 step %c1 {
              %2 = memref.load %arg6[%arg14, %arg16] : memref<?x20xf64>
              %3 = memref.load %arg7[%arg16, %arg15] : memref<?x18xf64>
              %4 = arith.mulf %2, %3 : f64
              %5 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %6 = arith.addf %5, %4 : f64
              memref.store %6, %arg5[%arg14, %arg15] : memref<?x18xf64>
            }
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c18 step %c1 {
      scf.for %arg13 = %c0 to %c22 step %c1 {
        %0 = arith.addi %arg12, %c1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %1 = arith.addi %arg13, %c1 : index
          scf.for %arg15 = %arg13 to %1 step %c1 {
            memref.store %cst, %arg8[%arg14, %arg15] : memref<?x22xf64>
            scf.for %arg16 = %c0 to %c24 step %c1 {
              %2 = memref.load %arg9[%arg14, %arg16] : memref<?x24xf64>
              %3 = memref.load %arg10[%arg16, %arg15] : memref<?x22xf64>
              %4 = arith.mulf %2, %3 : f64
              %5 = memref.load %arg8[%arg14, %arg15] : memref<?x22xf64>
              %6 = arith.addf %5, %4 : f64
              memref.store %6, %arg8[%arg14, %arg15] : memref<?x22xf64>
            }
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c22 step %c1 {
        %0 = arith.addi %arg12, %c1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %1 = arith.addi %arg13, %c1 : index
          scf.for %arg15 = %arg13 to %1 step %c1 {
            memref.store %cst, %arg11[%arg14, %arg15] : memref<?x22xf64>
            scf.for %arg16 = %c0 to %c18 step %c1 {
              %2 = memref.load %arg5[%arg14, %arg16] : memref<?x18xf64>
              %3 = memref.load %arg8[%arg16, %arg15] : memref<?x22xf64>
              %4 = arith.mulf %2, %3 : f64
              %5 = memref.load %arg11[%arg14, %arg15] : memref<?x22xf64>
              %6 = arith.addf %5, %4 : f64
              memref.store %6, %arg11[%arg14, %arg15] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

