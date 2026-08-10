module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 1.000000e-01 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %1 step %c1 {
      memref.store %cst_0, %arg5[%arg7] : memref<?xf64>
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg8 = %c0_10 to %0 step %c1_11 {
        %8 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %9 = memref.load %arg5[%arg7] : memref<?xf64>
        %10 = arith.addf %9, %8 : f64
        memref.store %10, %arg5[%arg7] : memref<?xf64>
      }
      %6 = memref.load %arg5[%arg7] : memref<?xf64>
      %7 = arith.divf %6, %arg2 : f64
      memref.store %7, %arg5[%arg7] : memref<?xf64>
    }
    %c0_2 = arith.constant 0 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg7 = %c0_2 to %1 step %c1_3 {
      memref.store %cst_0, %arg6[%arg7] : memref<?xf64>
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg8 = %c0_10 to %0 step %c1_11 {
        %11 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %12 = memref.load %arg5[%arg7] : memref<?xf64>
        %13 = arith.subf %11, %12 : f64
        %14 = arith.mulf %13, %13 : f64
        %15 = memref.load %arg6[%arg7] : memref<?xf64>
        %16 = arith.addf %15, %14 : f64
        memref.store %16, %arg6[%arg7] : memref<?xf64>
      }
      %6 = memref.load %arg6[%arg7] : memref<?xf64>
      %7 = arith.divf %6, %arg2 : f64
      %8 = math.sqrt %7 : f64
      %9 = arith.cmpf ole, %8, %cst : f64
      %10 = arith.select %9, %cst_1, %8 : f64
      memref.store %10, %arg6[%arg7] : memref<?xf64>
    }
    %2 = math.sqrt %arg2 : f64
    %c0_4 = arith.constant 0 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg7 = %c0_4 to %0 step %c1_5 {
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg8 = %c0_10 to %1 step %c1_11 {
        %6 = memref.load %arg5[%arg8] : memref<?xf64>
        %7 = memref.load %arg3[%arg7, %arg8] : memref<?x28xf64>
        %8 = arith.subf %7, %6 : f64
        memref.store %8, %arg3[%arg7, %arg8] : memref<?x28xf64>
        %9 = memref.load %arg6[%arg8] : memref<?xf64>
        %10 = arith.mulf %2, %9 : f64
        %11 = arith.divf %8, %10 : f64
        memref.store %11, %arg3[%arg7, %arg8] : memref<?x28xf64>
      }
    }
    %c0_6 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
    %3 = arith.addi %1, %c-1 : index
    %c1_7 = arith.constant 1 : index
    scf.for %arg7 = %c0_6 to %3 step %c1_7 {
      memref.store %cst_1, %arg4[%arg7, %arg7] : memref<?x28xf64>
      %c1_10 = arith.constant 1 : index
      %6 = arith.addi %arg7, %c1_10 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg8 = %6 to %1 step %c1_11 {
        memref.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg9 = %c0_12 to %0 step %c1_13 {
          %8 = memref.load %arg3[%arg9, %arg7] : memref<?x28xf64>
          %9 = memref.load %arg3[%arg9, %arg8] : memref<?x28xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
          %12 = arith.addf %11, %10 : f64
          memref.store %12, %arg4[%arg7, %arg8] : memref<?x28xf64>
        }
        %7 = memref.load %arg4[%arg7, %arg8] : memref<?x28xf64>
        memref.store %7, %arg4[%arg8, %arg7] : memref<?x28xf64>
      }
    }
    %c-1_8 = arith.constant -1 : index
    %4 = arith.addi %1, %c-1_8 : index
    %c-1_9 = arith.constant -1 : index
    %5 = arith.addi %1, %c-1_9 : index
    memref.store %cst_1, %arg4[%4, %5] : memref<?x28xf64>
    return
  }
}

