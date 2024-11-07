module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c41 = arith.constant 41 : index
    %c-1 = arith.constant -1 : index
    %c-19 = arith.constant -19 : index
    %c32 = arith.constant 32 : index
    %c19 = arith.constant 19 : index
    %c20 = arith.constant 20 : index
    %c2 = arith.constant 2 : index
    %c24 = arith.constant 24 : index
    %c18 = arith.constant 18 : index
    %c22 = arith.constant 22 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c22 step %c1 {
        %0 = arith.addi %arg12, %c1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %1 = arith.addi %arg13, %c1 : index
          scf.for %arg15 = %arg13 to %1 step %c1 {
            memref.store %cst, %arg11[%arg14, %arg15] : memref<?x22xf64>
            memref.store %cst, %arg8[%arg14, %arg15] : memref<?x22xf64>
          }
        }
      }
    }
    scf.for %arg12 = %c16 to %c18 step %c1 {
      scf.for %arg13 = %c0 to %c22 step %c1 {
        %0 = arith.addi %arg12, %c1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %1 = arith.addi %arg13, %c1 : index
          scf.for %arg15 = %arg13 to %1 step %c1 {
            memref.store %cst, %arg8[%arg14, %arg15] : memref<?x22xf64>
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c18 step %c1 {
      scf.for %arg13 = %c0 to %c24 step %c1 {
        scf.for %arg14 = %c0 to %c22 step %c1 {
          %0 = arith.addi %arg12, %c1 : index
          scf.for %arg15 = %arg12 to %0 step %c1 {
            %1 = arith.addi %arg13, %c1 : index
            scf.for %arg16 = %arg13 to %1 step %c1 {
              %2 = arith.addi %arg14, %c1 : index
              scf.for %arg17 = %arg14 to %2 step %c1 {
                %3 = memref.load %arg8[%arg15, %arg17] : memref<?x22xf64>
                %4 = memref.load %arg9[%arg15, %arg16] : memref<?x24xf64>
                %5 = memref.load %arg10[%arg16, %arg17] : memref<?x22xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.addf %3, %6 : f64
                memref.store %7, %arg8[%arg15, %arg17] : memref<?x22xf64>
              }
            }
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c16 step %c1 {
      scf.for %arg13 = %c0 to %c18 step %c1 {
        %0 = arith.addi %arg12, %c1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %1 = arith.addi %arg13, %c1 : index
          scf.for %arg15 = %arg13 to %1 step %c1 {
            memref.store %cst, %arg5[%arg14, %arg15] : memref<?x18xf64>
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %0 = arith.addi %arg12, %c1 : index
      scf.for %arg13 = %arg12 to %0 step %c1 {
        %1 = arith.cmpi eq, %arg13, %c0 : index
        scf.if %1 {
          scf.for %arg14 = %c0 to %c16 step %c1 {
            scf.for %arg15 = %c0 to %c18 step %c1 {
              scf.for %arg16 = %c0 to %c20 step %c1 {
                %4 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %5 = memref.load %arg6[%arg14, %arg16] : memref<?x20xf64>
                %6 = memref.load %arg7[%arg16, %arg15] : memref<?x18xf64>
                %7 = arith.mulf %5, %6 : f64
                %8 = arith.addf %4, %7 : f64
                memref.store %8, %arg5[%arg14, %arg15] : memref<?x18xf64>
              }
              scf.for %arg16 = %c19 to %c32 step %c1 {
                %4 = arith.addi %arg16, %c-19 : index
                %5 = memref.load %arg11[%arg14, %4] : memref<?x22xf64>
                %6 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %7 = arith.addi %arg16, %c-19 : index
                %8 = memref.load %arg8[%arg15, %7] : memref<?x22xf64>
                %9 = arith.mulf %6, %8 : f64
                %10 = arith.addf %5, %9 : f64
                %11 = arith.addi %arg16, %c-19 : index
                memref.store %10, %arg11[%arg14, %11] : memref<?x22xf64>
              }
            }
          }
        }
        %2 = arith.addi %arg13, %c-1 : index
        %3 = arith.cmpi eq, %2, %c0 : index
        scf.if %3 {
          scf.for %arg14 = %c0 to %c16 step %c1 {
            scf.for %arg15 = %c0 to %c18 step %c1 {
              scf.for %arg16 = %c32 to %c41 step %c1 {
                %4 = arith.addi %arg16, %c-19 : index
                %5 = memref.load %arg11[%arg14, %4] : memref<?x22xf64>
                %6 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %7 = arith.addi %arg16, %c-19 : index
                %8 = memref.load %arg8[%arg15, %7] : memref<?x22xf64>
                %9 = arith.mulf %6, %8 : f64
                %10 = arith.addf %5, %9 : f64
                %11 = arith.addi %arg16, %c-19 : index
                memref.store %10, %arg11[%arg14, %11] : memref<?x22xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

