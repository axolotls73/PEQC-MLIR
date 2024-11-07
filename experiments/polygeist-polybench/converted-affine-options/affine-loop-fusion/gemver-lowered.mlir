module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg12, %c32 : index
      %c40 = arith.constant 40 : index
      %c32_6 = arith.constant 32 : index
      %1 = arith.muli %arg12, %c32_6 : index
      %c32_7 = arith.constant 32 : index
      %2 = arith.addi %1, %c32_7 : index
      %3 = arith.minsi %c40, %2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg13 = %0 to %3 step %c1_8 {
        %c0_9 = arith.constant 0 : index
        %c2_10 = arith.constant 2 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg14 = %c0_9 to %c2_10 step %c1_11 {
          %c32_12 = arith.constant 32 : index
          %4 = arith.muli %arg14, %c32_12 : index
          %c40_13 = arith.constant 40 : index
          %c32_14 = arith.constant 32 : index
          %5 = arith.muli %arg14, %c32_14 : index
          %c32_15 = arith.constant 32 : index
          %6 = arith.addi %5, %c32_15 : index
          %7 = arith.minsi %c40_13, %6 : index
          %c1_16 = arith.constant 1 : index
          scf.for %arg15 = %4 to %7 step %c1_16 {
            %8 = memref.load %arg3[%arg15, %arg13] : memref<?x40xf64>
            %9 = memref.load %arg4[%arg15] : memref<?xf64>
            %10 = memref.load %arg5[%arg13] : memref<?xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.addf %8, %11 : f64
            %13 = memref.load %arg6[%arg15] : memref<?xf64>
            %14 = memref.load %arg7[%arg13] : memref<?xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = arith.addf %12, %15 : f64
            memref.store %16, %arg3[%arg15, %arg13] : memref<?x40xf64>
            %17 = memref.load %arg9[%arg13] : memref<?xf64>
            %18 = memref.load %arg3[%arg15, %arg13] : memref<?x40xf64>
            %19 = arith.mulf %arg2, %18 : f64
            %20 = memref.load %arg10[%arg15] : memref<?xf64>
            %21 = arith.mulf %19, %20 : f64
            %22 = arith.addf %17, %21 : f64
            memref.store %22, %arg9[%arg13] : memref<?xf64>
          }
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2_1 = arith.constant 2 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg12 = %c0_0 to %c2_1 step %c1_2 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg12, %c32 : index
      %c40 = arith.constant 40 : index
      %c32_6 = arith.constant 32 : index
      %1 = arith.muli %arg12, %c32_6 : index
      %c32_7 = arith.constant 32 : index
      %2 = arith.addi %1, %c32_7 : index
      %3 = arith.minsi %c40, %2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg13 = %0 to %3 step %c1_8 {
        %4 = memref.load %arg9[%arg13] : memref<?xf64>
        %5 = memref.load %arg11[%arg13] : memref<?xf64>
        %6 = arith.addf %4, %5 : f64
        memref.store %6, %arg9[%arg13] : memref<?xf64>
      }
    }
    %c0_3 = arith.constant 0 : index
    %c2_4 = arith.constant 2 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg12 = %c0_3 to %c2_4 step %c1_5 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg12, %c32 : index
      %c40 = arith.constant 40 : index
      %c32_6 = arith.constant 32 : index
      %1 = arith.muli %arg12, %c32_6 : index
      %c32_7 = arith.constant 32 : index
      %2 = arith.addi %1, %c32_7 : index
      %3 = arith.minsi %c40, %2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg13 = %0 to %3 step %c1_8 {
        %c0_9 = arith.constant 0 : index
        %c2_10 = arith.constant 2 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg14 = %c0_9 to %c2_10 step %c1_11 {
          %c32_12 = arith.constant 32 : index
          %4 = arith.muli %arg14, %c32_12 : index
          %c40_13 = arith.constant 40 : index
          %c32_14 = arith.constant 32 : index
          %5 = arith.muli %arg14, %c32_14 : index
          %c32_15 = arith.constant 32 : index
          %6 = arith.addi %5, %c32_15 : index
          %7 = arith.minsi %c40_13, %6 : index
          %c1_16 = arith.constant 1 : index
          scf.for %arg15 = %4 to %7 step %c1_16 {
            %8 = memref.load %arg8[%arg13] : memref<?xf64>
            %9 = memref.load %arg3[%arg13, %arg15] : memref<?x40xf64>
            %10 = arith.mulf %arg1, %9 : f64
            %11 = memref.load %arg9[%arg15] : memref<?xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = arith.addf %8, %12 : f64
            memref.store %13, %arg8[%arg13] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

