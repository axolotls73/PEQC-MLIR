module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c28 step %c1 {
      memref.store %cst_0, %arg5[%arg7] : memref<?xf64>
      %c0_11 = arith.constant 0 : index
      %c32_12 = arith.constant 32 : index
      %c1_13 = arith.constant 1 : index
      scf.for %arg8 = %c0_11 to %c32_12 step %c1_13 {
        %3 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %4 = memref.load %arg5[%arg7] : memref<?xf64>
        %5 = arith.addf %4, %3 : f64
        memref.store %5, %arg5[%arg7] : memref<?xf64>
      }
      %1 = memref.load %arg5[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      memref.store %2, %arg5[%arg7] : memref<?xf64>
    }
    %c0_2 = arith.constant 0 : index
    %c28_3 = arith.constant 28 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg7 = %c0_2 to %c28_3 step %c1_4 {
      memref.store %cst_0, %arg6[%arg7] : memref<?xf64>
      %c0_11 = arith.constant 0 : index
      %c32_12 = arith.constant 32 : index
      %c1_13 = arith.constant 1 : index
      scf.for %arg8 = %c0_11 to %c32_12 step %c1_13 {
        %6 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %7 = memref.load %arg5[%arg7] : memref<?xf64>
        %8 = arith.subf %6, %7 : f64
        %9 = arith.mulf %8, %8 : f64
        %10 = memref.load %arg6[%arg7] : memref<?xf64>
        %11 = arith.addf %10, %9 : f64
        memref.store %11, %arg6[%arg7] : memref<?xf64>
      }
      %1 = memref.load %arg6[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      %3 = math.sqrt %2 : f64
      %4 = arith.cmpf ole, %3, %cst_1 : f64
      %5 = arith.select %4, %cst, %3 : f64
      memref.store %5, %arg6[%arg7] : memref<?xf64>
    }
    %0 = math.sqrt %arg2 : f64
    %c0_5 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_6 = arith.constant 1 : index
    scf.for %arg7 = %c0_5 to %c32 step %c1_6 {
      %c0_11 = arith.constant 0 : index
      %c28_12 = arith.constant 28 : index
      %c1_13 = arith.constant 1 : index
      scf.for %arg8 = %c0_11 to %c28_12 step %c1_13 {
        %1 = memref.load %arg5[%arg8] : memref<?xf64>
        %2 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %3 = arith.subf %2, %1 : f64
        memref.store %3, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %4 = memref.load %arg6[%arg8] : memref<?xf64>
        %5 = arith.mulf %0, %4 : f64
        %6 = arith.divf %3, %5 : f64
        memref.store %6, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    %c0_7 = arith.constant 0 : index
    %c27 = arith.constant 27 : index
    %c1_8 = arith.constant 1 : index
    scf.for %arg7 = %c0_7 to %c27 step %c1_8 {
      memref.store %cst, %arg4[%arg7, %arg7] : memref<?x28xf64>
      %c1_11 = arith.constant 1 : index
      %1 = arith.addi %arg7, %c1_11 : index
      %c28_12 = arith.constant 28 : index
      %c1_13 = arith.constant 1 : index
      scf.for %arg8 = %1 to %c28_12 step %c1_13 {
        memref.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
        %c0_14 = arith.constant 0 : index
        %c32_15 = arith.constant 32 : index
        %c1_16 = arith.constant 1 : index
        scf.for %arg9 = %c0_14 to %c32_15 step %c1_16 {
          %3 = memref.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %4 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %7 = arith.addf %6, %5 : f64
          memref.store %7, %arg4[%arg7, %arg8] : memref<?x28xf64>
        }
        %2 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        memref.store %2, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    %c27_9 = arith.constant 27 : index
    %c27_10 = arith.constant 27 : index
    memref.store %cst, %arg4[%c27_9, %c27_10] : memref<?x28xf64>
    return
  }
}

