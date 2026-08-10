module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %0 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %0 step %c1 {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg13 = %c0_6 to %0 step %c1_7 {
        %1 = memref.load %arg3[%arg12, %arg13] : memref<?x40xf64>
        %2 = memref.load %arg4[%arg12] : memref<?xf64>
        %3 = memref.load %arg5[%arg13] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %1, %4 : f64
        %6 = memref.load %arg6[%arg12] : memref<?xf64>
        %7 = memref.load %arg7[%arg13] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = arith.addf %5, %8 : f64
        memref.store %9, %arg3[%arg12, %arg13] : memref<?x40xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg12 = %c0_0 to %0 step %c1_1 {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg13 = %c0_6 to %0 step %c1_7 {
        %1 = memref.load %arg9[%arg12] : memref<?xf64>
        %2 = memref.load %arg3[%arg13, %arg12] : memref<?x40xf64>
        %3 = arith.mulf %arg2, %2 : f64
        %4 = memref.load %arg10[%arg13] : memref<?xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = arith.addf %1, %5 : f64
        memref.store %6, %arg9[%arg12] : memref<?xf64>
      }
    }
    %c0_2 = arith.constant 0 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg12 = %c0_2 to %0 step %c1_3 {
      %1 = memref.load %arg9[%arg12] : memref<?xf64>
      %2 = memref.load %arg11[%arg12] : memref<?xf64>
      %3 = arith.addf %1, %2 : f64
      memref.store %3, %arg9[%arg12] : memref<?xf64>
    }
    %c0_4 = arith.constant 0 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg12 = %c0_4 to %0 step %c1_5 {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg13 = %c0_6 to %0 step %c1_7 {
        %1 = memref.load %arg8[%arg12] : memref<?xf64>
        %2 = memref.load %arg3[%arg12, %arg13] : memref<?x40xf64>
        %3 = arith.mulf %arg1, %2 : f64
        %4 = memref.load %arg9[%arg13] : memref<?xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = arith.addf %1, %5 : f64
        memref.store %6, %arg8[%arg12] : memref<?xf64>
      }
    }
    return
  }
}

