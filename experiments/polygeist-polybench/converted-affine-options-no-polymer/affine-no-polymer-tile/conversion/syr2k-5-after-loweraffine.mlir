module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c30 step %c1 {
      %c1_0 = arith.constant 1 : index
      %0 = arith.addi %arg7, %c1_0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %0 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c1_3 = arith.constant 1 : index
        %1 = arith.addi %arg8, %c1_3 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg9 = %c0_2 to %1 step %c1_4 {
          %2 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %3 = arith.mulf %2, %arg3 : f64
          memref.store %3, %arg4[%arg8, %arg9] : memref<?x30xf64>
        }
        %c0_5 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg9 = %c0_5 to %c20 step %c1_6 {
          %c0_7 = arith.constant 0 : index
          %c1_8 = arith.constant 1 : index
          %2 = arith.addi %arg8, %c1_8 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg10 = %c0_7 to %2 step %c1_9 {
            %3 = memref.load %arg5[%arg10, %arg9] : memref<?x20xf64>
            %4 = arith.mulf %3, %arg2 : f64
            %5 = memref.load %arg6[%arg8, %arg9] : memref<?x20xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = memref.load %arg6[%arg10, %arg9] : memref<?x20xf64>
            %8 = arith.mulf %7, %arg2 : f64
            %9 = memref.load %arg5[%arg8, %arg9] : memref<?x20xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = arith.addf %6, %10 : f64
            %12 = memref.load %arg4[%arg8, %arg10] : memref<?x30xf64>
            %13 = arith.addf %12, %11 : f64
            memref.store %13, %arg4[%arg8, %arg10] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

