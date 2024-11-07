module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c2 step %c1 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg6, %c32 : index
      %c38 = arith.constant 38 : index
      %c32_9 = arith.constant 32 : index
      %1 = arith.muli %arg6, %c32_9 : index
      %c32_10 = arith.constant 32 : index
      %2 = arith.addi %1, %c32_10 : index
      %3 = arith.minsi %c38, %2 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg7 = %0 to %3 step %c1_11 {
        memref.store %cst, %arg5[%arg7] : memref<?xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2_1 = arith.constant 2 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg6 = %c0_0 to %c2_1 step %c1_2 {
      %c0_9 = arith.constant 0 : index
      %c2_10 = arith.constant 2 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg7 = %c0_9 to %c2_10 step %c1_11 {
        %c32 = arith.constant 32 : index
        %0 = arith.muli %arg6, %c32 : index
        %c38 = arith.constant 38 : index
        %c32_12 = arith.constant 32 : index
        %1 = arith.muli %arg6, %c32_12 : index
        %c32_13 = arith.constant 32 : index
        %2 = arith.addi %1, %c32_13 : index
        %3 = arith.minsi %c38, %2 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg8 = %0 to %3 step %c1_14 {
          %c32_15 = arith.constant 32 : index
          %4 = arith.muli %arg7, %c32_15 : index
          %c42 = arith.constant 42 : index
          %c32_16 = arith.constant 32 : index
          %5 = arith.muli %arg7, %c32_16 : index
          %c32_17 = arith.constant 32 : index
          %6 = arith.addi %5, %c32_17 : index
          %7 = arith.minsi %c42, %6 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg9 = %4 to %7 step %c1_18 {
            %8 = memref.load %arg5[%arg8] : memref<?xf64>
            %9 = memref.load %arg2[%arg8, %arg9] : memref<?x42xf64>
            %10 = memref.load %arg3[%arg9] : memref<?xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.addf %8, %11 : f64
            memref.store %12, %arg5[%arg8] : memref<?xf64>
          }
        }
      }
    }
    %c0_3 = arith.constant 0 : index
    %c2_4 = arith.constant 2 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg6 = %c0_3 to %c2_4 step %c1_5 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg6, %c32 : index
      %c42 = arith.constant 42 : index
      %c32_9 = arith.constant 32 : index
      %1 = arith.muli %arg6, %c32_9 : index
      %c32_10 = arith.constant 32 : index
      %2 = arith.addi %1, %c32_10 : index
      %3 = arith.minsi %c42, %2 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg7 = %0 to %3 step %c1_11 {
        memref.store %cst, %arg4[%arg7] : memref<?xf64>
      }
    }
    %c0_6 = arith.constant 0 : index
    %c2_7 = arith.constant 2 : index
    %c1_8 = arith.constant 1 : index
    scf.for %arg6 = %c0_6 to %c2_7 step %c1_8 {
      %c0_9 = arith.constant 0 : index
      %c2_10 = arith.constant 2 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg7 = %c0_9 to %c2_10 step %c1_11 {
        %c32 = arith.constant 32 : index
        %0 = arith.muli %arg7, %c32 : index
        %c38 = arith.constant 38 : index
        %c32_12 = arith.constant 32 : index
        %1 = arith.muli %arg7, %c32_12 : index
        %c32_13 = arith.constant 32 : index
        %2 = arith.addi %1, %c32_13 : index
        %3 = arith.minsi %c38, %2 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg8 = %0 to %3 step %c1_14 {
          %c32_15 = arith.constant 32 : index
          %4 = arith.muli %arg6, %c32_15 : index
          %c42 = arith.constant 42 : index
          %c32_16 = arith.constant 32 : index
          %5 = arith.muli %arg6, %c32_16 : index
          %c32_17 = arith.constant 32 : index
          %6 = arith.addi %5, %c32_17 : index
          %7 = arith.minsi %c42, %6 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg9 = %4 to %7 step %c1_18 {
            %8 = memref.load %arg4[%arg9] : memref<?xf64>
            %9 = memref.load %arg2[%arg8, %arg9] : memref<?x42xf64>
            %10 = memref.load %arg5[%arg8] : memref<?xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.addf %8, %11 : f64
            memref.store %12, %arg4[%arg9] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

