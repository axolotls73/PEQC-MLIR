module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c30 = arith.constant 30 : index
    %c25 = arith.constant 25 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %c0 to %c20 step %c1 {
      scf.for %arg9 = %c0 to %c25 step %c1 {
        %0 = memref.load %arg5[%arg8, %arg9] : memref<?x25xf64>
        %1 = arith.mulf %0, %arg4 : f64
        memref.store %1, %arg5[%arg8, %arg9] : memref<?x25xf64>
        scf.for %arg10 = %c0 to %c30 step %c1 {
          %2 = memref.load %arg5[%arg8, %arg9] : memref<?x25xf64>
          %3 = memref.load %arg6[%arg8, %arg10] : memref<?x30xf64>
          %4 = arith.mulf %arg3, %3 : f64
          %5 = memref.load %arg7[%arg10, %arg9] : memref<?x25xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = arith.addf %2, %6 : f64
          memref.store %7, %arg5[%arg8, %arg9] : memref<?x25xf64>
        }
      }
    }
    return
  }
}

