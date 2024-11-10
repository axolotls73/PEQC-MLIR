module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c13 = arith.constant 13 : index
    %c-1 = arith.constant -1 : index
    %c11 = arith.constant 11 : index
    %c22 = arith.constant 22 : index
    %c2 = arith.constant 2 : index
    %c6 = arith.constant 6 : index
    %c18 = arith.constant 18 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    scf.for %arg11 = %c0 to %c16 step %c32 {
      %0 = arith.addi %arg11, %c16 : index
      scf.for %arg12 = %arg11 to %0 step %c1 {
        scf.for %arg13 = %c0 to %c18 step %c1 {
          %1 = memref.load %arg10[%arg12, %arg13] : memref<?x24xf64>
          %2 = arith.mulf %1, %arg5 : f64
          memref.store %2, %arg10[%arg12, %arg13] : memref<?x24xf64>
          memref.store %cst, %arg6[%arg12, %arg13] : memref<?x18xf64>
        }
        scf.for %arg13 = %c0 to %c6 step %c1 {
          %1 = arith.addi %arg13, %c18 : index
          %2 = memref.load %arg10[%arg12, %1] : memref<?x24xf64>
          %3 = arith.mulf %2, %arg5 : f64
          %4 = arith.addi %arg13, %c18 : index
          memref.store %3, %arg10[%arg12, %4] : memref<?x24xf64>
        }
      }
    }
    scf.for %arg11 = %c0 to %c2 step %c32 {
      %0 = arith.addi %arg11, %c2 : index
      scf.for %arg12 = %arg11 to %0 step %c1 {
        %1 = arith.cmpi eq, %arg12, %c0 : index
        scf.if %1 {
          scf.for %arg13 = %c0 to %c16 step %c1 {
            scf.for %arg14 = %c0 to %c18 step %c1 {
              scf.for %arg15 = %c0 to %c22 step %c1 {
                %4 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %5 = memref.load %arg7[%arg13, %arg15] : memref<?x22xf64>
                %6 = arith.mulf %arg4, %5 : f64
                %7 = memref.load %arg8[%arg15, %arg14] : memref<?x18xf64>
                %8 = arith.mulf %6, %7 : f64
                %9 = arith.addf %4, %8 : f64
                memref.store %9, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              scf.for %arg15 = %c0 to %c11 step %c1 {
                %4 = memref.load %arg10[%arg13, %arg15] : memref<?x24xf64>
                %5 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %6 = memref.load %arg9[%arg14, %arg15] : memref<?x24xf64>
                %7 = arith.mulf %5, %6 : f64
                %8 = arith.addf %4, %7 : f64
                memref.store %8, %arg10[%arg13, %arg15] : memref<?x24xf64>
              }
            }
          }
        }
        %2 = arith.addi %arg12, %c-1 : index
        %3 = arith.cmpi eq, %2, %c0 : index
        scf.if %3 {
          scf.for %arg13 = %c0 to %c16 step %c1 {
            scf.for %arg14 = %c0 to %c18 step %c1 {
              scf.for %arg15 = %c0 to %c13 step %c1 {
                %4 = arith.addi %arg15, %c11 : index
                %5 = memref.load %arg10[%arg13, %4] : memref<?x24xf64>
                %6 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %7 = arith.addi %arg15, %c11 : index
                %8 = memref.load %arg9[%arg14, %7] : memref<?x24xf64>
                %9 = arith.mulf %6, %8 : f64
                %10 = arith.addf %5, %9 : f64
                %11 = arith.addi %arg15, %c11 : index
                memref.store %10, %arg10[%arg13, %11] : memref<?x24xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

