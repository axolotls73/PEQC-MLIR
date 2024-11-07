module {
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0) to (%c30) step (%c1) {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %0 = arith.addi %arg6, %c1_4 : index
      %c1_5 = arith.constant 1 : index
      scf.parallel (%arg7) = (%c0_3) to (%0) step (%c1_5) {
        %1 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
        %2 = arith.mulf %1, %arg3 : f64
        memref.store %2, %arg4[%arg6, %arg7] : memref<?x30xf64>
        scf.reduce 
      }
      scf.reduce 
    }
    %c0_0 = arith.constant 0 : index
    %c30_1 = arith.constant 30 : index
    %c1_2 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_0) to (%c30_1) step (%c1_2) {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %0 = arith.addi %arg6, %c1_4 : index
      %c1_5 = arith.constant 1 : index
      scf.parallel (%arg7) = (%c0_3) to (%0) step (%c1_5) {
        %c0_6 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg8 = %c0_6 to %c20 step %c1_7 {
          %1 = memref.load %arg4[%arg6, %arg7] : memref<?x30xf64>
          %2 = memref.load %arg5[%arg6, %arg8] : memref<?x20xf64>
          %3 = arith.mulf %arg2, %2 : f64
          %4 = memref.load %arg5[%arg7, %arg8] : memref<?x20xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %1, %5 : f64
          memref.store %6, %arg4[%arg6, %arg7] : memref<?x30xf64>
        }
        scf.reduce 
      }
      scf.reduce 
    }
    return
  }
}

