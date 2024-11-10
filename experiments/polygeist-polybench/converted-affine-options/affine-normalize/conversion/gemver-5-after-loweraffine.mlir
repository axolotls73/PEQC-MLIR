module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c2 step %c1 {
      %c0_6 = arith.constant 0 : index
      %c2_7 = arith.constant 2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg13 = %c0_6 to %c2_7 step %c1_8 {
        %c0_9 = arith.constant 0 : index
        %c-32 = arith.constant -32 : index
        %0 = arith.muli %arg13, %c-32 : index
        %c40 = arith.constant 40 : index
        %1 = arith.addi %0, %c40 : index
        %c32 = arith.constant 32 : index
        %2 = arith.minsi %1, %c32 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg14 = %c0_9 to %2 step %c1_10 {
          %c32_11 = arith.constant 32 : index
          %3 = arith.muli %arg13, %c32_11 : index
          %4 = arith.addi %3, %arg14 : index
          %c0_12 = arith.constant 0 : index
          %c-32_13 = arith.constant -32 : index
          %5 = arith.muli %arg12, %c-32_13 : index
          %c40_14 = arith.constant 40 : index
          %6 = arith.addi %5, %c40_14 : index
          %c32_15 = arith.constant 32 : index
          %7 = arith.minsi %6, %c32_15 : index
          %c1_16 = arith.constant 1 : index
          scf.for %arg15 = %c0_12 to %7 step %c1_16 {
            %c32_17 = arith.constant 32 : index
            %8 = arith.muli %arg12, %c32_17 : index
            %9 = arith.addi %8, %arg15 : index
            %10 = memref.load %arg3[%4, %9] : memref<?x40xf64>
            %11 = memref.load %arg4[%4] : memref<?xf64>
            %12 = memref.load %arg5[%9] : memref<?xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = arith.addf %10, %13 : f64
            %15 = memref.load %arg6[%4] : memref<?xf64>
            %16 = memref.load %arg7[%9] : memref<?xf64>
            %17 = arith.mulf %15, %16 : f64
            %18 = arith.addf %14, %17 : f64
            memref.store %18, %arg3[%4, %9] : memref<?x40xf64>
            %19 = memref.load %arg9[%9] : memref<?xf64>
            %20 = memref.load %arg3[%4, %9] : memref<?x40xf64>
            %21 = arith.mulf %arg2, %20 : f64
            %22 = memref.load %arg10[%4] : memref<?xf64>
            %23 = arith.mulf %21, %22 : f64
            %24 = arith.addf %19, %23 : f64
            memref.store %24, %arg9[%9] : memref<?xf64>
          }
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2_1 = arith.constant 2 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg12 = %c0_0 to %c2_1 step %c1_2 {
      %c0_6 = arith.constant 0 : index
      %c-32 = arith.constant -32 : index
      %0 = arith.muli %arg12, %c-32 : index
      %c40 = arith.constant 40 : index
      %1 = arith.addi %0, %c40 : index
      %c32 = arith.constant 32 : index
      %2 = arith.minsi %1, %c32 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg13 = %c0_6 to %2 step %c1_7 {
        %c32_8 = arith.constant 32 : index
        %3 = arith.muli %arg12, %c32_8 : index
        %4 = arith.addi %3, %arg13 : index
        %5 = memref.load %arg9[%4] : memref<?xf64>
        %6 = memref.load %arg11[%4] : memref<?xf64>
        %7 = arith.addf %5, %6 : f64
        memref.store %7, %arg9[%4] : memref<?xf64>
      }
    }
    %c0_3 = arith.constant 0 : index
    %c2_4 = arith.constant 2 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg12 = %c0_3 to %c2_4 step %c1_5 {
      %c0_6 = arith.constant 0 : index
      %c2_7 = arith.constant 2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg13 = %c0_6 to %c2_7 step %c1_8 {
        %c0_9 = arith.constant 0 : index
        %c-32 = arith.constant -32 : index
        %0 = arith.muli %arg12, %c-32 : index
        %c40 = arith.constant 40 : index
        %1 = arith.addi %0, %c40 : index
        %c32 = arith.constant 32 : index
        %2 = arith.minsi %1, %c32 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg14 = %c0_9 to %2 step %c1_10 {
          %c32_11 = arith.constant 32 : index
          %3 = arith.muli %arg12, %c32_11 : index
          %4 = arith.addi %3, %arg14 : index
          %c0_12 = arith.constant 0 : index
          %c-32_13 = arith.constant -32 : index
          %5 = arith.muli %arg13, %c-32_13 : index
          %c40_14 = arith.constant 40 : index
          %6 = arith.addi %5, %c40_14 : index
          %c32_15 = arith.constant 32 : index
          %7 = arith.minsi %6, %c32_15 : index
          %c1_16 = arith.constant 1 : index
          scf.for %arg15 = %c0_12 to %7 step %c1_16 {
            %c32_17 = arith.constant 32 : index
            %8 = arith.muli %arg13, %c32_17 : index
            %9 = arith.addi %8, %arg15 : index
            %10 = memref.load %arg8[%4] : memref<?xf64>
            %11 = memref.load %arg3[%4, %9] : memref<?x40xf64>
            %12 = arith.mulf %arg1, %11 : f64
            %13 = memref.load %arg9[%9] : memref<?xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = arith.addf %10, %14 : f64
            memref.store %15, %arg8[%4] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

