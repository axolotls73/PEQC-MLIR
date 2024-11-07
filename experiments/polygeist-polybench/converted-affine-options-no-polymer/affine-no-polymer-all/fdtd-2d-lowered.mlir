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
        %c0_4 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_5 = arith.constant 1 : index
        scf.parallel (%arg9) = (%c0_4) to (%c7) step (%c1_5) {
          %c4 = arith.constant 4 : index
          %1 = arith.muli %arg9, %c4 : index
          %2 = memref.load %arg6[%0] : memref<?xf64>
          %c0_16 = arith.constant 0 : index
          memref.store %2, %arg4[%c0_16, %1] : memref<?x30xf64>
          %c1_17 = arith.constant 1 : index
          %3 = arith.addi %1, %c1_17 : index
          %4 = memref.load %arg6[%0] : memref<?xf64>
          %c0_18 = arith.constant 0 : index
          memref.store %4, %arg4[%c0_18, %3] : memref<?x30xf64>
          %c2_19 = arith.constant 2 : index
          %5 = arith.addi %1, %c2_19 : index
          %6 = memref.load %arg6[%0] : memref<?xf64>
          %c0_20 = arith.constant 0 : index
          memref.store %6, %arg4[%c0_20, %5] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %7 = arith.addi %1, %c3 : index
          %8 = memref.load %arg6[%0] : memref<?xf64>
          %c0_21 = arith.constant 0 : index
          memref.store %8, %arg4[%c0_21, %7] : memref<?x30xf64>
          scf.reduce 
        }
        %c0_6 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_7 = arith.constant 1 : index
        scf.parallel (%arg9) = (%c0_6) to (%c2) step (%c1_7) {
          %c28_16 = arith.constant 28 : index
          %1 = arith.addi %arg9, %c28_16 : index
          %2 = memref.load %arg6[%0] : memref<?xf64>
          %c0_17 = arith.constant 0 : index
          memref.store %2, %arg4[%c0_17, %1] : memref<?x30xf64>
          scf.reduce 
        }
        %c0_8 = arith.constant 0 : index
        %c19 = arith.constant 19 : index
        %c1_9 = arith.constant 1 : index
        scf.parallel (%arg9) = (%c0_8) to (%c19) step (%c1_9) {
          %c1_16 = arith.constant 1 : index
          %1 = arith.addi %arg9, %c1_16 : index
          %c0_17 = arith.constant 0 : index
          %c7_18 = arith.constant 7 : index
          %c1_19 = arith.constant 1 : index
          scf.parallel (%arg10) = (%c0_17) to (%c7_18) step (%c1_19) {
            %c4 = arith.constant 4 : index
            %2 = arith.muli %arg10, %c4 : index
            %3 = memref.load %arg4[%1, %2] : memref<?x30xf64>
            %4 = memref.load %arg5[%1, %2] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %5 = arith.addi %1, %c-1 : index
            %6 = memref.load %arg5[%5, %2] : memref<?x30xf64>
            %7 = arith.subf %4, %6 : f64
            %8 = arith.mulf %7, %cst_0 : f64
            %9 = arith.subf %3, %8 : f64
            memref.store %9, %arg4[%1, %2] : memref<?x30xf64>
            %c1_23 = arith.constant 1 : index
            %10 = arith.addi %2, %c1_23 : index
            %11 = memref.load %arg4[%1, %10] : memref<?x30xf64>
            %12 = memref.load %arg5[%1, %10] : memref<?x30xf64>
            %c-1_24 = arith.constant -1 : index
            %13 = arith.addi %1, %c-1_24 : index
            %14 = memref.load %arg5[%13, %10] : memref<?x30xf64>
            %15 = arith.subf %12, %14 : f64
            %16 = arith.mulf %15, %cst_0 : f64
            %17 = arith.subf %11, %16 : f64
            memref.store %17, %arg4[%1, %10] : memref<?x30xf64>
            %c2_25 = arith.constant 2 : index
            %18 = arith.addi %2, %c2_25 : index
            %19 = memref.load %arg4[%1, %18] : memref<?x30xf64>
            %20 = memref.load %arg5[%1, %18] : memref<?x30xf64>
            %c-1_26 = arith.constant -1 : index
            %21 = arith.addi %1, %c-1_26 : index
            %22 = memref.load %arg5[%21, %18] : memref<?x30xf64>
            %23 = arith.subf %20, %22 : f64
            %24 = arith.mulf %23, %cst_0 : f64
            %25 = arith.subf %19, %24 : f64
            memref.store %25, %arg4[%1, %18] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %26 = arith.addi %2, %c3 : index
            %27 = memref.load %arg4[%1, %26] : memref<?x30xf64>
            %28 = memref.load %arg5[%1, %26] : memref<?x30xf64>
            %c-1_27 = arith.constant -1 : index
            %29 = arith.addi %1, %c-1_27 : index
            %30 = memref.load %arg5[%29, %26] : memref<?x30xf64>
            %31 = arith.subf %28, %30 : f64
            %32 = arith.mulf %31, %cst_0 : f64
            %33 = arith.subf %27, %32 : f64
            memref.store %33, %arg4[%1, %26] : memref<?x30xf64>
            scf.reduce 
          }
          %c0_20 = arith.constant 0 : index
          %c2_21 = arith.constant 2 : index
          %c1_22 = arith.constant 1 : index
          scf.parallel (%arg10) = (%c0_20) to (%c2_21) step (%c1_22) {
            %c28_23 = arith.constant 28 : index
            %2 = arith.addi %arg10, %c28_23 : index
            %3 = memref.load %arg4[%1, %2] : memref<?x30xf64>
            %4 = memref.load %arg5[%1, %2] : memref<?x30xf64>
            %c-1 = arith.constant -1 : index
            %5 = arith.addi %1, %c-1 : index
            %6 = memref.load %arg5[%5, %2] : memref<?x30xf64>
            %7 = arith.subf %4, %6 : f64
            %8 = arith.mulf %7, %cst_0 : f64
            %9 = arith.subf %3, %8 : f64
            memref.store %9, %arg4[%1, %2] : memref<?x30xf64>
            scf.reduce 
          }
          scf.reduce 
        }
        %c0_10 = arith.constant 0 : index
        %c20_11 = arith.constant 20 : index
        %c1_12 = arith.constant 1 : index
        scf.parallel (%arg9) = (%c0_10) to (%c20_11) step (%c1_12) {
          %c0_16 = arith.constant 0 : index
          %c7_17 = arith.constant 7 : index
          %c1_18 = arith.constant 1 : index
          scf.parallel (%arg10) = (%c0_16) to (%c7_17) step (%c1_18) {
            %c4 = arith.constant 4 : index
            %8 = arith.muli %arg10, %c4 : index
            %c1_19 = arith.constant 1 : index
            %9 = arith.addi %8, %c1_19 : index
            %10 = memref.load %arg3[%arg9, %9] : memref<?x30xf64>
            %11 = memref.load %arg5[%arg9, %9] : memref<?x30xf64>
            %c-1_20 = arith.constant -1 : index
            %12 = arith.addi %9, %c-1_20 : index
            %13 = memref.load %arg5[%arg9, %12] : memref<?x30xf64>
            %14 = arith.subf %11, %13 : f64
            %15 = arith.mulf %14, %cst_0 : f64
            %16 = arith.subf %10, %15 : f64
            memref.store %16, %arg3[%arg9, %9] : memref<?x30xf64>
            %c1_21 = arith.constant 1 : index
            %17 = arith.addi %9, %c1_21 : index
            %18 = memref.load %arg3[%arg9, %17] : memref<?x30xf64>
            %19 = memref.load %arg5[%arg9, %17] : memref<?x30xf64>
            %c-1_22 = arith.constant -1 : index
            %20 = arith.addi %17, %c-1_22 : index
            %21 = memref.load %arg5[%arg9, %20] : memref<?x30xf64>
            %22 = arith.subf %19, %21 : f64
            %23 = arith.mulf %22, %cst_0 : f64
            %24 = arith.subf %18, %23 : f64
            memref.store %24, %arg3[%arg9, %17] : memref<?x30xf64>
            %c2_23 = arith.constant 2 : index
            %25 = arith.addi %9, %c2_23 : index
            %26 = memref.load %arg3[%arg9, %25] : memref<?x30xf64>
            %27 = memref.load %arg5[%arg9, %25] : memref<?x30xf64>
            %c-1_24 = arith.constant -1 : index
            %28 = arith.addi %25, %c-1_24 : index
            %29 = memref.load %arg5[%arg9, %28] : memref<?x30xf64>
            %30 = arith.subf %27, %29 : f64
            %31 = arith.mulf %30, %cst_0 : f64
            %32 = arith.subf %26, %31 : f64
            memref.store %32, %arg3[%arg9, %25] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %33 = arith.addi %9, %c3 : index
            %34 = memref.load %arg3[%arg9, %33] : memref<?x30xf64>
            %35 = memref.load %arg5[%arg9, %33] : memref<?x30xf64>
            %c-1_25 = arith.constant -1 : index
            %36 = arith.addi %33, %c-1_25 : index
            %37 = memref.load %arg5[%arg9, %36] : memref<?x30xf64>
            %38 = arith.subf %35, %37 : f64
            %39 = arith.mulf %38, %cst_0 : f64
            %40 = arith.subf %34, %39 : f64
            memref.store %40, %arg3[%arg9, %33] : memref<?x30xf64>
            scf.reduce 
          }
          %1 = memref.load %arg3[%arg9, %c29] : memref<?x30xf64>
          %2 = memref.load %arg5[%arg9, %c29] : memref<?x30xf64>
          %c-1 = arith.constant -1 : index
          %3 = arith.addi %c29, %c-1 : index
          %4 = memref.load %arg5[%arg9, %3] : memref<?x30xf64>
          %5 = arith.subf %2, %4 : f64
          %6 = arith.mulf %5, %cst_0 : f64
          %7 = arith.subf %1, %6 : f64
          memref.store %7, %arg3[%arg9, %c29] : memref<?x30xf64>
          scf.reduce 
        }
        %c0_13 = arith.constant 0 : index
        %c19_14 = arith.constant 19 : index
        %c1_15 = arith.constant 1 : index
        scf.parallel (%arg9) = (%c0_13) to (%c19_14) step (%c1_15) {
          %c0_16 = arith.constant 0 : index
          %c7_17 = arith.constant 7 : index
          %c1_18 = arith.constant 1 : index
          scf.parallel (%arg10) = (%c0_16) to (%c7_17) step (%c1_18) {
            %c4 = arith.constant 4 : index
            %13 = arith.muli %arg10, %c4 : index
            %14 = memref.load %arg5[%arg9, %13] : memref<?x30xf64>
            %c1_21 = arith.constant 1 : index
            %15 = arith.addi %13, %c1_21 : index
            %16 = memref.load %arg3[%arg9, %15] : memref<?x30xf64>
            %17 = memref.load %arg3[%arg9, %13] : memref<?x30xf64>
            %18 = arith.subf %16, %17 : f64
            %c1_22 = arith.constant 1 : index
            %19 = arith.addi %arg9, %c1_22 : index
            %20 = memref.load %arg4[%19, %13] : memref<?x30xf64>
            %21 = arith.addf %18, %20 : f64
            %22 = memref.load %arg4[%arg9, %13] : memref<?x30xf64>
            %23 = arith.subf %21, %22 : f64
            %24 = arith.mulf %23, %cst : f64
            %25 = arith.subf %14, %24 : f64
            memref.store %25, %arg5[%arg9, %13] : memref<?x30xf64>
            %c1_23 = arith.constant 1 : index
            %26 = arith.addi %13, %c1_23 : index
            %27 = memref.load %arg5[%arg9, %26] : memref<?x30xf64>
            %c1_24 = arith.constant 1 : index
            %28 = arith.addi %26, %c1_24 : index
            %29 = memref.load %arg3[%arg9, %28] : memref<?x30xf64>
            %30 = memref.load %arg3[%arg9, %26] : memref<?x30xf64>
            %31 = arith.subf %29, %30 : f64
            %c1_25 = arith.constant 1 : index
            %32 = arith.addi %arg9, %c1_25 : index
            %33 = memref.load %arg4[%32, %26] : memref<?x30xf64>
            %34 = arith.addf %31, %33 : f64
            %35 = memref.load %arg4[%arg9, %26] : memref<?x30xf64>
            %36 = arith.subf %34, %35 : f64
            %37 = arith.mulf %36, %cst : f64
            %38 = arith.subf %27, %37 : f64
            memref.store %38, %arg5[%arg9, %26] : memref<?x30xf64>
            %c2_26 = arith.constant 2 : index
            %39 = arith.addi %13, %c2_26 : index
            %40 = memref.load %arg5[%arg9, %39] : memref<?x30xf64>
            %c1_27 = arith.constant 1 : index
            %41 = arith.addi %39, %c1_27 : index
            %42 = memref.load %arg3[%arg9, %41] : memref<?x30xf64>
            %43 = memref.load %arg3[%arg9, %39] : memref<?x30xf64>
            %44 = arith.subf %42, %43 : f64
            %c1_28 = arith.constant 1 : index
            %45 = arith.addi %arg9, %c1_28 : index
            %46 = memref.load %arg4[%45, %39] : memref<?x30xf64>
            %47 = arith.addf %44, %46 : f64
            %48 = memref.load %arg4[%arg9, %39] : memref<?x30xf64>
            %49 = arith.subf %47, %48 : f64
            %50 = arith.mulf %49, %cst : f64
            %51 = arith.subf %40, %50 : f64
            memref.store %51, %arg5[%arg9, %39] : memref<?x30xf64>
            %c3 = arith.constant 3 : index
            %52 = arith.addi %13, %c3 : index
            %53 = memref.load %arg5[%arg9, %52] : memref<?x30xf64>
            %c1_29 = arith.constant 1 : index
            %54 = arith.addi %52, %c1_29 : index
            %55 = memref.load %arg3[%arg9, %54] : memref<?x30xf64>
            %56 = memref.load %arg3[%arg9, %52] : memref<?x30xf64>
            %57 = arith.subf %55, %56 : f64
            %c1_30 = arith.constant 1 : index
            %58 = arith.addi %arg9, %c1_30 : index
            %59 = memref.load %arg4[%58, %52] : memref<?x30xf64>
            %60 = arith.addf %57, %59 : f64
            %61 = memref.load %arg4[%arg9, %52] : memref<?x30xf64>
            %62 = arith.subf %60, %61 : f64
            %63 = arith.mulf %62, %cst : f64
            %64 = arith.subf %53, %63 : f64
            memref.store %64, %arg5[%arg9, %52] : memref<?x30xf64>
            scf.reduce 
          }
          %1 = memref.load %arg5[%arg9, %c28] : memref<?x30xf64>
          %c1_19 = arith.constant 1 : index
          %2 = arith.addi %c28, %c1_19 : index
          %3 = memref.load %arg3[%arg9, %2] : memref<?x30xf64>
          %4 = memref.load %arg3[%arg9, %c28] : memref<?x30xf64>
          %5 = arith.subf %3, %4 : f64
          %c1_20 = arith.constant 1 : index
          %6 = arith.addi %arg9, %c1_20 : index
          %7 = memref.load %arg4[%6, %c28] : memref<?x30xf64>
          %8 = arith.addf %5, %7 : f64
          %9 = memref.load %arg4[%arg9, %c28] : memref<?x30xf64>
          %10 = arith.subf %8, %9 : f64
          %11 = arith.mulf %10, %cst : f64
          %12 = arith.subf %1, %11 : f64
          memref.store %12, %arg5[%arg9, %c28] : memref<?x30xf64>
          scf.reduce 
        }
        scf.reduce 
      }
    }
    return
  }
}

