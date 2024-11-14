module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c44 = arith.constant 44 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c19 = arith.constant 19 : index
    %c20 = arith.constant 20 : index
    %c21 = arith.constant 21 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.for %arg11 = %c0 to %c1 step %c1_0 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg11, %c32 : index
      %c0_4 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg12 = %c0_4 to %c16 step %c1_5 {
        %1 = arith.addi %0, %arg12 : index
        %c0_6 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg13 = %c0_6 to %c4 step %c1_7 {
          %c4_13 = arith.constant 4 : index
          %10 = arith.muli %arg13, %c4_13 : index
          %11 = memref.load %arg10[%1, %10] : memref<?x24xf64>
          %12 = arith.mulf %11, %arg5 : f64
          memref.store %12, %arg10[%1, %10] : memref<?x24xf64>
          memref.store %cst, %arg6[%1, %10] : memref<?x18xf64>
          %c1_14 = arith.constant 1 : index
          %13 = arith.addi %10, %c1_14 : index
          %14 = memref.load %arg10[%1, %13] : memref<?x24xf64>
          %15 = arith.mulf %14, %arg5 : f64
          memref.store %15, %arg10[%1, %13] : memref<?x24xf64>
          memref.store %cst, %arg6[%1, %13] : memref<?x18xf64>
          %c2_15 = arith.constant 2 : index
          %16 = arith.addi %10, %c2_15 : index
          %17 = memref.load %arg10[%1, %16] : memref<?x24xf64>
          %18 = arith.mulf %17, %arg5 : f64
          memref.store %18, %arg10[%1, %16] : memref<?x24xf64>
          memref.store %cst, %arg6[%1, %16] : memref<?x18xf64>
          %c3 = arith.constant 3 : index
          %19 = arith.addi %10, %c3 : index
          %20 = memref.load %arg10[%1, %19] : memref<?x24xf64>
          %21 = arith.mulf %20, %arg5 : f64
          memref.store %21, %arg10[%1, %19] : memref<?x24xf64>
          memref.store %cst, %arg6[%1, %19] : memref<?x18xf64>
        }
        %c0_8 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg13 = %c0_8 to %c2 step %c1_9 {
          %c16_13 = arith.constant 16 : index
          %10 = arith.addi %arg13, %c16_13 : index
          %11 = memref.load %arg10[%1, %10] : memref<?x24xf64>
          %12 = arith.mulf %11, %arg5 : f64
          memref.store %12, %arg10[%1, %10] : memref<?x24xf64>
          memref.store %cst, %arg6[%1, %10] : memref<?x18xf64>
        }
        %2 = memref.load %arg10[%1, %c18] : memref<?x24xf64>
        %3 = arith.mulf %2, %arg5 : f64
        memref.store %3, %arg10[%1, %c18] : memref<?x24xf64>
        %4 = memref.load %arg10[%1, %c19] : memref<?x24xf64>
        %5 = arith.mulf %4, %arg5 : f64
        memref.store %5, %arg10[%1, %c19] : memref<?x24xf64>
        %6 = memref.load %arg10[%1, %c20] : memref<?x24xf64>
        %7 = arith.mulf %6, %arg5 : f64
        memref.store %7, %arg10[%1, %c20] : memref<?x24xf64>
        %8 = memref.load %arg10[%1, %c21] : memref<?x24xf64>
        %9 = arith.mulf %8, %arg5 : f64
        memref.store %9, %arg10[%1, %c21] : memref<?x24xf64>
        %c0_10 = arith.constant 0 : index
        %c2_11 = arith.constant 2 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg13 = %c0_10 to %c2_11 step %c1_12 {
          %c22 = arith.constant 22 : index
          %10 = arith.addi %arg13, %c22 : index
          %11 = memref.load %arg10[%1, %10] : memref<?x24xf64>
          %12 = arith.mulf %11, %arg5 : f64
          memref.store %12, %arg10[%1, %10] : memref<?x24xf64>
        }
      }
    }
    %c0_1 = arith.constant 0 : index
    %c1_2 = arith.constant 1 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg11 = %c0_1 to %c1_2 step %c1_3 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg11, %c32 : index
      %c0_4 = arith.constant 0 : index
      %c2 = arith.constant 2 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg12 = %c0_4 to %c2 step %c1_5 {
        %1 = arith.addi %0, %arg12 : index
        %c0_6 = arith.constant 0 : index
        %c32_7 = arith.constant 32 : index
        %2 = arith.muli %arg11, %c32_7 : index
        %3 = arith.addi %arg12, %2 : index
        %4 = arith.cmpi eq, %3, %c0_6 : index
        scf.if %4 {
          %c0_10 = arith.constant 0 : index
          %c16 = arith.constant 16 : index
          %c1_11 = arith.constant 1 : index
          scf.for %arg13 = %c0_10 to %c16 step %c1_11 {
            %c0_12 = arith.constant 0 : index
            %c18_13 = arith.constant 18 : index
            %c1_14 = arith.constant 1 : index
            scf.for %arg14 = %c0_12 to %c18_13 step %c1_14 {
              %c0_15 = arith.constant 0 : index
              %c5 = arith.constant 5 : index
              %c1_16 = arith.constant 1 : index
              scf.for %arg15 = %c0_15 to %c5 step %c1_16 {
                %c4 = arith.constant 4 : index
                %14 = arith.muli %arg15, %c4 : index
                %15 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %16 = memref.load %arg7[%arg13, %14] : memref<?x22xf64>
                %17 = arith.mulf %arg4, %16 : f64
                %18 = memref.load %arg8[%14, %arg14] : memref<?x18xf64>
                %19 = arith.mulf %17, %18 : f64
                %20 = arith.addf %15, %19 : f64
                memref.store %20, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %c1_25 = arith.constant 1 : index
                %21 = arith.addi %14, %c1_25 : index
                %22 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %23 = memref.load %arg7[%arg13, %21] : memref<?x22xf64>
                %24 = arith.mulf %arg4, %23 : f64
                %25 = memref.load %arg8[%21, %arg14] : memref<?x18xf64>
                %26 = arith.mulf %24, %25 : f64
                %27 = arith.addf %22, %26 : f64
                memref.store %27, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %c2_26 = arith.constant 2 : index
                %28 = arith.addi %14, %c2_26 : index
                %29 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %30 = memref.load %arg7[%arg13, %28] : memref<?x22xf64>
                %31 = arith.mulf %arg4, %30 : f64
                %32 = memref.load %arg8[%28, %arg14] : memref<?x18xf64>
                %33 = arith.mulf %31, %32 : f64
                %34 = arith.addf %29, %33 : f64
                memref.store %34, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %c3_27 = arith.constant 3 : index
                %35 = arith.addi %14, %c3_27 : index
                %36 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %37 = memref.load %arg7[%arg13, %35] : memref<?x22xf64>
                %38 = arith.mulf %arg4, %37 : f64
                %39 = memref.load %arg8[%35, %arg14] : memref<?x18xf64>
                %40 = arith.mulf %38, %39 : f64
                %41 = arith.addf %36, %40 : f64
                memref.store %41, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              %c0_17 = arith.constant 0 : index
              %c2_18 = arith.constant 2 : index
              %c1_19 = arith.constant 1 : index
              scf.for %arg15 = %c0_17 to %c2_18 step %c1_19 {
                %c20_25 = arith.constant 20 : index
                %14 = arith.addi %arg15, %c20_25 : index
                %15 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %16 = memref.load %arg7[%arg13, %14] : memref<?x22xf64>
                %17 = arith.mulf %arg4, %16 : f64
                %18 = memref.load %arg8[%14, %arg14] : memref<?x18xf64>
                %19 = arith.mulf %17, %18 : f64
                %20 = arith.addf %15, %19 : f64
                memref.store %20, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              %9 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %10 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %11 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %12 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %c0_20 = arith.constant 0 : index
              %c2_21 = arith.constant 2 : index
              %c1_22 = arith.constant 1 : index
              scf.for %arg15 = %c0_20 to %c2_21 step %c1_22 {
                %c4 = arith.constant 4 : index
                %14 = arith.muli %arg15, %c4 : index
                %c21_25 = arith.constant 21 : index
                %15 = arith.addi %14, %c21_25 : index
                %c-21 = arith.constant -21 : index
                %16 = arith.addi %15, %c-21 : index
                %17 = memref.load %arg10[%arg13, %16] : memref<?x24xf64>
                %c-21_26 = arith.constant -21 : index
                %18 = arith.addi %15, %c-21_26 : index
                %19 = memref.load %arg9[%arg14, %18] : memref<?x24xf64>
                %20 = arith.mulf %9, %19 : f64
                %21 = arith.addf %17, %20 : f64
                %c-21_27 = arith.constant -21 : index
                %22 = arith.addi %15, %c-21_27 : index
                memref.store %21, %arg10[%arg13, %22] : memref<?x24xf64>
                %c1_28 = arith.constant 1 : index
                %23 = arith.addi %15, %c1_28 : index
                %c-21_29 = arith.constant -21 : index
                %24 = arith.addi %23, %c-21_29 : index
                %25 = memref.load %arg10[%arg13, %24] : memref<?x24xf64>
                %c-21_30 = arith.constant -21 : index
                %26 = arith.addi %23, %c-21_30 : index
                %27 = memref.load %arg9[%arg14, %26] : memref<?x24xf64>
                %28 = arith.mulf %10, %27 : f64
                %29 = arith.addf %25, %28 : f64
                %c-21_31 = arith.constant -21 : index
                %30 = arith.addi %23, %c-21_31 : index
                memref.store %29, %arg10[%arg13, %30] : memref<?x24xf64>
                %c2_32 = arith.constant 2 : index
                %31 = arith.addi %15, %c2_32 : index
                %c-21_33 = arith.constant -21 : index
                %32 = arith.addi %31, %c-21_33 : index
                %33 = memref.load %arg10[%arg13, %32] : memref<?x24xf64>
                %c-21_34 = arith.constant -21 : index
                %34 = arith.addi %31, %c-21_34 : index
                %35 = memref.load %arg9[%arg14, %34] : memref<?x24xf64>
                %36 = arith.mulf %11, %35 : f64
                %37 = arith.addf %33, %36 : f64
                %c-21_35 = arith.constant -21 : index
                %38 = arith.addi %31, %c-21_35 : index
                memref.store %37, %arg10[%arg13, %38] : memref<?x24xf64>
                %c3_36 = arith.constant 3 : index
                %39 = arith.addi %15, %c3_36 : index
                %c-21_37 = arith.constant -21 : index
                %40 = arith.addi %39, %c-21_37 : index
                %41 = memref.load %arg10[%arg13, %40] : memref<?x24xf64>
                %c-21_38 = arith.constant -21 : index
                %42 = arith.addi %39, %c-21_38 : index
                %43 = memref.load %arg9[%arg14, %42] : memref<?x24xf64>
                %44 = arith.mulf %12, %43 : f64
                %45 = arith.addf %41, %44 : f64
                %c-21_39 = arith.constant -21 : index
                %46 = arith.addi %39, %c-21_39 : index
                memref.store %45, %arg10[%arg13, %46] : memref<?x24xf64>
              }
              %13 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %c0_23 = arith.constant 0 : index
              %c3 = arith.constant 3 : index
              %c1_24 = arith.constant 1 : index
              scf.for %arg15 = %c0_23 to %c3 step %c1_24 {
                %c29 = arith.constant 29 : index
                %14 = arith.addi %arg15, %c29 : index
                %c-21 = arith.constant -21 : index
                %15 = arith.addi %14, %c-21 : index
                %16 = memref.load %arg10[%arg13, %15] : memref<?x24xf64>
                %c-21_25 = arith.constant -21 : index
                %17 = arith.addi %14, %c-21_25 : index
                %18 = memref.load %arg9[%arg14, %17] : memref<?x24xf64>
                %19 = arith.mulf %13, %18 : f64
                %20 = arith.addf %16, %19 : f64
                %c-21_26 = arith.constant -21 : index
                %21 = arith.addi %14, %c-21_26 : index
                memref.store %20, %arg10[%arg13, %21] : memref<?x24xf64>
              }
            }
          }
        }
        %c0_8 = arith.constant 0 : index
        %c32_9 = arith.constant 32 : index
        %5 = arith.muli %arg11, %c32_9 : index
        %6 = arith.addi %arg12, %5 : index
        %c-1 = arith.constant -1 : index
        %7 = arith.addi %6, %c-1 : index
        %8 = arith.cmpi eq, %7, %c0_8 : index
        scf.if %8 {
          %c0_10 = arith.constant 0 : index
          %c16 = arith.constant 16 : index
          %c1_11 = arith.constant 1 : index
          scf.for %arg13 = %c0_10 to %c16 step %c1_11 {
            %c0_12 = arith.constant 0 : index
            %c18_13 = arith.constant 18 : index
            %c1_14 = arith.constant 1 : index
            scf.for %arg14 = %c0_12 to %c18_13 step %c1_14 {
              %9 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %10 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %11 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %12 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %c0_15 = arith.constant 0 : index
              %c3 = arith.constant 3 : index
              %c1_16 = arith.constant 1 : index
              scf.for %arg15 = %c0_15 to %c3 step %c1_16 {
                %c4 = arith.constant 4 : index
                %21 = arith.muli %arg15, %c4 : index
                %c32_19 = arith.constant 32 : index
                %22 = arith.addi %21, %c32_19 : index
                %c-21_20 = arith.constant -21 : index
                %23 = arith.addi %22, %c-21_20 : index
                %24 = memref.load %arg10[%arg13, %23] : memref<?x24xf64>
                %c-21_21 = arith.constant -21 : index
                %25 = arith.addi %22, %c-21_21 : index
                %26 = memref.load %arg9[%arg14, %25] : memref<?x24xf64>
                %27 = arith.mulf %9, %26 : f64
                %28 = arith.addf %24, %27 : f64
                %c-21_22 = arith.constant -21 : index
                %29 = arith.addi %22, %c-21_22 : index
                memref.store %28, %arg10[%arg13, %29] : memref<?x24xf64>
                %c1_23 = arith.constant 1 : index
                %30 = arith.addi %22, %c1_23 : index
                %c-21_24 = arith.constant -21 : index
                %31 = arith.addi %30, %c-21_24 : index
                %32 = memref.load %arg10[%arg13, %31] : memref<?x24xf64>
                %c-21_25 = arith.constant -21 : index
                %33 = arith.addi %30, %c-21_25 : index
                %34 = memref.load %arg9[%arg14, %33] : memref<?x24xf64>
                %35 = arith.mulf %10, %34 : f64
                %36 = arith.addf %32, %35 : f64
                %c-21_26 = arith.constant -21 : index
                %37 = arith.addi %30, %c-21_26 : index
                memref.store %36, %arg10[%arg13, %37] : memref<?x24xf64>
                %c2_27 = arith.constant 2 : index
                %38 = arith.addi %22, %c2_27 : index
                %c-21_28 = arith.constant -21 : index
                %39 = arith.addi %38, %c-21_28 : index
                %40 = memref.load %arg10[%arg13, %39] : memref<?x24xf64>
                %c-21_29 = arith.constant -21 : index
                %41 = arith.addi %38, %c-21_29 : index
                %42 = memref.load %arg9[%arg14, %41] : memref<?x24xf64>
                %43 = arith.mulf %11, %42 : f64
                %44 = arith.addf %40, %43 : f64
                %c-21_30 = arith.constant -21 : index
                %45 = arith.addi %38, %c-21_30 : index
                memref.store %44, %arg10[%arg13, %45] : memref<?x24xf64>
                %c3_31 = arith.constant 3 : index
                %46 = arith.addi %22, %c3_31 : index
                %c-21_32 = arith.constant -21 : index
                %47 = arith.addi %46, %c-21_32 : index
                %48 = memref.load %arg10[%arg13, %47] : memref<?x24xf64>
                %c-21_33 = arith.constant -21 : index
                %49 = arith.addi %46, %c-21_33 : index
                %50 = memref.load %arg9[%arg14, %49] : memref<?x24xf64>
                %51 = arith.mulf %12, %50 : f64
                %52 = arith.addf %48, %51 : f64
                %c-21_34 = arith.constant -21 : index
                %53 = arith.addi %46, %c-21_34 : index
                memref.store %52, %arg10[%arg13, %53] : memref<?x24xf64>
              }
              %c-21 = arith.constant -21 : index
              %13 = arith.addi %c44, %c-21 : index
              %14 = memref.load %arg10[%arg13, %13] : memref<?x24xf64>
              %15 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %c-21_17 = arith.constant -21 : index
              %16 = arith.addi %c44, %c-21_17 : index
              %17 = memref.load %arg9[%arg14, %16] : memref<?x24xf64>
              %18 = arith.mulf %15, %17 : f64
              %19 = arith.addf %14, %18 : f64
              %c-21_18 = arith.constant -21 : index
              %20 = arith.addi %c44, %c-21_18 : index
              memref.store %19, %arg10[%arg13, %20] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

