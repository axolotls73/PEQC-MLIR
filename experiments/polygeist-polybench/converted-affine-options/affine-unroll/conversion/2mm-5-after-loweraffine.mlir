module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %c44 = arith.constant 44 : index
    %c18 = arith.constant 18 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg11 = %c0 to %c16 step %c1 {
      %c0_2 = arith.constant 0 : index
      %c16_3 = arith.constant 16 : index
      %c4 = arith.constant 4 : index
      scf.for %arg12 = %c0_2 to %c16_3 step %c4 {
        %8 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %9 = arith.mulf %8, %arg5 : f64
        memref.store %9, %arg10[%arg11, %arg12] : memref<?x24xf64>
        memref.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
        %c1_8 = arith.constant 1 : index
        %10 = arith.addi %arg12, %c1_8 : index
        %11 = memref.load %arg10[%arg11, %10] : memref<?x24xf64>
        %12 = arith.mulf %11, %arg5 : f64
        memref.store %12, %arg10[%arg11, %10] : memref<?x24xf64>
        memref.store %cst, %arg6[%arg11, %10] : memref<?x18xf64>
        %c2_9 = arith.constant 2 : index
        %13 = arith.addi %arg12, %c2_9 : index
        %14 = memref.load %arg10[%arg11, %13] : memref<?x24xf64>
        %15 = arith.mulf %14, %arg5 : f64
        memref.store %15, %arg10[%arg11, %13] : memref<?x24xf64>
        memref.store %cst, %arg6[%arg11, %13] : memref<?x18xf64>
        %c3 = arith.constant 3 : index
        %16 = arith.addi %arg12, %c3 : index
        %17 = memref.load %arg10[%arg11, %16] : memref<?x24xf64>
        %18 = arith.mulf %17, %arg5 : f64
        memref.store %18, %arg10[%arg11, %16] : memref<?x24xf64>
        memref.store %cst, %arg6[%arg11, %16] : memref<?x18xf64>
      }
      %c16_4 = arith.constant 16 : index
      %c18_5 = arith.constant 18 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg12 = %c16_4 to %c18_5 step %c1_6 {
        %8 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %9 = arith.mulf %8, %arg5 : f64
        memref.store %9, %arg10[%arg11, %arg12] : memref<?x24xf64>
        memref.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
      }
      %0 = memref.load %arg10[%arg11, %c18] : memref<?x24xf64>
      %1 = arith.mulf %0, %arg5 : f64
      memref.store %1, %arg10[%arg11, %c18] : memref<?x24xf64>
      %c19 = arith.constant 19 : index
      %2 = memref.load %arg10[%arg11, %c19] : memref<?x24xf64>
      %3 = arith.mulf %2, %arg5 : f64
      memref.store %3, %arg10[%arg11, %c19] : memref<?x24xf64>
      %c20 = arith.constant 20 : index
      %4 = memref.load %arg10[%arg11, %c20] : memref<?x24xf64>
      %5 = arith.mulf %4, %arg5 : f64
      memref.store %5, %arg10[%arg11, %c20] : memref<?x24xf64>
      %c21 = arith.constant 21 : index
      %6 = memref.load %arg10[%arg11, %c21] : memref<?x24xf64>
      %7 = arith.mulf %6, %arg5 : f64
      memref.store %7, %arg10[%arg11, %c21] : memref<?x24xf64>
      %c22 = arith.constant 22 : index
      %c24 = arith.constant 24 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg12 = %c22 to %c24 step %c1_7 {
        %8 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %9 = arith.mulf %8, %arg5 : f64
        memref.store %9, %arg10[%arg11, %arg12] : memref<?x24xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg11 = %c0_0 to %c2 step %c1_1 {
      %c0_2 = arith.constant 0 : index
      %0 = arith.cmpi eq, %arg11, %c0_2 : index
      scf.if %0 {
        %c0_4 = arith.constant 0 : index
        %c16_5 = arith.constant 16 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg12 = %c0_4 to %c16_5 step %c1_6 {
          %c0_7 = arith.constant 0 : index
          %c18_8 = arith.constant 18 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg13 = %c0_7 to %c18_8 step %c1_9 {
            %c0_10 = arith.constant 0 : index
            %c20 = arith.constant 20 : index
            %c4 = arith.constant 4 : index
            scf.for %arg14 = %c0_10 to %c20 step %c4 {
              %3 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %4 = memref.load %arg7[%arg12, %arg14] : memref<?x22xf64>
              %5 = arith.mulf %arg4, %4 : f64
              %6 = memref.load %arg8[%arg14, %arg13] : memref<?x18xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = arith.addf %3, %7 : f64
              memref.store %8, %arg6[%arg12, %arg13] : memref<?x18xf64>
              %c1_16 = arith.constant 1 : index
              %9 = arith.addi %arg14, %c1_16 : index
              %10 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %11 = memref.load %arg7[%arg12, %9] : memref<?x22xf64>
              %12 = arith.mulf %arg4, %11 : f64
              %13 = memref.load %arg8[%9, %arg13] : memref<?x18xf64>
              %14 = arith.mulf %12, %13 : f64
              %15 = arith.addf %10, %14 : f64
              memref.store %15, %arg6[%arg12, %arg13] : memref<?x18xf64>
              %c2_17 = arith.constant 2 : index
              %16 = arith.addi %arg14, %c2_17 : index
              %17 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %18 = memref.load %arg7[%arg12, %16] : memref<?x22xf64>
              %19 = arith.mulf %arg4, %18 : f64
              %20 = memref.load %arg8[%16, %arg13] : memref<?x18xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = arith.addf %17, %21 : f64
              memref.store %22, %arg6[%arg12, %arg13] : memref<?x18xf64>
              %c3 = arith.constant 3 : index
              %23 = arith.addi %arg14, %c3 : index
              %24 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %25 = memref.load %arg7[%arg12, %23] : memref<?x22xf64>
              %26 = arith.mulf %arg4, %25 : f64
              %27 = memref.load %arg8[%23, %arg13] : memref<?x18xf64>
              %28 = arith.mulf %26, %27 : f64
              %29 = arith.addf %24, %28 : f64
              memref.store %29, %arg6[%arg12, %arg13] : memref<?x18xf64>
            }
            %c20_11 = arith.constant 20 : index
            %c22 = arith.constant 22 : index
            %c1_12 = arith.constant 1 : index
            scf.for %arg14 = %c20_11 to %c22 step %c1_12 {
              %3 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %4 = memref.load %arg7[%arg12, %arg14] : memref<?x22xf64>
              %5 = arith.mulf %arg4, %4 : f64
              %6 = memref.load %arg8[%arg14, %arg13] : memref<?x18xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = arith.addf %3, %7 : f64
              memref.store %8, %arg6[%arg12, %arg13] : memref<?x18xf64>
            }
            %c21 = arith.constant 21 : index
            %c29 = arith.constant 29 : index
            %c4_13 = arith.constant 4 : index
            scf.for %arg14 = %c21 to %c29 step %c4_13 {
              %c-21 = arith.constant -21 : index
              %3 = arith.addi %arg14, %c-21 : index
              %4 = memref.load %arg10[%arg12, %3] : memref<?x24xf64>
              %5 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %c-21_16 = arith.constant -21 : index
              %6 = arith.addi %arg14, %c-21_16 : index
              %7 = memref.load %arg9[%arg13, %6] : memref<?x24xf64>
              %8 = arith.mulf %5, %7 : f64
              %9 = arith.addf %4, %8 : f64
              %c-21_17 = arith.constant -21 : index
              %10 = arith.addi %arg14, %c-21_17 : index
              memref.store %9, %arg10[%arg12, %10] : memref<?x24xf64>
              %c1_18 = arith.constant 1 : index
              %11 = arith.addi %arg14, %c1_18 : index
              %c-21_19 = arith.constant -21 : index
              %12 = arith.addi %11, %c-21_19 : index
              %13 = memref.load %arg10[%arg12, %12] : memref<?x24xf64>
              %14 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %c-21_20 = arith.constant -21 : index
              %15 = arith.addi %11, %c-21_20 : index
              %16 = memref.load %arg9[%arg13, %15] : memref<?x24xf64>
              %17 = arith.mulf %14, %16 : f64
              %18 = arith.addf %13, %17 : f64
              %c-21_21 = arith.constant -21 : index
              %19 = arith.addi %11, %c-21_21 : index
              memref.store %18, %arg10[%arg12, %19] : memref<?x24xf64>
              %c2_22 = arith.constant 2 : index
              %20 = arith.addi %arg14, %c2_22 : index
              %c-21_23 = arith.constant -21 : index
              %21 = arith.addi %20, %c-21_23 : index
              %22 = memref.load %arg10[%arg12, %21] : memref<?x24xf64>
              %23 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %c-21_24 = arith.constant -21 : index
              %24 = arith.addi %20, %c-21_24 : index
              %25 = memref.load %arg9[%arg13, %24] : memref<?x24xf64>
              %26 = arith.mulf %23, %25 : f64
              %27 = arith.addf %22, %26 : f64
              %c-21_25 = arith.constant -21 : index
              %28 = arith.addi %20, %c-21_25 : index
              memref.store %27, %arg10[%arg12, %28] : memref<?x24xf64>
              %c3 = arith.constant 3 : index
              %29 = arith.addi %arg14, %c3 : index
              %c-21_26 = arith.constant -21 : index
              %30 = arith.addi %29, %c-21_26 : index
              %31 = memref.load %arg10[%arg12, %30] : memref<?x24xf64>
              %32 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %c-21_27 = arith.constant -21 : index
              %33 = arith.addi %29, %c-21_27 : index
              %34 = memref.load %arg9[%arg13, %33] : memref<?x24xf64>
              %35 = arith.mulf %32, %34 : f64
              %36 = arith.addf %31, %35 : f64
              %c-21_28 = arith.constant -21 : index
              %37 = arith.addi %29, %c-21_28 : index
              memref.store %36, %arg10[%arg12, %37] : memref<?x24xf64>
            }
            %c29_14 = arith.constant 29 : index
            %c32 = arith.constant 32 : index
            %c1_15 = arith.constant 1 : index
            scf.for %arg14 = %c29_14 to %c32 step %c1_15 {
              %c-21 = arith.constant -21 : index
              %3 = arith.addi %arg14, %c-21 : index
              %4 = memref.load %arg10[%arg12, %3] : memref<?x24xf64>
              %5 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %c-21_16 = arith.constant -21 : index
              %6 = arith.addi %arg14, %c-21_16 : index
              %7 = memref.load %arg9[%arg13, %6] : memref<?x24xf64>
              %8 = arith.mulf %5, %7 : f64
              %9 = arith.addf %4, %8 : f64
              %c-21_17 = arith.constant -21 : index
              %10 = arith.addi %arg14, %c-21_17 : index
              memref.store %9, %arg10[%arg12, %10] : memref<?x24xf64>
            }
          }
        }
      }
      %c0_3 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %1 = arith.addi %arg11, %c-1 : index
      %2 = arith.cmpi eq, %1, %c0_3 : index
      scf.if %2 {
        %c0_4 = arith.constant 0 : index
        %c16_5 = arith.constant 16 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg12 = %c0_4 to %c16_5 step %c1_6 {
          %c0_7 = arith.constant 0 : index
          %c18_8 = arith.constant 18 : index
          %c1_9 = arith.constant 1 : index
          scf.for %arg13 = %c0_7 to %c18_8 step %c1_9 {
            %c32 = arith.constant 32 : index
            %c44_10 = arith.constant 44 : index
            %c4 = arith.constant 4 : index
            scf.for %arg14 = %c32 to %c44_10 step %c4 {
              %c-21_13 = arith.constant -21 : index
              %11 = arith.addi %arg14, %c-21_13 : index
              %12 = memref.load %arg10[%arg12, %11] : memref<?x24xf64>
              %13 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %c-21_14 = arith.constant -21 : index
              %14 = arith.addi %arg14, %c-21_14 : index
              %15 = memref.load %arg9[%arg13, %14] : memref<?x24xf64>
              %16 = arith.mulf %13, %15 : f64
              %17 = arith.addf %12, %16 : f64
              %c-21_15 = arith.constant -21 : index
              %18 = arith.addi %arg14, %c-21_15 : index
              memref.store %17, %arg10[%arg12, %18] : memref<?x24xf64>
              %c1_16 = arith.constant 1 : index
              %19 = arith.addi %arg14, %c1_16 : index
              %c-21_17 = arith.constant -21 : index
              %20 = arith.addi %19, %c-21_17 : index
              %21 = memref.load %arg10[%arg12, %20] : memref<?x24xf64>
              %22 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %c-21_18 = arith.constant -21 : index
              %23 = arith.addi %19, %c-21_18 : index
              %24 = memref.load %arg9[%arg13, %23] : memref<?x24xf64>
              %25 = arith.mulf %22, %24 : f64
              %26 = arith.addf %21, %25 : f64
              %c-21_19 = arith.constant -21 : index
              %27 = arith.addi %19, %c-21_19 : index
              memref.store %26, %arg10[%arg12, %27] : memref<?x24xf64>
              %c2_20 = arith.constant 2 : index
              %28 = arith.addi %arg14, %c2_20 : index
              %c-21_21 = arith.constant -21 : index
              %29 = arith.addi %28, %c-21_21 : index
              %30 = memref.load %arg10[%arg12, %29] : memref<?x24xf64>
              %31 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %c-21_22 = arith.constant -21 : index
              %32 = arith.addi %28, %c-21_22 : index
              %33 = memref.load %arg9[%arg13, %32] : memref<?x24xf64>
              %34 = arith.mulf %31, %33 : f64
              %35 = arith.addf %30, %34 : f64
              %c-21_23 = arith.constant -21 : index
              %36 = arith.addi %28, %c-21_23 : index
              memref.store %35, %arg10[%arg12, %36] : memref<?x24xf64>
              %c3 = arith.constant 3 : index
              %37 = arith.addi %arg14, %c3 : index
              %c-21_24 = arith.constant -21 : index
              %38 = arith.addi %37, %c-21_24 : index
              %39 = memref.load %arg10[%arg12, %38] : memref<?x24xf64>
              %40 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
              %c-21_25 = arith.constant -21 : index
              %41 = arith.addi %37, %c-21_25 : index
              %42 = memref.load %arg9[%arg13, %41] : memref<?x24xf64>
              %43 = arith.mulf %40, %42 : f64
              %44 = arith.addf %39, %43 : f64
              %c-21_26 = arith.constant -21 : index
              %45 = arith.addi %37, %c-21_26 : index
              memref.store %44, %arg10[%arg12, %45] : memref<?x24xf64>
            }
            %c-21 = arith.constant -21 : index
            %3 = arith.addi %c44, %c-21 : index
            %4 = memref.load %arg10[%arg12, %3] : memref<?x24xf64>
            %5 = memref.load %arg6[%arg12, %arg13] : memref<?x18xf64>
            %c-21_11 = arith.constant -21 : index
            %6 = arith.addi %c44, %c-21_11 : index
            %7 = memref.load %arg9[%arg13, %6] : memref<?x24xf64>
            %8 = arith.mulf %5, %7 : f64
            %9 = arith.addf %4, %8 : f64
            %c-21_12 = arith.constant -21 : index
            %10 = arith.addi %c44, %c-21_12 : index
            memref.store %9, %arg10[%arg12, %10] : memref<?x24xf64>
          }
        }
      }
    }
    return
  }
}

