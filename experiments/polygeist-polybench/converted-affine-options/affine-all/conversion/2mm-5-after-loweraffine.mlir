module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c44 = arith.constant 44 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.parallel (%arg11) = (%c0) to (%c16) step (%c1) {
      %c19 = arith.constant 19 : index
      %c20 = arith.constant 20 : index
      %c21 = arith.constant 21 : index
      %c0_2 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg12 = %c0_2 to %c1_3 step %c1_4 {
        %0 = arith.addi %arg11, %arg12 : index
        %c0_5 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg13 = %c0_5 to %c4 step %c1_6 {
          %c4_13 = arith.constant 4 : index
          %9 = arith.muli %arg13, %c4_13 : index
          %10 = memref.load %arg10[%0, %9] : memref<?x24xf64>
          %11 = arith.mulf %10, %arg5 : f64
          memref.store %11, %arg10[%0, %9] : memref<?x24xf64>
          memref.store %cst, %arg6[%0, %9] : memref<?x18xf64>
          %c1_14 = arith.constant 1 : index
          %12 = arith.addi %9, %c1_14 : index
          %13 = memref.load %arg10[%0, %12] : memref<?x24xf64>
          %14 = arith.mulf %13, %arg5 : f64
          memref.store %14, %arg10[%0, %12] : memref<?x24xf64>
          memref.store %cst, %arg6[%0, %12] : memref<?x18xf64>
          %c2_15 = arith.constant 2 : index
          %15 = arith.addi %9, %c2_15 : index
          %16 = memref.load %arg10[%0, %15] : memref<?x24xf64>
          %17 = arith.mulf %16, %arg5 : f64
          memref.store %17, %arg10[%0, %15] : memref<?x24xf64>
          memref.store %cst, %arg6[%0, %15] : memref<?x18xf64>
          %c3 = arith.constant 3 : index
          %18 = arith.addi %9, %c3 : index
          %19 = memref.load %arg10[%0, %18] : memref<?x24xf64>
          %20 = arith.mulf %19, %arg5 : f64
          memref.store %20, %arg10[%0, %18] : memref<?x24xf64>
          memref.store %cst, %arg6[%0, %18] : memref<?x18xf64>
        }
        %c0_7 = arith.constant 0 : index
        %c2_8 = arith.constant 2 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg13 = %c0_7 to %c2_8 step %c1_9 {
          %c16_13 = arith.constant 16 : index
          %9 = arith.addi %arg13, %c16_13 : index
          %10 = memref.load %arg10[%0, %9] : memref<?x24xf64>
          %11 = arith.mulf %10, %arg5 : f64
          memref.store %11, %arg10[%0, %9] : memref<?x24xf64>
          memref.store %cst, %arg6[%0, %9] : memref<?x18xf64>
        }
        %1 = memref.load %arg10[%0, %c18] : memref<?x24xf64>
        %2 = arith.mulf %1, %arg5 : f64
        memref.store %2, %arg10[%0, %c18] : memref<?x24xf64>
        %3 = memref.load %arg10[%0, %c19] : memref<?x24xf64>
        %4 = arith.mulf %3, %arg5 : f64
        memref.store %4, %arg10[%0, %c19] : memref<?x24xf64>
        %5 = memref.load %arg10[%0, %c20] : memref<?x24xf64>
        %6 = arith.mulf %5, %arg5 : f64
        memref.store %6, %arg10[%0, %c20] : memref<?x24xf64>
        %7 = memref.load %arg10[%0, %c21] : memref<?x24xf64>
        %8 = arith.mulf %7, %arg5 : f64
        memref.store %8, %arg10[%0, %c21] : memref<?x24xf64>
        %c0_10 = arith.constant 0 : index
        %c2_11 = arith.constant 2 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg13 = %c0_10 to %c2_11 step %c1_12 {
          %c22 = arith.constant 22 : index
          %9 = arith.addi %arg13, %c22 : index
          %10 = memref.load %arg10[%0, %9] : memref<?x24xf64>
          %11 = arith.mulf %10, %arg5 : f64
          memref.store %11, %arg10[%0, %9] : memref<?x24xf64>
        }
      }
      scf.reduce 
    }
    %c0_0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg11 = %c0_0 to %c2 step %c1_1 {
      %c0_2 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      %c1_4 = arith.constant 1 : index
      scf.parallel (%arg12) = (%c0_2) to (%c1_3) step (%c1_4) {
        %0 = arith.addi %arg11, %arg12 : index
        %c0_5 = arith.constant 0 : index
        %1 = arith.addi %arg11, %arg12 : index
        %2 = arith.cmpi eq, %1, %c0_5 : index
        scf.if %2 {
          %c0_7 = arith.constant 0 : index
          %c16_8 = arith.constant 16 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg13 = %c0_7 to %c16_8 step %c1_9 {
            %c0_10 = arith.constant 0 : index
            %c18_11 = arith.constant 18 : index
            %c1_12 = arith.constant 1 : index
            scf.for %arg14 = %c0_10 to %c18_11 step %c1_12 {
              %c0_13 = arith.constant 0 : index
              %c5 = arith.constant 5 : index
              %c1_14 = arith.constant 1 : index
              scf.for %arg15 = %c0_13 to %c5 step %c1_14 {
                %c4 = arith.constant 4 : index
                %11 = arith.muli %arg15, %c4 : index
                %12 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %13 = memref.load %arg7[%arg13, %11] : memref<?x22xf64>
                %14 = arith.mulf %arg4, %13 : f64
                %15 = memref.load %arg8[%11, %arg14] : memref<?x18xf64>
                %16 = arith.mulf %14, %15 : f64
                %17 = arith.addf %12, %16 : f64
                memref.store %17, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %c1_23 = arith.constant 1 : index
                %18 = arith.addi %11, %c1_23 : index
                %19 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %20 = memref.load %arg7[%arg13, %18] : memref<?x22xf64>
                %21 = arith.mulf %arg4, %20 : f64
                %22 = memref.load %arg8[%18, %arg14] : memref<?x18xf64>
                %23 = arith.mulf %21, %22 : f64
                %24 = arith.addf %19, %23 : f64
                memref.store %24, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %c2_24 = arith.constant 2 : index
                %25 = arith.addi %11, %c2_24 : index
                %26 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %27 = memref.load %arg7[%arg13, %25] : memref<?x22xf64>
                %28 = arith.mulf %arg4, %27 : f64
                %29 = memref.load %arg8[%25, %arg14] : memref<?x18xf64>
                %30 = arith.mulf %28, %29 : f64
                %31 = arith.addf %26, %30 : f64
                memref.store %31, %arg6[%arg13, %arg14] : memref<?x18xf64>
                %c3_25 = arith.constant 3 : index
                %32 = arith.addi %11, %c3_25 : index
                %33 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %34 = memref.load %arg7[%arg13, %32] : memref<?x22xf64>
                %35 = arith.mulf %arg4, %34 : f64
                %36 = memref.load %arg8[%32, %arg14] : memref<?x18xf64>
                %37 = arith.mulf %35, %36 : f64
                %38 = arith.addf %33, %37 : f64
                memref.store %38, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              %c0_15 = arith.constant 0 : index
              %c2_16 = arith.constant 2 : index
              %c1_17 = arith.constant 1 : index
              scf.for %arg15 = %c0_15 to %c2_16 step %c1_17 {
                %c20 = arith.constant 20 : index
                %11 = arith.addi %arg15, %c20 : index
                %12 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
                %13 = memref.load %arg7[%arg13, %11] : memref<?x22xf64>
                %14 = arith.mulf %arg4, %13 : f64
                %15 = memref.load %arg8[%11, %arg14] : memref<?x18xf64>
                %16 = arith.mulf %14, %15 : f64
                %17 = arith.addf %12, %16 : f64
                memref.store %17, %arg6[%arg13, %arg14] : memref<?x18xf64>
              }
              %6 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %7 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %8 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %9 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %c0_18 = arith.constant 0 : index
              %c2_19 = arith.constant 2 : index
              %c1_20 = arith.constant 1 : index
              scf.for %arg15 = %c0_18 to %c2_19 step %c1_20 {
                %c4 = arith.constant 4 : index
                %11 = arith.muli %arg15, %c4 : index
                %c21 = arith.constant 21 : index
                %12 = arith.addi %11, %c21 : index
                %c-21 = arith.constant -21 : index
                %13 = arith.addi %12, %c-21 : index
                %14 = memref.load %arg10[%arg13, %13] : memref<?x24xf64>
                %c-21_23 = arith.constant -21 : index
                %15 = arith.addi %12, %c-21_23 : index
                %16 = memref.load %arg9[%arg14, %15] : memref<?x24xf64>
                %17 = arith.mulf %6, %16 : f64
                %18 = arith.addf %14, %17 : f64
                %c-21_24 = arith.constant -21 : index
                %19 = arith.addi %12, %c-21_24 : index
                memref.store %18, %arg10[%arg13, %19] : memref<?x24xf64>
                %c1_25 = arith.constant 1 : index
                %20 = arith.addi %12, %c1_25 : index
                %c-21_26 = arith.constant -21 : index
                %21 = arith.addi %20, %c-21_26 : index
                %22 = memref.load %arg10[%arg13, %21] : memref<?x24xf64>
                %c-21_27 = arith.constant -21 : index
                %23 = arith.addi %20, %c-21_27 : index
                %24 = memref.load %arg9[%arg14, %23] : memref<?x24xf64>
                %25 = arith.mulf %7, %24 : f64
                %26 = arith.addf %22, %25 : f64
                %c-21_28 = arith.constant -21 : index
                %27 = arith.addi %20, %c-21_28 : index
                memref.store %26, %arg10[%arg13, %27] : memref<?x24xf64>
                %c2_29 = arith.constant 2 : index
                %28 = arith.addi %12, %c2_29 : index
                %c-21_30 = arith.constant -21 : index
                %29 = arith.addi %28, %c-21_30 : index
                %30 = memref.load %arg10[%arg13, %29] : memref<?x24xf64>
                %c-21_31 = arith.constant -21 : index
                %31 = arith.addi %28, %c-21_31 : index
                %32 = memref.load %arg9[%arg14, %31] : memref<?x24xf64>
                %33 = arith.mulf %8, %32 : f64
                %34 = arith.addf %30, %33 : f64
                %c-21_32 = arith.constant -21 : index
                %35 = arith.addi %28, %c-21_32 : index
                memref.store %34, %arg10[%arg13, %35] : memref<?x24xf64>
                %c3_33 = arith.constant 3 : index
                %36 = arith.addi %12, %c3_33 : index
                %c-21_34 = arith.constant -21 : index
                %37 = arith.addi %36, %c-21_34 : index
                %38 = memref.load %arg10[%arg13, %37] : memref<?x24xf64>
                %c-21_35 = arith.constant -21 : index
                %39 = arith.addi %36, %c-21_35 : index
                %40 = memref.load %arg9[%arg14, %39] : memref<?x24xf64>
                %41 = arith.mulf %9, %40 : f64
                %42 = arith.addf %38, %41 : f64
                %c-21_36 = arith.constant -21 : index
                %43 = arith.addi %36, %c-21_36 : index
                memref.store %42, %arg10[%arg13, %43] : memref<?x24xf64>
              }
              %10 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %c0_21 = arith.constant 0 : index
              %c3 = arith.constant 3 : index
              %c1_22 = arith.constant 1 : index
              scf.for %arg15 = %c0_21 to %c3 step %c1_22 {
                %c29 = arith.constant 29 : index
                %11 = arith.addi %arg15, %c29 : index
                %c-21 = arith.constant -21 : index
                %12 = arith.addi %11, %c-21 : index
                %13 = memref.load %arg10[%arg13, %12] : memref<?x24xf64>
                %c-21_23 = arith.constant -21 : index
                %14 = arith.addi %11, %c-21_23 : index
                %15 = memref.load %arg9[%arg14, %14] : memref<?x24xf64>
                %16 = arith.mulf %10, %15 : f64
                %17 = arith.addf %13, %16 : f64
                %c-21_24 = arith.constant -21 : index
                %18 = arith.addi %11, %c-21_24 : index
                memref.store %17, %arg10[%arg13, %18] : memref<?x24xf64>
              }
            }
          }
        }
        %c0_6 = arith.constant 0 : index
        %3 = arith.addi %arg11, %arg12 : index
        %c-1 = arith.constant -1 : index
        %4 = arith.addi %3, %c-1 : index
        %5 = arith.cmpi eq, %4, %c0_6 : index
        scf.if %5 {
          %c0_7 = arith.constant 0 : index
          %c16_8 = arith.constant 16 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg13 = %c0_7 to %c16_8 step %c1_9 {
            %c0_10 = arith.constant 0 : index
            %c18_11 = arith.constant 18 : index
            %c1_12 = arith.constant 1 : index
            scf.for %arg14 = %c0_10 to %c18_11 step %c1_12 {
              %6 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %7 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %8 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %9 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %c0_13 = arith.constant 0 : index
              %c3 = arith.constant 3 : index
              %c1_14 = arith.constant 1 : index
              scf.for %arg15 = %c0_13 to %c3 step %c1_14 {
                %c4 = arith.constant 4 : index
                %18 = arith.muli %arg15, %c4 : index
                %c32 = arith.constant 32 : index
                %19 = arith.addi %18, %c32 : index
                %c-21_17 = arith.constant -21 : index
                %20 = arith.addi %19, %c-21_17 : index
                %21 = memref.load %arg10[%arg13, %20] : memref<?x24xf64>
                %c-21_18 = arith.constant -21 : index
                %22 = arith.addi %19, %c-21_18 : index
                %23 = memref.load %arg9[%arg14, %22] : memref<?x24xf64>
                %24 = arith.mulf %6, %23 : f64
                %25 = arith.addf %21, %24 : f64
                %c-21_19 = arith.constant -21 : index
                %26 = arith.addi %19, %c-21_19 : index
                memref.store %25, %arg10[%arg13, %26] : memref<?x24xf64>
                %c1_20 = arith.constant 1 : index
                %27 = arith.addi %19, %c1_20 : index
                %c-21_21 = arith.constant -21 : index
                %28 = arith.addi %27, %c-21_21 : index
                %29 = memref.load %arg10[%arg13, %28] : memref<?x24xf64>
                %c-21_22 = arith.constant -21 : index
                %30 = arith.addi %27, %c-21_22 : index
                %31 = memref.load %arg9[%arg14, %30] : memref<?x24xf64>
                %32 = arith.mulf %7, %31 : f64
                %33 = arith.addf %29, %32 : f64
                %c-21_23 = arith.constant -21 : index
                %34 = arith.addi %27, %c-21_23 : index
                memref.store %33, %arg10[%arg13, %34] : memref<?x24xf64>
                %c2_24 = arith.constant 2 : index
                %35 = arith.addi %19, %c2_24 : index
                %c-21_25 = arith.constant -21 : index
                %36 = arith.addi %35, %c-21_25 : index
                %37 = memref.load %arg10[%arg13, %36] : memref<?x24xf64>
                %c-21_26 = arith.constant -21 : index
                %38 = arith.addi %35, %c-21_26 : index
                %39 = memref.load %arg9[%arg14, %38] : memref<?x24xf64>
                %40 = arith.mulf %8, %39 : f64
                %41 = arith.addf %37, %40 : f64
                %c-21_27 = arith.constant -21 : index
                %42 = arith.addi %35, %c-21_27 : index
                memref.store %41, %arg10[%arg13, %42] : memref<?x24xf64>
                %c3_28 = arith.constant 3 : index
                %43 = arith.addi %19, %c3_28 : index
                %c-21_29 = arith.constant -21 : index
                %44 = arith.addi %43, %c-21_29 : index
                %45 = memref.load %arg10[%arg13, %44] : memref<?x24xf64>
                %c-21_30 = arith.constant -21 : index
                %46 = arith.addi %43, %c-21_30 : index
                %47 = memref.load %arg9[%arg14, %46] : memref<?x24xf64>
                %48 = arith.mulf %9, %47 : f64
                %49 = arith.addf %45, %48 : f64
                %c-21_31 = arith.constant -21 : index
                %50 = arith.addi %43, %c-21_31 : index
                memref.store %49, %arg10[%arg13, %50] : memref<?x24xf64>
              }
              %c-21 = arith.constant -21 : index
              %10 = arith.addi %c44, %c-21 : index
              %11 = memref.load %arg10[%arg13, %10] : memref<?x24xf64>
              %12 = memref.load %arg6[%arg13, %arg14] : memref<?x18xf64>
              %c-21_15 = arith.constant -21 : index
              %13 = arith.addi %c44, %c-21_15 : index
              %14 = memref.load %arg9[%arg14, %13] : memref<?x24xf64>
              %15 = arith.mulf %12, %14 : f64
              %16 = arith.addf %11, %15 : f64
              %c-21_16 = arith.constant -21 : index
              %17 = arith.addi %c44, %c-21_16 : index
              memref.store %16, %arg10[%arg13, %17] : memref<?x24xf64>
            }
          }
        }
        scf.reduce 
      }
    }
    return
  }
}

