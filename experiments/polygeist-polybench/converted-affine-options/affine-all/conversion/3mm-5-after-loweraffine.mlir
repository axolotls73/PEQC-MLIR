module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c40 = arith.constant 40 : index
    %c31 = arith.constant 31 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0) to (%c1) step (%c1_0) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg12, %c32 : index
      %c0_13 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg13 = %c0_13 to %c16 step %c1_14 {
        %1 = arith.addi %0, %arg13 : index
        %c0_15 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_16 = arith.constant 1 : index
        scf.for %arg14 = %c0_15 to %c5 step %c1_16 {
          %c4 = arith.constant 4 : index
          %2 = arith.muli %arg14, %c4 : index
          memref.store %cst, %arg11[%1, %2] : memref<?x22xf64>
          memref.store %cst, %arg8[%1, %2] : memref<?x22xf64>
          %c1_19 = arith.constant 1 : index
          %3 = arith.addi %2, %c1_19 : index
          memref.store %cst, %arg11[%1, %3] : memref<?x22xf64>
          memref.store %cst, %arg8[%1, %3] : memref<?x22xf64>
          %c2_20 = arith.constant 2 : index
          %4 = arith.addi %2, %c2_20 : index
          memref.store %cst, %arg11[%1, %4] : memref<?x22xf64>
          memref.store %cst, %arg8[%1, %4] : memref<?x22xf64>
          %c3 = arith.constant 3 : index
          %5 = arith.addi %2, %c3 : index
          memref.store %cst, %arg11[%1, %5] : memref<?x22xf64>
          memref.store %cst, %arg8[%1, %5] : memref<?x22xf64>
        }
        %c0_17 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg14 = %c0_17 to %c2 step %c1_18 {
          %c20 = arith.constant 20 : index
          %2 = arith.addi %arg14, %c20 : index
          memref.store %cst, %arg11[%1, %2] : memref<?x22xf64>
          memref.store %cst, %arg8[%1, %2] : memref<?x22xf64>
        }
      }
      scf.reduce 
    }
    %c0_1 = arith.constant 0 : index
    %c1_2 = arith.constant 1 : index
    %c1_3 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0_1) to (%c1_2) step (%c1_3) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg12, %c32 : index
      %c16 = arith.constant 16 : index
      %1 = arith.addi %0, %c16 : index
      %c0_13 = arith.constant 0 : index
      %c2 = arith.constant 2 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg13 = %c0_13 to %c2 step %c1_14 {
        %2 = arith.addi %1, %arg13 : index
        %c0_15 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_16 = arith.constant 1 : index
        scf.for %arg14 = %c0_15 to %c5 step %c1_16 {
          %c4 = arith.constant 4 : index
          %3 = arith.muli %arg14, %c4 : index
          memref.store %cst, %arg8[%2, %3] : memref<?x22xf64>
          %c1_20 = arith.constant 1 : index
          %4 = arith.addi %3, %c1_20 : index
          memref.store %cst, %arg8[%2, %4] : memref<?x22xf64>
          %c2_21 = arith.constant 2 : index
          %5 = arith.addi %3, %c2_21 : index
          memref.store %cst, %arg8[%2, %5] : memref<?x22xf64>
          %c3 = arith.constant 3 : index
          %6 = arith.addi %3, %c3 : index
          memref.store %cst, %arg8[%2, %6] : memref<?x22xf64>
        }
        %c0_17 = arith.constant 0 : index
        %c2_18 = arith.constant 2 : index
        %c1_19 = arith.constant 1 : index
        scf.for %arg14 = %c0_17 to %c2_18 step %c1_19 {
          %c20 = arith.constant 20 : index
          %3 = arith.addi %arg14, %c20 : index
          memref.store %cst, %arg8[%2, %3] : memref<?x22xf64>
        }
      }
      scf.reduce 
    }
    %c0_4 = arith.constant 0 : index
    %c1_5 = arith.constant 1 : index
    %c1_6 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0_4) to (%c1_5) step (%c1_6) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg12, %c32 : index
      %c0_13 = arith.constant 0 : index
      %c1_14 = arith.constant 1 : index
      %c1_15 = arith.constant 1 : index
      scf.for %arg13 = %c0_13 to %c1_14 step %c1_15 {
        %c32_16 = arith.constant 32 : index
        %1 = arith.muli %arg13, %c32_16 : index
        %c0_17 = arith.constant 0 : index
        %c18 = arith.constant 18 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg14 = %c0_17 to %c18 step %c1_18 {
          %2 = arith.addi %0, %arg14 : index
          %c0_19 = arith.constant 0 : index
          %c24 = arith.constant 24 : index
          %c1_20 = arith.constant 1 : index
          scf.for %arg15 = %c0_19 to %c24 step %c1_20 {
            %3 = arith.addi %1, %arg15 : index
            %4 = memref.load %arg9[%2, %3] : memref<?x24xf64>
            %5 = memref.load %arg9[%2, %3] : memref<?x24xf64>
            %6 = memref.load %arg9[%2, %3] : memref<?x24xf64>
            %7 = memref.load %arg9[%2, %3] : memref<?x24xf64>
            %c0_21 = arith.constant 0 : index
            %c5 = arith.constant 5 : index
            %c1_22 = arith.constant 1 : index
            scf.for %arg16 = %c0_21 to %c5 step %c1_22 {
              %c4 = arith.constant 4 : index
              %9 = arith.muli %arg16, %c4 : index
              %10 = memref.load %arg8[%2, %9] : memref<?x22xf64>
              %11 = memref.load %arg10[%3, %9] : memref<?x22xf64>
              %12 = arith.mulf %4, %11 : f64
              %13 = arith.addf %10, %12 : f64
              memref.store %13, %arg8[%2, %9] : memref<?x22xf64>
              %c1_25 = arith.constant 1 : index
              %14 = arith.addi %9, %c1_25 : index
              %15 = memref.load %arg8[%2, %14] : memref<?x22xf64>
              %16 = memref.load %arg10[%3, %14] : memref<?x22xf64>
              %17 = arith.mulf %5, %16 : f64
              %18 = arith.addf %15, %17 : f64
              memref.store %18, %arg8[%2, %14] : memref<?x22xf64>
              %c2_26 = arith.constant 2 : index
              %19 = arith.addi %9, %c2_26 : index
              %20 = memref.load %arg8[%2, %19] : memref<?x22xf64>
              %21 = memref.load %arg10[%3, %19] : memref<?x22xf64>
              %22 = arith.mulf %6, %21 : f64
              %23 = arith.addf %20, %22 : f64
              memref.store %23, %arg8[%2, %19] : memref<?x22xf64>
              %c3 = arith.constant 3 : index
              %24 = arith.addi %9, %c3 : index
              %25 = memref.load %arg8[%2, %24] : memref<?x22xf64>
              %26 = memref.load %arg10[%3, %24] : memref<?x22xf64>
              %27 = arith.mulf %7, %26 : f64
              %28 = arith.addf %25, %27 : f64
              memref.store %28, %arg8[%2, %24] : memref<?x22xf64>
            }
            %8 = memref.load %arg9[%2, %3] : memref<?x24xf64>
            %c0_23 = arith.constant 0 : index
            %c2 = arith.constant 2 : index
            %c1_24 = arith.constant 1 : index
            scf.for %arg16 = %c0_23 to %c2 step %c1_24 {
              %c20 = arith.constant 20 : index
              %9 = arith.addi %arg16, %c20 : index
              %10 = memref.load %arg8[%2, %9] : memref<?x22xf64>
              %11 = memref.load %arg10[%3, %9] : memref<?x22xf64>
              %12 = arith.mulf %8, %11 : f64
              %13 = arith.addf %10, %12 : f64
              memref.store %13, %arg8[%2, %9] : memref<?x22xf64>
            }
          }
        }
      }
      scf.reduce 
    }
    %c0_7 = arith.constant 0 : index
    %c1_8 = arith.constant 1 : index
    %c1_9 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0_7) to (%c1_8) step (%c1_9) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg12, %c32 : index
      %c0_13 = arith.constant 0 : index
      %c16 = arith.constant 16 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg13 = %c0_13 to %c16 step %c1_14 {
        %1 = arith.addi %0, %arg13 : index
        %c0_15 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c1_16 = arith.constant 1 : index
        scf.for %arg14 = %c0_15 to %c4 step %c1_16 {
          %c4_19 = arith.constant 4 : index
          %2 = arith.muli %arg14, %c4_19 : index
          memref.store %cst, %arg5[%1, %2] : memref<?x18xf64>
          %c1_20 = arith.constant 1 : index
          %3 = arith.addi %2, %c1_20 : index
          memref.store %cst, %arg5[%1, %3] : memref<?x18xf64>
          %c2_21 = arith.constant 2 : index
          %4 = arith.addi %2, %c2_21 : index
          memref.store %cst, %arg5[%1, %4] : memref<?x18xf64>
          %c3 = arith.constant 3 : index
          %5 = arith.addi %2, %c3 : index
          memref.store %cst, %arg5[%1, %5] : memref<?x18xf64>
        }
        %c0_17 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg14 = %c0_17 to %c2 step %c1_18 {
          %c16_19 = arith.constant 16 : index
          %2 = arith.addi %arg14, %c16_19 : index
          memref.store %cst, %arg5[%1, %2] : memref<?x18xf64>
        }
      }
      scf.reduce 
    }
    %c0_10 = arith.constant 0 : index
    %c1_11 = arith.constant 1 : index
    %c1_12 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0_10) to (%c1_11) step (%c1_12) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg12, %c32 : index
      %c0_13 = arith.constant 0 : index
      %c2 = arith.constant 2 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg13 = %c0_13 to %c2 step %c1_14 {
        %1 = arith.addi %0, %arg13 : index
        %c0_15 = arith.constant 0 : index
        %c32_16 = arith.constant 32 : index
        %2 = arith.muli %arg12, %c32_16 : index
        %3 = arith.addi %arg13, %2 : index
        %4 = arith.cmpi eq, %3, %c0_15 : index
        scf.if %4 {
          %c0_19 = arith.constant 0 : index
          %c16 = arith.constant 16 : index
          %c1_20 = arith.constant 1 : index
          scf.for %arg14 = %c0_19 to %c16 step %c1_20 {
            %c0_21 = arith.constant 0 : index
            %c18 = arith.constant 18 : index
            %c1_22 = arith.constant 1 : index
            scf.for %arg15 = %c0_21 to %c18 step %c1_22 {
              %c0_23 = arith.constant 0 : index
              %c5 = arith.constant 5 : index
              %c1_24 = arith.constant 1 : index
              scf.for %arg16 = %c0_23 to %c5 step %c1_24 {
                %c4 = arith.constant 4 : index
                %21 = arith.muli %arg16, %c4 : index
                %22 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %23 = memref.load %arg6[%arg14, %21] : memref<?x20xf64>
                %24 = memref.load %arg7[%21, %arg15] : memref<?x18xf64>
                %25 = arith.mulf %23, %24 : f64
                %26 = arith.addf %22, %25 : f64
                memref.store %26, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c1_29 = arith.constant 1 : index
                %27 = arith.addi %21, %c1_29 : index
                %28 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %29 = memref.load %arg6[%arg14, %27] : memref<?x20xf64>
                %30 = memref.load %arg7[%27, %arg15] : memref<?x18xf64>
                %31 = arith.mulf %29, %30 : f64
                %32 = arith.addf %28, %31 : f64
                memref.store %32, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c2_30 = arith.constant 2 : index
                %33 = arith.addi %21, %c2_30 : index
                %34 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %35 = memref.load %arg6[%arg14, %33] : memref<?x20xf64>
                %36 = memref.load %arg7[%33, %arg15] : memref<?x18xf64>
                %37 = arith.mulf %35, %36 : f64
                %38 = arith.addf %34, %37 : f64
                memref.store %38, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c3_31 = arith.constant 3 : index
                %39 = arith.addi %21, %c3_31 : index
                %40 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %41 = memref.load %arg6[%arg14, %39] : memref<?x20xf64>
                %42 = memref.load %arg7[%39, %arg15] : memref<?x18xf64>
                %43 = arith.mulf %41, %42 : f64
                %44 = arith.addf %40, %43 : f64
                memref.store %44, %arg5[%arg14, %arg15] : memref<?x18xf64>
              }
              %9 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %10 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %11 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %12 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %c0_25 = arith.constant 0 : index
              %c3 = arith.constant 3 : index
              %c1_26 = arith.constant 1 : index
              scf.for %arg16 = %c0_25 to %c3 step %c1_26 {
                %c4 = arith.constant 4 : index
                %21 = arith.muli %arg16, %c4 : index
                %c19 = arith.constant 19 : index
                %22 = arith.addi %21, %c19 : index
                %c-19_29 = arith.constant -19 : index
                %23 = arith.addi %22, %c-19_29 : index
                %24 = memref.load %arg11[%arg14, %23] : memref<?x22xf64>
                %c-19_30 = arith.constant -19 : index
                %25 = arith.addi %22, %c-19_30 : index
                %26 = memref.load %arg8[%arg15, %25] : memref<?x22xf64>
                %27 = arith.mulf %9, %26 : f64
                %28 = arith.addf %24, %27 : f64
                %c-19_31 = arith.constant -19 : index
                %29 = arith.addi %22, %c-19_31 : index
                memref.store %28, %arg11[%arg14, %29] : memref<?x22xf64>
                %c1_32 = arith.constant 1 : index
                %30 = arith.addi %22, %c1_32 : index
                %c-19_33 = arith.constant -19 : index
                %31 = arith.addi %30, %c-19_33 : index
                %32 = memref.load %arg11[%arg14, %31] : memref<?x22xf64>
                %c-19_34 = arith.constant -19 : index
                %33 = arith.addi %30, %c-19_34 : index
                %34 = memref.load %arg8[%arg15, %33] : memref<?x22xf64>
                %35 = arith.mulf %10, %34 : f64
                %36 = arith.addf %32, %35 : f64
                %c-19_35 = arith.constant -19 : index
                %37 = arith.addi %30, %c-19_35 : index
                memref.store %36, %arg11[%arg14, %37] : memref<?x22xf64>
                %c2_36 = arith.constant 2 : index
                %38 = arith.addi %22, %c2_36 : index
                %c-19_37 = arith.constant -19 : index
                %39 = arith.addi %38, %c-19_37 : index
                %40 = memref.load %arg11[%arg14, %39] : memref<?x22xf64>
                %c-19_38 = arith.constant -19 : index
                %41 = arith.addi %38, %c-19_38 : index
                %42 = memref.load %arg8[%arg15, %41] : memref<?x22xf64>
                %43 = arith.mulf %11, %42 : f64
                %44 = arith.addf %40, %43 : f64
                %c-19_39 = arith.constant -19 : index
                %45 = arith.addi %38, %c-19_39 : index
                memref.store %44, %arg11[%arg14, %45] : memref<?x22xf64>
                %c3_40 = arith.constant 3 : index
                %46 = arith.addi %22, %c3_40 : index
                %c-19_41 = arith.constant -19 : index
                %47 = arith.addi %46, %c-19_41 : index
                %48 = memref.load %arg11[%arg14, %47] : memref<?x22xf64>
                %c-19_42 = arith.constant -19 : index
                %49 = arith.addi %46, %c-19_42 : index
                %50 = memref.load %arg8[%arg15, %49] : memref<?x22xf64>
                %51 = arith.mulf %12, %50 : f64
                %52 = arith.addf %48, %51 : f64
                %c-19_43 = arith.constant -19 : index
                %53 = arith.addi %46, %c-19_43 : index
                memref.store %52, %arg11[%arg14, %53] : memref<?x22xf64>
              }
              %c-19 = arith.constant -19 : index
              %13 = arith.addi %c31, %c-19 : index
              %14 = memref.load %arg11[%arg14, %13] : memref<?x22xf64>
              %15 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %c-19_27 = arith.constant -19 : index
              %16 = arith.addi %c31, %c-19_27 : index
              %17 = memref.load %arg8[%arg15, %16] : memref<?x22xf64>
              %18 = arith.mulf %15, %17 : f64
              %19 = arith.addf %14, %18 : f64
              %c-19_28 = arith.constant -19 : index
              %20 = arith.addi %c31, %c-19_28 : index
              memref.store %19, %arg11[%arg14, %20] : memref<?x22xf64>
            }
          }
        }
        %c0_17 = arith.constant 0 : index
        %c32_18 = arith.constant 32 : index
        %5 = arith.muli %arg12, %c32_18 : index
        %6 = arith.addi %arg13, %5 : index
        %c-1 = arith.constant -1 : index
        %7 = arith.addi %6, %c-1 : index
        %8 = arith.cmpi eq, %7, %c0_17 : index
        scf.if %8 {
          %c0_19 = arith.constant 0 : index
          %c16 = arith.constant 16 : index
          %c1_20 = arith.constant 1 : index
          scf.for %arg14 = %c0_19 to %c16 step %c1_20 {
            %c0_21 = arith.constant 0 : index
            %c18 = arith.constant 18 : index
            %c1_22 = arith.constant 1 : index
            scf.for %arg15 = %c0_21 to %c18 step %c1_22 {
              %9 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %10 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %11 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %12 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %c0_23 = arith.constant 0 : index
              %c2_24 = arith.constant 2 : index
              %c1_25 = arith.constant 1 : index
              scf.for %arg16 = %c0_23 to %c2_24 step %c1_25 {
                %c4 = arith.constant 4 : index
                %21 = arith.muli %arg16, %c4 : index
                %c32_28 = arith.constant 32 : index
                %22 = arith.addi %21, %c32_28 : index
                %c-19_29 = arith.constant -19 : index
                %23 = arith.addi %22, %c-19_29 : index
                %24 = memref.load %arg11[%arg14, %23] : memref<?x22xf64>
                %c-19_30 = arith.constant -19 : index
                %25 = arith.addi %22, %c-19_30 : index
                %26 = memref.load %arg8[%arg15, %25] : memref<?x22xf64>
                %27 = arith.mulf %9, %26 : f64
                %28 = arith.addf %24, %27 : f64
                %c-19_31 = arith.constant -19 : index
                %29 = arith.addi %22, %c-19_31 : index
                memref.store %28, %arg11[%arg14, %29] : memref<?x22xf64>
                %c1_32 = arith.constant 1 : index
                %30 = arith.addi %22, %c1_32 : index
                %c-19_33 = arith.constant -19 : index
                %31 = arith.addi %30, %c-19_33 : index
                %32 = memref.load %arg11[%arg14, %31] : memref<?x22xf64>
                %c-19_34 = arith.constant -19 : index
                %33 = arith.addi %30, %c-19_34 : index
                %34 = memref.load %arg8[%arg15, %33] : memref<?x22xf64>
                %35 = arith.mulf %10, %34 : f64
                %36 = arith.addf %32, %35 : f64
                %c-19_35 = arith.constant -19 : index
                %37 = arith.addi %30, %c-19_35 : index
                memref.store %36, %arg11[%arg14, %37] : memref<?x22xf64>
                %c2_36 = arith.constant 2 : index
                %38 = arith.addi %22, %c2_36 : index
                %c-19_37 = arith.constant -19 : index
                %39 = arith.addi %38, %c-19_37 : index
                %40 = memref.load %arg11[%arg14, %39] : memref<?x22xf64>
                %c-19_38 = arith.constant -19 : index
                %41 = arith.addi %38, %c-19_38 : index
                %42 = memref.load %arg8[%arg15, %41] : memref<?x22xf64>
                %43 = arith.mulf %11, %42 : f64
                %44 = arith.addf %40, %43 : f64
                %c-19_39 = arith.constant -19 : index
                %45 = arith.addi %38, %c-19_39 : index
                memref.store %44, %arg11[%arg14, %45] : memref<?x22xf64>
                %c3 = arith.constant 3 : index
                %46 = arith.addi %22, %c3 : index
                %c-19_40 = arith.constant -19 : index
                %47 = arith.addi %46, %c-19_40 : index
                %48 = memref.load %arg11[%arg14, %47] : memref<?x22xf64>
                %c-19_41 = arith.constant -19 : index
                %49 = arith.addi %46, %c-19_41 : index
                %50 = memref.load %arg8[%arg15, %49] : memref<?x22xf64>
                %51 = arith.mulf %12, %50 : f64
                %52 = arith.addf %48, %51 : f64
                %c-19_42 = arith.constant -19 : index
                %53 = arith.addi %46, %c-19_42 : index
                memref.store %52, %arg11[%arg14, %53] : memref<?x22xf64>
              }
              %c-19 = arith.constant -19 : index
              %13 = arith.addi %c40, %c-19 : index
              %14 = memref.load %arg11[%arg14, %13] : memref<?x22xf64>
              %15 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %c-19_26 = arith.constant -19 : index
              %16 = arith.addi %c40, %c-19_26 : index
              %17 = memref.load %arg8[%arg15, %16] : memref<?x22xf64>
              %18 = arith.mulf %15, %17 : f64
              %19 = arith.addf %14, %18 : f64
              %c-19_27 = arith.constant -19 : index
              %20 = arith.addi %c40, %c-19_27 : index
              memref.store %19, %arg11[%arg14, %20] : memref<?x22xf64>
            }
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

