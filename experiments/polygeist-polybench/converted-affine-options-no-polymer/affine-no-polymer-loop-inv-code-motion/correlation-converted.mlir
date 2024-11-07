module {
  func.func @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c27 = arith.constant 27 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c28 step %c1 {
      memref.store %cst_0, %arg5[%arg7] : memref<?xf64>
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %3 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %4 = memref.load %arg5[%arg7] : memref<?xf64>
        %5 = arith.addf %4, %3 : f64
        memref.store %5, %arg5[%arg7] : memref<?xf64>
      }
      %1 = memref.load %arg5[%arg7] : memref<?xf64>
      %2 = arith.divf %1, %arg2 : f64
      memref.store %2, %arg5[%arg7] : memref<?xf64>
    }
    scf.for %arg7 = %c0 to %c28 step %c1 {
      memref.store %cst_0, %arg6[%arg7] : memref<?xf64>
      %1 = memref.load %arg5[%arg7] : memref<?xf64>
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %7 = memref.load %arg3[%arg8, %arg7] : memref<?x28xf64>
        %8 = arith.subf %7, %1 : f64
        %9 = arith.mulf %8, %8 : f64
        %10 = memref.load %arg6[%arg7] : memref<?xf64>
        %11 = arith.addf %10, %9 : f64
        memref.store %11, %arg6[%arg7] : memref<?xf64>
      }
      %2 = memref.load %arg6[%arg7] : memref<?xf64>
      %3 = arith.divf %2, %arg2 : f64
      %4 = math.sqrt %3 : f64
      %5 = arith.cmpf ole, %4, %cst_1 : f64
      %6 = arith.select %5, %cst, %4 : f64
      memref.store %6, %arg6[%arg7] : memref<?xf64>
    }
    %0 = math.sqrt %arg2 : f64
    scf.for %arg7 = %c0 to %c32 step %c1 {
      scf.for %arg8 = %c0 to %c28 step %c1 {
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
    scf.for %arg7 = %c0 to %c27 step %c1 {
      memref.store %cst, %arg4[%arg7, %arg7] : memref<?x28xf64>
      %1 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %1 to %c28 step %c1 {
        memref.store %cst_0, %arg4[%arg7, %arg8] : memref<?x28xf64>
        scf.for %arg9 = %c0 to %c32 step %c1 {
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
    memref.store %cst, %arg4[%c27, %c27] : memref<?x28xf64>
    return
  }
}

