module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0) to (%c2) step (%c1) {
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
      scf.reduce 
    }
    %c0_0 = arith.constant 0 : index
    %c2_1 = arith.constant 2 : index
    %c1_2 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_0) to (%c2_1) step (%c1_2) {
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
          %c32_14 = arith.constant 32 : index
          %3 = arith.muli %arg6, %c32_14 : index
          %4 = arith.addi %3, %arg8 : index
          %c0_15 = arith.constant 0 : index
          %c-32_16 = arith.constant -32 : index
          %5 = arith.muli %arg7, %c-32_16 : index
          %c42 = arith.constant 42 : index
          %6 = arith.addi %5, %c42 : index
          %c32_17 = arith.constant 32 : index
          %7 = arith.minsi %6, %c32_17 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg9 = %c0_15 to %7 step %c1_18 {
            %c32_19 = arith.constant 32 : index
            %8 = arith.muli %arg7, %c32_19 : index
            %9 = arith.addi %8, %arg9 : index
            %10 = memref.load %arg5[%4] : memref<?xf64>
            %11 = memref.load %arg2[%4, %9] : memref<?x42xf64>
            %12 = memref.load %arg3[%9] : memref<?xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = arith.addf %10, %13 : f64
            memref.store %14, %arg5[%4] : memref<?xf64>
          }
        }
      }
      scf.reduce 
    }
    %c0_3 = arith.constant 0 : index
    %c2_4 = arith.constant 2 : index
    %c1_5 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_3) to (%c2_4) step (%c1_5) {
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
      scf.reduce 
    }
    %c0_6 = arith.constant 0 : index
    %c2_7 = arith.constant 2 : index
    %c1_8 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_6) to (%c2_7) step (%c1_8) {
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
          %c32_14 = arith.constant 32 : index
          %3 = arith.muli %arg7, %c32_14 : index
          %4 = arith.addi %3, %arg8 : index
          %5 = memref.load %arg5[%4] : memref<?xf64>
          %c0_15 = arith.constant 0 : index
          %c-32_16 = arith.constant -32 : index
          %6 = arith.muli %arg6, %c-32_16 : index
          %c42 = arith.constant 42 : index
          %7 = arith.addi %6, %c42 : index
          %c32_17 = arith.constant 32 : index
          %8 = arith.minsi %7, %c32_17 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg9 = %c0_15 to %8 step %c1_18 {
            %c32_19 = arith.constant 32 : index
            %9 = arith.muli %arg6, %c32_19 : index
            %10 = arith.addi %9, %arg9 : index
            %11 = memref.load %arg4[%10] : memref<?xf64>
            %12 = memref.load %arg2[%4, %10] : memref<?x42xf64>
            %13 = arith.mulf %12, %5 : f64
            %14 = arith.addf %11, %13 : f64
            memref.store %14, %arg4[%10] : memref<?xf64>
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

