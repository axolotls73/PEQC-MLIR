module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %c0 to %c20 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c25 = arith.constant 25 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg9 = %c0_3 to %c25 step %c1_4 {
        %c1_5 = arith.constant 1 : index
        %0 = arith.addi %arg8, %c1_5 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg10 = %arg8 to %0 step %c1_6 {
          %c1_7 = arith.constant 1 : index
          %1 = arith.addi %arg9, %c1_7 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg11 = %arg9 to %1 step %c1_8 {
            %2 = memref.load %arg5[%arg10, %arg11] : memref<?x25xf64>
            %3 = arith.mulf %2, %arg4 : f64
            memref.store %3, %arg5[%arg10, %arg11] : memref<?x25xf64>
          }
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c20_1 = arith.constant 20 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg8 = %c0_0 to %c20_1 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c30 = arith.constant 30 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg9 = %c0_3 to %c30 step %c1_4 {
        %c0_5 = arith.constant 0 : index
        %c25 = arith.constant 25 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg10 = %c0_5 to %c25 step %c1_6 {
          %c1_7 = arith.constant 1 : index
          %0 = arith.addi %arg8, %c1_7 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg11 = %arg8 to %0 step %c1_8 {
            %c1_9 = arith.constant 1 : index
            %1 = arith.addi %arg9, %c1_9 : index
            %c1_10 = arith.constant 1 : index
            scf.for %arg12 = %arg9 to %1 step %c1_10 {
              %c1_11 = arith.constant 1 : index
              %2 = arith.addi %arg10, %c1_11 : index
              %c1_12 = arith.constant 1 : index
              scf.for %arg13 = %arg10 to %2 step %c1_12 {
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

