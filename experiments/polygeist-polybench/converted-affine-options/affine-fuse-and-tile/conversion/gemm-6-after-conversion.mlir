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
            scf.for %arg12 = %c0 to %c30 step %c1 {
              %4 = memref.load %arg5[%arg10, %arg11] : memref<?x25xf64>
              %5 = memref.load %arg6[%arg10, %arg12] : memref<?x30xf64>
              %6 = arith.mulf %arg3, %5 : f64
              %7 = memref.load %arg7[%arg12, %arg11] : memref<?x25xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = arith.addf %4, %8 : f64
              memref.store %9, %arg5[%arg10, %arg11] : memref<?x25xf64>
            }
          }
        }
      }
    }
    return
  }
}

