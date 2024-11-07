module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c32 = arith.constant 32 : index
    %c13 = arith.constant 13 : index
    %c-1 = arith.constant -1 : index
    %c-21 = arith.constant -21 : index
    %c21 = arith.constant 21 : index
    %c11 = arith.constant 11 : index
    %c22 = arith.constant 22 : index
    %c2 = arith.constant 2 : index
    %c6 = arith.constant 6 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg11 = %c0 to %c16 step %c1 {
      scf.for %arg12 = %c0 to %c18 step %c1 {
        %0 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %1 = arith.mulf %0, %arg5 : f64
        memref.store %1, %arg10[%arg11, %arg12] : memref<?x24xf64>
        memref.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
      }
      scf.for %arg12 = %c0 to %c6 step %c1 {
        %0 = arith.addi %arg12, %c18 : index
        %1 = memref.load %arg10[%arg11, %0] : memref<?x24xf64>
        %2 = arith.mulf %1, %arg5 : f64
        memref.store %2, %arg10[%arg11, %0] : memref<?x24xf64>
      }
    }
    scf.for %arg11 = %c0 to %c2 step %c1 {
      %0 = arith.cmpi eq, %arg11, %c0 : index
      scf.if %0 {
        scf.for %arg12 = %c0 to %c16 step %c1 {
          scf.for %arg13 = %c0 to %c18 step %c1 {
            scf.for %arg14 = %c0 to %c22 step %c1 {
              %3 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %4 = memref.load %arg7[%arg12, %arg14] : memref<?x22xf64>
              %5 = arith.mulf %arg4, %4 : f64
              %6 = memref.load %arg8[%arg14, %arg13] : memref<?x18xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = arith.addf %3, %7 : f64
              memref.store %8, %arg6[%arg12, %arg13] : memref<?x18xf64>
            }
            scf.for %arg14 = %c0 to %c11 step %c1 {
              %3 = arith.addi %arg14, %c21 : index
              %4 = arith.addi %3, %c-21 : index
              %5 = memref.load %arg10[%arg12, %4] : memref<?x24xf64>
              %6 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %7 = arith.addi %3, %c-21 : index
              %8 = memref.load %arg9[%arg13, %7] : memref<?x24xf64>
              %9 = arith.mulf %6, %8 : f64
              %10 = arith.addf %5, %9 : f64
              %11 = arith.addi %3, %c-21 : index
              memref.store %10, %arg10[%arg12, %11] : memref<?x24xf64>
            }
          }
        }
      }
      %1 = arith.addi %arg11, %c-1 : index
      %2 = arith.cmpi eq, %1, %c0 : index
      scf.if %2 {
        scf.for %arg12 = %c0 to %c16 step %c1 {
          scf.for %arg13 = %c0 to %c18 step %c1 {
            scf.for %arg14 = %c0 to %c13 step %c1 {
              %3 = arith.addi %arg14, %c32 : index
              %4 = arith.addi %3, %c-21 : index
              %5 = memref.load %arg10[%arg12, %4] : memref<?x24xf64>
              %6 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %7 = arith.addi %3, %c-21 : index
              %8 = memref.load %arg9[%arg13, %7] : memref<?x24xf64>
              %9 = arith.mulf %6, %8 : f64
              %10 = arith.addf %5, %9 : f64
              %11 = arith.addi %3, %c-21 : index
              memref.store %10, %arg10[%arg12, %11] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

