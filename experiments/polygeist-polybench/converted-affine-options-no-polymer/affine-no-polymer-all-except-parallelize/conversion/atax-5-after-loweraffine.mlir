module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c1 step %c1_0 {
      %c128 = arith.constant 128 : index
      %0 = arith.muli %arg6, %c128 : index
      %c0_6 = arith.constant 0 : index
      %c10 = arith.constant 10 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg7 = %c0_6 to %c10 step %c1_7 {
        %c4 = arith.constant 4 : index
        %1 = arith.muli %arg7, %c4 : index
        %2 = arith.addi %0, %1 : index
        memref.store %cst, %arg4[%2] : memref<?xf64>
        %c1_8 = arith.constant 1 : index
        %3 = arith.addi %2, %c1_8 : index
        memref.store %cst, %arg4[%3] : memref<?xf64>
        %c2_9 = arith.constant 2 : index
        %4 = arith.addi %2, %c2_9 : index
        memref.store %cst, %arg4[%4] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %5 = arith.addi %2, %c3 : index
        memref.store %cst, %arg4[%5] : memref<?xf64>
      }
    }
    %c0_1 = arith.constant 0 : index
    %c1_2 = arith.constant 1 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg6 = %c0_1 to %c1_2 step %c1_3 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg6, %c32 : index
      %c40 = arith.constant 40 : index
      %1 = arith.addi %0, %c40 : index
      %c0_6 = arith.constant 0 : index
      %c2_7 = arith.constant 2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c0_6 to %c2_7 step %c1_8 {
        %2 = arith.addi %1, %arg7 : index
        memref.store %cst, %arg4[%2] : memref<?xf64>
      }
    }
    %c0_4 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg6 = %c0_4 to %c2 step %c1_5 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg6, %c32 : index
      %c0_6 = arith.constant 0 : index
      %c32_7 = arith.constant 32 : index
      %c-32 = arith.constant -32 : index
      %1 = arith.muli %arg6, %c-32 : index
      %c38 = arith.constant 38 : index
      %2 = arith.addi %1, %c38 : index
      %3 = arith.minsi %c32_7, %2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c0_6 to %3 step %c1_8 {
        %4 = arith.addi %0, %arg7 : index
        memref.store %cst, %arg5[%4] : memref<?xf64>
        %c0_9 = arith.constant 0 : index
        %c10 = arith.constant 10 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg8 = %c0_9 to %c10 step %c1_10 {
          %c4 = arith.constant 4 : index
          %10 = arith.muli %arg8, %c4 : index
          %11 = memref.load %arg5[%4] : memref<?xf64>
          %12 = memref.load %arg2[%4, %10] : memref<?x42xf64>
          %13 = memref.load %arg3[%10] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = arith.addf %11, %14 : f64
          memref.store %15, %arg5[%4] : memref<?xf64>
          %c1_20 = arith.constant 1 : index
          %16 = arith.addi %10, %c1_20 : index
          %17 = memref.load %arg5[%4] : memref<?xf64>
          %18 = memref.load %arg2[%4, %16] : memref<?x42xf64>
          %19 = memref.load %arg3[%16] : memref<?xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = arith.addf %17, %20 : f64
          memref.store %21, %arg5[%4] : memref<?xf64>
          %c2_21 = arith.constant 2 : index
          %22 = arith.addi %10, %c2_21 : index
          %23 = memref.load %arg5[%4] : memref<?xf64>
          %24 = memref.load %arg2[%4, %22] : memref<?x42xf64>
          %25 = memref.load %arg3[%22] : memref<?xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = arith.addf %23, %26 : f64
          memref.store %27, %arg5[%4] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %28 = arith.addi %10, %c3 : index
          %29 = memref.load %arg5[%4] : memref<?xf64>
          %30 = memref.load %arg2[%4, %28] : memref<?x42xf64>
          %31 = memref.load %arg3[%28] : memref<?xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = arith.addf %29, %32 : f64
          memref.store %33, %arg5[%4] : memref<?xf64>
        }
        %c0_11 = arith.constant 0 : index
        %c2_12 = arith.constant 2 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg8 = %c0_11 to %c2_12 step %c1_13 {
          %c40 = arith.constant 40 : index
          %10 = arith.addi %arg8, %c40 : index
          %11 = memref.load %arg5[%4] : memref<?xf64>
          %12 = memref.load %arg2[%4, %10] : memref<?x42xf64>
          %13 = memref.load %arg3[%10] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = arith.addf %11, %14 : f64
          memref.store %15, %arg5[%4] : memref<?xf64>
        }
        %5 = memref.load %arg5[%4] : memref<?xf64>
        %6 = memref.load %arg5[%4] : memref<?xf64>
        %7 = memref.load %arg5[%4] : memref<?xf64>
        %8 = memref.load %arg5[%4] : memref<?xf64>
        %c0_14 = arith.constant 0 : index
        %c10_15 = arith.constant 10 : index
        %c1_16 = arith.constant 1 : index
        scf.for %arg8 = %c0_14 to %c10_15 step %c1_16 {
          %c4 = arith.constant 4 : index
          %10 = arith.muli %arg8, %c4 : index
          %11 = memref.load %arg4[%10] : memref<?xf64>
          %12 = memref.load %arg2[%4, %10] : memref<?x42xf64>
          %13 = arith.mulf %12, %5 : f64
          %14 = arith.addf %11, %13 : f64
          memref.store %14, %arg4[%10] : memref<?xf64>
          %c1_20 = arith.constant 1 : index
          %15 = arith.addi %10, %c1_20 : index
          %16 = memref.load %arg4[%15] : memref<?xf64>
          %17 = memref.load %arg2[%4, %15] : memref<?x42xf64>
          %18 = arith.mulf %17, %6 : f64
          %19 = arith.addf %16, %18 : f64
          memref.store %19, %arg4[%15] : memref<?xf64>
          %c2_21 = arith.constant 2 : index
          %20 = arith.addi %10, %c2_21 : index
          %21 = memref.load %arg4[%20] : memref<?xf64>
          %22 = memref.load %arg2[%4, %20] : memref<?x42xf64>
          %23 = arith.mulf %22, %7 : f64
          %24 = arith.addf %21, %23 : f64
          memref.store %24, %arg4[%20] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %25 = arith.addi %10, %c3 : index
          %26 = memref.load %arg4[%25] : memref<?xf64>
          %27 = memref.load %arg2[%4, %25] : memref<?x42xf64>
          %28 = arith.mulf %27, %8 : f64
          %29 = arith.addf %26, %28 : f64
          memref.store %29, %arg4[%25] : memref<?xf64>
        }
        %9 = memref.load %arg5[%4] : memref<?xf64>
        %c0_17 = arith.constant 0 : index
        %c2_18 = arith.constant 2 : index
        %c1_19 = arith.constant 1 : index
        scf.for %arg8 = %c0_17 to %c2_18 step %c1_19 {
          %c40 = arith.constant 40 : index
          %10 = arith.addi %arg8, %c40 : index
          %11 = memref.load %arg4[%10] : memref<?xf64>
          %12 = memref.load %arg2[%4, %10] : memref<?x42xf64>
          %13 = arith.mulf %12, %9 : f64
          %14 = arith.addf %11, %13 : f64
          memref.store %14, %arg4[%10] : memref<?xf64>
        }
      }
    }
    return
  }
}

