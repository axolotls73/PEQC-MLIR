module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %1 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %2 = arith.addi %arg6, %c1_1 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg7 = %c0_0 to %2 step %c1_2 {
        %3 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
        %4 = arith.mulf %3, %arg3 : f64
        memref.store %4, %arg4[%arg6, %arg7] : memref<?x30xf64>
      }
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg7 = %c0_3 to %0 step %c1_4 {
        %c0_5 = arith.constant 0 : index
        %c1_6 = arith.constant 1 : index
        %3 = arith.addi %arg6, %c1_6 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg8 = %c0_5 to %3 step %c1_7 {
          %4 = memref.load %arg5[%arg6, %arg7] : memref<?x20xf64>
          %5 = arith.mulf %arg2, %4 : f64
          %6 = memref.load %arg5[%arg8, %arg7] : memref<?x20xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %arg4[%arg6, %arg8] : memref<?x30xf64>
          %9 = arith.addf %8, %7 : f64
          memref.store %9, %arg4[%arg6, %arg8] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

