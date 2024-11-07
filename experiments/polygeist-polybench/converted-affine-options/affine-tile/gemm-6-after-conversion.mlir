module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    %c25 = arith.constant 25 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    scf.for %arg8 = %c0 to %c20 step %c32 {
      scf.for %arg9 = %c0 to %c25 step %c32 {
        %0 = arith.addi %arg8, %c20 : index
        scf.for %arg10 = %arg8 to %0 step %c1 {
          %1 = arith.addi %arg9, %c25 : index
          scf.for %arg11 = %arg9 to %1 step %c1 {
            %2 = memref.load %arg5[%arg10, %arg11] : memref<?x25xf64>
            %3 = arith.mulf %2, %arg4 : f64
            memref.store %3, %arg5[%arg10, %arg11] : memref<?x25xf64>
          }
        }
      }
    }
    scf.for %arg8 = %c0 to %c20 step %c32 {
      scf.for %arg9 = %c0 to %c30 step %c32 {
        scf.for %arg10 = %c0 to %c25 step %c32 {
          %0 = arith.addi %arg8, %c20 : index
          scf.for %arg11 = %arg8 to %0 step %c1 {
            %1 = arith.addi %arg9, %c30 : index
            scf.for %arg12 = %arg9 to %1 step %c1 {
              %2 = arith.addi %arg10, %c25 : index
              scf.for %arg13 = %arg10 to %2 step %c1 {
                %3 = memref.load %arg5[%arg11, %arg13] : memref<?x25xf64>
                %4 = memref.load %arg6[%arg11, %arg12] : memref<?x30xf64>
                %5 = arith.mulf %arg3, %4 : f64
                %6 = memref.load %arg7[%arg12, %arg13] : memref<?x25xf64>
                %7 = arith.mulf %5, %6 : f64
                %8 = arith.addf %3, %7 : f64
                memref.store %8, %arg5[%arg11, %arg13] : memref<?x25xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

