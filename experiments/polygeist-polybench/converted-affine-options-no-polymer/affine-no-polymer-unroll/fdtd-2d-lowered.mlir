module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c20 step %c1 {
      %c0_1 = arith.constant 0 : index
      %c28_2 = arith.constant 28 : index
      %c4 = arith.constant 4 : index
      scf.for %arg8 = %c0_1 to %c28_2 step %c4 {
        %0 = memref.load %arg6[%arg7] : memref<?xf64>
        %c0_13 = arith.constant 0 : index
        memref.store %0, %arg4[%c0_13, %arg8] : memref<?x30xf64>
        %c1_14 = arith.constant 1 : index
        %1 = arith.addi %arg8, %c1_14 : index
        %2 = memref.load %arg6[%arg7] : memref<?xf64>
        %c0_15 = arith.constant 0 : index
        memref.store %2, %arg4[%c0_15, %1] : memref<?x30xf64>
        %c2 = arith.constant 2 : index
        %3 = arith.addi %arg8, %c2 : index
        %4 = memref.load %arg6[%arg7] : memref<?xf64>
        %c0_16 = arith.constant 0 : index
        memref.store %4, %arg4[%c0_16, %3] : memref<?x30xf64>
        %c3 = arith.constant 3 : index
        %5 = arith.addi %arg8, %c3 : index
        %6 = memref.load %arg6[%arg7] : memref<?xf64>
        %c0_17 = arith.constant 0 : index
        memref.store %6, %arg4[%c0_17, %5] : memref<?x30xf64>
      }
      %c28_3 = arith.constant 28 : index
      %c30 = arith.constant 30 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg8 = %c28_3 to %c30 step %c1_4 {
        %0 = memref.load %arg6[%arg7] : memref<?xf64>
        %c0_13 = arith.constant 0 : index
        memref.store %0, %arg4[%c0_13, %arg8] : memref<?x30xf64>
      }
      %c1_5 = arith.constant 1 : index
      %c20_6 = arith.constant 20 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg8 = %c1_5 to %c20_6 step %c1_7 {
        %c0_13 = arith.constant 0 : index
        %c28_14 = arith.constant 28 : index
        %c4_15 = arith.constant 4 : index
        scf.for %arg9 = %c0_13 to %c28_14 step %c4_15 {
          %0 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %1 = memref.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %c-1 = arith.constant -1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = memref.load %arg5[%2, %arg9] : memref<?x30xf64>
          %4 = arith.subf %1, %3 : f64
          %5 = arith.mulf %4, %cst_0 : f64
          %6 = arith.subf %0, %5 : f64
          memref.store %6, %arg4[%arg8, %arg9] : memref<?x30xf64>
          %c1_19 = arith.constant 1 : index
          %7 = arith.addi %arg9, %c1_19 : index
          %8 = memref.load %arg4[%arg8, %7] : memref<?x30xf64>
          %9 = memref.load %arg5[%arg8, %7] : memref<?x30xf64>
          %c-1_20 = arith.constant -1 : index
          %10 = arith.addi %arg8, %c-1_20 : index
          %11 = memref.load %arg5[%10, %7] : memref<?x30xf64>
          %12 = arith.subf %9, %11 : f64
          %13 = arith.mulf %12, %cst_0 : f64
          %14 = arith.subf %8, %13 : f64
          memref.store %14, %arg4[%arg8, %7] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %15 = arith.addi %arg9, %c2 : index
          %16 = memref.load %arg4[%arg8, %15] : memref<?x30xf64>
          %17 = memref.load %arg5[%arg8, %15] : memref<?x30xf64>
          %c-1_21 = arith.constant -1 : index
          %18 = arith.addi %arg8, %c-1_21 : index
          %19 = memref.load %arg5[%18, %15] : memref<?x30xf64>
          %20 = arith.subf %17, %19 : f64
          %21 = arith.mulf %20, %cst_0 : f64
          %22 = arith.subf %16, %21 : f64
          memref.store %22, %arg4[%arg8, %15] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %23 = arith.addi %arg9, %c3 : index
          %24 = memref.load %arg4[%arg8, %23] : memref<?x30xf64>
          %25 = memref.load %arg5[%arg8, %23] : memref<?x30xf64>
          %c-1_22 = arith.constant -1 : index
          %26 = arith.addi %arg8, %c-1_22 : index
          %27 = memref.load %arg5[%26, %23] : memref<?x30xf64>
          %28 = arith.subf %25, %27 : f64
          %29 = arith.mulf %28, %cst_0 : f64
          %30 = arith.subf %24, %29 : f64
          memref.store %30, %arg4[%arg8, %23] : memref<?x30xf64>
        }
        %c28_16 = arith.constant 28 : index
        %c30_17 = arith.constant 30 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg9 = %c28_16 to %c30_17 step %c1_18 {
          %0 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %1 = memref.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %c-1 = arith.constant -1 : index
          %2 = arith.addi %arg8, %c-1 : index
          %3 = memref.load %arg5[%2, %arg9] : memref<?x30xf64>
          %4 = arith.subf %1, %3 : f64
          %5 = arith.mulf %4, %cst_0 : f64
          %6 = arith.subf %0, %5 : f64
          memref.store %6, %arg4[%arg8, %arg9] : memref<?x30xf64>
        }
      }
      %c0_8 = arith.constant 0 : index
      %c20_9 = arith.constant 20 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg8 = %c0_8 to %c20_9 step %c1_10 {
        %c1_13 = arith.constant 1 : index
        %c29_14 = arith.constant 29 : index
        %c4_15 = arith.constant 4 : index
        scf.for %arg9 = %c1_13 to %c29_14 step %c4_15 {
          %7 = memref.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %8 = memref.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %c-1_16 = arith.constant -1 : index
          %9 = arith.addi %arg9, %c-1_16 : index
          %10 = memref.load %arg5[%arg8, %9] : memref<?x30xf64>
          %11 = arith.subf %8, %10 : f64
          %12 = arith.mulf %11, %cst_0 : f64
          %13 = arith.subf %7, %12 : f64
          memref.store %13, %arg3[%arg8, %arg9] : memref<?x30xf64>
          %c1_17 = arith.constant 1 : index
          %14 = arith.addi %arg9, %c1_17 : index
          %15 = memref.load %arg3[%arg8, %14] : memref<?x30xf64>
          %16 = memref.load %arg5[%arg8, %14] : memref<?x30xf64>
          %c-1_18 = arith.constant -1 : index
          %17 = arith.addi %14, %c-1_18 : index
          %18 = memref.load %arg5[%arg8, %17] : memref<?x30xf64>
          %19 = arith.subf %16, %18 : f64
          %20 = arith.mulf %19, %cst_0 : f64
          %21 = arith.subf %15, %20 : f64
          memref.store %21, %arg3[%arg8, %14] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %22 = arith.addi %arg9, %c2 : index
          %23 = memref.load %arg3[%arg8, %22] : memref<?x30xf64>
          %24 = memref.load %arg5[%arg8, %22] : memref<?x30xf64>
          %c-1_19 = arith.constant -1 : index
          %25 = arith.addi %22, %c-1_19 : index
          %26 = memref.load %arg5[%arg8, %25] : memref<?x30xf64>
          %27 = arith.subf %24, %26 : f64
          %28 = arith.mulf %27, %cst_0 : f64
          %29 = arith.subf %23, %28 : f64
          memref.store %29, %arg3[%arg8, %22] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %30 = arith.addi %arg9, %c3 : index
          %31 = memref.load %arg3[%arg8, %30] : memref<?x30xf64>
          %32 = memref.load %arg5[%arg8, %30] : memref<?x30xf64>
          %c-1_20 = arith.constant -1 : index
          %33 = arith.addi %30, %c-1_20 : index
          %34 = memref.load %arg5[%arg8, %33] : memref<?x30xf64>
          %35 = arith.subf %32, %34 : f64
          %36 = arith.mulf %35, %cst_0 : f64
          %37 = arith.subf %31, %36 : f64
          memref.store %37, %arg3[%arg8, %30] : memref<?x30xf64>
        }
        %0 = memref.load %arg3[%arg8, %c29] : memref<?x30xf64>
        %1 = memref.load %arg5[%arg8, %c29] : memref<?x30xf64>
        %c-1 = arith.constant -1 : index
        %2 = arith.addi %c29, %c-1 : index
        %3 = memref.load %arg5[%arg8, %2] : memref<?x30xf64>
        %4 = arith.subf %1, %3 : f64
        %5 = arith.mulf %4, %cst_0 : f64
        %6 = arith.subf %0, %5 : f64
        memref.store %6, %arg3[%arg8, %c29] : memref<?x30xf64>
      }
      %c0_11 = arith.constant 0 : index
      %c19 = arith.constant 19 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg8 = %c0_11 to %c19 step %c1_12 {
        %c0_13 = arith.constant 0 : index
        %c28_14 = arith.constant 28 : index
        %c4_15 = arith.constant 4 : index
        scf.for %arg9 = %c0_13 to %c28_14 step %c4_15 {
          %12 = memref.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %c1_18 = arith.constant 1 : index
          %13 = arith.addi %arg9, %c1_18 : index
          %14 = memref.load %arg3[%arg8, %13] : memref<?x30xf64>
          %15 = memref.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %16 = arith.subf %14, %15 : f64
          %c1_19 = arith.constant 1 : index
          %17 = arith.addi %arg8, %c1_19 : index
          %18 = memref.load %arg4[%17, %arg9] : memref<?x30xf64>
          %19 = arith.addf %16, %18 : f64
          %20 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %21 = arith.subf %19, %20 : f64
          %22 = arith.mulf %21, %cst : f64
          %23 = arith.subf %12, %22 : f64
          memref.store %23, %arg5[%arg8, %arg9] : memref<?x30xf64>
          %c1_20 = arith.constant 1 : index
          %24 = arith.addi %arg9, %c1_20 : index
          %25 = memref.load %arg5[%arg8, %24] : memref<?x30xf64>
          %c1_21 = arith.constant 1 : index
          %26 = arith.addi %24, %c1_21 : index
          %27 = memref.load %arg3[%arg8, %26] : memref<?x30xf64>
          %28 = memref.load %arg3[%arg8, %24] : memref<?x30xf64>
          %29 = arith.subf %27, %28 : f64
          %c1_22 = arith.constant 1 : index
          %30 = arith.addi %arg8, %c1_22 : index
          %31 = memref.load %arg4[%30, %24] : memref<?x30xf64>
          %32 = arith.addf %29, %31 : f64
          %33 = memref.load %arg4[%arg8, %24] : memref<?x30xf64>
          %34 = arith.subf %32, %33 : f64
          %35 = arith.mulf %34, %cst : f64
          %36 = arith.subf %25, %35 : f64
          memref.store %36, %arg5[%arg8, %24] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %37 = arith.addi %arg9, %c2 : index
          %38 = memref.load %arg5[%arg8, %37] : memref<?x30xf64>
          %c1_23 = arith.constant 1 : index
          %39 = arith.addi %37, %c1_23 : index
          %40 = memref.load %arg3[%arg8, %39] : memref<?x30xf64>
          %41 = memref.load %arg3[%arg8, %37] : memref<?x30xf64>
          %42 = arith.subf %40, %41 : f64
          %c1_24 = arith.constant 1 : index
          %43 = arith.addi %arg8, %c1_24 : index
          %44 = memref.load %arg4[%43, %37] : memref<?x30xf64>
          %45 = arith.addf %42, %44 : f64
          %46 = memref.load %arg4[%arg8, %37] : memref<?x30xf64>
          %47 = arith.subf %45, %46 : f64
          %48 = arith.mulf %47, %cst : f64
          %49 = arith.subf %38, %48 : f64
          memref.store %49, %arg5[%arg8, %37] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %50 = arith.addi %arg9, %c3 : index
          %51 = memref.load %arg5[%arg8, %50] : memref<?x30xf64>
          %c1_25 = arith.constant 1 : index
          %52 = arith.addi %50, %c1_25 : index
          %53 = memref.load %arg3[%arg8, %52] : memref<?x30xf64>
          %54 = memref.load %arg3[%arg8, %50] : memref<?x30xf64>
          %55 = arith.subf %53, %54 : f64
          %c1_26 = arith.constant 1 : index
          %56 = arith.addi %arg8, %c1_26 : index
          %57 = memref.load %arg4[%56, %50] : memref<?x30xf64>
          %58 = arith.addf %55, %57 : f64
          %59 = memref.load %arg4[%arg8, %50] : memref<?x30xf64>
          %60 = arith.subf %58, %59 : f64
          %61 = arith.mulf %60, %cst : f64
          %62 = arith.subf %51, %61 : f64
          memref.store %62, %arg5[%arg8, %50] : memref<?x30xf64>
        }
        %0 = memref.load %arg5[%arg8, %c28] : memref<?x30xf64>
        %c1_16 = arith.constant 1 : index
        %1 = arith.addi %c28, %c1_16 : index
        %2 = memref.load %arg3[%arg8, %1] : memref<?x30xf64>
        %3 = memref.load %arg3[%arg8, %c28] : memref<?x30xf64>
        %4 = arith.subf %2, %3 : f64
        %c1_17 = arith.constant 1 : index
        %5 = arith.addi %arg8, %c1_17 : index
        %6 = memref.load %arg4[%5, %c28] : memref<?x30xf64>
        %7 = arith.addf %4, %6 : f64
        %8 = memref.load %arg4[%arg8, %c28] : memref<?x30xf64>
        %9 = arith.subf %7, %8 : f64
        %10 = arith.mulf %9, %cst : f64
        %11 = arith.subf %0, %10 : f64
        memref.store %11, %arg5[%arg8, %c28] : memref<?x30xf64>
      }
    }
    return
  }
}

