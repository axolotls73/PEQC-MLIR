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
        %c1_2 = arith.constant 1 : index
        %0 = arith.addi %arg5, %c1_2 : index
        %c20_3 = arith.constant 20 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg7 = %0 to %c20_3 step %c1_4 {
          %3 = memref.load %arg3[%arg7, %arg5] : memref<?x20xf64>
          %4 = memref.load %arg4[%arg7, %arg6] : memref<?x30xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %arg4[%arg5, %arg6] : memref<?x30xf64>
        }
        %1 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %2 = arith.mulf %arg2, %1 : f64
        memref.store %2, %arg4[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}

