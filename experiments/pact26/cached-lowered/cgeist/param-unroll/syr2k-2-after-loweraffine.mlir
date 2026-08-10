module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %1 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %2 = arith.addi %arg7, %c1_1 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg8 = %c0_0 to %2 step %c1_2 {
        %3 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %4 = arith.mulf %3, %arg3 : f64
        memref.store %4, %arg4[%arg7, %arg8] : memref<?x30xf64>
      }
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg8 = %c0_3 to %0 step %c1_4 {
        %c0_5 = arith.constant 0 : index
        %c1_6 = arith.constant 1 : index
        %3 = arith.addi %arg7, %c1_6 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg9 = %c0_5 to %3 step %c1_7 {
          %4 = memref.load %arg5[%arg9, %arg8] : memref<?x20xf64>
          %5 = arith.mulf %4, %arg2 : f64
          %6 = memref.load %arg6[%arg7, %arg8] : memref<?x20xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %arg6[%arg9, %arg8] : memref<?x20xf64>
          %9 = arith.mulf %8, %arg2 : f64
          %10 = memref.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = arith.addf %7, %11 : f64
          %13 = memref.load %arg4[%arg7, %arg9] : memref<?x30xf64>
          %14 = arith.addf %13, %12 : f64
          memref.store %14, %arg4[%arg7, %arg9] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

