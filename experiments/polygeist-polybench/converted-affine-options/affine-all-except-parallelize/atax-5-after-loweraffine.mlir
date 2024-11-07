module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0) to (%c2) step (%c1) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg6, %c32 : index
      %c38 = arith.constant 38 : index
      %c32_9 = arith.constant 32 : index
      %1 = arith.muli %arg6, %c32_9 : index
      %c32_10 = arith.constant 32 : index
      %2 = arith.addi %1, %c32_10 : index
      %3 = arith.minsi %c38, %2 : index
      %c1_11 = arith.constant 1 : index
      scf.parallel (%arg7) = (%0) to (%3) step (%c1_11) {
        memref.store %cst, %arg5[%arg7] : memref<?xf64>
        scf.reduce 
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
        %c32 = arith.constant 32 : index
        %0 = arith.muli %arg6, %c32 : index
        %c38 = arith.constant 38 : index
        %c32_12 = arith.constant 32 : index
        %1 = arith.muli %arg6, %c32_12 : index
        %c32_13 = arith.constant 32 : index
        %2 = arith.addi %1, %c32_13 : index
        %3 = arith.minsi %c38, %2 : index
        %c1_14 = arith.constant 1 : index
        scf.parallel (%arg8) = (%0) to (%3) step (%c1_14) {
          %c0_15 = arith.constant 0 : index
          %c-32 = arith.constant -32 : index
          %4 = arith.muli %arg7, %c-32 : index
          %c42 = arith.constant 42 : index
          %5 = arith.addi %4, %c42 : index
          %c32_16 = arith.constant 32 : index
          %6 = arith.minsi %5, %c32_16 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg9 = %c0_15 to %6 step %c1_17 {
            %c32_18 = arith.constant 32 : index
            %7 = arith.muli %arg7, %c32_18 : index
            %8 = arith.addi %7, %arg9 : index
            %9 = memref.load %arg5[%arg8] : memref<?xf64>
            %10 = memref.load %arg2[%arg8, %8] : memref<?x42xf64>
            %11 = memref.load %arg3[%8] : memref<?xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = arith.addf %9, %12 : f64
            memref.store %13, %arg5[%arg8] : memref<?xf64>
          }
          scf.reduce 
        }
      }
      scf.reduce 
    }
    %c0_3 = arith.constant 0 : index
    %c2_4 = arith.constant 2 : index
    %c1_5 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_3) to (%c2_4) step (%c1_5) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg6, %c32 : index
      %c42 = arith.constant 42 : index
      %c32_9 = arith.constant 32 : index
      %1 = arith.muli %arg6, %c32_9 : index
      %c32_10 = arith.constant 32 : index
      %2 = arith.addi %1, %c32_10 : index
      %3 = arith.minsi %c42, %2 : index
      %c1_11 = arith.constant 1 : index
      scf.parallel (%arg7) = (%0) to (%3) step (%c1_11) {
        memref.store %cst, %arg4[%arg7] : memref<?xf64>
        scf.reduce 
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
          %c32_15 = arith.constant 32 : index
          %5 = arith.muli %arg6, %c32_15 : index
          %c42 = arith.constant 42 : index
          %c32_16 = arith.constant 32 : index
          %6 = arith.muli %arg6, %c32_16 : index
          %c32_17 = arith.constant 32 : index
          %7 = arith.addi %6, %c32_17 : index
          %8 = arith.minsi %c42, %7 : index
          %c1_18 = arith.constant 1 : index
          scf.parallel (%arg9) = (%5) to (%8) step (%c1_18) {
            %9 = memref.load %arg4[%arg9] : memref<?xf64>
            %10 = memref.load %arg2[%4, %arg9] : memref<?x42xf64>
            %11 = memref.load %arg5[%4] : memref<?xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = arith.addf %9, %12 : f64
            memref.store %13, %arg4[%arg9] : memref<?xf64>
            scf.reduce 
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

