module {
  func.func @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x18xf64>, %arg6: memref<?x20xf64>, %arg7: memref<?x18xf64>, %arg8: memref<?x22xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x22xf64>, %arg11: memref<?x22xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.parallel (%arg12) = (%c0) to (%c1) step (%c1_0) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg12, %c32 : index
      %c0_7 = arith.constant 0 : index
      %c1_8 = arith.constant 1 : index
      %c1_9 = arith.constant 1 : index
      scf.for %arg13 = %c0_7 to %c1_8 step %c1_9 {
        %c32_10 = arith.constant 32 : index
        %1 = arith.muli %arg13, %c32_10 : index
        %c0_11 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg14 = %c0_11 to %c16 step %c1_12 {
          %2 = arith.addi %0, %arg14 : index
          %c0_13 = arith.constant 0 : index
          %c18 = arith.constant 18 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg15 = %c0_13 to %c18 step %c1_14 {
            %3 = arith.addi %1, %arg15 : index
            memref.store %cst, %arg5[%2, %3] : memref<?x18xf64>
            %c0_15 = arith.constant 0 : index
            %c5 = arith.constant 5 : index
            %c1_16 = arith.constant 1 : index
            scf.for %arg16 = %c0_15 to %c5 step %c1_16 {
              %c4 = arith.constant 4 : index
              %4 = arith.muli %arg16, %c4 : index
              %5 = memref.load %arg6[%2, %4] : memref<?x20xf64>
              %6 = memref.load %arg7[%4, %3] : memref<?x18xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = memref.load %arg5[%2, %3] : memref<?x18xf64>
              %9 = arith.addf %8, %7 : f64
              memref.store %9, %arg5[%2, %3] : memref<?x18xf64>
              %c1_17 = arith.constant 1 : index
              %10 = arith.addi %4, %c1_17 : index
              %11 = memref.load %arg6[%2, %10] : memref<?x20xf64>
              %12 = memref.load %arg7[%10, %3] : memref<?x18xf64>
              %13 = arith.mulf %11, %12 : f64
              %14 = memref.load %arg5[%2, %3] : memref<?x18xf64>
              %15 = arith.addf %14, %13 : f64
              memref.store %15, %arg5[%2, %3] : memref<?x18xf64>
              %c2 = arith.constant 2 : index
              %16 = arith.addi %4, %c2 : index
              %17 = memref.load %arg6[%2, %16] : memref<?x20xf64>
              %18 = memref.load %arg7[%16, %3] : memref<?x18xf64>
              %19 = arith.mulf %17, %18 : f64
              %20 = memref.load %arg5[%2, %3] : memref<?x18xf64>
              %21 = arith.addf %20, %19 : f64
              memref.store %21, %arg5[%2, %3] : memref<?x18xf64>
              %c3 = arith.constant 3 : index
              %22 = arith.addi %4, %c3 : index
              %23 = memref.load %arg6[%2, %22] : memref<?x20xf64>
              %24 = memref.load %arg7[%22, %3] : memref<?x18xf64>
              %25 = arith.mulf %23, %24 : f64
              %26 = memref.load %arg5[%2, %3] : memref<?x18xf64>
              %27 = arith.addf %26, %25 : f64
              memref.store %27, %arg5[%2, %3] : memref<?x18xf64>
            }
          }
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
      %c0_7 = arith.constant 0 : index
      %c1_8 = arith.constant 1 : index
      %c1_9 = arith.constant 1 : index
      scf.for %arg13 = %c0_7 to %c1_8 step %c1_9 {
        %c32_10 = arith.constant 32 : index
        %1 = arith.muli %arg13, %c32_10 : index
        %c0_11 = arith.constant 0 : index
        %c18 = arith.constant 18 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg14 = %c0_11 to %c18 step %c1_12 {
          %2 = arith.addi %0, %arg14 : index
          %c0_13 = arith.constant 0 : index
          %c22 = arith.constant 22 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg15 = %c0_13 to %c22 step %c1_14 {
            %3 = arith.addi %1, %arg15 : index
            memref.store %cst, %arg8[%2, %3] : memref<?x22xf64>
            %c0_15 = arith.constant 0 : index
            %c6 = arith.constant 6 : index
            %c1_16 = arith.constant 1 : index
            scf.for %arg16 = %c0_15 to %c6 step %c1_16 {
              %c4 = arith.constant 4 : index
              %4 = arith.muli %arg16, %c4 : index
              %5 = memref.load %arg9[%2, %4] : memref<?x24xf64>
              %6 = memref.load %arg10[%4, %3] : memref<?x22xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = memref.load %arg8[%2, %3] : memref<?x22xf64>
              %9 = arith.addf %8, %7 : f64
              memref.store %9, %arg8[%2, %3] : memref<?x22xf64>
              %c1_17 = arith.constant 1 : index
              %10 = arith.addi %4, %c1_17 : index
              %11 = memref.load %arg9[%2, %10] : memref<?x24xf64>
              %12 = memref.load %arg10[%10, %3] : memref<?x22xf64>
              %13 = arith.mulf %11, %12 : f64
              %14 = memref.load %arg8[%2, %3] : memref<?x22xf64>
              %15 = arith.addf %14, %13 : f64
              memref.store %15, %arg8[%2, %3] : memref<?x22xf64>
              %c2 = arith.constant 2 : index
              %16 = arith.addi %4, %c2 : index
              %17 = memref.load %arg9[%2, %16] : memref<?x24xf64>
              %18 = memref.load %arg10[%16, %3] : memref<?x22xf64>
              %19 = arith.mulf %17, %18 : f64
              %20 = memref.load %arg8[%2, %3] : memref<?x22xf64>
              %21 = arith.addf %20, %19 : f64
              memref.store %21, %arg8[%2, %3] : memref<?x22xf64>
              %c3 = arith.constant 3 : index
              %22 = arith.addi %4, %c3 : index
              %23 = memref.load %arg9[%2, %22] : memref<?x24xf64>
              %24 = memref.load %arg10[%22, %3] : memref<?x22xf64>
              %25 = arith.mulf %23, %24 : f64
              %26 = memref.load %arg8[%2, %3] : memref<?x22xf64>
              %27 = arith.addf %26, %25 : f64
              memref.store %27, %arg8[%2, %3] : memref<?x22xf64>
            }
          }
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
      %c0_7 = arith.constant 0 : index
      %c1_8 = arith.constant 1 : index
      %c1_9 = arith.constant 1 : index
      scf.for %arg13 = %c0_7 to %c1_8 step %c1_9 {
        %c32_10 = arith.constant 32 : index
        %1 = arith.muli %arg13, %c32_10 : index
        %c0_11 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg14 = %c0_11 to %c16 step %c1_12 {
          %2 = arith.addi %0, %arg14 : index
          %c0_13 = arith.constant 0 : index
          %c22 = arith.constant 22 : index
          %c1_14 = arith.constant 1 : index
          scf.for %arg15 = %c0_13 to %c22 step %c1_14 {
            %3 = arith.addi %1, %arg15 : index
            memref.store %cst, %arg11[%2, %3] : memref<?x22xf64>
            %c0_15 = arith.constant 0 : index
            %c4 = arith.constant 4 : index
            %c1_16 = arith.constant 1 : index
            scf.for %arg16 = %c0_15 to %c4 step %c1_16 {
              %c4_19 = arith.constant 4 : index
              %4 = arith.muli %arg16, %c4_19 : index
              %5 = memref.load %arg5[%2, %4] : memref<?x18xf64>
              %6 = memref.load %arg8[%4, %3] : memref<?x22xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = memref.load %arg11[%2, %3] : memref<?x22xf64>
              %9 = arith.addf %8, %7 : f64
              memref.store %9, %arg11[%2, %3] : memref<?x22xf64>
              %c1_20 = arith.constant 1 : index
              %10 = arith.addi %4, %c1_20 : index
              %11 = memref.load %arg5[%2, %10] : memref<?x18xf64>
              %12 = memref.load %arg8[%10, %3] : memref<?x22xf64>
              %13 = arith.mulf %11, %12 : f64
              %14 = memref.load %arg11[%2, %3] : memref<?x22xf64>
              %15 = arith.addf %14, %13 : f64
              memref.store %15, %arg11[%2, %3] : memref<?x22xf64>
              %c2_21 = arith.constant 2 : index
              %16 = arith.addi %4, %c2_21 : index
              %17 = memref.load %arg5[%2, %16] : memref<?x18xf64>
              %18 = memref.load %arg8[%16, %3] : memref<?x22xf64>
              %19 = arith.mulf %17, %18 : f64
              %20 = memref.load %arg11[%2, %3] : memref<?x22xf64>
              %21 = arith.addf %20, %19 : f64
              memref.store %21, %arg11[%2, %3] : memref<?x22xf64>
              %c3 = arith.constant 3 : index
              %22 = arith.addi %4, %c3 : index
              %23 = memref.load %arg5[%2, %22] : memref<?x18xf64>
              %24 = memref.load %arg8[%22, %3] : memref<?x22xf64>
              %25 = arith.mulf %23, %24 : f64
              %26 = memref.load %arg11[%2, %3] : memref<?x22xf64>
              %27 = arith.addf %26, %25 : f64
              memref.store %27, %arg11[%2, %3] : memref<?x22xf64>
            }
            %c0_17 = arith.constant 0 : index
            %c2 = arith.constant 2 : index
            %c1_18 = arith.constant 1 : index
            scf.for %arg16 = %c0_17 to %c2 step %c1_18 {
              %c16_19 = arith.constant 16 : index
              %4 = arith.addi %arg16, %c16_19 : index
              %5 = memref.load %arg5[%2, %4] : memref<?x18xf64>
              %6 = memref.load %arg8[%4, %3] : memref<?x22xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = memref.load %arg11[%2, %3] : memref<?x22xf64>
              %9 = arith.addf %8, %7 : f64
              memref.store %9, %arg11[%2, %3] : memref<?x22xf64>
            }
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

