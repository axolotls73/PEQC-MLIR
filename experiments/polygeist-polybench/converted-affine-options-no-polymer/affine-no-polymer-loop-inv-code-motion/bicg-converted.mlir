module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c38 = arith.constant 38 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c38 step %c1 {
      memref.store %cst, %arg3[%arg7] : memref<?xf64>
    }
    scf.for %arg7 = %c0 to %c42 step %c1 {
      memref.store %cst, %arg4[%arg7] : memref<?xf64>
      %0 = memref.load %arg6[%arg7] : memref<?xf64>
      scf.for %arg8 = %c0 to %c38 step %c1 {
        %1 = memref.load %arg3[%arg8] : memref<?xf64>
        %2 = memref.load %arg2[%arg7, %arg8] : memref<?x38xf64>
        %3 = arith.mulf %0, %2 : f64
        %4 = arith.addf %1, %3 : f64
        memref.store %4, %arg3[%arg8] : memref<?xf64>
        %5 = memref.load %arg4[%arg7] : memref<?xf64>
        %6 = memref.load %arg2[%arg7, %arg8] : memref<?x38xf64>
        %7 = memref.load %arg5[%arg8] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = arith.addf %5, %8 : f64
        memref.store %9, %arg4[%arg7] : memref<?xf64>
      }
    }
    return
  }
}

