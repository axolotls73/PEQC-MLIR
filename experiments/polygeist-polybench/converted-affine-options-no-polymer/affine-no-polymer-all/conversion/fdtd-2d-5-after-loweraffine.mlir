module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_1 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0) to (%c1) step (%c1_1) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg7, %c32 : index
      %c0_2 = arith.constant 0 : index
      %c20 = arith.constant 20 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg8 = %c0_2 to %c20 step %c1_3 {
        %1 = arith.addi %0, %arg8 : index
        %2 = memref.load %arg6[%1] : memref<?xf64>
        %3 = memref.load %arg6[%1] : memref<?xf64>
        %4 = memref.load %arg6[%1] : memref<?xf64>
        %5 = memref.load %arg6[%1] : memref<?xf64>
        %c0_4 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg9 = %c0_4 to %c7 step %c1_5 {
          %c4 = arith.constant 4 : index
          %7 = arith.muli %arg9, %c4 : index
          %c0_16 = arith.constant 0 : index
          memref.store %2, %arg4[%c0_16, %7] : memref<?x30xf64>
          %c1_17 = arith.constant 1 : index
          %8 = arith.addi %7, %c1_17 : index
          %c0_18 = arith.constant 0 : index
          memref.store %3, %arg4[%c0_18, %8] : memref<?x30xf64>
          %c2_19 = arith.constant 2 : index
          %9 = arith.addi %7, %c2_19 : index
          %c0_20 = arith.constant 0 : index
          memref.store %4, %arg4[%c0_20, %9] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %10 = arith.addi %7, %c3 : index
          %c0_21 = arith.constant 0 : index
          memref.store %5, %arg4[%c0_21, %10] : memref<?x30xf64>
        }
        %6 = memref.load %arg6[%1] : memref<?xf64>
        %c0_6 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg9 = %c0_6 to %c2 step %c1_7 {
          %c28_16 = arith.constant 28 : index
          %7 = arith.addi %arg9, %c28_16 : index
          %c0_17 = arith.constant 0 : index
          memref.store %6, %arg4[%c0_17, %7] : memref<?x30xf64>
        }
        %c0_8 = arith.constant 0 : index
        %c19 = arith.constant 19 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg9 = %c0_8 to %c19 step %c1_9 {
          %c1_16 = arith.constant 1 : index
          %7 = arith.addi %arg9, %c1_16 : index
          %c0_17 = arith.constant 0 : index
          %c7_18 = arith.constant 7 : index
          %c1_19 = arith.constant 1 : index
          scf.for %arg10 = %c0_17 to %c7_18 step %c1_19 {
            %c4 = arith.constant 4 : index
            %8 = arith.muli %arg10, %c4 : index
            %9 = memref.load %arg4[%7, %8] : memref<?x30xf64>
            %10 = memref.load %arg5[%7, %8] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %11 = arith.addi %7, %c-1 : index
            %12 = memref.load %arg5[%11, %8] : memref<?x30xf64>
            %13 = arith.subf %10, %12 : f64
            %14 = arith.mulf %13, %cst_0 : f64
            %15 = arith.subf %9, %14 : f64
            memref.store %15, %arg4[%7, %8] : memref<?x30xf64>
            %c1_23 = arith.constant 1 : index
            %16 = arith.addi %8, %c1_23 : index
            %17 = memref.load %arg4[%7, %16] : memref<?x30xf64>
            %18 = memref.load %arg5[%7, %16] : memref<?x30xf64>
            %c-1_24 = arith.constant -1 : index
            %19 = arith.addi %7, %c-1_24 : index
            %20 = memref.load %arg5[%19, %16] : memref<?x30xf64>
            %21 = arith.subf %18, %20 : f64
            %22 = arith.mulf %21, %cst_0 : f64
            %23 = arith.subf %17, %22 : f64
            memref.store %23, %arg4[%7, %16] : memref<?x30xf64>
            %c2_25 = arith.constant 2 : index
            %24 = arith.addi %8, %c2_25 : index
            %25 = memref.load %arg4[%7, %24] : memref<?x30xf64>
            %26 = memref.load %arg5[%7, %24] : memref<?x30xf64>
            %c-1_26 = arith.constant -1 : index
            %27 = arith.addi %7, %c-1_26 : index
            %28 = memref.load %arg5[%27, %24] : memref<?x30xf64>
            %29 = arith.subf %26, %28 : f64
            %30 = arith.mulf %29, %cst_0 : f64
            %31 = arith.subf %25, %30 : f64
            memref.store %31, %arg4[%7, %24] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %32 = arith.addi %8, %c3 : index
            %33 = memref.load %arg4[%7, %32] : memref<?x30xf64>
            %34 = memref.load %arg5[%7, %32] : memref<?x30xf64>
            %c-1_27 = arith.constant -1 : index
            %35 = arith.addi %7, %c-1_27 : index
            %36 = memref.load %arg5[%35, %32] : memref<?x30xf64>
            %37 = arith.subf %34, %36 : f64
            %38 = arith.mulf %37, %cst_0 : f64
            %39 = arith.subf %33, %38 : f64
            memref.store %39, %arg4[%7, %32] : memref<?x30xf64>
          }
          %c0_20 = arith.constant 0 : index
          %c2_21 = arith.constant 2 : index
          %c1_22 = arith.constant 1 : index
          scf.for %arg10 = %c0_20 to %c2_21 step %c1_22 {
            %c28_23 = arith.constant 28 : index
            %8 = arith.addi %arg10, %c28_23 : index
            %9 = memref.load %arg4[%7, %8] : memref<?x30xf64>
            %10 = memref.load %arg5[%7, %8] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %11 = arith.addi %7, %c-1 : index
            %12 = memref.load %arg5[%11, %8] : memref<?x30xf64>
            %13 = arith.subf %10, %12 : f64
            %14 = arith.mulf %13, %cst_0 : f64
            %15 = arith.subf %9, %14 : f64
            memref.store %15, %arg4[%7, %8] : memref<?x30xf64>
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
            %14 = arith.muli %arg10, %c4 : index
            %c1_19 = arith.constant 1 : index
            %15 = arith.addi %14, %c1_19 : index
            %16 = memref.load %arg3[%arg9, %15] : memref<?x30xf64>
            %17 = memref.load %arg5[%arg9, %15] : memref<?x30xf64>
            %c-1_20 = arith.constant -1 : index
            %18 = arith.addi %15, %c-1_20 : index
            %19 = memref.load %arg5[%arg9, %18] : memref<?x30xf64>
            %20 = arith.subf %17, %19 : f64
            %21 = arith.mulf %20, %cst_0 : f64
            %22 = arith.subf %16, %21 : f64
            memref.store %22, %arg3[%arg9, %15] : memref<?x30xf64>
            %c1_21 = arith.constant 1 : index
            %23 = arith.addi %15, %c1_21 : index
            %24 = memref.load %arg3[%arg9, %23] : memref<?x30xf64>
            %25 = memref.load %arg5[%arg9, %23] : memref<?x30xf64>
            %c-1_22 = arith.constant -1 : index
            %26 = arith.addi %23, %c-1_22 : index
            %27 = memref.load %arg5[%arg9, %26] : memref<?x30xf64>
            %28 = arith.subf %25, %27 : f64
            %29 = arith.mulf %28, %cst_0 : f64
            %30 = arith.subf %24, %29 : f64
            memref.store %30, %arg3[%arg9, %23] : memref<?x30xf64>
            %c2_23 = arith.constant 2 : index
            %31 = arith.addi %15, %c2_23 : index
            %32 = memref.load %arg3[%arg9, %31] : memref<?x30xf64>
            %33 = memref.load %arg5[%arg9, %31] : memref<?x30xf64>
            %c-1_24 = arith.constant -1 : index
            %34 = arith.addi %31, %c-1_24 : index
            %35 = memref.load %arg5[%arg9, %34] : memref<?x30xf64>
            %36 = arith.subf %33, %35 : f64
            %37 = arith.mulf %36, %cst_0 : f64
            %38 = arith.subf %32, %37 : f64
            memref.store %38, %arg3[%arg9, %31] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %39 = arith.addi %15, %c3 : index
            %40 = memref.load %arg3[%arg9, %39] : memref<?x30xf64>
            %41 = memref.load %arg5[%arg9, %39] : memref<?x30xf64>
            %c-1_25 = arith.constant -1 : index
            %42 = arith.addi %39, %c-1_25 : index
            %43 = memref.load %arg5[%arg9, %42] : memref<?x30xf64>
            %44 = arith.subf %41, %43 : f64
            %45 = arith.mulf %44, %cst_0 : f64
            %46 = arith.subf %40, %45 : f64
            memref.store %46, %arg3[%arg9, %39] : memref<?x30xf64>
          }
          %7 = memref.load %arg3[%arg9, %c29] : memref<?x30xf64>
          %8 = memref.load %arg5[%arg9, %c29] : memref<?x30xf64>
          %c-1 = arith.constant -1 : index
          %9 = arith.addi %c29, %c-1 : index
          %10 = memref.load %arg5[%arg9, %9] : memref<?x30xf64>
          %11 = arith.subf %8, %10 : f64
          %12 = arith.mulf %11, %cst_0 : f64
          %13 = arith.subf %7, %12 : f64
          memref.store %13, %arg3[%arg9, %c29] : memref<?x30xf64>
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
            %19 = arith.muli %arg10, %c4 : index
            %20 = memref.load %arg5[%arg9, %19] : memref<?x30xf64>
            %c1_21 = arith.constant 1 : index
            %21 = arith.addi %19, %c1_21 : index
            %22 = memref.load %arg3[%arg9, %21] : memref<?x30xf64>
            %23 = memref.load %arg3[%arg9, %19] : memref<?x30xf64>
            %24 = arith.subf %22, %23 : f64
            %c1_22 = arith.constant 1 : index
            %25 = arith.addi %arg9, %c1_22 : index
            %26 = memref.load %arg4[%25, %19] : memref<?x30xf64>
            %27 = arith.addf %24, %26 : f64
            %28 = memref.load %arg4[%arg9, %19] : memref<?x30xf64>
            %29 = arith.subf %27, %28 : f64
            %30 = arith.mulf %29, %cst : f64
            %31 = arith.subf %20, %30 : f64
            memref.store %31, %arg5[%arg9, %19] : memref<?x30xf64>
            %c1_23 = arith.constant 1 : index
            %32 = arith.addi %19, %c1_23 : index
            %33 = memref.load %arg5[%arg9, %32] : memref<?x30xf64>
            %c1_24 = arith.constant 1 : index
            %34 = arith.addi %32, %c1_24 : index
            %35 = memref.load %arg3[%arg9, %34] : memref<?x30xf64>
            %36 = memref.load %arg3[%arg9, %32] : memref<?x30xf64>
            %37 = arith.subf %35, %36 : f64
            %c1_25 = arith.constant 1 : index
            %38 = arith.addi %arg9, %c1_25 : index
            %39 = memref.load %arg4[%38, %32] : memref<?x30xf64>
            %40 = arith.addf %37, %39 : f64
            %41 = memref.load %arg4[%arg9, %32] : memref<?x30xf64>
            %42 = arith.subf %40, %41 : f64
            %43 = arith.mulf %42, %cst : f64
            %44 = arith.subf %33, %43 : f64
            memref.store %44, %arg5[%arg9, %32] : memref<?x30xf64>
            %c2_26 = arith.constant 2 : index
            %45 = arith.addi %19, %c2_26 : index
            %46 = memref.load %arg5[%arg9, %45] : memref<?x30xf64>
            %c1_27 = arith.constant 1 : index
            %47 = arith.addi %45, %c1_27 : index
            %48 = memref.load %arg3[%arg9, %47] : memref<?x30xf64>
            %49 = memref.load %arg3[%arg9, %45] : memref<?x30xf64>
            %50 = arith.subf %48, %49 : f64
            %c1_28 = arith.constant 1 : index
            %51 = arith.addi %arg9, %c1_28 : index
            %52 = memref.load %arg4[%51, %45] : memref<?x30xf64>
            %53 = arith.addf %50, %52 : f64
            %54 = memref.load %arg4[%arg9, %45] : memref<?x30xf64>
            %55 = arith.subf %53, %54 : f64
            %56 = arith.mulf %55, %cst : f64
            %57 = arith.subf %46, %56 : f64
            memref.store %57, %arg5[%arg9, %45] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %58 = arith.addi %19, %c3 : index
            %59 = memref.load %arg5[%arg9, %58] : memref<?x30xf64>
            %c1_29 = arith.constant 1 : index
            %60 = arith.addi %58, %c1_29 : index
            %61 = memref.load %arg3[%arg9, %60] : memref<?x30xf64>
            %62 = memref.load %arg3[%arg9, %58] : memref<?x30xf64>
            %63 = arith.subf %61, %62 : f64
            %c1_30 = arith.constant 1 : index
            %64 = arith.addi %arg9, %c1_30 : index
            %65 = memref.load %arg4[%64, %58] : memref<?x30xf64>
            %66 = arith.addf %63, %65 : f64
            %67 = memref.load %arg4[%arg9, %58] : memref<?x30xf64>
            %68 = arith.subf %66, %67 : f64
            %69 = arith.mulf %68, %cst : f64
            %70 = arith.subf %59, %69 : f64
            memref.store %70, %arg5[%arg9, %58] : memref<?x30xf64>
          }
          %7 = memref.load %arg5[%arg9, %c28] : memref<?x30xf64>
          %c1_19 = arith.constant 1 : index
          %8 = arith.addi %c28, %c1_19 : index
          %9 = memref.load %arg3[%arg9, %8] : memref<?x30xf64>
          %10 = memref.load %arg3[%arg9, %c28] : memref<?x30xf64>
          %11 = arith.subf %9, %10 : f64
          %c1_20 = arith.constant 1 : index
          %12 = arith.addi %arg9, %c1_20 : index
          %13 = memref.load %arg4[%12, %c28] : memref<?x30xf64>
          %14 = arith.addf %11, %13 : f64
          %15 = memref.load %arg4[%arg9, %c28] : memref<?x30xf64>
          %16 = arith.subf %14, %15 : f64
          %17 = arith.mulf %16, %cst : f64
          %18 = arith.subf %7, %17 : f64
          memref.store %18, %arg5[%arg9, %c28] : memref<?x30xf64>
        }
      }
      scf.reduce 
    }
    return
  }
}

