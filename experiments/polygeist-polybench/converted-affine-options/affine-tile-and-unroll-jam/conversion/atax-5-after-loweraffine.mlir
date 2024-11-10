module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c2 step %c1 {
      %c0_9 = arith.constant 0 : index
      %c-32 = arith.constant -32 : index
      %0 = arith.muli %arg6, %c-32 : index
      %c38 = arith.constant 38 : index
      %1 = arith.addi %0, %c38 : index
      %c32 = arith.constant 32 : index
      %2 = arith.minsi %1, %c32 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg7 = %c0_9 to %2 step %c1_10 {
        %c32_11 = arith.constant 32 : index
        %3 = arith.muli %arg6, %c32_11 : index
        %4 = arith.addi %3, %arg7 : index
        memref.store %cst, %arg5[%4] : memref<?xf64>
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
        %c0_12 = arith.constant 0 : index
        %c-32 = arith.constant -32 : index
        %0 = arith.muli %arg6, %c-32 : index
        %c38 = arith.constant 38 : index
        %1 = arith.addi %0, %c38 : index
        %c32 = arith.constant 32 : index
        %2 = arith.minsi %1, %c32 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg8 = %c0_12 to %2 step %c1_13 {
          %c0_14 = arith.constant 0 : index
          %c-32_15 = arith.constant -32 : index
          %3 = arith.muli %arg7, %c-32_15 : index
          %c42 = arith.constant 42 : index
          %4 = arith.addi %3, %c42 : index
          %c32_16 = arith.constant 32 : index
          %5 = arith.minsi %4, %c32_16 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg9 = %c0_14 to %5 step %c1_17 {
            %c32_18 = arith.constant 32 : index
            %6 = arith.muli %arg6, %c32_18 : index
            %7 = arith.addi %6, %arg8 : index
            %8 = memref.load %arg5[%7] : memref<?xf64>
            %c32_19 = arith.constant 32 : index
            %9 = arith.muli %arg6, %c32_19 : index
            %10 = arith.addi %9, %arg8 : index
            %c32_20 = arith.constant 32 : index
            %11 = arith.muli %arg7, %c32_20 : index
            %12 = arith.addi %11, %arg9 : index
            %13 = memref.load %arg2[%10, %12] : memref<?x42xf64>
            %c32_21 = arith.constant 32 : index
            %14 = arith.muli %arg7, %c32_21 : index
            %15 = arith.addi %14, %arg9 : index
            %16 = memref.load %arg3[%15] : memref<?xf64>
            %17 = arith.mulf %13, %16 : f64
            %18 = arith.addf %8, %17 : f64
            %c32_22 = arith.constant 32 : index
            %19 = arith.muli %arg6, %c32_22 : index
            %20 = arith.addi %19, %arg8 : index
            memref.store %18, %arg5[%20] : memref<?xf64>
          }
        }
      }
    }
    %c0_3 = arith.constant 0 : index
    %c2_4 = arith.constant 2 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg6 = %c0_3 to %c2_4 step %c1_5 {
      %c0_9 = arith.constant 0 : index
      %c-32 = arith.constant -32 : index
      %0 = arith.muli %arg6, %c-32 : index
      %c42 = arith.constant 42 : index
      %1 = arith.addi %0, %c42 : index
      %c32 = arith.constant 32 : index
      %2 = arith.minsi %1, %c32 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg7 = %c0_9 to %2 step %c1_10 {
        %c32_11 = arith.constant 32 : index
        %3 = arith.muli %arg6, %c32_11 : index
        %4 = arith.addi %3, %arg7 : index
        memref.store %cst, %arg4[%4] : memref<?xf64>
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
        %c0_12 = arith.constant 0 : index
        %c-32 = arith.constant -32 : index
        %0 = arith.muli %arg7, %c-32 : index
        %c38 = arith.constant 38 : index
        %1 = arith.addi %0, %c38 : index
        %c32 = arith.constant 32 : index
        %2 = arith.minsi %1, %c32 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg8 = %c0_12 to %2 step %c1_13 {
          %c0_14 = arith.constant 0 : index
          %c-32_15 = arith.constant -32 : index
          %3 = arith.muli %arg6, %c-32_15 : index
          %c42 = arith.constant 42 : index
          %4 = arith.addi %3, %c42 : index
          %c32_16 = arith.constant 32 : index
          %5 = arith.minsi %4, %c32_16 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg9 = %c0_14 to %5 step %c1_17 {
            %c32_18 = arith.constant 32 : index
            %6 = arith.muli %arg6, %c32_18 : index
            %7 = arith.addi %6, %arg9 : index
            %8 = memref.load %arg4[%7] : memref<?xf64>
            %c32_19 = arith.constant 32 : index
            %9 = arith.muli %arg7, %c32_19 : index
            %10 = arith.addi %9, %arg8 : index
            %c32_20 = arith.constant 32 : index
            %11 = arith.muli %arg6, %c32_20 : index
            %12 = arith.addi %11, %arg9 : index
            %13 = memref.load %arg2[%10, %12] : memref<?x42xf64>
            %c32_21 = arith.constant 32 : index
            %14 = arith.muli %arg7, %c32_21 : index
            %15 = arith.addi %14, %arg8 : index
            %16 = memref.load %arg5[%15] : memref<?xf64>
            %17 = arith.mulf %13, %16 : f64
            %18 = arith.addf %8, %17 : f64
            %c32_22 = arith.constant 32 : index
            %19 = arith.muli %arg6, %c32_22 : index
            %20 = arith.addi %19, %arg9 : index
            memref.store %18, %arg4[%20] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

