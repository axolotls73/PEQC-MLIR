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
        memref.store %cst, %arg6[%arg11, %arg12] : memref<?x18xf64>
        %c0_5 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c4 = arith.constant 4 : index
        scf.for %arg13 = %c0_5 to %c20 step %c4 {
          %0 = memref.load %arg7[%arg11, %arg13] : memref<?x22xf64>
          %1 = arith.mulf %arg4, %0 : f64
          %2 = memref.load %arg8[%arg13, %arg12] : memref<?x18xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = memref.load %arg6[%arg11, %arg12] : memref<?x18xf64>
          %5 = arith.addf %4, %3 : f64
          memref.store %5, %arg6[%arg11, %arg12] : memref<?x18xf64>
          %c1_8 = arith.constant 1 : index
          %6 = arith.addi %arg13, %c1_8 : index
          %7 = memref.load %arg7[%arg11, %6] : memref<?x22xf64>
          %8 = arith.mulf %arg4, %7 : f64
          %9 = memref.load %arg8[%6, %arg12] : memref<?x18xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = memref.load %arg6[%arg11, %arg12] : memref<?x18xf64>
          %12 = arith.addf %11, %10 : f64
          memref.store %12, %arg6[%arg11, %arg12] : memref<?x18xf64>
          %c2 = arith.constant 2 : index
          %13 = arith.addi %arg13, %c2 : index
          %14 = memref.load %arg7[%arg11, %13] : memref<?x22xf64>
          %15 = arith.mulf %arg4, %14 : f64
          %16 = memref.load %arg8[%13, %arg12] : memref<?x18xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = memref.load %arg6[%arg11, %arg12] : memref<?x18xf64>
          %19 = arith.addf %18, %17 : f64
          memref.store %19, %arg6[%arg11, %arg12] : memref<?x18xf64>
          %c3 = arith.constant 3 : index
          %20 = arith.addi %arg13, %c3 : index
          %21 = memref.load %arg7[%arg11, %20] : memref<?x22xf64>
          %22 = arith.mulf %arg4, %21 : f64
          %23 = memref.load %arg8[%20, %arg12] : memref<?x18xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = memref.load %arg6[%arg11, %arg12] : memref<?x18xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %arg6[%arg11, %arg12] : memref<?x18xf64>
        }
        %c20_6 = arith.constant 20 : index
        %c22 = arith.constant 22 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg13 = %c20_6 to %c22 step %c1_7 {
          %0 = memref.load %arg7[%arg11, %arg13] : memref<?x22xf64>
          %1 = arith.mulf %arg4, %0 : f64
          %2 = memref.load %arg8[%arg13, %arg12] : memref<?x18xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = memref.load %arg6[%arg11, %arg12] : memref<?x18xf64>
          %5 = arith.addf %4, %3 : f64
          memref.store %5, %arg6[%arg11, %arg12] : memref<?x18xf64>
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
        %0 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
        %1 = arith.mulf %0, %arg5 : f64
        memref.store %1, %arg10[%arg11, %arg12] : memref<?x24xf64>
        %c0_5 = arith.constant 0 : index
        %c16_6 = arith.constant 16 : index
        %c4 = arith.constant 4 : index
        scf.for %arg13 = %c0_5 to %c16_6 step %c4 {
          %2 = memref.load %arg6[%arg11, %arg13] : memref<?x18xf64>
          %3 = memref.load %arg9[%arg13, %arg12] : memref<?x24xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
          %6 = arith.addf %5, %4 : f64
          memref.store %6, %arg10[%arg11, %arg12] : memref<?x24xf64>
          %c1_9 = arith.constant 1 : index
          %7 = arith.addi %arg13, %c1_9 : index
          %8 = memref.load %arg6[%arg11, %7] : memref<?x18xf64>
          %9 = memref.load %arg9[%7, %arg12] : memref<?x24xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
          %12 = arith.addf %11, %10 : f64
          memref.store %12, %arg10[%arg11, %arg12] : memref<?x24xf64>
          %c2 = arith.constant 2 : index
          %13 = arith.addi %arg13, %c2 : index
          %14 = memref.load %arg6[%arg11, %13] : memref<?x18xf64>
          %15 = memref.load %arg9[%13, %arg12] : memref<?x24xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
          %18 = arith.addf %17, %16 : f64
          memref.store %18, %arg10[%arg11, %arg12] : memref<?x24xf64>
          %c3 = arith.constant 3 : index
          %19 = arith.addi %arg13, %c3 : index
          %20 = memref.load %arg6[%arg11, %19] : memref<?x18xf64>
          %21 = memref.load %arg9[%19, %arg12] : memref<?x24xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
          %24 = arith.addf %23, %22 : f64
          memref.store %24, %arg10[%arg11, %arg12] : memref<?x24xf64>
        }
        %c16_7 = arith.constant 16 : index
        %c18 = arith.constant 18 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg13 = %c16_7 to %c18 step %c1_8 {
          %2 = memref.load %arg6[%arg11, %arg13] : memref<?x18xf64>
          %3 = memref.load %arg9[%arg13, %arg12] : memref<?x24xf64>
          %4 = arith.mulf %2, %3 : f64
          %5 = memref.load %arg10[%arg11, %arg12] : memref<?x24xf64>
          %6 = arith.addf %5, %4 : f64
          memref.store %6, %arg10[%arg11, %arg12] : memref<?x24xf64>
        }
      }
    }
    return
  }
}

