module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c30 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %0 = arith.addi %arg7, %c1_1 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg8 = %c0_0 to %0 step %c1_2 {
        %1 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %2 = arith.mulf %1, %arg3 : f64
        memref.store %2, %arg4[%arg7, %arg8] : memref<?x30xf64>
      }
      %c0_3 = arith.constant 0 : index
      %c20 = arith.constant 20 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg8 = %c0_3 to %c20 step %c1_4 {
        %c0_5 = arith.constant 0 : index
        %c1_6 = arith.constant 1 : index
        %1 = arith.addi %arg7, %c1_6 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg9 = %c0_5 to %1 step %c1_7 {
          %2 = memref.load %arg5[%arg9, %arg8] : memref<?x20xf64>
          %3 = arith.mulf %2, %arg2 : f64
          %4 = memref.load %arg6[%arg7, %arg8] : memref<?x20xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %arg6[%arg9, %arg8] : memref<?x20xf64>
          %7 = arith.mulf %6, %arg2 : f64
          %8 = memref.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %5, %9 : f64
          %11 = memref.load %arg4[%arg7, %arg9] : memref<?x30xf64>
          %12 = arith.addf %11, %10 : f64
          memref.store %12, %arg4[%arg7, %arg9] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

