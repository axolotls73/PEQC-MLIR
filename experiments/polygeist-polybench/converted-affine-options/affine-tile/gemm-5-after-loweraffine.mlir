module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    scf.for %arg8 = %c0 to %c20 step %c32 {
      %c0_3 = arith.constant 0 : index
      %c25 = arith.constant 25 : index
      %c32_4 = arith.constant 32 : index
      scf.for %arg9 = %c0_3 to %c25 step %c32_4 {
        %c20_5 = arith.constant 20 : index
        %0 = arith.addi %arg8, %c20_5 : index
        %c1 = arith.constant 1 : index
        scf.for %arg10 = %arg8 to %0 step %c1 {
          %c25_6 = arith.constant 25 : index
          %1 = arith.addi %arg9, %c25_6 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg11 = %arg9 to %1 step %c1_7 {
            %2 = memref.load %arg5[%arg10, %arg11] : memref<?x25xf64>
            %3 = arith.mulf %2, %arg4 : f64
            memref.store %3, %arg5[%arg10, %arg11] : memref<?x25xf64>
          }
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c20_1 = arith.constant 20 : index
    %c32_2 = arith.constant 32 : index
    scf.for %arg8 = %c0_0 to %c20_1 step %c32_2 {
      %c0_3 = arith.constant 0 : index
      %c30 = arith.constant 30 : index
      %c32_4 = arith.constant 32 : index
      scf.for %arg9 = %c0_3 to %c30 step %c32_4 {
        %c0_5 = arith.constant 0 : index
        %c25 = arith.constant 25 : index
        %c32_6 = arith.constant 32 : index
        scf.for %arg10 = %c0_5 to %c25 step %c32_6 {
          %c20_7 = arith.constant 20 : index
          %0 = arith.addi %arg8, %c20_7 : index
          %c1 = arith.constant 1 : index
          scf.for %arg11 = %arg8 to %0 step %c1 {
            %c30_8 = arith.constant 30 : index
            %1 = arith.addi %arg9, %c30_8 : index
            %c1_9 = arith.constant 1 : index
            scf.for %arg12 = %arg9 to %1 step %c1_9 {
              %c25_10 = arith.constant 25 : index
              %2 = arith.addi %arg10, %c25_10 : index
              %c1_11 = arith.constant 1 : index
              scf.for %arg13 = %arg10 to %2 step %c1_11 {
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

