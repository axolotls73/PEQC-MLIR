module {
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %1 step %c1 {
      memref.store %cst, %arg5[%arg6] : memref<?xf64>
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg7 = %c0_5 to %0 step %c1_6 {
        %5 = memref.load %arg3[%arg7, %arg6] : memref<?x28xf64>
        %6 = memref.load %arg5[%arg6] : memref<?xf64>
        %7 = arith.addf %6, %5 : f64
        memref.store %7, %arg5[%arg6] : memref<?xf64>
      }
      %3 = memref.load %arg5[%arg6] : memref<?xf64>
      %4 = arith.divf %3, %arg2 : f64
      memref.store %4, %arg5[%arg6] : memref<?xf64>
    }
    %c0_1 = arith.constant 0 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg6 = %c0_1 to %0 step %c1_2 {
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg7 = %c0_5 to %1 step %c1_6 {
        %3 = memref.load %arg5[%arg7] : memref<?xf64>
        %4 = memref.load %arg3[%arg6, %arg7] : memref<?x28xf64>
        %5 = arith.subf %4, %3 : f64
        memref.store %5, %arg3[%arg6, %arg7] : memref<?x28xf64>
      }
    }
    %2 = arith.subf %arg2, %cst_0 : f64
    %c0_3 = arith.constant 0 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg6 = %c0_3 to %1 step %c1_4 {
      %c1_5 = arith.constant 1 : index
      scf.for %arg7 = %arg6 to %1 step %c1_5 {
        memref.store %cst, %arg4[%arg6, %arg7] : memref<?x28xf64>
        %c0_6 = arith.constant 0 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg8 = %c0_6 to %0 step %c1_7 {
          %5 = memref.load %arg3[%arg8, %arg6] : memref<?x28xf64>
          %6 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %arg4[%arg6, %arg7] : memref<?x28xf64>
          %9 = arith.addf %8, %7 : f64
          memref.store %9, %arg4[%arg6, %arg7] : memref<?x28xf64>
        }
        %3 = memref.load %arg4[%arg6, %arg7] : memref<?x28xf64>
        %4 = arith.divf %3, %2 : f64
        memref.store %4, %arg4[%arg6, %arg7] : memref<?x28xf64>
        memref.store %4, %arg4[%arg7, %arg6] : memref<?x28xf64>
      }
    }
    return
  }
}

