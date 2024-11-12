module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    scf.for %arg6 = %c0 to %c40 step %c32 {
      %c0_3 = arith.constant 0 : index
      %c40_4 = arith.constant 40 : index
      %c32_5 = arith.constant 32 : index
      scf.for %arg7 = %c0_3 to %c40_4 step %c32_5 {
        %c32_6 = arith.constant 32 : index
        %0 = arith.addi %arg6, %c32_6 : index
        %c40_7 = arith.constant 40 : index
        %1 = arith.minsi %0, %c40_7 : index
        %c1 = arith.constant 1 : index
        scf.for %arg8 = %arg6 to %1 step %c1 {
          %c32_8 = arith.constant 32 : index
          %2 = arith.addi %arg7, %c32_8 : index
          %c40_9 = arith.constant 40 : index
          %3 = arith.minsi %2, %c40_9 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg9 = %arg7 to %3 step %c1_10 {
            %4 = memref.load %arg1[%arg8] : memref<?xf64>
            %5 = memref.load %arg5[%arg8, %arg9] : memref<?x40xf64>
            %6 = memref.load %arg3[%arg9] : memref<?xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = arith.addf %4, %7 : f64
            memref.store %8, %arg1[%arg8] : memref<?xf64>
          }
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c40_1 = arith.constant 40 : index
    %c32_2 = arith.constant 32 : index
    scf.for %arg6 = %c0_0 to %c40_1 step %c32_2 {
      %c0_3 = arith.constant 0 : index
      %c40_4 = arith.constant 40 : index
      %c32_5 = arith.constant 32 : index
      scf.for %arg7 = %c0_3 to %c40_4 step %c32_5 {
        %c32_6 = arith.constant 32 : index
        %0 = arith.addi %arg6, %c32_6 : index
        %c40_7 = arith.constant 40 : index
        %1 = arith.minsi %0, %c40_7 : index
        %c1 = arith.constant 1 : index
        scf.for %arg8 = %arg6 to %1 step %c1 {
          %c32_8 = arith.constant 32 : index
          %2 = arith.addi %arg7, %c32_8 : index
          %c40_9 = arith.constant 40 : index
          %3 = arith.minsi %2, %c40_9 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg9 = %arg7 to %3 step %c1_10 {
            %4 = memref.load %arg2[%arg8] : memref<?xf64>
            %5 = memref.load %arg5[%arg9, %arg8] : memref<?x40xf64>
            %6 = memref.load %arg4[%arg9] : memref<?xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = arith.addf %4, %7 : f64
            memref.store %8, %arg2[%arg8] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

