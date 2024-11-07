module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    scf.for %arg8 = %c0 to %c20 step %c32 {
      %c20_0 = arith.constant 20 : index
      %0 = arith.addi %arg8, %c20_0 : index
      %c1 = arith.constant 1 : index
      scf.for %arg9 = %arg8 to %0 step %c1 {
        %c0_1 = arith.constant 0 : index
        %c25 = arith.constant 25 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg10 = %c0_1 to %c25 step %c1_2 {
          %1 = memref.load %arg5[%arg9, %arg10] : memref<?x25xf64>
          %2 = arith.mulf %1, %arg4 : f64
          memref.store %2, %arg5[%arg9, %arg10] : memref<?x25xf64>
        }
        %c0_3 = arith.constant 0 : index
        %c30 = arith.constant 30 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg10 = %c0_3 to %c30 step %c1_4 {
          %c0_5 = arith.constant 0 : index
          %c25_6 = arith.constant 25 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg11 = %c0_5 to %c25_6 step %c1_7 {
            %1 = memref.load %arg6[%arg9, %arg10] : memref<?x30xf64>
            %2 = arith.mulf %arg3, %1 : f64
            %3 = memref.load %arg7[%arg10, %arg11] : memref<?x25xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = memref.load %arg5[%arg9, %arg11] : memref<?x25xf64>
            %6 = arith.addf %5, %4 : f64
            memref.store %6, %arg5[%arg9, %arg11] : memref<?x25xf64>
          }
        }
      }
    }
    return
  }
}

