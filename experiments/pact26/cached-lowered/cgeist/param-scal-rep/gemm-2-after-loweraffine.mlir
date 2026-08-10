module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %c0 to %2 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg9 = %c0_0 to %0 step %c1_1 {
        %3 = memref.load %arg5[%arg8, %arg9] : memref<?x25xf64>
        %4 = arith.mulf %3, %arg4 : f64
        memref.store %4, %arg5[%arg8, %arg9] : memref<?x25xf64>
      }
      %c0_2 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg9 = %c0_2 to %1 step %c1_3 {
        %c0_4 = arith.constant 0 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg10 = %c0_4 to %0 step %c1_5 {
          %3 = memref.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %4 = arith.mulf %arg3, %3 : f64
          %5 = memref.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %arg5[%arg8, %arg10] : memref<?x25xf64>
          %8 = arith.addf %7, %6 : f64
          memref.store %8, %arg5[%arg8, %arg10] : memref<?x25xf64>
        }
      }
    }
    return
  }
}

