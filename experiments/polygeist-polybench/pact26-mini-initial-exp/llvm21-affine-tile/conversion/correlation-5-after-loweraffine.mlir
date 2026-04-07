module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c32 = arith.constant 32 : index
    scf.for %arg7 = %c0 to %c28 step %c32 {
      %c28_12 = arith.constant 28 : index
      %1 = arith.addi %arg7, %c28_12 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst_0, %arg5[%arg8] : memref<?xf64>
        %c0_13 = arith.constant 0 : index
        %c32_14 = arith.constant 32 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg9 = %c0_13 to %c32_14 step %c1_15 {
          %4 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %5 = memref.load %arg5[%arg8] : memref<?xf64>
          %6 = arith.addf %5, %4 : f64
          memref.store %6, %arg5[%arg8] : memref<?xf64>
        }
        %2 = memref.load %arg5[%arg8] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        memref.store %3, %arg5[%arg8] : memref<?xf64>
      }
    }
    %c0_2 = arith.constant 0 : index
    %c28_3 = arith.constant 28 : index
    %c32_4 = arith.constant 32 : index
    scf.for %arg7 = %c0_2 to %c28_3 step %c32_4 {
      %c28_12 = arith.constant 28 : index
      %1 = arith.addi %arg7, %c28_12 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst_0, %arg6[%arg8] : memref<?xf64>
        %c0_13 = arith.constant 0 : index
        %c32_14 = arith.constant 32 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg9 = %c0_13 to %c32_14 step %c1_15 {
          %7 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %8 = memref.load %arg5[%arg8] : memref<?xf64>
          %9 = arith.subf %7, %8 : f64
          %10 = arith.mulf %9, %9 : f64
          %11 = memref.load %arg6[%arg8] : memref<?xf64>
          %12 = arith.addf %11, %10 : f64
          memref.store %12, %arg6[%arg8] : memref<?xf64>
        }
        %2 = memref.load %arg6[%arg8] : memref<?xf64>
        %3 = arith.divf %2, %arg2 : f64
        %4 = math.sqrt %3 : f64
        %5 = arith.cmpf ole, %4, %cst_1 : f64
        %6 = arith.select %5, %cst, %4 : f64
        memref.store %6, %arg6[%arg8] : memref<?xf64>
      }
    }
    %0 = math.sqrt %arg2 : f64
    %c0_5 = arith.constant 0 : index
    %c32_6 = arith.constant 32 : index
    %c32_7 = arith.constant 32 : index
    scf.for %arg7 = %c0_5 to %c32_6 step %c32_7 {
      %c0_12 = arith.constant 0 : index
      %c28_13 = arith.constant 28 : index
      %c32_14 = arith.constant 32 : index
      scf.for %arg8 = %c0_12 to %c28_13 step %c32_14 {
        %c32_15 = arith.constant 32 : index
        %1 = arith.addi %arg7, %c32_15 : index
        %c1 = arith.constant 1 : index
        scf.for %arg9 = %arg7 to %1 step %c1 {
          %c28_16 = arith.constant 28 : index
          %2 = arith.addi %arg8, %c28_16 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg10 = %arg8 to %2 step %c1_17 {
            %3 = memref.load %arg5[%arg10] : memref<?xf64>
            %4 = memref.load %arg3[%arg9, %arg10] : memref<?x28xf64>
            %5 = arith.subf %4, %3 : f64
            memref.store %5, %arg3[%arg9, %arg10] : memref<?x28xf64>
            %6 = memref.load %arg6[%arg10] : memref<?xf64>
            %7 = arith.mulf %0, %6 : f64
            %8 = arith.divf %5, %7 : f64
            memref.store %8, %arg3[%arg9, %arg10] : memref<?x28xf64>
          }
        }
      }
    }
    %c0_8 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %c32_9 = arith.constant 32 : index
    scf.for %arg7 = %c0_8 to %c27 step %c32_9 {
      %c27_12 = arith.constant 27 : index
      %1 = arith.addi %arg7, %c27_12 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst, %arg4[%arg8, %arg8] : memref<?x28xf64>
        %c1_13 = arith.constant 1 : index
        %2 = arith.addi %arg8, %c1_13 : index
        %c28_14 = arith.constant 28 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg9 = %2 to %c28_14 step %c1_15 {
          memref.store %cst_0, %arg4[%arg8, %arg9] : memref<?x28xf64>
          %c0_16 = arith.constant 0 : index
          %c32_17 = arith.constant 32 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg10 = %c0_16 to %c32_17 step %c1_18 {
            %4 = memref.load %arg3[%arg10, %arg8] : memref<?x28xf64>
            %5 = memref.load %arg3[%arg10, %arg9] : memref<?x28xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = memref.load %arg4[%arg8, %arg9] : memref<?x28xf64>
            %8 = arith.addf %7, %6 : f64
            memref.store %8, %arg4[%arg8, %arg9] : memref<?x28xf64>
          }
          %3 = memref.load %arg4[%arg8, %arg9] : memref<?x28xf64>
          memref.store %3, %arg4[%arg9, %arg8] : memref<?x28xf64>
        }
      }
    }
    %c27_10 = arith.constant 27 : index
    %c27_11 = arith.constant 27 : index
    memref.store %cst, %arg4[%c27_10, %c27_11] : memref<?x28xf64>
    return
  }
}

