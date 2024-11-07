module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c0 = arith.constant 0 : index
    %c19 = arith.constant 19 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c19 step %c1 {
      %c0_2 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %0 = arith.muli %arg5, %c-1 : index
      %c19_3 = arith.constant 19 : index
      %1 = arith.addi %0, %c19_3 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg6 = %c0_2 to %1 step %c1_4 {
        %2 = arith.addi %arg5, %arg6 : index
        %c1_5 = arith.constant 1 : index
        %3 = arith.addi %2, %c1_5 : index
        %c0_6 = arith.constant 0 : index
        %c30 = arith.constant 30 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg7 = %c0_6 to %c30 step %c1_7 {
          %4 = memref.load %arg4[%arg5, %arg7] : memref<?x30xf64>
          %5 = memref.load %arg3[%3, %arg5] : memref<?x20xf64>
          %6 = memref.load %arg4[%3, %arg7] : memref<?x30xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = arith.addf %4, %7 : f64
          memref.store %8, %arg4[%arg5, %arg7] : memref<?x30xf64>
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg5 = %c0_0 to %c20 step %c1_1 {
      %c0_2 = arith.constant 0 : index
      %c30 = arith.constant 30 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg6 = %c0_2 to %c30 step %c1_3 {
        %0 = memref.load %arg4[%arg5, %arg6] : memref<?x30xf64>
        %1 = arith.mulf %arg2, %0 : f64
        memref.store %1, %arg4[%arg5, %arg6] : memref<?x30xf64>
      }
    }
    return
  }
}

