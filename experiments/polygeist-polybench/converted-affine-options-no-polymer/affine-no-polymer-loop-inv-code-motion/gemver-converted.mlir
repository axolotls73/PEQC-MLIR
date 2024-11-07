module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c40 step %c1 {
      %0 = memref.load %arg4[%arg12] : memref<?xf64>
      %1 = memref.load %arg6[%arg12] : memref<?xf64>
      scf.for %arg13 = %c0 to %c40 step %c1 {
        %2 = memref.load %arg3[%arg12, %arg13] : memref<?x40xf64>
        %3 = memref.load %arg5[%arg13] : memref<?xf64>
        %4 = arith.mulf %0, %3 : f64
        %5 = arith.addf %2, %4 : f64
        %6 = memref.load %arg7[%arg13] : memref<?xf64>
        %7 = arith.mulf %1, %6 : f64
        %8 = arith.addf %5, %7 : f64
        memref.store %8, %arg3[%arg12, %arg13] : memref<?x40xf64>
      }
    }
    scf.for %arg12 = %c0 to %c40 step %c1 {
      scf.for %arg13 = %c0 to %c40 step %c1 {
        %0 = memref.load %arg9[%arg12] : memref<?xf64>
        %1 = memref.load %arg3[%arg13, %arg12] : memref<?x40xf64>
        %2 = arith.mulf %arg2, %1 : f64
        %3 = memref.load %arg10[%arg13] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %0, %4 : f64
        memref.store %5, %arg9[%arg12] : memref<?xf64>
      }
    }
    scf.for %arg12 = %c0 to %c40 step %c1 {
      %0 = memref.load %arg9[%arg12] : memref<?xf64>
      %1 = memref.load %arg11[%arg12] : memref<?xf64>
      %2 = arith.addf %0, %1 : f64
      memref.store %2, %arg9[%arg12] : memref<?xf64>
    }
    scf.for %arg12 = %c0 to %c40 step %c1 {
      scf.for %arg13 = %c0 to %c40 step %c1 {
        %0 = memref.load %arg8[%arg12] : memref<?xf64>
        %1 = memref.load %arg3[%arg12, %arg13] : memref<?x40xf64>
        %2 = arith.mulf %arg1, %1 : f64
        %3 = memref.load %arg9[%arg13] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %0, %4 : f64
        memref.store %5, %arg8[%arg12] : memref<?xf64>
      }
    }
    return
  }
}

