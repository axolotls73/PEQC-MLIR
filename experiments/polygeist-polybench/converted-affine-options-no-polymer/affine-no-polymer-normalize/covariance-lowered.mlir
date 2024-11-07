module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c28 step %c1 {
      memref.store %cst_0, %arg5[%arg6] : memref<?xf64>
      %c0_6 = arith.constant 0 : index
      %c32_7 = arith.constant 32 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c0_6 to %c32_7 step %c1_8 {
        %3 = memref.load %arg3[%arg7, %arg6] : memref<?x28xf64>
        %4 = memref.load %arg5[%arg6] : memref<?xf64>
        %5 = arith.addf %4, %3 : f64
        memref.store %5, %arg5[%arg6] : memref<?xf64>
      }
      %1 = memref.load %arg5[%arg6] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      memref.store %2, %arg5[%arg6] : memref<?xf64>
    }
    %c0_1 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg6 = %c0_1 to %c32 step %c1_2 {
      %c0_6 = arith.constant 0 : index
      %c28_7 = arith.constant 28 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c0_6 to %c28_7 step %c1_8 {
        %1 = memref.load %arg5[%arg7] : memref<?xf64>
        %2 = memref.load %arg3[%arg6, %arg7] : memref<?x28xf64>
        %3 = arith.subf %2, %1 : f64
        memref.store %3, %arg3[%arg6, %arg7] : memref<?x28xf64>
      }
    }
    %0 = arith.subf %arg2, %cst : f64
    %c0_3 = arith.constant 0 : index
    %c28_4 = arith.constant 28 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg6 = %c0_3 to %c28_4 step %c1_5 {
      %c0_6 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.muli %arg6, %c-1 : index
      %c28_7 = arith.constant 28 : index
      %2 = arith.addi %1, %c28_7 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c0_6 to %2 step %c1_8 {
        %3 = arith.addi %arg6, %arg7 : index
        memref.store %cst_0, %arg4[%arg6, %3] : memref<?x28xf64>
        %c0_9 = arith.constant 0 : index
        %c32_10 = arith.constant 32 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg8 = %c0_9 to %c32_10 step %c1_11 {
          %6 = memref.load %arg3[%arg8, %arg6] : memref<?x28xf64>
          %7 = memref.load %arg3[%arg8, %3] : memref<?x28xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %arg4[%arg6, %3] : memref<?x28xf64>
          %10 = arith.addf %9, %8 : f64
          memref.store %10, %arg4[%arg6, %3] : memref<?x28xf64>
        }
        %4 = memref.load %arg4[%arg6, %3] : memref<?x28xf64>
        %5 = arith.divf %4, %0 : f64
        memref.store %5, %arg4[%arg6, %3] : memref<?x28xf64>
        memref.store %5, %arg4[%3, %arg6] : memref<?x28xf64>
      }
    }
    return
  }
}

