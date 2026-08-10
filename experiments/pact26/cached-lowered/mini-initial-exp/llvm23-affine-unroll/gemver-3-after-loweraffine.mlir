module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %c40 step %c1 {
      %c0_8 = arith.constant 0 : index
      %c40_9 = arith.constant 40 : index
      %c4_10 = arith.constant 4 : index
      scf.for %arg13 = %c0_8 to %c40_9 step %c4_10 {
        %0 = memref.load %arg3[%arg12, %arg13] : memref<?x40xf64>
        %1 = memref.load %arg4[%arg12] : memref<?xf64>
        %2 = memref.load %arg5[%arg13] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        %5 = memref.load %arg6[%arg12] : memref<?xf64>
        %6 = memref.load %arg7[%arg13] : memref<?xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = arith.addf %4, %7 : f64
        memref.store %8, %arg3[%arg12, %arg13] : memref<?x40xf64>
        %c1_11 = arith.constant 1 : index
        %9 = arith.addi %arg13, %c1_11 : index
        %10 = memref.load %arg3[%arg12, %9] : memref<?x40xf64>
        %11 = memref.load %arg4[%arg12] : memref<?xf64>
        %12 = memref.load %arg5[%9] : memref<?xf64>
        %13 = arith.mulf %11, %12 : f64
        %14 = arith.addf %10, %13 : f64
        %15 = memref.load %arg6[%arg12] : memref<?xf64>
        %16 = memref.load %arg7[%9] : memref<?xf64>
        %17 = arith.mulf %15, %16 : f64
        %18 = arith.addf %14, %17 : f64
        memref.store %18, %arg3[%arg12, %9] : memref<?x40xf64>
        %c2 = arith.constant 2 : index
        %19 = arith.addi %arg13, %c2 : index
        %20 = memref.load %arg3[%arg12, %19] : memref<?x40xf64>
        %21 = memref.load %arg4[%arg12] : memref<?xf64>
        %22 = memref.load %arg5[%19] : memref<?xf64>
        %23 = arith.mulf %21, %22 : f64
        %24 = arith.addf %20, %23 : f64
        %25 = memref.load %arg6[%arg12] : memref<?xf64>
        %26 = memref.load %arg7[%19] : memref<?xf64>
        %27 = arith.mulf %25, %26 : f64
        %28 = arith.addf %24, %27 : f64
        memref.store %28, %arg3[%arg12, %19] : memref<?x40xf64>
        %c3 = arith.constant 3 : index
        %29 = arith.addi %arg13, %c3 : index
        %30 = memref.load %arg3[%arg12, %29] : memref<?x40xf64>
        %31 = memref.load %arg4[%arg12] : memref<?xf64>
        %32 = memref.load %arg5[%29] : memref<?xf64>
        %33 = arith.mulf %31, %32 : f64
        %34 = arith.addf %30, %33 : f64
        %35 = memref.load %arg6[%arg12] : memref<?xf64>
        %36 = memref.load %arg7[%29] : memref<?xf64>
        %37 = arith.mulf %35, %36 : f64
        %38 = arith.addf %34, %37 : f64
        memref.store %38, %arg3[%arg12, %29] : memref<?x40xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c40_1 = arith.constant 40 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg12 = %c0_0 to %c40_1 step %c1_2 {
      %c0_8 = arith.constant 0 : index
      %c40_9 = arith.constant 40 : index
      %c4_10 = arith.constant 4 : index
      scf.for %arg13 = %c0_8 to %c40_9 step %c4_10 {
        %0 = memref.load %arg9[%arg12] : memref<?xf64>
        %1 = memref.load %arg3[%arg13, %arg12] : memref<?x40xf64>
        %2 = arith.mulf %arg2, %1 : f64
        %3 = memref.load %arg10[%arg13] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %0, %4 : f64
        memref.store %5, %arg9[%arg12] : memref<?xf64>
        %c1_11 = arith.constant 1 : index
        %6 = arith.addi %arg13, %c1_11 : index
        %7 = memref.load %arg9[%arg12] : memref<?xf64>
        %8 = memref.load %arg3[%6, %arg12] : memref<?x40xf64>
        %9 = arith.mulf %arg2, %8 : f64
        %10 = memref.load %arg10[%6] : memref<?xf64>
        %11 = arith.mulf %9, %10 : f64
        %12 = arith.addf %7, %11 : f64
        memref.store %12, %arg9[%arg12] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %13 = arith.addi %arg13, %c2 : index
        %14 = memref.load %arg9[%arg12] : memref<?xf64>
        %15 = memref.load %arg3[%13, %arg12] : memref<?x40xf64>
        %16 = arith.mulf %arg2, %15 : f64
        %17 = memref.load %arg10[%13] : memref<?xf64>
        %18 = arith.mulf %16, %17 : f64
        %19 = arith.addf %14, %18 : f64
        memref.store %19, %arg9[%arg12] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %20 = arith.addi %arg13, %c3 : index
        %21 = memref.load %arg9[%arg12] : memref<?xf64>
        %22 = memref.load %arg3[%20, %arg12] : memref<?x40xf64>
        %23 = arith.mulf %arg2, %22 : f64
        %24 = memref.load %arg10[%20] : memref<?xf64>
        %25 = arith.mulf %23, %24 : f64
        %26 = arith.addf %21, %25 : f64
        memref.store %26, %arg9[%arg12] : memref<?xf64>
      }
    }
    %c0_3 = arith.constant 0 : index
    %c40_4 = arith.constant 40 : index
    %c4 = arith.constant 4 : index
    scf.for %arg12 = %c0_3 to %c40_4 step %c4 {
      %0 = memref.load %arg9[%arg12] : memref<?xf64>
      %1 = memref.load %arg11[%arg12] : memref<?xf64>
      %2 = arith.addf %0, %1 : f64
      memref.store %2, %arg9[%arg12] : memref<?xf64>
      %c1_8 = arith.constant 1 : index
      %3 = arith.addi %arg12, %c1_8 : index
      %4 = memref.load %arg9[%3] : memref<?xf64>
      %5 = memref.load %arg11[%3] : memref<?xf64>
      %6 = arith.addf %4, %5 : f64
      memref.store %6, %arg9[%3] : memref<?xf64>
      %c2 = arith.constant 2 : index
      %7 = arith.addi %arg12, %c2 : index
      %8 = memref.load %arg9[%7] : memref<?xf64>
      %9 = memref.load %arg11[%7] : memref<?xf64>
      %10 = arith.addf %8, %9 : f64
      memref.store %10, %arg9[%7] : memref<?xf64>
      %c3 = arith.constant 3 : index
      %11 = arith.addi %arg12, %c3 : index
      %12 = memref.load %arg9[%11] : memref<?xf64>
      %13 = memref.load %arg11[%11] : memref<?xf64>
      %14 = arith.addf %12, %13 : f64
      memref.store %14, %arg9[%11] : memref<?xf64>
    }
    %c0_5 = arith.constant 0 : index
    %c40_6 = arith.constant 40 : index
    %c1_7 = arith.constant 1 : index
    scf.for %arg12 = %c0_5 to %c40_6 step %c1_7 {
      %c0_8 = arith.constant 0 : index
      %c40_9 = arith.constant 40 : index
      %c4_10 = arith.constant 4 : index
      scf.for %arg13 = %c0_8 to %c40_9 step %c4_10 {
        %0 = memref.load %arg8[%arg12] : memref<?xf64>
        %1 = memref.load %arg3[%arg12, %arg13] : memref<?x40xf64>
        %2 = arith.mulf %arg1, %1 : f64
        %3 = memref.load %arg9[%arg13] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %0, %4 : f64
        memref.store %5, %arg8[%arg12] : memref<?xf64>
        %c1_11 = arith.constant 1 : index
        %6 = arith.addi %arg13, %c1_11 : index
        %7 = memref.load %arg8[%arg12] : memref<?xf64>
        %8 = memref.load %arg3[%arg12, %6] : memref<?x40xf64>
        %9 = arith.mulf %arg1, %8 : f64
        %10 = memref.load %arg9[%6] : memref<?xf64>
        %11 = arith.mulf %9, %10 : f64
        %12 = arith.addf %7, %11 : f64
        memref.store %12, %arg8[%arg12] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %13 = arith.addi %arg13, %c2 : index
        %14 = memref.load %arg8[%arg12] : memref<?xf64>
        %15 = memref.load %arg3[%arg12, %13] : memref<?x40xf64>
        %16 = arith.mulf %arg1, %15 : f64
        %17 = memref.load %arg9[%13] : memref<?xf64>
        %18 = arith.mulf %16, %17 : f64
        %19 = arith.addf %14, %18 : f64
        memref.store %19, %arg8[%arg12] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %20 = arith.addi %arg13, %c3 : index
        %21 = memref.load %arg8[%arg12] : memref<?xf64>
        %22 = memref.load %arg3[%arg12, %20] : memref<?x40xf64>
        %23 = arith.mulf %arg1, %22 : f64
        %24 = memref.load %arg9[%20] : memref<?xf64>
        %25 = arith.mulf %23, %24 : f64
        %26 = arith.addf %21, %25 : f64
        memref.store %26, %arg8[%arg12] : memref<?xf64>
      }
    }
    return
  }
}

