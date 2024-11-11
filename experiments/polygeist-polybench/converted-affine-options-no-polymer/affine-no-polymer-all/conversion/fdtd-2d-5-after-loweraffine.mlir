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
      %c1_2 = arith.constant 1 : index
      %c1_3 = arith.constant 1 : index
      scf.parallel (%arg8) = (%c0_1) to (%c1_2) step (%c1_3) {
        %0 = arith.addi %arg7, %arg8 : index
        %1 = memref.load %arg6[%0] : memref<?xf64>
        %2 = memref.load %arg6[%0] : memref<?xf64>
        %3 = memref.load %arg6[%0] : memref<?xf64>
        %4 = memref.load %arg6[%0] : memref<?xf64>
        %c0_4 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg9 = %c0_4 to %c7 step %c1_5 {
          %c4 = arith.constant 4 : index
          %6 = arith.muli %arg9, %c4 : index
          %c0_16 = arith.constant 0 : index
          memref.store %1, %arg4[%c0_16, %6] : memref<?x30xf64>
          %c1_17 = arith.constant 1 : index
          %7 = arith.addi %6, %c1_17 : index
          %c0_18 = arith.constant 0 : index
          memref.store %2, %arg4[%c0_18, %7] : memref<?x30xf64>
          %c2_19 = arith.constant 2 : index
          %8 = arith.addi %6, %c2_19 : index
          %c0_20 = arith.constant 0 : index
          memref.store %3, %arg4[%c0_20, %8] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %9 = arith.addi %6, %c3 : index
          %c0_21 = arith.constant 0 : index
          memref.store %4, %arg4[%c0_21, %9] : memref<?x30xf64>
        }
        %5 = memref.load %arg6[%0] : memref<?xf64>
        %c0_6 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg9 = %c0_6 to %c2 step %c1_7 {
          %c28_16 = arith.constant 28 : index
          %6 = arith.addi %arg9, %c28_16 : index
          %c0_17 = arith.constant 0 : index
          memref.store %5, %arg4[%c0_17, %6] : memref<?x30xf64>
        }
        %c0_8 = arith.constant 0 : index
        %c19 = arith.constant 19 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg9 = %c0_8 to %c19 step %c1_9 {
          %c1_16 = arith.constant 1 : index
          %6 = arith.addi %arg9, %c1_16 : index
          %c0_17 = arith.constant 0 : index
          %c7_18 = arith.constant 7 : index
          %c1_19 = arith.constant 1 : index
          scf.for %arg10 = %c0_17 to %c7_18 step %c1_19 {
            %c4 = arith.constant 4 : index
            %7 = arith.muli %arg10, %c4 : index
            %8 = memref.load %arg4[%6, %7] : memref<?x30xf64>
            %9 = memref.load %arg5[%6, %7] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %10 = arith.addi %6, %c-1 : index
            %11 = memref.load %arg5[%10, %7] : memref<?x30xf64>
            %12 = arith.subf %9, %11 : f64
            %13 = arith.mulf %12, %cst_0 : f64
            %14 = arith.subf %8, %13 : f64
            memref.store %14, %arg4[%6, %7] : memref<?x30xf64>
            %c1_23 = arith.constant 1 : index
            %15 = arith.addi %7, %c1_23 : index
            %16 = memref.load %arg4[%6, %15] : memref<?x30xf64>
            %17 = memref.load %arg5[%6, %15] : memref<?x30xf64>
            %c-1_24 = arith.constant -1 : index
            %18 = arith.addi %6, %c-1_24 : index
            %19 = memref.load %arg5[%18, %15] : memref<?x30xf64>
            %20 = arith.subf %17, %19 : f64
            %21 = arith.mulf %20, %cst_0 : f64
            %22 = arith.subf %16, %21 : f64
            memref.store %22, %arg4[%6, %15] : memref<?x30xf64>
            %c2_25 = arith.constant 2 : index
            %23 = arith.addi %7, %c2_25 : index
            %24 = memref.load %arg4[%6, %23] : memref<?x30xf64>
            %25 = memref.load %arg5[%6, %23] : memref<?x30xf64>
            %c-1_26 = arith.constant -1 : index
            %26 = arith.addi %6, %c-1_26 : index
            %27 = memref.load %arg5[%26, %23] : memref<?x30xf64>
            %28 = arith.subf %25, %27 : f64
            %29 = arith.mulf %28, %cst_0 : f64
            %30 = arith.subf %24, %29 : f64
            memref.store %30, %arg4[%6, %23] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %31 = arith.addi %7, %c3 : index
            %32 = memref.load %arg4[%6, %31] : memref<?x30xf64>
            %33 = memref.load %arg5[%6, %31] : memref<?x30xf64>
            %c-1_27 = arith.constant -1 : index
            %34 = arith.addi %6, %c-1_27 : index
            %35 = memref.load %arg5[%34, %31] : memref<?x30xf64>
            %36 = arith.subf %33, %35 : f64
            %37 = arith.mulf %36, %cst_0 : f64
            %38 = arith.subf %32, %37 : f64
            memref.store %38, %arg4[%6, %31] : memref<?x30xf64>
          }
          %c0_20 = arith.constant 0 : index
          %c2_21 = arith.constant 2 : index
          %c1_22 = arith.constant 1 : index
          scf.for %arg10 = %c0_20 to %c2_21 step %c1_22 {
            %c28_23 = arith.constant 28 : index
            %7 = arith.addi %arg10, %c28_23 : index
            %8 = memref.load %arg4[%6, %7] : memref<?x30xf64>
            %9 = memref.load %arg5[%6, %7] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %10 = arith.addi %6, %c-1 : index
            %11 = memref.load %arg5[%10, %7] : memref<?x30xf64>
            %12 = arith.subf %9, %11 : f64
            %13 = arith.mulf %12, %cst_0 : f64
            %14 = arith.subf %8, %13 : f64
            memref.store %14, %arg4[%6, %7] : memref<?x30xf64>
          }
        }
        %c0_10 = arith.constant 0 : index
        %c20_11 = arith.constant 20 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg9 = %c0_10 to %c20_11 step %c1_12 {
          %c0_16 = arith.constant 0 : index
          %c7_17 = arith.constant 7 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg10 = %c0_16 to %c7_17 step %c1_18 {
            %c4 = arith.constant 4 : index
            %13 = arith.muli %arg10, %c4 : index
            %c1_19 = arith.constant 1 : index
            %14 = arith.addi %13, %c1_19 : index
            %15 = memref.load %arg3[%arg9, %14] : memref<?x30xf64>
            %16 = memref.load %arg5[%arg9, %14] : memref<?x30xf64>
            %c-1_20 = arith.constant -1 : index
            %17 = arith.addi %14, %c-1_20 : index
            %18 = memref.load %arg5[%arg9, %17] : memref<?x30xf64>
            %19 = arith.subf %16, %18 : f64
            %20 = arith.mulf %19, %cst_0 : f64
            %21 = arith.subf %15, %20 : f64
            memref.store %21, %arg3[%arg9, %14] : memref<?x30xf64>
            %c1_21 = arith.constant 1 : index
            %22 = arith.addi %14, %c1_21 : index
            %23 = memref.load %arg3[%arg9, %22] : memref<?x30xf64>
            %24 = memref.load %arg5[%arg9, %22] : memref<?x30xf64>
            %c-1_22 = arith.constant -1 : index
            %25 = arith.addi %22, %c-1_22 : index
            %26 = memref.load %arg5[%arg9, %25] : memref<?x30xf64>
            %27 = arith.subf %24, %26 : f64
            %28 = arith.mulf %27, %cst_0 : f64
            %29 = arith.subf %23, %28 : f64
            memref.store %29, %arg3[%arg9, %22] : memref<?x30xf64>
            %c2_23 = arith.constant 2 : index
            %30 = arith.addi %14, %c2_23 : index
            %31 = memref.load %arg3[%arg9, %30] : memref<?x30xf64>
            %32 = memref.load %arg5[%arg9, %30] : memref<?x30xf64>
            %c-1_24 = arith.constant -1 : index
            %33 = arith.addi %30, %c-1_24 : index
            %34 = memref.load %arg5[%arg9, %33] : memref<?x30xf64>
            %35 = arith.subf %32, %34 : f64
            %36 = arith.mulf %35, %cst_0 : f64
            %37 = arith.subf %31, %36 : f64
            memref.store %37, %arg3[%arg9, %30] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %38 = arith.addi %14, %c3 : index
            %39 = memref.load %arg3[%arg9, %38] : memref<?x30xf64>
            %40 = memref.load %arg5[%arg9, %38] : memref<?x30xf64>
            %c-1_25 = arith.constant -1 : index
            %41 = arith.addi %38, %c-1_25 : index
            %42 = memref.load %arg5[%arg9, %41] : memref<?x30xf64>
            %43 = arith.subf %40, %42 : f64
            %44 = arith.mulf %43, %cst_0 : f64
            %45 = arith.subf %39, %44 : f64
            memref.store %45, %arg3[%arg9, %38] : memref<?x30xf64>
          }
          %6 = memref.load %arg3[%arg9, %c29] : memref<?x30xf64>
          %7 = memref.load %arg5[%arg9, %c29] : memref<?x30xf64>
          %c-1 = arith.constant -1 : index
          %8 = arith.addi %c29, %c-1 : index
          %9 = memref.load %arg5[%arg9, %8] : memref<?x30xf64>
          %10 = arith.subf %7, %9 : f64
          %11 = arith.mulf %10, %cst_0 : f64
          %12 = arith.subf %6, %11 : f64
          memref.store %12, %arg3[%arg9, %c29] : memref<?x30xf64>
        }
        %c0_13 = arith.constant 0 : index
        %c19_14 = arith.constant 19 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg9 = %c0_13 to %c19_14 step %c1_15 {
          %c0_16 = arith.constant 0 : index
          %c7_17 = arith.constant 7 : index
          %c1_18 = arith.constant 1 : index
          scf.for %arg10 = %c0_16 to %c7_17 step %c1_18 {
            %c4 = arith.constant 4 : index
            %18 = arith.muli %arg10, %c4 : index
            %19 = memref.load %arg5[%arg9, %18] : memref<?x30xf64>
            %c1_21 = arith.constant 1 : index
            %20 = arith.addi %18, %c1_21 : index
            %21 = memref.load %arg3[%arg9, %20] : memref<?x30xf64>
            %22 = memref.load %arg3[%arg9, %18] : memref<?x30xf64>
            %23 = arith.subf %21, %22 : f64
            %c1_22 = arith.constant 1 : index
            %24 = arith.addi %arg9, %c1_22 : index
            %25 = memref.load %arg4[%24, %18] : memref<?x30xf64>
            %26 = arith.addf %23, %25 : f64
            %27 = memref.load %arg4[%arg9, %18] : memref<?x30xf64>
            %28 = arith.subf %26, %27 : f64
            %29 = arith.mulf %28, %cst : f64
            %30 = arith.subf %19, %29 : f64
            memref.store %30, %arg5[%arg9, %18] : memref<?x30xf64>
            %c1_23 = arith.constant 1 : index
            %31 = arith.addi %18, %c1_23 : index
            %32 = memref.load %arg5[%arg9, %31] : memref<?x30xf64>
            %c1_24 = arith.constant 1 : index
            %33 = arith.addi %31, %c1_24 : index
            %34 = memref.load %arg3[%arg9, %33] : memref<?x30xf64>
            %35 = memref.load %arg3[%arg9, %31] : memref<?x30xf64>
            %36 = arith.subf %34, %35 : f64
            %c1_25 = arith.constant 1 : index
            %37 = arith.addi %arg9, %c1_25 : index
            %38 = memref.load %arg4[%37, %31] : memref<?x30xf64>
            %39 = arith.addf %36, %38 : f64
            %40 = memref.load %arg4[%arg9, %31] : memref<?x30xf64>
            %41 = arith.subf %39, %40 : f64
            %42 = arith.mulf %41, %cst : f64
            %43 = arith.subf %32, %42 : f64
            memref.store %43, %arg5[%arg9, %31] : memref<?x30xf64>
            %c2_26 = arith.constant 2 : index
            %44 = arith.addi %18, %c2_26 : index
            %45 = memref.load %arg5[%arg9, %44] : memref<?x30xf64>
            %c1_27 = arith.constant 1 : index
            %46 = arith.addi %44, %c1_27 : index
            %47 = memref.load %arg3[%arg9, %46] : memref<?x30xf64>
            %48 = memref.load %arg3[%arg9, %44] : memref<?x30xf64>
            %49 = arith.subf %47, %48 : f64
            %c1_28 = arith.constant 1 : index
            %50 = arith.addi %arg9, %c1_28 : index
            %51 = memref.load %arg4[%50, %44] : memref<?x30xf64>
            %52 = arith.addf %49, %51 : f64
            %53 = memref.load %arg4[%arg9, %44] : memref<?x30xf64>
            %54 = arith.subf %52, %53 : f64
            %55 = arith.mulf %54, %cst : f64
            %56 = arith.subf %45, %55 : f64
            memref.store %56, %arg5[%arg9, %44] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %57 = arith.addi %18, %c3 : index
            %58 = memref.load %arg5[%arg9, %57] : memref<?x30xf64>
            %c1_29 = arith.constant 1 : index
            %59 = arith.addi %57, %c1_29 : index
            %60 = memref.load %arg3[%arg9, %59] : memref<?x30xf64>
            %61 = memref.load %arg3[%arg9, %57] : memref<?x30xf64>
            %62 = arith.subf %60, %61 : f64
            %c1_30 = arith.constant 1 : index
            %63 = arith.addi %arg9, %c1_30 : index
            %64 = memref.load %arg4[%63, %57] : memref<?x30xf64>
            %65 = arith.addf %62, %64 : f64
            %66 = memref.load %arg4[%arg9, %57] : memref<?x30xf64>
            %67 = arith.subf %65, %66 : f64
            %68 = arith.mulf %67, %cst : f64
            %69 = arith.subf %58, %68 : f64
            memref.store %69, %arg5[%arg9, %57] : memref<?x30xf64>
          }
          %6 = memref.load %arg5[%arg9, %c28] : memref<?x30xf64>
          %c1_19 = arith.constant 1 : index
          %7 = arith.addi %c28, %c1_19 : index
          %8 = memref.load %arg3[%arg9, %7] : memref<?x30xf64>
          %9 = memref.load %arg3[%arg9, %c28] : memref<?x30xf64>
          %10 = arith.subf %8, %9 : f64
          %c1_20 = arith.constant 1 : index
          %11 = arith.addi %arg9, %c1_20 : index
          %12 = memref.load %arg4[%11, %c28] : memref<?x30xf64>
          %13 = arith.addf %10, %12 : f64
          %14 = memref.load %arg4[%arg9, %c28] : memref<?x30xf64>
          %15 = arith.subf %13, %14 : f64
          %16 = arith.mulf %15, %cst : f64
          %17 = arith.subf %6, %16 : f64
          memref.store %17, %arg5[%arg9, %c28] : memref<?x30xf64>
        }
        scf.reduce 
      }
    }
    return
  }
}

