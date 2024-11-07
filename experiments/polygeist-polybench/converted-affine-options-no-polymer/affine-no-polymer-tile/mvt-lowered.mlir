module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c40 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c40_4 = arith.constant 40 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg7 = %c0_3 to %c40_4 step %c1_5 {
        %c1_6 = arith.constant 1 : index
        %0 = arith.addi %arg6, %c1_6 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg8 = %arg6 to %0 step %c1_7 {
          %c1_8 = arith.constant 1 : index
          %1 = arith.addi %arg7, %c1_8 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg9 = %arg7 to %1 step %c1_9 {
            %2 = memref.load %arg1[%arg8] : memref<?xf64>
            %3 = memref.load %arg5[%arg8, %arg9] : memref<?x40xf64>
            %4 = memref.load %arg3[%arg9] : memref<?xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = arith.addf %2, %5 : f64
            memref.store %6, %arg1[%arg8] : memref<?xf64>
          }
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c40_1 = arith.constant 40 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg6 = %c0_0 to %c40_1 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c40_4 = arith.constant 40 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg7 = %c0_3 to %c40_4 step %c1_5 {
        %c1_6 = arith.constant 1 : index
        %0 = arith.addi %arg6, %c1_6 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg8 = %arg6 to %0 step %c1_7 {
          %c1_8 = arith.constant 1 : index
          %1 = arith.addi %arg7, %c1_8 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg9 = %arg7 to %1 step %c1_9 {
            %2 = memref.load %arg2[%arg8] : memref<?xf64>
            %3 = memref.load %arg5[%arg9, %arg8] : memref<?x40xf64>
            %4 = memref.load %arg4[%arg9] : memref<?xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = arith.addf %2, %5 : f64
            memref.store %6, %arg2[%arg8] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

