module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c38 = arith.constant 38 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c38 step %c1 {
      %0 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %arg7 to %0 step %c1 {
        memref.store %cst, %arg3[%arg8] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c42 step %c1 {
      %0 = arith.addi %arg7, %c1 : index
      scf.for %arg8 = %arg7 to %0 step %c1 {
        memref.store %cst, %arg4[%arg8] : memref<?xf64>
        scf.for %arg9 = %c0 to %c38 step %c1 {
          %1 = memref.load %arg3[%arg9] : memref<?xf64>
          %2 = memref.load %arg6[%arg8] : memref<?xf64>
          %3 = memref.load %arg2[%arg8, %arg9] : memref<?x38xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = arith.addf %1, %4 : f64
          memref.store %5, %arg3[%arg9] : memref<?xf64>
          %6 = memref.load %arg4[%arg8] : memref<?xf64>
          %7 = memref.load %arg2[%arg8, %arg9] : memref<?x38xf64>
          %8 = memref.load %arg5[%arg9] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %6, %9 : f64
          memref.store %10, %arg4[%arg8] : memref<?xf64>
        }
      }
    }
    return
  }
}

