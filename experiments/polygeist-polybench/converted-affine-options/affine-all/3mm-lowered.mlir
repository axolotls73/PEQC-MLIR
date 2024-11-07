module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %c40 = arith.constant 40 : index
    %c31 = arith.constant 31 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0) to (%c16) step (%c1) {
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      %c1_12 = arith.constant 1 : index
      scf.parallel (%arg13) = (%c0_10) to (%c1_11) step (%c1_12) {
        %0 = arith.addi %arg12, %arg13 : index
        %c0_13 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_14 = arith.constant 1 : index
        scf.parallel (%arg14) = (%c0_13) to (%c5) step (%c1_14) {
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
          scf.reduce 
        }
        %c0_15 = arith.constant 0 : index
        %c2_16 = arith.constant 2 : index
        %c1_17 = arith.constant 1 : index
        scf.parallel (%arg14) = (%c0_15) to (%c2_16) step (%c1_17) {
          %c20 = arith.constant 20 : index
          %1 = arith.addi %arg14, %c20 : index
          memref.store %cst, %arg11[%0, %1] : memref<?x22xf64>
          memref.store %cst, %arg8[%0, %1] : memref<?x22xf64>
          scf.reduce 
        }
        scf.reduce 
      }
      scf.reduce 
    }
    %c0_0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_1 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0_0) to (%c2) step (%c1_1) {
      %c16_10 = arith.constant 16 : index
      %0 = arith.addi %arg12, %c16_10 : index
      %c0_11 = arith.constant 0 : index
      %c1_12 = arith.constant 1 : index
      %c1_13 = arith.constant 1 : index
      scf.parallel (%arg13) = (%c0_11) to (%c1_12) step (%c1_13) {
        %1 = arith.addi %0, %arg13 : index
        %c0_14 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_15 = arith.constant 1 : index
        scf.parallel (%arg14) = (%c0_14) to (%c5) step (%c1_15) {
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
          scf.reduce 
        }
        %c0_16 = arith.constant 0 : index
        %c2_17 = arith.constant 2 : index
        %c1_18 = arith.constant 1 : index
        scf.parallel (%arg14) = (%c0_16) to (%c2_17) step (%c1_18) {
          %c20 = arith.constant 20 : index
          %2 = arith.addi %arg14, %c20 : index
          memref.store %cst, %arg8[%1, %2] : memref<?x22xf64>
          scf.reduce 
        }
        scf.reduce 
      }
      scf.reduce 
    }
    %c0_2 = arith.constant 0 : index
    %c18 = arith.constant 18 : index
    %c1_3 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0_2) to (%c18) step (%c1_3) {
      %c0_10 = arith.constant 0 : index
      %c24 = arith.constant 24 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg13 = %c0_10 to %c24 step %c1_11 {
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c1_14 = arith.constant 1 : index
        scf.parallel (%arg14) = (%c0_12) to (%c1_13) step (%c1_14) {
          %0 = arith.addi %arg12, %arg14 : index
          %c0_15 = arith.constant 0 : index
          %c1_16 = arith.constant 1 : index
          %c1_17 = arith.constant 1 : index
          scf.parallel (%arg15) = (%c0_15) to (%c1_16) step (%c1_17) {
            %1 = arith.addi %arg13, %arg15 : index
            %c0_18 = arith.constant 0 : index
            %c5 = arith.constant 5 : index
            %c1_19 = arith.constant 1 : index
            scf.parallel (%arg16) = (%c0_18) to (%c5) step (%c1_19) {
              %c4 = arith.constant 4 : index
              %2 = arith.muli %arg16, %c4 : index
              %3 = memref.load %arg8[%0, %2] : memref<?x22xf64>
              %4 = memref.load %arg9[%0, %1] : memref<?x24xf64>
              %5 = memref.load %arg10[%1, %2] : memref<?x22xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = arith.addf %3, %6 : f64
              memref.store %7, %arg8[%0, %2] : memref<?x22xf64>
              %c1_23 = arith.constant 1 : index
              %8 = arith.addi %2, %c1_23 : index
              %9 = memref.load %arg8[%0, %8] : memref<?x22xf64>
              %10 = memref.load %arg9[%0, %1] : memref<?x24xf64>
              %11 = memref.load %arg10[%1, %8] : memref<?x22xf64>
              %12 = arith.mulf %10, %11 : f64
              %13 = arith.addf %9, %12 : f64
              memref.store %13, %arg8[%0, %8] : memref<?x22xf64>
              %c2_24 = arith.constant 2 : index
              %14 = arith.addi %2, %c2_24 : index
              %15 = memref.load %arg8[%0, %14] : memref<?x22xf64>
              %16 = memref.load %arg9[%0, %1] : memref<?x24xf64>
              %17 = memref.load %arg10[%1, %14] : memref<?x22xf64>
              %18 = arith.mulf %16, %17 : f64
              %19 = arith.addf %15, %18 : f64
              memref.store %19, %arg8[%0, %14] : memref<?x22xf64>
              %c3 = arith.constant 3 : index
              %20 = arith.addi %2, %c3 : index
              %21 = memref.load %arg8[%0, %20] : memref<?x22xf64>
              %22 = memref.load %arg9[%0, %1] : memref<?x24xf64>
              %23 = memref.load %arg10[%1, %20] : memref<?x22xf64>
              %24 = arith.mulf %22, %23 : f64
              %25 = arith.addf %21, %24 : f64
              memref.store %25, %arg8[%0, %20] : memref<?x22xf64>
              scf.reduce 
            }
            %c0_20 = arith.constant 0 : index
            %c2_21 = arith.constant 2 : index
            %c1_22 = arith.constant 1 : index
            scf.parallel (%arg16) = (%c0_20) to (%c2_21) step (%c1_22) {
              %c20 = arith.constant 20 : index
              %2 = arith.addi %arg16, %c20 : index
              %3 = memref.load %arg8[%0, %2] : memref<?x22xf64>
              %4 = memref.load %arg9[%0, %1] : memref<?x24xf64>
              %5 = memref.load %arg10[%1, %2] : memref<?x22xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = arith.addf %3, %6 : f64
              memref.store %7, %arg8[%0, %2] : memref<?x22xf64>
              scf.reduce 
            }
            scf.reduce 
          }
          scf.reduce 
        }
      }
      scf.reduce 
    }
    %c0_4 = arith.constant 0 : index
    %c16_5 = arith.constant 16 : index
    %c1_6 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0_4) to (%c16_5) step (%c1_6) {
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      %c1_12 = arith.constant 1 : index
      scf.parallel (%arg13) = (%c0_10) to (%c1_11) step (%c1_12) {
        %0 = arith.addi %arg12, %arg13 : index
        %c0_13 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c1_14 = arith.constant 1 : index
        scf.parallel (%arg14) = (%c0_13) to (%c4) step (%c1_14) {
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
          scf.reduce 
        }
        %c0_15 = arith.constant 0 : index
        %c2_16 = arith.constant 2 : index
        %c1_17 = arith.constant 1 : index
        scf.parallel (%arg14) = (%c0_15) to (%c2_16) step (%c1_17) {
          %c16_18 = arith.constant 16 : index
          %1 = arith.addi %arg14, %c16_18 : index
          memref.store %cst, %arg5[%0, %1] : memref<?x18xf64>
          scf.reduce 
        }
        scf.reduce 
      }
      scf.reduce 
    }
    %c0_7 = arith.constant 0 : index
    %c2_8 = arith.constant 2 : index
    %c1_9 = arith.constant 1 : index
    scf.for %arg12 = %c0_7 to %c2_8 step %c1_9 {
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      %c1_12 = arith.constant 1 : index
      scf.parallel (%arg13) = (%c0_10) to (%c1_11) step (%c1_12) {
        %0 = arith.addi %arg12, %arg13 : index
        %c0_13 = arith.constant 0 : index
        %1 = arith.addi %arg12, %arg13 : index
        %2 = arith.cmpi eq, %1, %c0_13 : index
        scf.if %2 {
          %c0_15 = arith.constant 0 : index
          %c16_16 = arith.constant 16 : index
          %c1_17 = arith.constant 1 : index
          scf.parallel (%arg14) = (%c0_15) to (%c16_16) step (%c1_17) {
            %c0_18 = arith.constant 0 : index
            %c18_19 = arith.constant 18 : index
            %c1_20 = arith.constant 1 : index
            scf.for %arg15 = %c0_18 to %c18_19 step %c1_20 {
              %c0_21 = arith.constant 0 : index
              %c5 = arith.constant 5 : index
              %c1_22 = arith.constant 1 : index
              scf.for %arg16 = %c0_21 to %c5 step %c1_22 {
                %c4 = arith.constant 4 : index
                %14 = arith.muli %arg16, %c4 : index
                %15 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %16 = memref.load %arg6[%arg14, %14] : memref<?x20xf64>
                %17 = memref.load %arg7[%14, %arg15] : memref<?x18xf64>
                %18 = arith.mulf %16, %17 : f64
                %19 = arith.addf %15, %18 : f64
                memref.store %19, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c1_27 = arith.constant 1 : index
                %20 = arith.addi %14, %c1_27 : index
                %21 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %22 = memref.load %arg6[%arg14, %20] : memref<?x20xf64>
                %23 = memref.load %arg7[%20, %arg15] : memref<?x18xf64>
                %24 = arith.mulf %22, %23 : f64
                %25 = arith.addf %21, %24 : f64
                memref.store %25, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c2_28 = arith.constant 2 : index
                %26 = arith.addi %14, %c2_28 : index
                %27 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %28 = memref.load %arg6[%arg14, %26] : memref<?x20xf64>
                %29 = memref.load %arg7[%26, %arg15] : memref<?x18xf64>
                %30 = arith.mulf %28, %29 : f64
                %31 = arith.addf %27, %30 : f64
                memref.store %31, %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c3_29 = arith.constant 3 : index
                %32 = arith.addi %14, %c3_29 : index
                %33 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %34 = memref.load %arg6[%arg14, %32] : memref<?x20xf64>
                %35 = memref.load %arg7[%32, %arg15] : memref<?x18xf64>
                %36 = arith.mulf %34, %35 : f64
                %37 = arith.addf %33, %36 : f64
                memref.store %37, %arg5[%arg14, %arg15] : memref<?x18xf64>
              }
              %c0_23 = arith.constant 0 : index
              %c3 = arith.constant 3 : index
              %c1_24 = arith.constant 1 : index
              scf.parallel (%arg16) = (%c0_23) to (%c3) step (%c1_24) {
                %c4 = arith.constant 4 : index
                %14 = arith.muli %arg16, %c4 : index
                %c19 = arith.constant 19 : index
                %15 = arith.addi %14, %c19 : index
                %c-19_27 = arith.constant -19 : index
                %16 = arith.addi %15, %c-19_27 : index
                %17 = memref.load %arg11[%arg14, %16] : memref<?x22xf64>
                %18 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c-19_28 = arith.constant -19 : index
                %19 = arith.addi %15, %c-19_28 : index
                %20 = memref.load %arg8[%arg15, %19] : memref<?x22xf64>
                %21 = arith.mulf %18, %20 : f64
                %22 = arith.addf %17, %21 : f64
                %c-19_29 = arith.constant -19 : index
                %23 = arith.addi %15, %c-19_29 : index
                memref.store %22, %arg11[%arg14, %23] : memref<?x22xf64>
                %c1_30 = arith.constant 1 : index
                %24 = arith.addi %15, %c1_30 : index
                %c-19_31 = arith.constant -19 : index
                %25 = arith.addi %24, %c-19_31 : index
                %26 = memref.load %arg11[%arg14, %25] : memref<?x22xf64>
                %27 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c-19_32 = arith.constant -19 : index
                %28 = arith.addi %24, %c-19_32 : index
                %29 = memref.load %arg8[%arg15, %28] : memref<?x22xf64>
                %30 = arith.mulf %27, %29 : f64
                %31 = arith.addf %26, %30 : f64
                %c-19_33 = arith.constant -19 : index
                %32 = arith.addi %24, %c-19_33 : index
                memref.store %31, %arg11[%arg14, %32] : memref<?x22xf64>
                %c2_34 = arith.constant 2 : index
                %33 = arith.addi %15, %c2_34 : index
                %c-19_35 = arith.constant -19 : index
                %34 = arith.addi %33, %c-19_35 : index
                %35 = memref.load %arg11[%arg14, %34] : memref<?x22xf64>
                %36 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c-19_36 = arith.constant -19 : index
                %37 = arith.addi %33, %c-19_36 : index
                %38 = memref.load %arg8[%arg15, %37] : memref<?x22xf64>
                %39 = arith.mulf %36, %38 : f64
                %40 = arith.addf %35, %39 : f64
                %c-19_37 = arith.constant -19 : index
                %41 = arith.addi %33, %c-19_37 : index
                memref.store %40, %arg11[%arg14, %41] : memref<?x22xf64>
                %c3_38 = arith.constant 3 : index
                %42 = arith.addi %15, %c3_38 : index
                %c-19_39 = arith.constant -19 : index
                %43 = arith.addi %42, %c-19_39 : index
                %44 = memref.load %arg11[%arg14, %43] : memref<?x22xf64>
                %45 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c-19_40 = arith.constant -19 : index
                %46 = arith.addi %42, %c-19_40 : index
                %47 = memref.load %arg8[%arg15, %46] : memref<?x22xf64>
                %48 = arith.mulf %45, %47 : f64
                %49 = arith.addf %44, %48 : f64
                %c-19_41 = arith.constant -19 : index
                %50 = arith.addi %42, %c-19_41 : index
                memref.store %49, %arg11[%arg14, %50] : memref<?x22xf64>
                scf.reduce 
              }
              %c-19 = arith.constant -19 : index
              %6 = arith.addi %c31, %c-19 : index
              %7 = memref.load %arg11[%arg14, %6] : memref<?x22xf64>
              %8 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %c-19_25 = arith.constant -19 : index
              %9 = arith.addi %c31, %c-19_25 : index
              %10 = memref.load %arg8[%arg15, %9] : memref<?x22xf64>
              %11 = arith.mulf %8, %10 : f64
              %12 = arith.addf %7, %11 : f64
              %c-19_26 = arith.constant -19 : index
              %13 = arith.addi %c31, %c-19_26 : index
              memref.store %12, %arg11[%arg14, %13] : memref<?x22xf64>
            }
            scf.reduce 
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
          scf.parallel (%arg14) = (%c0_15) to (%c16_16) step (%c1_17) {
            %c0_18 = arith.constant 0 : index
            %c18_19 = arith.constant 18 : index
            %c1_20 = arith.constant 1 : index
            scf.for %arg15 = %c0_18 to %c18_19 step %c1_20 {
              %c0_21 = arith.constant 0 : index
              %c2_22 = arith.constant 2 : index
              %c1_23 = arith.constant 1 : index
              scf.parallel (%arg16) = (%c0_21) to (%c2_22) step (%c1_23) {
                %c4 = arith.constant 4 : index
                %14 = arith.muli %arg16, %c4 : index
                %c32 = arith.constant 32 : index
                %15 = arith.addi %14, %c32 : index
                %c-19_26 = arith.constant -19 : index
                %16 = arith.addi %15, %c-19_26 : index
                %17 = memref.load %arg11[%arg14, %16] : memref<?x22xf64>
                %18 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c-19_27 = arith.constant -19 : index
                %19 = arith.addi %15, %c-19_27 : index
                %20 = memref.load %arg8[%arg15, %19] : memref<?x22xf64>
                %21 = arith.mulf %18, %20 : f64
                %22 = arith.addf %17, %21 : f64
                %c-19_28 = arith.constant -19 : index
                %23 = arith.addi %15, %c-19_28 : index
                memref.store %22, %arg11[%arg14, %23] : memref<?x22xf64>
                %c1_29 = arith.constant 1 : index
                %24 = arith.addi %15, %c1_29 : index
                %c-19_30 = arith.constant -19 : index
                %25 = arith.addi %24, %c-19_30 : index
                %26 = memref.load %arg11[%arg14, %25] : memref<?x22xf64>
                %27 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c-19_31 = arith.constant -19 : index
                %28 = arith.addi %24, %c-19_31 : index
                %29 = memref.load %arg8[%arg15, %28] : memref<?x22xf64>
                %30 = arith.mulf %27, %29 : f64
                %31 = arith.addf %26, %30 : f64
                %c-19_32 = arith.constant -19 : index
                %32 = arith.addi %24, %c-19_32 : index
                memref.store %31, %arg11[%arg14, %32] : memref<?x22xf64>
                %c2_33 = arith.constant 2 : index
                %33 = arith.addi %15, %c2_33 : index
                %c-19_34 = arith.constant -19 : index
                %34 = arith.addi %33, %c-19_34 : index
                %35 = memref.load %arg11[%arg14, %34] : memref<?x22xf64>
                %36 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c-19_35 = arith.constant -19 : index
                %37 = arith.addi %33, %c-19_35 : index
                %38 = memref.load %arg8[%arg15, %37] : memref<?x22xf64>
                %39 = arith.mulf %36, %38 : f64
                %40 = arith.addf %35, %39 : f64
                %c-19_36 = arith.constant -19 : index
                %41 = arith.addi %33, %c-19_36 : index
                memref.store %40, %arg11[%arg14, %41] : memref<?x22xf64>
                %c3 = arith.constant 3 : index
                %42 = arith.addi %15, %c3 : index
                %c-19_37 = arith.constant -19 : index
                %43 = arith.addi %42, %c-19_37 : index
                %44 = memref.load %arg11[%arg14, %43] : memref<?x22xf64>
                %45 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
                %c-19_38 = arith.constant -19 : index
                %46 = arith.addi %42, %c-19_38 : index
                %47 = memref.load %arg8[%arg15, %46] : memref<?x22xf64>
                %48 = arith.mulf %45, %47 : f64
                %49 = arith.addf %44, %48 : f64
                %c-19_39 = arith.constant -19 : index
                %50 = arith.addi %42, %c-19_39 : index
                memref.store %49, %arg11[%arg14, %50] : memref<?x22xf64>
                scf.reduce 
              }
              %c-19 = arith.constant -19 : index
              %6 = arith.addi %c40, %c-19 : index
              %7 = memref.load %arg11[%arg14, %6] : memref<?x22xf64>
              %8 = memref.load %arg5[%arg14, %arg15] : memref<?x18xf64>
              %c-19_24 = arith.constant -19 : index
              %9 = arith.addi %c40, %c-19_24 : index
              %10 = memref.load %arg8[%arg15, %9] : memref<?x22xf64>
              %11 = arith.mulf %8, %10 : f64
              %12 = arith.addf %7, %11 : f64
              %c-19_25 = arith.constant -19 : index
              %13 = arith.addi %c40, %c-19_25 : index
              memref.store %12, %arg11[%arg14, %13] : memref<?x22xf64>
            }
            scf.reduce 
          }
        }
        scf.reduce 
      }
    }
    return
  }
}

