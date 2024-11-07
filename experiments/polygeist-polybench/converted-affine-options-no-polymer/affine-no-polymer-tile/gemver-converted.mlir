module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c40 step %c1 {
      scf.for %arg13 = %c0 to %c40 step %c1 {
        %0 = arith.addi %arg12, %c1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %1 = arith.addi %arg13, %c1 : index
          scf.for %arg15 = %arg13 to %1 step %c1 {
            %2 = memref.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %3 = memref.load %arg4[%arg14] : memref<?xf64>
            %4 = memref.load %arg5[%arg15] : memref<?xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = arith.addf %2, %5 : f64
            %7 = memref.load %arg6[%arg14] : memref<?xf64>
            %8 = memref.load %arg7[%arg15] : memref<?xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = arith.addf %6, %9 : f64
            memref.store %10, %arg3[%arg14, %arg15] : memref<?x40xf64>
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c40 step %c1 {
      scf.for %arg13 = %c0 to %c40 step %c1 {
        %0 = arith.addi %arg12, %c1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %1 = arith.addi %arg13, %c1 : index
          scf.for %arg15 = %arg13 to %1 step %c1 {
            %2 = memref.load %arg9[%arg14] : memref<?xf64>
            %3 = memref.load %arg3[%arg15, %arg14] : memref<?x40xf64>
            %4 = arith.mulf %arg2, %3 : f64
            %5 = memref.load %arg10[%arg15] : memref<?xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = arith.addf %2, %6 : f64
            memref.store %7, %arg9[%arg14] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg12 = %c0 to %c40 step %c1 {
      %0 = arith.addi %arg12, %c1 : index
      scf.for %arg13 = %arg12 to %0 step %c1 {
        %1 = memref.load %arg9[%arg13] : memref<?xf64>
        %2 = memref.load %arg11[%arg13] : memref<?xf64>
        %3 = arith.addf %1, %2 : f64
        memref.store %3, %arg9[%arg13] : memref<?xf64>
      }
    }
    scf.for %arg12 = %c0 to %c40 step %c1 {
      scf.for %arg13 = %c0 to %c40 step %c1 {
        %0 = arith.addi %arg12, %c1 : index
        scf.for %arg14 = %arg12 to %0 step %c1 {
          %1 = arith.addi %arg13, %c1 : index
          scf.for %arg15 = %arg13 to %1 step %c1 {
            %2 = memref.load %arg8[%arg14] : memref<?xf64>
            %3 = memref.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %4 = arith.mulf %arg1, %3 : f64
            %5 = memref.load %arg9[%arg15] : memref<?xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = arith.addf %2, %6 : f64
            memref.store %7, %arg8[%arg14] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

