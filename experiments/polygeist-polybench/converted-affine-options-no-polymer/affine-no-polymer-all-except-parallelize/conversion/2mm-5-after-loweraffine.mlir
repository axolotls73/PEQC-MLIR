module {
  func.func @kernel_2mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: f64, %arg5: f64, %arg6: memref<?x18xf64>, %arg7: memref<?x22xf64>, %arg8: memref<?x18xf64>, %arg9: memref<?x24xf64>, %arg10: memref<?x24xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg11 = %c0 to %c16 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c18 = arith.constant 18 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg12 = %c0_3 to %c18 step %c1_4 {
        %c0_5 = arith.constant 0 : index
        %c1_6 = arith.constant 1 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg13 = %c0_5 to %c1_6 step %c1_7 {
          %0 = arith.addi %arg11, %arg13 : index
          %c0_8 = arith.constant 0 : index
          %c1_9 = arith.constant 1 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg14 = %c0_8 to %c1_9 step %c1_10 {
            %1 = arith.addi %arg12, %arg14 : index
            memref.store %cst, %arg6[%0, %1] : memref<?x18xf64>
            %c0_11 = arith.constant 0 : index
            %c5 = arith.constant 5 : index
            %c1_12 = arith.constant 1 : index
            scf.for %arg15 = %c0_11 to %c5 step %c1_12 {
              %c4 = arith.constant 4 : index
              %2 = arith.muli %arg15, %c4 : index
              %3 = memref.load %arg7[%0, %2] : memref<?x22xf64>
              %4 = arith.mulf %arg4, %3 : f64
              %5 = memref.load %arg8[%2, %1] : memref<?x18xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = memref.load %arg6[%0, %1] : memref<?x18xf64>
              %8 = arith.addf %7, %6 : f64
              memref.store %8, %arg6[%0, %1] : memref<?x18xf64>
              %c1_15 = arith.constant 1 : index
              %9 = arith.addi %2, %c1_15 : index
              %10 = memref.load %arg7[%0, %9] : memref<?x22xf64>
              %11 = arith.mulf %arg4, %10 : f64
              %12 = memref.load %arg8[%9, %1] : memref<?x18xf64>
              %13 = arith.mulf %11, %12 : f64
              %14 = memref.load %arg6[%0, %1] : memref<?x18xf64>
              %15 = arith.addf %14, %13 : f64
              memref.store %15, %arg6[%0, %1] : memref<?x18xf64>
              %c2_16 = arith.constant 2 : index
              %16 = arith.addi %2, %c2_16 : index
              %17 = memref.load %arg7[%0, %16] : memref<?x22xf64>
              %18 = arith.mulf %arg4, %17 : f64
              %19 = memref.load %arg8[%16, %1] : memref<?x18xf64>
              %20 = arith.mulf %18, %19 : f64
              %21 = memref.load %arg6[%0, %1] : memref<?x18xf64>
              %22 = arith.addf %21, %20 : f64
              memref.store %22, %arg6[%0, %1] : memref<?x18xf64>
              %c3 = arith.constant 3 : index
              %23 = arith.addi %2, %c3 : index
              %24 = memref.load %arg7[%0, %23] : memref<?x22xf64>
              %25 = arith.mulf %arg4, %24 : f64
              %26 = memref.load %arg8[%23, %1] : memref<?x18xf64>
              %27 = arith.mulf %25, %26 : f64
              %28 = memref.load %arg6[%0, %1] : memref<?x18xf64>
              %29 = arith.addf %28, %27 : f64
              memref.store %29, %arg6[%0, %1] : memref<?x18xf64>
            }
            %c0_13 = arith.constant 0 : index
            %c2 = arith.constant 2 : index
            %c1_14 = arith.constant 1 : index
            scf.for %arg15 = %c0_13 to %c2 step %c1_14 {
              %c20 = arith.constant 20 : index
              %2 = arith.addi %arg15, %c20 : index
              %3 = memref.load %arg7[%0, %2] : memref<?x22xf64>
              %4 = arith.mulf %arg4, %3 : f64
              %5 = memref.load %arg8[%2, %1] : memref<?x18xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = memref.load %arg6[%0, %1] : memref<?x18xf64>
              %8 = arith.addf %7, %6 : f64
              memref.store %8, %arg6[%0, %1] : memref<?x18xf64>
            }
          }
        }
      }
    }
    %c0_0 = arith.constant 0 : index
    %c16_1 = arith.constant 16 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg11 = %c0_0 to %c16_1 step %c1_2 {
      %c0_3 = arith.constant 0 : index
      %c24 = arith.constant 24 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg12 = %c0_3 to %c24 step %c1_4 {
        %c0_5 = arith.constant 0 : index
        %c1_6 = arith.constant 1 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg13 = %c0_5 to %c1_6 step %c1_7 {
          %0 = arith.addi %arg11, %arg13 : index
          %c0_8 = arith.constant 0 : index
          %c1_9 = arith.constant 1 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg14 = %c0_8 to %c1_9 step %c1_10 {
            %1 = arith.addi %arg12, %arg14 : index
            %2 = memref.load %arg10[%0, %1] : memref<?x24xf64>
            %3 = arith.mulf %2, %arg5 : f64
            memref.store %3, %arg10[%0, %1] : memref<?x24xf64>
            %c0_11 = arith.constant 0 : index
            %c4 = arith.constant 4 : index
            %c1_12 = arith.constant 1 : index
            scf.for %arg15 = %c0_11 to %c4 step %c1_12 {
              %c4_15 = arith.constant 4 : index
              %4 = arith.muli %arg15, %c4_15 : index
              %5 = memref.load %arg6[%0, %4] : memref<?x18xf64>
              %6 = memref.load %arg9[%4, %1] : memref<?x24xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = memref.load %arg10[%0, %1] : memref<?x24xf64>
              %9 = arith.addf %8, %7 : f64
              memref.store %9, %arg10[%0, %1] : memref<?x24xf64>
              %c1_16 = arith.constant 1 : index
              %10 = arith.addi %4, %c1_16 : index
              %11 = memref.load %arg6[%0, %10] : memref<?x18xf64>
              %12 = memref.load %arg9[%10, %1] : memref<?x24xf64>
              %13 = arith.mulf %11, %12 : f64
              %14 = memref.load %arg10[%0, %1] : memref<?x24xf64>
              %15 = arith.addf %14, %13 : f64
              memref.store %15, %arg10[%0, %1] : memref<?x24xf64>
              %c2_17 = arith.constant 2 : index
              %16 = arith.addi %4, %c2_17 : index
              %17 = memref.load %arg6[%0, %16] : memref<?x18xf64>
              %18 = memref.load %arg9[%16, %1] : memref<?x24xf64>
              %19 = arith.mulf %17, %18 : f64
              %20 = memref.load %arg10[%0, %1] : memref<?x24xf64>
              %21 = arith.addf %20, %19 : f64
              memref.store %21, %arg10[%0, %1] : memref<?x24xf64>
              %c3 = arith.constant 3 : index
              %22 = arith.addi %4, %c3 : index
              %23 = memref.load %arg6[%0, %22] : memref<?x18xf64>
              %24 = memref.load %arg9[%22, %1] : memref<?x24xf64>
              %25 = arith.mulf %23, %24 : f64
              %26 = memref.load %arg10[%0, %1] : memref<?x24xf64>
              %27 = arith.addf %26, %25 : f64
              memref.store %27, %arg10[%0, %1] : memref<?x24xf64>
            }
            %c0_13 = arith.constant 0 : index
            %c2 = arith.constant 2 : index
            %c1_14 = arith.constant 1 : index
            scf.for %arg15 = %c0_13 to %c2 step %c1_14 {
              %c16_15 = arith.constant 16 : index
              %4 = arith.addi %arg15, %c16_15 : index
              %5 = memref.load %arg6[%0, %4] : memref<?x18xf64>
              %6 = memref.load %arg9[%4, %1] : memref<?x24xf64>
              %7 = arith.mulf %5, %6 : f64
              %8 = memref.load %arg10[%0, %1] : memref<?x24xf64>
              %9 = arith.addf %8, %7 : f64
              memref.store %9, %arg10[%0, %1] : memref<?x24xf64>
            }
          }
        }
      }
    }
    return
  }
}

