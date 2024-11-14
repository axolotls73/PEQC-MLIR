module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c1 step %c1_0 {
      %c128 = arith.constant 128 : index
      %0 = arith.muli %arg7, %c128 : index
      %c0_6 = arith.constant 0 : index
      %c9 = arith.constant 9 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg8 = %c0_6 to %c9 step %c1_7 {
        %c4 = arith.constant 4 : index
        %1 = arith.muli %arg8, %c4 : index
        %2 = arith.addi %0, %1 : index
        memref.store %cst, %arg3[%2] : memref<?xf64>
        %c1_8 = arith.constant 1 : index
        %3 = arith.addi %2, %c1_8 : index
        memref.store %cst, %arg3[%3] : memref<?xf64>
        %c2_9 = arith.constant 2 : index
        %4 = arith.addi %2, %c2_9 : index
        memref.store %cst, %arg3[%4] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %5 = arith.addi %2, %c3 : index
        memref.store %cst, %arg3[%5] : memref<?xf64>
      }
    }
    %c0_1 = arith.constant 0 : index
    %c1_2 = arith.constant 1 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg7 = %c0_1 to %c1_2 step %c1_3 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg7, %c32 : index
      %c36 = arith.constant 36 : index
      %1 = arith.addi %0, %c36 : index
      %c0_6 = arith.constant 0 : index
      %c2_7 = arith.constant 2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg8 = %c0_6 to %c2_7 step %c1_8 {
        %2 = arith.addi %1, %arg8 : index
        memref.store %cst, %arg3[%2] : memref<?xf64>
      }
    }
    %c0_4 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg7 = %c0_4 to %c2 step %c1_5 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg7, %c32 : index
      %c0_6 = arith.constant 0 : index
      %c32_7 = arith.constant 32 : index
      %c-32 = arith.constant -32 : index
      %1 = arith.muli %arg7, %c-32 : index
      %c42 = arith.constant 42 : index
      %2 = arith.addi %1, %c42 : index
      %3 = arith.minsi %c32_7, %2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg8 = %c0_6 to %3 step %c1_8 {
        %4 = arith.addi %0, %arg8 : index
        memref.store %cst, %arg4[%4] : memref<?xf64>
        %5 = memref.load %arg6[%4] : memref<?xf64>
        %6 = memref.load %arg6[%4] : memref<?xf64>
        %7 = memref.load %arg6[%4] : memref<?xf64>
        %8 = memref.load %arg6[%4] : memref<?xf64>
        %c0_9 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg9 = %c0_9 to %c9 step %c1_10 {
          %c4 = arith.constant 4 : index
          %10 = arith.muli %arg9, %c4 : index
          %11 = memref.load %arg3[%10] : memref<?xf64>
          %12 = memref.load %arg2[%4, %10] : memref<?x38xf64>
          %13 = arith.mulf %5, %12 : f64
          %14 = arith.addf %11, %13 : f64
          memref.store %14, %arg3[%10] : memref<?xf64>
          %15 = memref.load %arg4[%4] : memref<?xf64>
          %16 = memref.load %arg2[%4, %10] : memref<?x38xf64>
          %17 = memref.load %arg5[%10] : memref<?xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = arith.addf %15, %18 : f64
          memref.store %19, %arg4[%4] : memref<?xf64>
          %c1_14 = arith.constant 1 : index
          %20 = arith.addi %10, %c1_14 : index
          %21 = memref.load %arg3[%20] : memref<?xf64>
          %22 = memref.load %arg2[%4, %20] : memref<?x38xf64>
          %23 = arith.mulf %6, %22 : f64
          %24 = arith.addf %21, %23 : f64
          memref.store %24, %arg3[%20] : memref<?xf64>
          %25 = memref.load %arg4[%4] : memref<?xf64>
          %26 = memref.load %arg2[%4, %20] : memref<?x38xf64>
          %27 = memref.load %arg5[%20] : memref<?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = arith.addf %25, %28 : f64
          memref.store %29, %arg4[%4] : memref<?xf64>
          %c2_15 = arith.constant 2 : index
          %30 = arith.addi %10, %c2_15 : index
          %31 = memref.load %arg3[%30] : memref<?xf64>
          %32 = memref.load %arg2[%4, %30] : memref<?x38xf64>
          %33 = arith.mulf %7, %32 : f64
          %34 = arith.addf %31, %33 : f64
          memref.store %34, %arg3[%30] : memref<?xf64>
          %35 = memref.load %arg4[%4] : memref<?xf64>
          %36 = memref.load %arg2[%4, %30] : memref<?x38xf64>
          %37 = memref.load %arg5[%30] : memref<?xf64>
          %38 = arith.mulf %36, %37 : f64
          %39 = arith.addf %35, %38 : f64
          memref.store %39, %arg4[%4] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %40 = arith.addi %10, %c3 : index
          %41 = memref.load %arg3[%40] : memref<?xf64>
          %42 = memref.load %arg2[%4, %40] : memref<?x38xf64>
          %43 = arith.mulf %8, %42 : f64
          %44 = arith.addf %41, %43 : f64
          memref.store %44, %arg3[%40] : memref<?xf64>
          %45 = memref.load %arg4[%4] : memref<?xf64>
          %46 = memref.load %arg2[%4, %40] : memref<?x38xf64>
          %47 = memref.load %arg5[%40] : memref<?xf64>
          %48 = arith.mulf %46, %47 : f64
          %49 = arith.addf %45, %48 : f64
          memref.store %49, %arg4[%4] : memref<?xf64>
        }
        %9 = memref.load %arg6[%4] : memref<?xf64>
        %c0_11 = arith.constant 0 : index
        %c2_12 = arith.constant 2 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg9 = %c0_11 to %c2_12 step %c1_13 {
          %c36 = arith.constant 36 : index
          %10 = arith.addi %arg9, %c36 : index
          %11 = memref.load %arg3[%10] : memref<?xf64>
          %12 = memref.load %arg2[%4, %10] : memref<?x38xf64>
          %13 = arith.mulf %9, %12 : f64
          %14 = arith.addf %11, %13 : f64
          memref.store %14, %arg3[%10] : memref<?xf64>
          %15 = memref.load %arg4[%4] : memref<?xf64>
          %16 = memref.load %arg2[%4, %10] : memref<?x38xf64>
          %17 = memref.load %arg5[%10] : memref<?xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = arith.addf %15, %18 : f64
          memref.store %19, %arg4[%4] : memref<?xf64>
        }
      }
    }
    return
  }
}

