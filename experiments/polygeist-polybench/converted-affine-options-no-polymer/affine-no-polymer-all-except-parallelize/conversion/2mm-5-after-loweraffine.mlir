module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.for %arg11 = %c0 to %c1 step %c1_0 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg11, %c32 : index
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg12 = %c0_4 to %c1_5 step %c1_6 {
        %c32_7 = arith.constant 32 : index
        %1 = arith.muli %arg12, %c32_7 : index
        %c0_8 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg13 = %c0_8 to %c16 step %c1_9 {
          %2 = arith.addi %0, %arg13 : index
          %c0_10 = arith.constant 0 : index
          %c18 = arith.constant 18 : index
          %c1_11 = arith.constant 1 : index
          scf.for %arg14 = %c0_10 to %c18 step %c1_11 {
            %3 = arith.addi %1, %arg14 : index
            memref.store %cst, %arg6[%2, %3] : memref<?x18xf64>
            %c0_12 = arith.constant 0 : index
            %c5 = arith.constant 5 : index
            %c1_13 = arith.constant 1 : index
            scf.for %arg15 = %c0_12 to %c5 step %c1_13 {
              %c4 = arith.constant 4 : index
              %4 = arith.muli %arg15, %c4 : index
              %5 = memref.load %arg7[%2, %4] : memref<?x22xf64>
              %6 = arith.mulf %arg4, %5 : f64
              %7 = memref.load %arg8[%4, %3] : memref<?x18xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = memref.load %arg6[%2, %3] : memref<?x18xf64>
              %10 = arith.addf %9, %8 : f64
              memref.store %10, %arg6[%2, %3] : memref<?x18xf64>
              %c1_16 = arith.constant 1 : index
              %11 = arith.addi %4, %c1_16 : index
              %12 = memref.load %arg7[%2, %11] : memref<?x22xf64>
              %13 = arith.mulf %arg4, %12 : f64
              %14 = memref.load %arg8[%11, %3] : memref<?x18xf64>
              %15 = arith.mulf %13, %14 : f64
              %16 = memref.load %arg6[%2, %3] : memref<?x18xf64>
              %17 = arith.addf %16, %15 : f64
              memref.store %17, %arg6[%2, %3] : memref<?x18xf64>
              %c2_17 = arith.constant 2 : index
              %18 = arith.addi %4, %c2_17 : index
              %19 = memref.load %arg7[%2, %18] : memref<?x22xf64>
              %20 = arith.mulf %arg4, %19 : f64
              %21 = memref.load %arg8[%18, %3] : memref<?x18xf64>
              %22 = arith.mulf %20, %21 : f64
              %23 = memref.load %arg6[%2, %3] : memref<?x18xf64>
              %24 = arith.addf %23, %22 : f64
              memref.store %24, %arg6[%2, %3] : memref<?x18xf64>
              %c3 = arith.constant 3 : index
              %25 = arith.addi %4, %c3 : index
              %26 = memref.load %arg7[%2, %25] : memref<?x22xf64>
              %27 = arith.mulf %arg4, %26 : f64
              %28 = memref.load %arg8[%25, %3] : memref<?x18xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = memref.load %arg6[%2, %3] : memref<?x18xf64>
              %31 = arith.addf %30, %29 : f64
              memref.store %31, %arg6[%2, %3] : memref<?x18xf64>
            }
            %c0_14 = arith.constant 0 : index
            %c2 = arith.constant 2 : index
            %c1_15 = arith.constant 1 : index
            scf.for %arg15 = %c0_14 to %c2 step %c1_15 {
              %c20 = arith.constant 20 : index
              %4 = arith.addi %arg15, %c20 : index
              %5 = memref.load %arg7[%2, %4] : memref<?x22xf64>
              %6 = arith.mulf %arg4, %5 : f64
              %7 = memref.load %arg8[%4, %3] : memref<?x18xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = memref.load %arg6[%2, %3] : memref<?x18xf64>
              %10 = arith.addf %9, %8 : f64
              memref.store %10, %arg6[%2, %3] : memref<?x18xf64>
            }
          }
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
      %c1_5 = arith.constant 1 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg12 = %c0_4 to %c1_5 step %c1_6 {
        %c32_7 = arith.constant 32 : index
        %1 = arith.muli %arg12, %c32_7 : index
        %c0_8 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg13 = %c0_8 to %c16 step %c1_9 {
          %2 = arith.addi %0, %arg13 : index
          %c0_10 = arith.constant 0 : index
          %c24 = arith.constant 24 : index
          %c1_11 = arith.constant 1 : index
          scf.for %arg14 = %c0_10 to %c24 step %c1_11 {
            %3 = arith.addi %1, %arg14 : index
            %4 = memref.load %arg10[%2, %3] : memref<?x24xf64>
            %5 = arith.mulf %4, %arg5 : f64
            memref.store %5, %arg10[%2, %3] : memref<?x24xf64>
            %c0_12 = arith.constant 0 : index
            %c4 = arith.constant 4 : index
            %c1_13 = arith.constant 1 : index
            scf.for %arg15 = %c0_12 to %c4 step %c1_13 {
              %c4_16 = arith.constant 4 : index
              %6 = arith.muli %arg15, %c4_16 : index
              %7 = memref.load %arg6[%2, %6] : memref<?x18xf64>
              %8 = memref.load %arg9[%6, %3] : memref<?x24xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = memref.load %arg10[%2, %3] : memref<?x24xf64>
              %11 = arith.addf %10, %9 : f64
              memref.store %11, %arg10[%2, %3] : memref<?x24xf64>
              %c1_17 = arith.constant 1 : index
              %12 = arith.addi %6, %c1_17 : index
              %13 = memref.load %arg6[%2, %12] : memref<?x18xf64>
              %14 = memref.load %arg9[%12, %3] : memref<?x24xf64>
              %15 = arith.mulf %13, %14 : f64
              %16 = memref.load %arg10[%2, %3] : memref<?x24xf64>
              %17 = arith.addf %16, %15 : f64
              memref.store %17, %arg10[%2, %3] : memref<?x24xf64>
              %c2_18 = arith.constant 2 : index
              %18 = arith.addi %6, %c2_18 : index
              %19 = memref.load %arg6[%2, %18] : memref<?x18xf64>
              %20 = memref.load %arg9[%18, %3] : memref<?x24xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = memref.load %arg10[%2, %3] : memref<?x24xf64>
              %23 = arith.addf %22, %21 : f64
              memref.store %23, %arg10[%2, %3] : memref<?x24xf64>
              %c3 = arith.constant 3 : index
              %24 = arith.addi %6, %c3 : index
              %25 = memref.load %arg6[%2, %24] : memref<?x18xf64>
              %26 = memref.load %arg9[%24, %3] : memref<?x24xf64>
              %27 = arith.mulf %25, %26 : f64
              %28 = memref.load %arg10[%2, %3] : memref<?x24xf64>
              %29 = arith.addf %28, %27 : f64
              memref.store %29, %arg10[%2, %3] : memref<?x24xf64>
            }
            %c0_14 = arith.constant 0 : index
            %c2 = arith.constant 2 : index
            %c1_15 = arith.constant 1 : index
            scf.for %arg15 = %c0_14 to %c2 step %c1_15 {
              %c16_16 = arith.constant 16 : index
              %6 = arith.addi %arg15, %c16_16 : index
              %7 = memref.load %arg6[%2, %6] : memref<?x18xf64>
              %8 = memref.load %arg9[%6, %3] : memref<?x24xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = memref.load %arg10[%2, %3] : memref<?x24xf64>
              %11 = arith.addf %10, %9 : f64
              memref.store %11, %arg10[%2, %3] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

