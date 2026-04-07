module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c40 step %c1 {
      scf.for %arg13 = %c0 to %c40 step %c1 {
        %3 = memref.load %arg3[%arg13, %arg12] : memref<?x40xf64>
        %4 = memref.load %arg4[%arg13] : memref<?xf64>
        %5 = memref.load %arg5[%arg12] : memref<?xf64>
        %6 = arith.mulf %4, %5 : f64
        %7 = arith.addf %3, %6 : f64
        %8 = memref.load %arg6[%arg13] : memref<?xf64>
        %9 = memref.load %arg7[%arg12] : memref<?xf64>
        %10 = arith.mulf %8, %9 : f64
        %11 = arith.addf %7, %10 : f64
        memref.store %11, %arg3[%arg13, %arg12] : memref<?x40xf64>
        %12 = memref.load %arg9[%arg12] : memref<?xf64>
        %13 = memref.load %arg3[%arg13, %arg12] : memref<?x40xf64>
        %14 = arith.mulf %arg2, %13 : f64
        %15 = memref.load %arg10[%arg13] : memref<?xf64>
        %16 = arith.mulf %14, %15 : f64
        %17 = arith.addf %12, %16 : f64
        memref.store %17, %arg9[%arg12] : memref<?xf64>
      }
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

