module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c20 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c30 = arith.constant 30 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg6 = %c0_0 to %c30 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %0 = arith.muli %arg5, %c-1 : index
        %c19 = arith.constant 19 : index
        %1 = arith.addi %0, %c19 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg7 = %c0_2 to %1 step %c1_3 {
          %4 = arith.addi %arg5, %arg7 : index
          %c1_4 = arith.constant 1 : index
          %5 = arith.addi %4, %c1_4 : index
          %6 = memref.load %arg3[%5, %arg5] : memref<?x20xf64>
          %7 = memref.load %arg4[%5, %arg6] : memref<?x30xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %10 = arith.addf %9, %8 : f64
          memref.store %10, %arg4[%arg5, %arg6] : memref<?x30xf64>
        }
        %2 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %3 = arith.mulf %arg2, %2 : f64
        memref.store %3, %arg4[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}

