module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c2 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c2_1 = arith.constant 2 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg7 = %c0_0 to %c2_1 step %c1_2 {
        %c0_3 = arith.constant 0 : index
        %c-32 = arith.constant -32 : index
        %0 = arith.muli %arg6, %c-32 : index
        %c40 = arith.constant 40 : index
        %1 = arith.addi %0, %c40 : index
        %c32 = arith.constant 32 : index
        %2 = arith.minsi %1, %c32 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg8 = %c0_3 to %2 step %c1_4 {
          %c0_5 = arith.constant 0 : index
          %c-32_6 = arith.constant -32 : index
          %3 = arith.muli %arg7, %c-32_6 : index
          %c40_7 = arith.constant 40 : index
          %4 = arith.addi %3, %c40_7 : index
          %c32_8 = arith.constant 32 : index
          %5 = arith.minsi %4, %c32_8 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg9 = %c0_5 to %5 step %c1_9 {
            %c32_10 = arith.constant 32 : index
            %6 = arith.muli %arg6, %c32_10 : index
            %7 = arith.addi %6, %arg8 : index
            %8 = memref.load %arg1[%7] : memref<?xf64>
            %c32_11 = arith.constant 32 : index
            %9 = arith.muli %arg6, %c32_11 : index
            %10 = arith.addi %9, %arg8 : index
            %c32_12 = arith.constant 32 : index
            %11 = arith.muli %arg7, %c32_12 : index
            %12 = arith.addi %11, %arg9 : index
            %13 = memref.load %arg5[%10, %12] : memref<?x40xf64>
            %c32_13 = arith.constant 32 : index
            %14 = arith.muli %arg7, %c32_13 : index
            %15 = arith.addi %14, %arg9 : index
            %16 = memref.load %arg3[%15] : memref<?xf64>
            %17 = arith.mulf %13, %16 : f64
            %18 = arith.addf %8, %17 : f64
            %c32_14 = arith.constant 32 : index
            %19 = arith.muli %arg6, %c32_14 : index
            %20 = arith.addi %19, %arg8 : index
            memref.store %18, %arg1[%20] : memref<?xf64>
            %c32_15 = arith.constant 32 : index
            %21 = arith.muli %arg6, %c32_15 : index
            %22 = arith.addi %21, %arg8 : index
            %23 = memref.load %arg2[%22] : memref<?xf64>
            %c32_16 = arith.constant 32 : index
            %24 = arith.muli %arg7, %c32_16 : index
            %25 = arith.addi %24, %arg9 : index
            %c32_17 = arith.constant 32 : index
            %26 = arith.muli %arg6, %c32_17 : index
            %27 = arith.addi %26, %arg8 : index
            %28 = memref.load %arg5[%25, %27] : memref<?x40xf64>
            %c32_18 = arith.constant 32 : index
            %29 = arith.muli %arg7, %c32_18 : index
            %30 = arith.addi %29, %arg9 : index
            %31 = memref.load %arg4[%30] : memref<?xf64>
            %32 = arith.mulf %28, %31 : f64
            %33 = arith.addf %23, %32 : f64
            %c32_19 = arith.constant 32 : index
            %34 = arith.muli %arg6, %c32_19 : index
            %35 = arith.addi %34, %arg8 : index
            memref.store %33, %arg2[%35] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

