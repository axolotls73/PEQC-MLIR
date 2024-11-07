module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg7 = %c0_0 to %c8 step %c1_1 {
        %c1_2 = arith.constant 1 : index
        %0 = arith.addi %arg6, %c1_2 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg8 = %arg6 to %0 step %c1_3 {
          %c1_4 = arith.constant 1 : index
          %1 = arith.addi %arg7, %c1_4 : index
          %c1_5 = arith.constant 1 : index
          scf.for %arg9 = %arg7 to %1 step %c1_5 {
            %c0_6 = arith.constant 0 : index
            %c12 = arith.constant 12 : index
            %c1_7 = arith.constant 1 : index
            scf.for %arg10 = %c0_6 to %c12 step %c1_7 {
              memref.store %cst, %arg5[%arg10] : memref<?xf64>
              %c0_11 = arith.constant 0 : index
              %c12_12 = arith.constant 12 : index
              %c1_13 = arith.constant 1 : index
              scf.for %arg11 = %c0_11 to %c12_12 step %c1_13 {
                %2 = memref.load %arg3[%arg8, %arg9, %arg11] : memref<?x8x12xf64>
                %3 = memref.load %arg4[%arg11, %arg10] : memref<?x12xf64>
                %4 = arith.mulf %2, %3 : f64
                %5 = memref.load %arg5[%arg10] : memref<?xf64>
                %6 = arith.addf %5, %4 : f64
                memref.store %6, %arg5[%arg10] : memref<?xf64>
              }
            }
            %c0_8 = arith.constant 0 : index
            %c12_9 = arith.constant 12 : index
            %c1_10 = arith.constant 1 : index
            scf.for %arg10 = %c0_8 to %c12_9 step %c1_10 {
              %2 = memref.load %arg5[%arg10] : memref<?xf64>
              memref.store %2, %arg3[%arg8, %arg9, %arg10] : memref<?x8x12xf64>
            }
          }
        }
      }
    }
    return
  }
}

