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
      %c1_11 = arith.constant 1 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg13 = %c0_10 to %c1_11 step %c1_12 {
        %0 = arith.addi %arg12, %arg13 : index
        %c0_13 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg14 = %c0_13 to %c5 step %c1_14 {
          %c4 = arith.constant 4 : index
          %1 = arith.muli %arg14, %c4 : index
          memref.store %cst, %arg11[%0, %1] : memref<?x22xf64>
          memref.store %cst, %arg8[%0, %1] : memref<?x22xf64>
          %c1_18 = arith.constant 1 : index
          %2 = arith.addi %1, %c1_18 : index
          memref.store %cst, %arg11[%0, %2] : memref<?x22xf64>
          memref.store %cst, %arg8[%0, %2] : memref<?x22xf64>
          %c2_19 = arith.constant 2 : index
          %3 = arith.addi %1, %c2_19 : index
          memref.store %cst, %arg11[%0, %3] : memref<?x22xf64>
          memref.store %cst, %arg8[%0, %3] : memref<?x22xf64>
          %c3 = arith.constant 3 : index
          %4 = arith.addi %1, %c3 : index
          memref.store %cst, %arg11[%0, %4] : memref<?x22xf64>
          memref.store %cst, %arg8[%0, %4] : memref<?x22xf64>
        }
        %c0_15 = arith.constant 0 : index
        %c2_16 = arith.constant 2 : index
        %c1_17 = arith.constant 1 : index
        scf.for %arg14 = %c0_15 to %c2_16 step %c1_17 {
          %c20 = arith.constant 20 : index
          %1 = arith.addi %arg14, %c20 : index
          memref.store %cst, %arg11[%0, %1] : memref<?x22xf64>
          memref.store %cst, %arg8[%0, %1] : memref<?x22xf64>
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg12 = %c0_0 to %c2 step %c1_1 {
      %c16_10 = arith.constant 16 : index
      %0 = arith.addi %arg12, %c16_10 : index
      %c0_11 = arith.constant 0 : index
      %c1_12 = arith.constant 1 : index
      %c1_13 = arith.constant 1 : index
      scf.for %arg13 = %c0_11 to %c1_12 step %c1_13 {
        %1 = arith.addi %0, %arg13 : index
        %c0_14 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg14 = %c0_14 to %c5 step %c1_15 {
          %c4 = arith.constant 4 : index
          %2 = arith.muli %arg14, %c4 : index
          memref.store %cst, %arg8[%1, %2] : memref<?x22xf64>
          %c1_19 = arith.constant 1 : index
          %3 = arith.addi %2, %c1_19 : index
          memref.store %cst, %arg8[%1, %3] : memref<?x22xf64>
          %c2_20 = arith.constant 2 : index
          %4 = arith.addi %2, %c2_20 : index
          memref.store %cst, %arg8[%1, %4] : memref<?x22xf64>
          %c3 = arith.constant 3 : index
          %5 = arith.addi %2, %c3 : index
          memref.store %cst, %arg8[%1, %5] : memref<?x22xf64>
        }
        %c0_16 = arith.constant 0 : index
        %c2_17 = arith.constant 2 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg14 = %c0_16 to %c2_17 step %c1_18 {
          %c20 = arith.constant 20 : index
          %2 = arith.addi %arg14, %c20 : index
          memref.store %cst, %arg8[%1, %2] : memref<?x22xf64>
        }
      }
    }
    %c0_2 = arith.constant 0 : index
    %c18 = arith.constant 18 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg12 = %c0_2 to %c18 step %c1_3 {
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg13 = %c0_10 to %c1_11 step %c1_12 {
        %0 = arith.addi %arg12, %arg13 : index
        %c0_13 = arith.constant 0 : index
        %c24 = arith.constant 24 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg14 = %c0_13 to %c24 step %c1_14 {
          %c0_15 = arith.constant 0 : index
          %c1_16 = arith.constant 1 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg15 = %c0_15 to %c1_16 step %c1_17 {
            %1 = arith.addi %arg14, %arg15 : index
            %2 = memref.load %arg9[%0, %1] : memref<?x24xf64>
            %3 = memref.load %arg9[%0, %1] : memref<?x24xf64>
            %4 = memref.load %arg9[%0, %1] : memref<?x24xf64>
            %5 = memref.load %arg9[%0, %1] : memref<?x24xf64>
            %c0_18 = arith.constant 0 : index
            %c5 = arith.constant 5 : index
            %c1_19 = arith.constant 1 : index
            scf.for %arg16 = %c0_18 to %c5 step %c1_19 {
              %c4 = arith.constant 4 : index
              %7 = arith.muli %arg16, %c4 : index
              %8 = memref.load %arg8[%0, %7] : memref<?x22xf64>
              %9 = memref.load %arg10[%1, %7] : memref<?x22xf64>
              %10 = arith.mulf %2, %9 : f64
              %11 = arith.addf %8, %10 : f64
              memref.store %11, %arg8[%0, %7] : memref<?x22xf64>
              %c1_23 = arith.constant 1 : index
              %12 = arith.addi %7, %c1_23 : index
              %13 = memref.load %arg8[%0, %12] : memref<?x22xf64>
              %14 = memref.load %arg10[%1, %12] : memref<?x22xf64>
              %15 = arith.mulf %3, %14 : f64
              %16 = arith.addf %13, %15 : f64
              memref.store %16, %arg8[%0, %12] : memref<?x22xf64>
              %c2_24 = arith.constant 2 : index
              %17 = arith.addi %7, %c2_24 : index
              %18 = memref.load %arg8[%0, %17] : memref<?x22xf64>
              %19 = memref.load %arg10[%1, %17] : memref<?x22xf64>
              %20 = arith.mulf %4, %19 : f64
              %21 = arith.addf %18, %20 : f64
              memref.store %21, %arg8[%0, %17] : memref<?x22xf64>
              %c3 = arith.constant 3 : index
              %22 = arith.addi %7, %c3 : index
              %23 = memref.load %arg8[%0, %22] : memref<?x22xf64>
              %24 = memref.load %arg10[%1, %22] : memref<?x22xf64>
              %25 = arith.mulf %5, %24 : f64
              %26 = arith.addf %23, %25 : f64
              memref.store %26, %arg8[%0, %22] : memref<?x22xf64>
            }
            %6 = memref.load %arg9[%0, %1] : memref<?x24xf64>
            %c0_20 = arith.constant 0 : index
            %c2_21 = arith.constant 2 : index
            %c1_22 = arith.constant 1 : index
            scf.for %arg16 = %c0_20 to %c2_21 step %c1_22 {
              %c20 = arith.constant 20 : index
              %7 = arith.addi %arg16, %c20 : index
              %8 = memref.load %arg8[%0, %7] : memref<?x22xf64>
              %9 = memref.load %arg10[%1, %7] : memref<?x22xf64>
              %10 = arith.mulf %6, %9 : f64
              %11 = arith.addf %8, %10 : f64
              memref.store %11, %arg8[%0, %7] : memref<?x22xf64>
            }
          }
        }
      }
    }
    %c0_4 = arith.constant 0 : index
    %c16_5 = arith.constant 16 : index
    %c1_6 = arith.constant 1 : index
    scf.for %arg12 = %c0_4 to %c16_5 step %c1_6 {
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg13 = %c0_10 to %c1_11 step %c1_12 {
        %0 = arith.addi %arg12, %arg13 : index
        %c0_13 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg14 = %c0_13 to %c4 step %c1_14 {
          %c4_18 = arith.constant 4 : index
          %1 = arith.muli %arg14, %c4_18 : index
          memref.store %cst, %arg5[%0, %1] : memref<?x18xf64>
          %c1_19 = arith.constant 1 : index
          %2 = arith.addi %1, %c1_19 : index
          memref.store %cst, %arg5[%0, %2] : memref<?x18xf64>
          %c2_20 = arith.constant 2 : index
          %3 = arith.addi %1, %c2_20 : index
          memref.store %cst, %arg5[%0, %3] : memref<?x18xf64>
          %c3 = arith.constant 3 : index
          %4 = arith.addi %1, %c3 : index
          memref.store %cst, %arg5[%0, %4] : memref<?x18xf64>
        }
        %c0_15 = arith.constant 0 : index
        %c2_16 = arith.constant 2 : index
        %c1_17 = arith.constant 1 : index
        scf.for %arg14 = %c0_15 to %c2_16 step %c1_17 {
          %c16_18 = arith.constant 16 : index
          %1 = arith.addi %arg14, %c16_18 : index
          memref.store %cst, %arg5[%0, %1] : memref<?x18xf64>
        }
      }
    }
    %c0_7 = arith.constant 0 : index
    %c2_8 = arith.constant 2 : index
    %c1_9 = arith.constant 1 : index
    scf.for %arg12 = %c0_7 to %c2_8 step %c1_9 {
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg13 = %c0_10 to %c1_11 step %c1_12 {
        %0 = arith.addi %arg12, %arg13 : index
        %c0_13 = arith.constant 0 : index
        %1 = arith.addi %arg12, %arg13 : index
        %2 = arith.cmpi eq, %1, %c0_13 : index
        scf.if %2 {
          %c0_15 = arith.constant 0 : index
          %c16_16 = arith.constant 16 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg14 = %c0_15 to %c16_16 step %c1_17 {
            %c0_18 = arith.constant 0 : index
            %c18_19 = arith.constant 18 : index
            %c1_20 = arith.constant 1 : index
            scf.for %arg15 = %c0_18 to %c18_19 step %c1_20 {
              %c0_21 = arith.constant 0 : index
              %c5 = arith.constant 5 : index
              %c1_22 = arith.constant 1 : index
              scf.for %arg16 = %c0_21 to %c5 step %c1_22 {
                %c4 = arith.constant 4 : index
                %18 = arith.muli %arg16, %c4 : index
                %19 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %20 = memref.load %arg6[%arg14, %18] : memref<?x20xf64>
                %21 = memref.load %arg7[%18, %arg15] : memref<?x18xf64>
                %22 = arith.mulf %20, %21 : f64
                %23 = arith.addf %19, %22 : f64
                memref.store %23, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c1_27 = arith.constant 1 : index
                %24 = arith.addi %18, %c1_27 : index
                %25 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %26 = memref.load %arg6[%arg14, %24] : memref<?x20xf64>
                %27 = memref.load %arg7[%24, %arg15] : memref<?x18xf64>
                %28 = arith.mulf %26, %27 : f64
                %29 = arith.addf %25, %28 : f64
                memref.store %29, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c2_28 = arith.constant 2 : index
                %30 = arith.addi %18, %c2_28 : index
                %31 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %32 = memref.load %arg6[%arg14, %30] : memref<?x20xf64>
                %33 = memref.load %arg7[%30, %arg15] : memref<?x18xf64>
                %34 = arith.mulf %32, %33 : f64
                %35 = arith.addf %31, %34 : f64
                memref.store %35, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c3_29 = arith.constant 3 : index
                %36 = arith.addi %18, %c3_29 : index
                %37 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %38 = memref.load %arg6[%arg14, %36] : memref<?x20xf64>
                %39 = memref.load %arg7[%36, %arg15] : memref<?x18xf64>
                %40 = arith.mulf %38, %39 : f64
                %41 = arith.addf %37, %40 : f64
                memref.store %41, %arg5[%arg14, %arg15] : memref<?x18xf64>
              }
              %6 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %7 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %8 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %9 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %c0_23 = arith.constant 0 : index
              %c3 = arith.constant 3 : index
              %c1_24 = arith.constant 1 : index
              scf.for %arg16 = %c0_23 to %c3 step %c1_24 {
                %c4 = arith.constant 4 : index
                %18 = arith.muli %arg16, %c4 : index
                %c19 = arith.constant 19 : index
                %19 = arith.addi %18, %c19 : index
                %c-19_27 = arith.constant -19 : index
                %20 = arith.addi %19, %c-19_27 : index
                %21 = memref.load %arg11[%arg14, %20] : memref<?x22xf64>
                %c-19_28 = arith.constant -19 : index
                %22 = arith.addi %19, %c-19_28 : index
                %23 = memref.load %arg8[%arg15, %22] : memref<?x22xf64>
                %24 = arith.mulf %6, %23 : f64
                %25 = arith.addf %21, %24 : f64
                %c-19_29 = arith.constant -19 : index
                %26 = arith.addi %19, %c-19_29 : index
                memref.store %25, %arg11[%arg14, %26] : memref<?x22xf64>
                %c1_30 = arith.constant 1 : index
                %27 = arith.addi %19, %c1_30 : index
                %c-19_31 = arith.constant -19 : index
                %28 = arith.addi %27, %c-19_31 : index
                %29 = memref.load %arg11[%arg14, %28] : memref<?x22xf64>
                %c-19_32 = arith.constant -19 : index
                %30 = arith.addi %27, %c-19_32 : index
                %31 = memref.load %arg8[%arg15, %30] : memref<?x22xf64>
                %32 = arith.mulf %7, %31 : f64
                %33 = arith.addf %29, %32 : f64
                %c-19_33 = arith.constant -19 : index
                %34 = arith.addi %27, %c-19_33 : index
                memref.store %33, %arg11[%arg14, %34] : memref<?x22xf64>
                %c2_34 = arith.constant 2 : index
                %35 = arith.addi %19, %c2_34 : index
                %c-19_35 = arith.constant -19 : index
                %36 = arith.addi %35, %c-19_35 : index
                %37 = memref.load %arg11[%arg14, %36] : memref<?x22xf64>
                %c-19_36 = arith.constant -19 : index
                %38 = arith.addi %35, %c-19_36 : index
                %39 = memref.load %arg8[%arg15, %38] : memref<?x22xf64>
                %40 = arith.mulf %8, %39 : f64
                %41 = arith.addf %37, %40 : f64
                %c-19_37 = arith.constant -19 : index
                %42 = arith.addi %35, %c-19_37 : index
                memref.store %41, %arg11[%arg14, %42] : memref<?x22xf64>
                %c3_38 = arith.constant 3 : index
                %43 = arith.addi %19, %c3_38 : index
                %c-19_39 = arith.constant -19 : index
                %44 = arith.addi %43, %c-19_39 : index
                %45 = memref.load %arg11[%arg14, %44] : memref<?x22xf64>
                %c-19_40 = arith.constant -19 : index
                %46 = arith.addi %43, %c-19_40 : index
                %47 = memref.load %arg8[%arg15, %46] : memref<?x22xf64>
                %48 = arith.mulf %9, %47 : f64
                %49 = arith.addf %45, %48 : f64
                %c-19_41 = arith.constant -19 : index
                %50 = arith.addi %43, %c-19_41 : index
                memref.store %49, %arg11[%arg14, %50] : memref<?x22xf64>
              }
              %c-19 = arith.constant -19 : index
              %10 = arith.addi %c31, %c-19 : index
              %11 = memref.load %arg11[%arg14, %10] : memref<?x22xf64>
              %12 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %c-19_25 = arith.constant -19 : index
              %13 = arith.addi %c31, %c-19_25 : index
              %14 = memref.load %arg8[%arg15, %13] : memref<?x22xf64>
              %15 = arith.mulf %12, %14 : f64
              %16 = arith.addf %11, %15 : f64
              %c-19_26 = arith.constant -19 : index
              %17 = arith.addi %c31, %c-19_26 : index
              memref.store %16, %arg11[%arg14, %17] : memref<?x22xf64>
            }
          }
        }
        %c0_14 = arith.constant 0 : index
        %3 = arith.addi %arg12, %arg13 : index
        %c-1 = arith.constant -1 : index
        %4 = arith.addi %3, %c-1 : index
        %5 = arith.cmpi eq, %4, %c0_14 : index
        scf.if %5 {
          %c0_15 = arith.constant 0 : index
          %c16_16 = arith.constant 16 : index
          %c1_17 = arith.constant 1 : index
          scf.for %arg14 = %c0_15 to %c16_16 step %c1_17 {
            %c0_18 = arith.constant 0 : index
            %c18_19 = arith.constant 18 : index
            %c1_20 = arith.constant 1 : index
            scf.for %arg15 = %c0_18 to %c18_19 step %c1_20 {
              %6 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %7 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %8 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %9 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %c0_21 = arith.constant 0 : index
              %c2_22 = arith.constant 2 : index
              %c1_23 = arith.constant 1 : index
              scf.for %arg16 = %c0_21 to %c2_22 step %c1_23 {
                %c4 = arith.constant 4 : index
                %18 = arith.muli %arg16, %c4 : index
                %c32 = arith.constant 32 : index
                %19 = arith.addi %18, %c32 : index
                %c-19_26 = arith.constant -19 : index
                %20 = arith.addi %19, %c-19_26 : index
                %21 = memref.load %arg11[%arg14, %20] : memref<?x22xf64>
                %c-19_27 = arith.constant -19 : index
                %22 = arith.addi %19, %c-19_27 : index
                %23 = memref.load %arg8[%arg15, %22] : memref<?x22xf64>
                %24 = arith.mulf %6, %23 : f64
                %25 = arith.addf %21, %24 : f64
                %c-19_28 = arith.constant -19 : index
                %26 = arith.addi %19, %c-19_28 : index
                memref.store %25, %arg11[%arg14, %26] : memref<?x22xf64>
                %c1_29 = arith.constant 1 : index
                %27 = arith.addi %19, %c1_29 : index
                %c-19_30 = arith.constant -19 : index
                %28 = arith.addi %27, %c-19_30 : index
                %29 = memref.load %arg11[%arg14, %28] : memref<?x22xf64>
                %c-19_31 = arith.constant -19 : index
                %30 = arith.addi %27, %c-19_31 : index
                %31 = memref.load %arg8[%arg15, %30] : memref<?x22xf64>
                %32 = arith.mulf %7, %31 : f64
                %33 = arith.addf %29, %32 : f64
                %c-19_32 = arith.constant -19 : index
                %34 = arith.addi %27, %c-19_32 : index
                memref.store %33, %arg11[%arg14, %34] : memref<?x22xf64>
                %c2_33 = arith.constant 2 : index
                %35 = arith.addi %19, %c2_33 : index
                %c-19_34 = arith.constant -19 : index
                %36 = arith.addi %35, %c-19_34 : index
                %37 = memref.load %arg11[%arg14, %36] : memref<?x22xf64>
                %c-19_35 = arith.constant -19 : index
                %38 = arith.addi %35, %c-19_35 : index
                %39 = memref.load %arg8[%arg15, %38] : memref<?x22xf64>
                %40 = arith.mulf %8, %39 : f64
                %41 = arith.addf %37, %40 : f64
                %c-19_36 = arith.constant -19 : index
                %42 = arith.addi %35, %c-19_36 : index
                memref.store %41, %arg11[%arg14, %42] : memref<?x22xf64>
                %c3 = arith.constant 3 : index
                %43 = arith.addi %19, %c3 : index
                %c-19_37 = arith.constant -19 : index
                %44 = arith.addi %43, %c-19_37 : index
                %45 = memref.load %arg11[%arg14, %44] : memref<?x22xf64>
                %c-19_38 = arith.constant -19 : index
                %46 = arith.addi %43, %c-19_38 : index
                %47 = memref.load %arg8[%arg15, %46] : memref<?x22xf64>
                %48 = arith.mulf %9, %47 : f64
                %49 = arith.addf %45, %48 : f64
                %c-19_39 = arith.constant -19 : index
                %50 = arith.addi %43, %c-19_39 : index
                memref.store %49, %arg11[%arg14, %50] : memref<?x22xf64>
              }
              %c-19 = arith.constant -19 : index
              %10 = arith.addi %c40, %c-19 : index
              %11 = memref.load %arg11[%arg14, %10] : memref<?x22xf64>
              %12 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %c-19_24 = arith.constant -19 : index
              %13 = arith.addi %c40, %c-19_24 : index
              %14 = memref.load %arg8[%arg15, %13] : memref<?x22xf64>
              %15 = arith.mulf %12, %14 : f64
              %16 = arith.addf %11, %15 : f64
              %c-19_25 = arith.constant -19 : index
              %17 = arith.addi %c40, %c-19_25 : index
              memref.store %16, %arg11[%arg14, %17] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

