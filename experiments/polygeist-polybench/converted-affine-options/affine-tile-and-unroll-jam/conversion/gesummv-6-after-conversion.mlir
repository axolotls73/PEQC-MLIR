module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c32 = arith.constant 32 : index
    scf.for %arg8 = %c0 to %c30 step %c32 {
      %0 = arith.addi %arg8, %c30 : index
      scf.for %arg9 = %arg8 to %0 step %c1 {
        memref.store %cst, %arg7[%arg9] : memref<?xf64>
      }
    }
    scf.for %arg8 = %c0 to %c30 step %c32 {
      scf.for %arg9 = %c0 to %c30 step %c32 {
        %0 = arith.addi %arg8, %c30 : index
        scf.for %arg10 = %arg8 to %0 step %c1 {
          %1 = arith.addi %arg9, %c30 : index
          scf.for %arg11 = %arg9 to %1 step %c1 {
            %2 = memref.load %arg4[%arg10, %arg11] : memref<?x30xf64>
            %3 = memref.load %arg6[%arg11] : memref<?xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = memref.load %arg7[%arg10] : memref<?xf64>
            %6 = arith.addf %4, %5 : f64
            memref.store %6, %arg7[%arg10] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg8 = %c0 to %c30 step %c32 {
      %0 = arith.addi %arg8, %c30 : index
      scf.for %arg9 = %arg8 to %0 step %c1 {
        memref.store %cst, %arg5[%arg9] : memref<?xf64>
      }
    }
    scf.for %arg8 = %c0 to %c30 step %c32 {
      scf.for %arg9 = %c0 to %c30 step %c32 {
        %0 = arith.addi %arg8, %c30 : index
        scf.for %arg10 = %arg8 to %0 step %c1 {
          %1 = arith.addi %arg9, %c30 : index
          scf.for %arg11 = %arg9 to %1 step %c1 {
            %2 = memref.load %arg3[%arg10, %arg11] : memref<?x30xf64>
            %3 = memref.load %arg6[%arg11] : memref<?xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = memref.load %arg5[%arg10] : memref<?xf64>
            %6 = arith.addf %4, %5 : f64
            memref.store %6, %arg5[%arg10] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg8 = %c0 to %c30 step %c32 {
      %0 = arith.addi %arg8, %c30 : index
      scf.for %arg9 = %arg8 to %0 step %c1 {
        %1 = memref.load %arg5[%arg9] : memref<?xf64>
        %2 = arith.mulf %arg1, %1 : f64
        %3 = memref.load %arg7[%arg9] : memref<?xf64>
        %4 = arith.mulf %arg2, %3 : f64
        %5 = arith.addf %2, %4 : f64
        memref.store %5, %arg7[%arg9] : memref<?xf64>
      }
    }
    return
  }
}

