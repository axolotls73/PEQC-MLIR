module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c32 = arith.constant 32 : index
    scf.for %arg8 = %c0 to %c30 step %c32 {
      %c30_12 = arith.constant 30 : index
      %0 = arith.addi %arg8, %c30_12 : index
      %c1 = arith.constant 1 : index
      scf.for %arg9 = %arg8 to %0 step %c1 {
        memref.store %cst, %arg7[%arg9] : memref<?xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c30_1 = arith.constant 30 : index
    %c32_2 = arith.constant 32 : index
    scf.for %arg8 = %c0_0 to %c30_1 step %c32_2 {
      %c0_12 = arith.constant 0 : index
      %c30_13 = arith.constant 30 : index
      %c32_14 = arith.constant 32 : index
      scf.for %arg9 = %c0_12 to %c30_13 step %c32_14 {
        %c30_15 = arith.constant 30 : index
        %0 = arith.addi %arg8, %c30_15 : index
        %c1 = arith.constant 1 : index
        scf.for %arg10 = %arg8 to %0 step %c1 {
          %c30_16 = arith.constant 30 : index
          %1 = arith.addi %arg9, %c30_16 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg11 = %arg9 to %1 step %c1_17 {
            %2 = memref.load %arg4[%arg10, %arg11] : memref<?x30xf64>
            %3 = memref.load %arg6[%arg11] : memref<?xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = memref.load %arg7[%arg10] : memref<?xf64>
            %6 = arith.addf %4, %5 : f64
            memref.store %6, %arg7[%arg10] : memref<?xf64>
          }
        }
      }
    }
    %c0_3 = arith.constant 0 : index
    %c30_4 = arith.constant 30 : index
    %c32_5 = arith.constant 32 : index
    scf.for %arg8 = %c0_3 to %c30_4 step %c32_5 {
      %c30_12 = arith.constant 30 : index
      %0 = arith.addi %arg8, %c30_12 : index
      %c1 = arith.constant 1 : index
      scf.for %arg9 = %arg8 to %0 step %c1 {
        memref.store %cst, %arg5[%arg9] : memref<?xf64>
      }
    }
    %c0_6 = arith.constant 0 : index
    %c30_7 = arith.constant 30 : index
    %c32_8 = arith.constant 32 : index
    scf.for %arg8 = %c0_6 to %c30_7 step %c32_8 {
      %c0_12 = arith.constant 0 : index
      %c30_13 = arith.constant 30 : index
      %c32_14 = arith.constant 32 : index
      scf.for %arg9 = %c0_12 to %c30_13 step %c32_14 {
        %c30_15 = arith.constant 30 : index
        %0 = arith.addi %arg8, %c30_15 : index
        %c1 = arith.constant 1 : index
        scf.for %arg10 = %arg8 to %0 step %c1 {
          %c30_16 = arith.constant 30 : index
          %1 = arith.addi %arg9, %c30_16 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg11 = %arg9 to %1 step %c1_17 {
            %2 = memref.load %arg3[%arg10, %arg11] : memref<?x30xf64>
            %3 = memref.load %arg6[%arg11] : memref<?xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = memref.load %arg5[%arg10] : memref<?xf64>
            %6 = arith.addf %4, %5 : f64
            memref.store %6, %arg5[%arg10] : memref<?xf64>
          }
        }
      }
    }
    %c0_9 = arith.constant 0 : index
    %c30_10 = arith.constant 30 : index
    %c32_11 = arith.constant 32 : index
    scf.for %arg8 = %c0_9 to %c30_10 step %c32_11 {
      %c30_12 = arith.constant 30 : index
      %0 = arith.addi %arg8, %c30_12 : index
      %c1 = arith.constant 1 : index
      scf.for %arg9 = %arg8 to %0 step %c1 {
        %1 = memref.load %arg5[%arg9] : memref<?xf64>
        %2 = arith.mulf %arg1, %1 : f64
        %3 = memref.load %arg7[%arg9] : memref<?xf64>
        %4 = arith.mulf %arg2, %3 : f64
        %5 = arith.addf %2, %4 : f64
        memref.store %5, %arg7[%arg9] : memref<?xf64>
      }
    }
    return
  }
}

