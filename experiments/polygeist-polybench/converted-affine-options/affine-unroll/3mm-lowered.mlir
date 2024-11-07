module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c40 = arith.constant 40 : index
    %c31 = arith.constant 31 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c16 step %c1 {
      %c0_10 = arith.constant 0 : index
      %c20 = arith.constant 20 : index
      %c4 = arith.constant 4 : index
      scf.for %arg13 = %c0_10 to %c20 step %c4 {
        memref.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
        %c1_13 = arith.constant 1 : index
        %0 = arith.addi %arg13, %c1_13 : index
        memref.store %cst, %arg11[%arg12, %0] : memref<?x22xf64>
        memref.store %cst, %arg8[%arg12, %0] : memref<?x22xf64>
        %c2_14 = arith.constant 2 : index
        %1 = arith.addi %arg13, %c2_14 : index
        memref.store %cst, %arg11[%arg12, %1] : memref<?x22xf64>
        memref.store %cst, %arg8[%arg12, %1] : memref<?x22xf64>
        %c3 = arith.constant 3 : index
        %2 = arith.addi %arg13, %c3 : index
        memref.store %cst, %arg11[%arg12, %2] : memref<?x22xf64>
        memref.store %cst, %arg8[%arg12, %2] : memref<?x22xf64>
      }
      %c20_11 = arith.constant 20 : index
      %c22 = arith.constant 22 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg13 = %c20_11 to %c22 step %c1_12 {
        memref.store %cst, %arg11[%arg12, %arg13] : memref<?x22xf64>
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
      }
    }
    %c16_0 = arith.constant 16 : index
    %c18 = arith.constant 18 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg12 = %c16_0 to %c18 step %c1_1 {
      %c0_10 = arith.constant 0 : index
      %c20 = arith.constant 20 : index
      %c4 = arith.constant 4 : index
      scf.for %arg13 = %c0_10 to %c20 step %c4 {
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
        %c1_13 = arith.constant 1 : index
        %0 = arith.addi %arg13, %c1_13 : index
        memref.store %cst, %arg8[%arg12, %0] : memref<?x22xf64>
        %c2_14 = arith.constant 2 : index
        %1 = arith.addi %arg13, %c2_14 : index
        memref.store %cst, %arg8[%arg12, %1] : memref<?x22xf64>
        %c3 = arith.constant 3 : index
        %2 = arith.addi %arg13, %c3 : index
        memref.store %cst, %arg8[%arg12, %2] : memref<?x22xf64>
      }
      %c20_11 = arith.constant 20 : index
      %c22 = arith.constant 22 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg13 = %c20_11 to %c22 step %c1_12 {
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x22xf64>
      }
    }
    %c0_2 = arith.constant 0 : index
    %c18_3 = arith.constant 18 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg12 = %c0_2 to %c18_3 step %c1_4 {
      %c0_10 = arith.constant 0 : index
      %c24 = arith.constant 24 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg13 = %c0_10 to %c24 step %c1_11 {
        %c0_12 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c4 = arith.constant 4 : index
        scf.for %arg14 = %c0_12 to %c20 step %c4 {
          %0 = memref.load %arg8[%arg12, %arg14] : memref<?x22xf64>
          %1 = memref.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %2 = memref.load %arg10[%arg13, %arg14] : memref<?x22xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          memref.store %4, %arg8[%arg12, %arg14] : memref<?x22xf64>
          %c1_15 = arith.constant 1 : index
          %5 = arith.addi %arg14, %c1_15 : index
          %6 = memref.load %arg8[%arg12, %5] : memref<?x22xf64>
          %7 = memref.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %8 = memref.load %arg10[%arg13, %5] : memref<?x22xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %6, %9 : f64
          memref.store %10, %arg8[%arg12, %5] : memref<?x22xf64>
          %c2_16 = arith.constant 2 : index
          %11 = arith.addi %arg14, %c2_16 : index
          %12 = memref.load %arg8[%arg12, %11] : memref<?x22xf64>
          %13 = memref.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %14 = memref.load %arg10[%arg13, %11] : memref<?x22xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = arith.addf %12, %15 : f64
          memref.store %16, %arg8[%arg12, %11] : memref<?x22xf64>
          %c3 = arith.constant 3 : index
          %17 = arith.addi %arg14, %c3 : index
          %18 = memref.load %arg8[%arg12, %17] : memref<?x22xf64>
          %19 = memref.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %20 = memref.load %arg10[%arg13, %17] : memref<?x22xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = arith.addf %18, %21 : f64
          memref.store %22, %arg8[%arg12, %17] : memref<?x22xf64>
        }
        %c20_13 = arith.constant 20 : index
        %c22 = arith.constant 22 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg14 = %c20_13 to %c22 step %c1_14 {
          %0 = memref.load %arg8[%arg12, %arg14] : memref<?x22xf64>
          %1 = memref.load %arg9[%arg12, %arg13] : memref<?x24xf64>
          %2 = memref.load %arg10[%arg13, %arg14] : memref<?x22xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.addf %0, %3 : f64
          memref.store %4, %arg8[%arg12, %arg14] : memref<?x22xf64>
        }
      }
    }
    %c0_5 = arith.constant 0 : index
    %c16_6 = arith.constant 16 : index
    %c1_7 = arith.constant 1 : index
    scf.for %arg12 = %c0_5 to %c16_6 step %c1_7 {
      %c0_10 = arith.constant 0 : index
      %c16_11 = arith.constant 16 : index
      %c4 = arith.constant 4 : index
      scf.for %arg13 = %c0_10 to %c16_11 step %c4 {
        memref.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
        %c1_15 = arith.constant 1 : index
        %0 = arith.addi %arg13, %c1_15 : index
        memref.store %cst, %arg5[%arg12, %0] : memref<?x18xf64>
        %c2_16 = arith.constant 2 : index
        %1 = arith.addi %arg13, %c2_16 : index
        memref.store %cst, %arg5[%arg12, %1] : memref<?x18xf64>
        %c3 = arith.constant 3 : index
        %2 = arith.addi %arg13, %c3 : index
        memref.store %cst, %arg5[%arg12, %2] : memref<?x18xf64>
      }
      %c16_12 = arith.constant 16 : index
      %c18_13 = arith.constant 18 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg13 = %c16_12 to %c18_13 step %c1_14 {
        memref.store %cst, %arg5[%arg12, %arg13] : memref<?x18xf64>
      }
    }
    %c0_8 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_9 = arith.constant 1 : index
    scf.for %arg12 = %c0_8 to %c2 step %c1_9 {
      %c0_10 = arith.constant 0 : index
      %0 = arith.cmpi eq, %arg12, %c0_10 : index
      scf.if %0 {
        %c0_12 = arith.constant 0 : index
        %c16_13 = arith.constant 16 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg13 = %c0_12 to %c16_13 step %c1_14 {
          %c0_15 = arith.constant 0 : index
          %c18_16 = arith.constant 18 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg14 = %c0_15 to %c18_16 step %c1_17 {
            %c0_18 = arith.constant 0 : index
            %c20 = arith.constant 20 : index
            %c4 = arith.constant 4 : index
            scf.for %arg15 = %c0_18 to %c20 step %c4 {
              %11 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %12 = memref.load %arg6[%arg13, %arg15] : memref<?x20xf64>
              %13 = memref.load %arg7[%arg15, %arg14] : memref<?x18xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %11, %14 : f64
              memref.store %15, %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c1_23 = arith.constant 1 : index
              %16 = arith.addi %arg15, %c1_23 : index
              %17 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %18 = memref.load %arg6[%arg13, %16] : memref<?x20xf64>
              %19 = memref.load %arg7[%16, %arg14] : memref<?x18xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = arith.addf %17, %20 : f64
              memref.store %21, %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c2_24 = arith.constant 2 : index
              %22 = arith.addi %arg15, %c2_24 : index
              %23 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %24 = memref.load %arg6[%arg13, %22] : memref<?x20xf64>
              %25 = memref.load %arg7[%22, %arg14] : memref<?x18xf64>
              %26 = arith.mulf %24, %25 : f64
              %27 = arith.addf %23, %26 : f64
              memref.store %27, %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c3 = arith.constant 3 : index
              %28 = arith.addi %arg15, %c3 : index
              %29 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %30 = memref.load %arg6[%arg13, %28] : memref<?x20xf64>
              %31 = memref.load %arg7[%28, %arg14] : memref<?x18xf64>
              %32 = arith.mulf %30, %31 : f64
              %33 = arith.addf %29, %32 : f64
              memref.store %33, %arg5[%arg13, %arg14] : memref<?x18xf64>
            }
            %c19 = arith.constant 19 : index
            %c31_19 = arith.constant 31 : index
            %c4_20 = arith.constant 4 : index
            scf.for %arg15 = %c19 to %c31_19 step %c4_20 {
              %c-19_23 = arith.constant -19 : index
              %11 = arith.addi %arg15, %c-19_23 : index
              %12 = memref.load %arg11[%arg13, %11] : memref<?x22xf64>
              %13 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c-19_24 = arith.constant -19 : index
              %14 = arith.addi %arg15, %c-19_24 : index
              %15 = memref.load %arg8[%arg14, %14] : memref<?x22xf64>
              %16 = arith.mulf %13, %15 : f64
              %17 = arith.addf %12, %16 : f64
              %c-19_25 = arith.constant -19 : index
              %18 = arith.addi %arg15, %c-19_25 : index
              memref.store %17, %arg11[%arg13, %18] : memref<?x22xf64>
              %c1_26 = arith.constant 1 : index
              %19 = arith.addi %arg15, %c1_26 : index
              %c-19_27 = arith.constant -19 : index
              %20 = arith.addi %19, %c-19_27 : index
              %21 = memref.load %arg11[%arg13, %20] : memref<?x22xf64>
              %22 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c-19_28 = arith.constant -19 : index
              %23 = arith.addi %19, %c-19_28 : index
              %24 = memref.load %arg8[%arg14, %23] : memref<?x22xf64>
              %25 = arith.mulf %22, %24 : f64
              %26 = arith.addf %21, %25 : f64
              %c-19_29 = arith.constant -19 : index
              %27 = arith.addi %19, %c-19_29 : index
              memref.store %26, %arg11[%arg13, %27] : memref<?x22xf64>
              %c2_30 = arith.constant 2 : index
              %28 = arith.addi %arg15, %c2_30 : index
              %c-19_31 = arith.constant -19 : index
              %29 = arith.addi %28, %c-19_31 : index
              %30 = memref.load %arg11[%arg13, %29] : memref<?x22xf64>
              %31 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c-19_32 = arith.constant -19 : index
              %32 = arith.addi %28, %c-19_32 : index
              %33 = memref.load %arg8[%arg14, %32] : memref<?x22xf64>
              %34 = arith.mulf %31, %33 : f64
              %35 = arith.addf %30, %34 : f64
              %c-19_33 = arith.constant -19 : index
              %36 = arith.addi %28, %c-19_33 : index
              memref.store %35, %arg11[%arg13, %36] : memref<?x22xf64>
              %c3 = arith.constant 3 : index
              %37 = arith.addi %arg15, %c3 : index
              %c-19_34 = arith.constant -19 : index
              %38 = arith.addi %37, %c-19_34 : index
              %39 = memref.load %arg11[%arg13, %38] : memref<?x22xf64>
              %40 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c-19_35 = arith.constant -19 : index
              %41 = arith.addi %37, %c-19_35 : index
              %42 = memref.load %arg8[%arg14, %41] : memref<?x22xf64>
              %43 = arith.mulf %40, %42 : f64
              %44 = arith.addf %39, %43 : f64
              %c-19_36 = arith.constant -19 : index
              %45 = arith.addi %37, %c-19_36 : index
              memref.store %44, %arg11[%arg13, %45] : memref<?x22xf64>
            }
            %c-19 = arith.constant -19 : index
            %3 = arith.addi %c31, %c-19 : index
            %4 = memref.load %arg11[%arg13, %3] : memref<?x22xf64>
            %5 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
            %c-19_21 = arith.constant -19 : index
            %6 = arith.addi %c31, %c-19_21 : index
            %7 = memref.load %arg8[%arg14, %6] : memref<?x22xf64>
            %8 = arith.mulf %5, %7 : f64
            %9 = arith.addf %4, %8 : f64
            %c-19_22 = arith.constant -19 : index
            %10 = arith.addi %c31, %c-19_22 : index
            memref.store %9, %arg11[%arg13, %10] : memref<?x22xf64>
          }
        }
      }
      %c0_11 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.addi %arg12, %c-1 : index
      %2 = arith.cmpi eq, %1, %c0_11 : index
      scf.if %2 {
        %c0_12 = arith.constant 0 : index
        %c16_13 = arith.constant 16 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg13 = %c0_12 to %c16_13 step %c1_14 {
          %c0_15 = arith.constant 0 : index
          %c18_16 = arith.constant 18 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg14 = %c0_15 to %c18_16 step %c1_17 {
            %c32 = arith.constant 32 : index
            %c40_18 = arith.constant 40 : index
            %c4 = arith.constant 4 : index
            scf.for %arg15 = %c32 to %c40_18 step %c4 {
              %c-19_21 = arith.constant -19 : index
              %11 = arith.addi %arg15, %c-19_21 : index
              %12 = memref.load %arg11[%arg13, %11] : memref<?x22xf64>
              %13 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c-19_22 = arith.constant -19 : index
              %14 = arith.addi %arg15, %c-19_22 : index
              %15 = memref.load %arg8[%arg14, %14] : memref<?x22xf64>
              %16 = arith.mulf %13, %15 : f64
              %17 = arith.addf %12, %16 : f64
              %c-19_23 = arith.constant -19 : index
              %18 = arith.addi %arg15, %c-19_23 : index
              memref.store %17, %arg11[%arg13, %18] : memref<?x22xf64>
              %c1_24 = arith.constant 1 : index
              %19 = arith.addi %arg15, %c1_24 : index
              %c-19_25 = arith.constant -19 : index
              %20 = arith.addi %19, %c-19_25 : index
              %21 = memref.load %arg11[%arg13, %20] : memref<?x22xf64>
              %22 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c-19_26 = arith.constant -19 : index
              %23 = arith.addi %19, %c-19_26 : index
              %24 = memref.load %arg8[%arg14, %23] : memref<?x22xf64>
              %25 = arith.mulf %22, %24 : f64
              %26 = arith.addf %21, %25 : f64
              %c-19_27 = arith.constant -19 : index
              %27 = arith.addi %19, %c-19_27 : index
              memref.store %26, %arg11[%arg13, %27] : memref<?x22xf64>
              %c2_28 = arith.constant 2 : index
              %28 = arith.addi %arg15, %c2_28 : index
              %c-19_29 = arith.constant -19 : index
              %29 = arith.addi %28, %c-19_29 : index
              %30 = memref.load %arg11[%arg13, %29] : memref<?x22xf64>
              %31 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c-19_30 = arith.constant -19 : index
              %32 = arith.addi %28, %c-19_30 : index
              %33 = memref.load %arg8[%arg14, %32] : memref<?x22xf64>
              %34 = arith.mulf %31, %33 : f64
              %35 = arith.addf %30, %34 : f64
              %c-19_31 = arith.constant -19 : index
              %36 = arith.addi %28, %c-19_31 : index
              memref.store %35, %arg11[%arg13, %36] : memref<?x22xf64>
              %c3 = arith.constant 3 : index
              %37 = arith.addi %arg15, %c3 : index
              %c-19_32 = arith.constant -19 : index
              %38 = arith.addi %37, %c-19_32 : index
              %39 = memref.load %arg11[%arg13, %38] : memref<?x22xf64>
              %40 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
              %c-19_33 = arith.constant -19 : index
              %41 = arith.addi %37, %c-19_33 : index
              %42 = memref.load %arg8[%arg14, %41] : memref<?x22xf64>
              %43 = arith.mulf %40, %42 : f64
              %44 = arith.addf %39, %43 : f64
              %c-19_34 = arith.constant -19 : index
              %45 = arith.addi %37, %c-19_34 : index
              memref.store %44, %arg11[%arg13, %45] : memref<?x22xf64>
            }
            %c-19 = arith.constant -19 : index
            %3 = arith.addi %c40, %c-19 : index
            %4 = memref.load %arg11[%arg13, %3] : memref<?x22xf64>
            %5 = memref.load %arg5[%arg13, %arg14] : memref<?x18xf64>
            %c-19_19 = arith.constant -19 : index
            %6 = arith.addi %c40, %c-19_19 : index
            %7 = memref.load %arg8[%arg14, %6] : memref<?x22xf64>
            %8 = arith.mulf %5, %7 : f64
            %9 = arith.addf %4, %8 : f64
            %c-19_20 = arith.constant -19 : index
            %10 = arith.addi %c40, %c-19_20 : index
            memref.store %9, %arg11[%arg13, %10] : memref<?x22xf64>
          }
        }
      }
    }
    return
  }
}

