module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c32 = arith.constant 32 : index
    scf.for %arg6 = %c0 to %c10 step %c32 {
      %c0_0 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c32_1 = arith.constant 32 : index
      scf.for %arg7 = %c0_0 to %c8 step %c32_1 {
        %c0_2 = arith.constant 0 : index
        %c12 = arith.constant 12 : index
        %c32_3 = arith.constant 32 : index
        scf.for %arg8 = %c0_2 to %c12 step %c32_3 {
          %c10_4 = arith.constant 10 : index
          %0 = arith.addi %arg6, %c10_4 : index
          %c1 = arith.constant 1 : index
          scf.for %arg9 = %arg6 to %0 step %c1 {
            %c8_5 = arith.constant 8 : index
            %1 = arith.addi %arg7, %c8_5 : index
            %c1_6 = arith.constant 1 : index
            scf.for %arg10 = %arg7 to %1 step %c1_6 {
              %c12_7 = arith.constant 12 : index
              %2 = arith.addi %arg8, %c12_7 : index
              %c1_8 = arith.constant 1 : index
              scf.for %arg11 = %arg8 to %2 step %c1_8 {
                memref.store %cst, %arg5[%arg11] : memref<?xf64>
                %c0_9 = arith.constant 0 : index
                %c12_10 = arith.constant 12 : index
                %c1_11 = arith.constant 1 : index
                scf.for %arg12 = %c0_9 to %c12_10 step %c1_11 {
                  %4 = memref.load %arg3[%arg9, %arg10, %arg12] : memref<?x8x12xf64>
                  %5 = memref.load %arg4[%arg12, %arg11] : memref<?x12xf64>
                  %6 = arith.mulf %4, %5 : f64
                  %7 = memref.load %arg5[%arg11] : memref<?xf64>
                  %8 = arith.addf %7, %6 : f64
                  memref.store %8, %arg5[%arg11] : memref<?xf64>
                }
                %3 = memref.load %arg5[%arg11] : memref<?xf64>
                memref.store %3, %arg3[%arg9, %arg10, %arg11] : memref<?x8x12xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

