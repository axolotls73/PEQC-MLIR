module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    scf.for %arg12 = %c0 to %c40 step %c32 {
      %c32_3 = arith.constant 32 : index
      %0 = arith.addi %arg12, %c32_3 : index
      %c40_4 = arith.constant 40 : index
      %1 = arith.minsi %0, %c40_4 : index
      %c1 = arith.constant 1 : index
      scf.for %arg13 = %arg12 to %1 step %c1 {
        %c0_5 = arith.constant 0 : index
        %c40_6 = arith.constant 40 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg14 = %c0_5 to %c40_6 step %c1_7 {
          %5 = memref.load %arg3[%arg14, %arg13] : memref<?x40xf64>
          %6 = memref.load %arg4[%arg14] : memref<?xf64>
          %7 = memref.load %arg5[%arg13] : memref<?xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = arith.addf %5, %8 : f64
          %10 = memref.load %arg6[%arg14] : memref<?xf64>
          %11 = memref.load %arg7[%arg13] : memref<?xf64>
          %12 = arith.mulf %10, %11 : f64
          %13 = arith.addf %9, %12 : f64
          memref.store %13, %arg3[%arg14, %arg13] : memref<?x40xf64>
          %14 = memref.load %arg9[%arg13] : memref<?xf64>
          %15 = memref.load %arg3[%arg14, %arg13] : memref<?x40xf64>
          %16 = arith.mulf %arg2, %15 : f64
          %17 = memref.load %arg10[%arg14] : memref<?xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = arith.addf %14, %18 : f64
          memref.store %19, %arg9[%arg13] : memref<?xf64>
        }
        %2 = memref.load %arg9[%arg13] : memref<?xf64>
        %3 = memref.load %arg11[%arg13] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        memref.store %4, %arg9[%arg13] : memref<?xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c40_1 = arith.constant 40 : index
    %c32_2 = arith.constant 32 : index
    scf.for %arg12 = %c0_0 to %c40_1 step %c32_2 {
      %c0_3 = arith.constant 0 : index
      %c40_4 = arith.constant 40 : index
      %c32_5 = arith.constant 32 : index
      scf.for %arg13 = %c0_3 to %c40_4 step %c32_5 {
        %c32_6 = arith.constant 32 : index
        %0 = arith.addi %arg12, %c32_6 : index
        %c40_7 = arith.constant 40 : index
        %1 = arith.minsi %0, %c40_7 : index
        %c1 = arith.constant 1 : index
        scf.for %arg14 = %arg12 to %1 step %c1 {
          %c32_8 = arith.constant 32 : index
          %2 = arith.addi %arg13, %c32_8 : index
          %c40_9 = arith.constant 40 : index
          %3 = arith.minsi %2, %c40_9 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg15 = %arg13 to %3 step %c1_10 {
            %4 = memref.load %arg8[%arg14] : memref<?xf64>
            %5 = memref.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %6 = arith.mulf %arg1, %5 : f64
            %7 = memref.load %arg9[%arg15] : memref<?xf64>
            %8 = arith.mulf %6, %7 : f64
            %9 = arith.addf %4, %8 : f64
            memref.store %9, %arg8[%arg14] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

