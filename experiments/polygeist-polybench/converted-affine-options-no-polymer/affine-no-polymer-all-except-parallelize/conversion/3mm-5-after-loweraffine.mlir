module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c16 step %c1 {
      %c0_5 = arith.constant 0 : index
      %c18_6 = arith.constant 18 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg13 = %c0_5 to %c18_6 step %c1_7 {
        %c0_8 = arith.constant 0 : index
        %c1_9 = arith.constant 1 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg14 = %c0_8 to %c1_9 step %c1_10 {
          %0 = arith.addi %arg12, %arg14 : index
          %c0_11 = arith.constant 0 : index
          %c1_12 = arith.constant 1 : index
          %c1_13 = arith.constant 1 : index
          scf.for %arg15 = %c0_11 to %c1_12 step %c1_13 {
            %1 = arith.addi %arg13, %arg15 : index
            memref.store %cst, %arg5[%0, %1] : memref<?x18xf64>
            %c0_14 = arith.constant 0 : index
            %c5 = arith.constant 5 : index
            %c1_15 = arith.constant 1 : index
            scf.for %arg16 = %c0_14 to %c5 step %c1_15 {
              %c4 = arith.constant 4 : index
              %2 = arith.muli %arg16, %c4 : index
              %3 = memref.load %arg6[%0, %2] : memref<?x20xf64>
              %4 = memref.load %arg7[%2, %1] : memref<?x18xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = memref.load %arg5[%0, %1] : memref<?x18xf64>
              %7 = arith.addf %6, %5 : f64
              memref.store %7, %arg5[%0, %1] : memref<?x18xf64>
              %c1_16 = arith.constant 1 : index
              %8 = arith.addi %2, %c1_16 : index
              %9 = memref.load %arg6[%0, %8] : memref<?x20xf64>
              %10 = memref.load %arg7[%8, %1] : memref<?x18xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = memref.load %arg5[%0, %1] : memref<?x18xf64>
              %13 = arith.addf %12, %11 : f64
              memref.store %13, %arg5[%0, %1] : memref<?x18xf64>
              %c2 = arith.constant 2 : index
              %14 = arith.addi %2, %c2 : index
              %15 = memref.load %arg6[%0, %14] : memref<?x20xf64>
              %16 = memref.load %arg7[%14, %1] : memref<?x18xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = memref.load %arg5[%0, %1] : memref<?x18xf64>
              %19 = arith.addf %18, %17 : f64
              memref.store %19, %arg5[%0, %1] : memref<?x18xf64>
              %c3 = arith.constant 3 : index
              %20 = arith.addi %2, %c3 : index
              %21 = memref.load %arg6[%0, %20] : memref<?x20xf64>
              %22 = memref.load %arg7[%20, %1] : memref<?x18xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = memref.load %arg5[%0, %1] : memref<?x18xf64>
              %25 = arith.addf %24, %23 : f64
              memref.store %25, %arg5[%0, %1] : memref<?x18xf64>
            }
          }
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c18 = arith.constant 18 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg12 = %c0_0 to %c18 step %c1_1 {
      %c0_5 = arith.constant 0 : index
      %c22 = arith.constant 22 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg13 = %c0_5 to %c22 step %c1_6 {
        %c0_7 = arith.constant 0 : index
        %c1_8 = arith.constant 1 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg14 = %c0_7 to %c1_8 step %c1_9 {
          %0 = arith.addi %arg12, %arg14 : index
          %c0_10 = arith.constant 0 : index
          %c1_11 = arith.constant 1 : index
          %c1_12 = arith.constant 1 : index
          scf.for %arg15 = %c0_10 to %c1_11 step %c1_12 {
            %1 = arith.addi %arg13, %arg15 : index
            memref.store %cst, %arg8[%0, %1] : memref<?x22xf64>
            %c0_13 = arith.constant 0 : index
            %c6 = arith.constant 6 : index
            %c1_14 = arith.constant 1 : index
            scf.for %arg16 = %c0_13 to %c6 step %c1_14 {
              %c4 = arith.constant 4 : index
              %2 = arith.muli %arg16, %c4 : index
              %3 = memref.load %arg9[%0, %2] : memref<?x24xf64>
              %4 = memref.load %arg10[%2, %1] : memref<?x22xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = memref.load %arg8[%0, %1] : memref<?x22xf64>
              %7 = arith.addf %6, %5 : f64
              memref.store %7, %arg8[%0, %1] : memref<?x22xf64>
              %c1_15 = arith.constant 1 : index
              %8 = arith.addi %2, %c1_15 : index
              %9 = memref.load %arg9[%0, %8] : memref<?x24xf64>
              %10 = memref.load %arg10[%8, %1] : memref<?x22xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = memref.load %arg8[%0, %1] : memref<?x22xf64>
              %13 = arith.addf %12, %11 : f64
              memref.store %13, %arg8[%0, %1] : memref<?x22xf64>
              %c2 = arith.constant 2 : index
              %14 = arith.addi %2, %c2 : index
              %15 = memref.load %arg9[%0, %14] : memref<?x24xf64>
              %16 = memref.load %arg10[%14, %1] : memref<?x22xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = memref.load %arg8[%0, %1] : memref<?x22xf64>
              %19 = arith.addf %18, %17 : f64
              memref.store %19, %arg8[%0, %1] : memref<?x22xf64>
              %c3 = arith.constant 3 : index
              %20 = arith.addi %2, %c3 : index
              %21 = memref.load %arg9[%0, %20] : memref<?x24xf64>
              %22 = memref.load %arg10[%20, %1] : memref<?x22xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = memref.load %arg8[%0, %1] : memref<?x22xf64>
              %25 = arith.addf %24, %23 : f64
              memref.store %25, %arg8[%0, %1] : memref<?x22xf64>
            }
          }
        }
      }
    }
    %c0_2 = arith.constant 0 : index
    %c16_3 = arith.constant 16 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg12 = %c0_2 to %c16_3 step %c1_4 {
      %c0_5 = arith.constant 0 : index
      %c22 = arith.constant 22 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg13 = %c0_5 to %c22 step %c1_6 {
        %c0_7 = arith.constant 0 : index
        %c1_8 = arith.constant 1 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg14 = %c0_7 to %c1_8 step %c1_9 {
          %0 = arith.addi %arg12, %arg14 : index
          %c0_10 = arith.constant 0 : index
          %c1_11 = arith.constant 1 : index
          %c1_12 = arith.constant 1 : index
          scf.for %arg15 = %c0_10 to %c1_11 step %c1_12 {
            %1 = arith.addi %arg13, %arg15 : index
            memref.store %cst, %arg11[%0, %1] : memref<?x22xf64>
            %c0_13 = arith.constant 0 : index
            %c4 = arith.constant 4 : index
            %c1_14 = arith.constant 1 : index
            scf.for %arg16 = %c0_13 to %c4 step %c1_14 {
              %c4_17 = arith.constant 4 : index
              %2 = arith.muli %arg16, %c4_17 : index
              %3 = memref.load %arg5[%0, %2] : memref<?x18xf64>
              %4 = memref.load %arg8[%2, %1] : memref<?x22xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = memref.load %arg11[%0, %1] : memref<?x22xf64>
              %7 = arith.addf %6, %5 : f64
              memref.store %7, %arg11[%0, %1] : memref<?x22xf64>
              %c1_18 = arith.constant 1 : index
              %8 = arith.addi %2, %c1_18 : index
              %9 = memref.load %arg5[%0, %8] : memref<?x18xf64>
              %10 = memref.load %arg8[%8, %1] : memref<?x22xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = memref.load %arg11[%0, %1] : memref<?x22xf64>
              %13 = arith.addf %12, %11 : f64
              memref.store %13, %arg11[%0, %1] : memref<?x22xf64>
              %c2_19 = arith.constant 2 : index
              %14 = arith.addi %2, %c2_19 : index
              %15 = memref.load %arg5[%0, %14] : memref<?x18xf64>
              %16 = memref.load %arg8[%14, %1] : memref<?x22xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = memref.load %arg11[%0, %1] : memref<?x22xf64>
              %19 = arith.addf %18, %17 : f64
              memref.store %19, %arg11[%0, %1] : memref<?x22xf64>
              %c3 = arith.constant 3 : index
              %20 = arith.addi %2, %c3 : index
              %21 = memref.load %arg5[%0, %20] : memref<?x18xf64>
              %22 = memref.load %arg8[%20, %1] : memref<?x22xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = memref.load %arg11[%0, %1] : memref<?x22xf64>
              %25 = arith.addf %24, %23 : f64
              memref.store %25, %arg11[%0, %1] : memref<?x22xf64>
            }
            %c0_15 = arith.constant 0 : index
            %c2 = arith.constant 2 : index
            %c1_16 = arith.constant 1 : index
            scf.for %arg16 = %c0_15 to %c2 step %c1_16 {
              %c16_17 = arith.constant 16 : index
              %2 = arith.addi %arg16, %c16_17 : index
              %3 = memref.load %arg5[%0, %2] : memref<?x18xf64>
              %4 = memref.load %arg8[%2, %1] : memref<?x22xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = memref.load %arg11[%0, %1] : memref<?x22xf64>
              %7 = arith.addf %6, %5 : f64
              memref.store %7, %arg11[%0, %1] : memref<?x22xf64>
            }
          }
        }
      }
    }
    return
  }
}

