module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      %c1_0 = arith.constant 1 : index
      %c29 = arith.constant 29 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg5 = %c1_0 to %c29 step %c1_1 {
        %c1_5 = arith.constant 1 : index
        %c29_6 = arith.constant 29 : index
        %c4 = arith.constant 4 : index
        scf.for %arg6 = %c1_5 to %c29_6 step %c4 {
          %0 = memref.load %arg2[%arg5, %arg6] : memref<?x30xf64>
          %c-1 = arith.constant -1 : index
          %1 = arith.addi %arg6, %c-1 : index
          %2 = memref.load %arg2[%arg5, %1] : memref<?x30xf64>
          %3 = arith.addf %0, %2 : f64
          %c1_7 = arith.constant 1 : index
          %4 = arith.addi %arg6, %c1_7 : index
          %5 = memref.load %arg2[%arg5, %4] : memref<?x30xf64>
          %6 = arith.addf %3, %5 : f64
          %c1_8 = arith.constant 1 : index
          %7 = arith.addi %arg5, %c1_8 : index
          %8 = memref.load %arg2[%7, %arg6] : memref<?x30xf64>
          %9 = arith.addf %6, %8 : f64
          %c-1_9 = arith.constant -1 : index
          %10 = arith.addi %arg5, %c-1_9 : index
          %11 = memref.load %arg2[%10, %arg6] : memref<?x30xf64>
          %12 = arith.addf %9, %11 : f64
          %13 = arith.mulf %12, %cst : f64
          memref.store %13, %arg3[%arg5, %arg6] : memref<?x30xf64>
          %c1_10 = arith.constant 1 : index
          %14 = arith.addi %arg6, %c1_10 : index
          %15 = memref.load %arg2[%arg5, %14] : memref<?x30xf64>
          %c-1_11 = arith.constant -1 : index
          %16 = arith.addi %14, %c-1_11 : index
          %17 = memref.load %arg2[%arg5, %16] : memref<?x30xf64>
          %18 = arith.addf %15, %17 : f64
          %c1_12 = arith.constant 1 : index
          %19 = arith.addi %14, %c1_12 : index
          %20 = memref.load %arg2[%arg5, %19] : memref<?x30xf64>
          %21 = arith.addf %18, %20 : f64
          %c1_13 = arith.constant 1 : index
          %22 = arith.addi %arg5, %c1_13 : index
          %23 = memref.load %arg2[%22, %14] : memref<?x30xf64>
          %24 = arith.addf %21, %23 : f64
          %c-1_14 = arith.constant -1 : index
          %25 = arith.addi %arg5, %c-1_14 : index
          %26 = memref.load %arg2[%25, %14] : memref<?x30xf64>
          %27 = arith.addf %24, %26 : f64
          %28 = arith.mulf %27, %cst : f64
          memref.store %28, %arg3[%arg5, %14] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %29 = arith.addi %arg6, %c2 : index
          %30 = memref.load %arg2[%arg5, %29] : memref<?x30xf64>
          %c-1_15 = arith.constant -1 : index
          %31 = arith.addi %29, %c-1_15 : index
          %32 = memref.load %arg2[%arg5, %31] : memref<?x30xf64>
          %33 = arith.addf %30, %32 : f64
          %c1_16 = arith.constant 1 : index
          %34 = arith.addi %29, %c1_16 : index
          %35 = memref.load %arg2[%arg5, %34] : memref<?x30xf64>
          %36 = arith.addf %33, %35 : f64
          %c1_17 = arith.constant 1 : index
          %37 = arith.addi %arg5, %c1_17 : index
          %38 = memref.load %arg2[%37, %29] : memref<?x30xf64>
          %39 = arith.addf %36, %38 : f64
          %c-1_18 = arith.constant -1 : index
          %40 = arith.addi %arg5, %c-1_18 : index
          %41 = memref.load %arg2[%40, %29] : memref<?x30xf64>
          %42 = arith.addf %39, %41 : f64
          %43 = arith.mulf %42, %cst : f64
          memref.store %43, %arg3[%arg5, %29] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %44 = arith.addi %arg6, %c3 : index
          %45 = memref.load %arg2[%arg5, %44] : memref<?x30xf64>
          %c-1_19 = arith.constant -1 : index
          %46 = arith.addi %44, %c-1_19 : index
          %47 = memref.load %arg2[%arg5, %46] : memref<?x30xf64>
          %48 = arith.addf %45, %47 : f64
          %c1_20 = arith.constant 1 : index
          %49 = arith.addi %44, %c1_20 : index
          %50 = memref.load %arg2[%arg5, %49] : memref<?x30xf64>
          %51 = arith.addf %48, %50 : f64
          %c1_21 = arith.constant 1 : index
          %52 = arith.addi %arg5, %c1_21 : index
          %53 = memref.load %arg2[%52, %44] : memref<?x30xf64>
          %54 = arith.addf %51, %53 : f64
          %c-1_22 = arith.constant -1 : index
          %55 = arith.addi %arg5, %c-1_22 : index
          %56 = memref.load %arg2[%55, %44] : memref<?x30xf64>
          %57 = arith.addf %54, %56 : f64
          %58 = arith.mulf %57, %cst : f64
          memref.store %58, %arg3[%arg5, %44] : memref<?x30xf64>
        }
      }
      %c1_2 = arith.constant 1 : index
      %c29_3 = arith.constant 29 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg5 = %c1_2 to %c29_3 step %c1_4 {
        %c1_5 = arith.constant 1 : index
        %c29_6 = arith.constant 29 : index
        %c4 = arith.constant 4 : index
        scf.for %arg6 = %c1_5 to %c29_6 step %c4 {
          %0 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %c-1 = arith.constant -1 : index
          %1 = arith.addi %arg6, %c-1 : index
          %2 = memref.load %arg3[%arg5, %1] : memref<?x30xf64>
          %3 = arith.addf %0, %2 : f64
          %c1_7 = arith.constant 1 : index
          %4 = arith.addi %arg6, %c1_7 : index
          %5 = memref.load %arg3[%arg5, %4] : memref<?x30xf64>
          %6 = arith.addf %3, %5 : f64
          %c1_8 = arith.constant 1 : index
          %7 = arith.addi %arg5, %c1_8 : index
          %8 = memref.load %arg3[%7, %arg6] : memref<?x30xf64>
          %9 = arith.addf %6, %8 : f64
          %c-1_9 = arith.constant -1 : index
          %10 = arith.addi %arg5, %c-1_9 : index
          %11 = memref.load %arg3[%10, %arg6] : memref<?x30xf64>
          %12 = arith.addf %9, %11 : f64
          %13 = arith.mulf %12, %cst : f64
          memref.store %13, %arg2[%arg5, %arg6] : memref<?x30xf64>
          %c1_10 = arith.constant 1 : index
          %14 = arith.addi %arg6, %c1_10 : index
          %15 = memref.load %arg3[%arg5, %14] : memref<?x30xf64>
          %c-1_11 = arith.constant -1 : index
          %16 = arith.addi %14, %c-1_11 : index
          %17 = memref.load %arg3[%arg5, %16] : memref<?x30xf64>
          %18 = arith.addf %15, %17 : f64
          %c1_12 = arith.constant 1 : index
          %19 = arith.addi %14, %c1_12 : index
          %20 = memref.load %arg3[%arg5, %19] : memref<?x30xf64>
          %21 = arith.addf %18, %20 : f64
          %c1_13 = arith.constant 1 : index
          %22 = arith.addi %arg5, %c1_13 : index
          %23 = memref.load %arg3[%22, %14] : memref<?x30xf64>
          %24 = arith.addf %21, %23 : f64
          %c-1_14 = arith.constant -1 : index
          %25 = arith.addi %arg5, %c-1_14 : index
          %26 = memref.load %arg3[%25, %14] : memref<?x30xf64>
          %27 = arith.addf %24, %26 : f64
          %28 = arith.mulf %27, %cst : f64
          memref.store %28, %arg2[%arg5, %14] : memref<?x30xf64>
          %c2 = arith.constant 2 : index
          %29 = arith.addi %arg6, %c2 : index
          %30 = memref.load %arg3[%arg5, %29] : memref<?x30xf64>
          %c-1_15 = arith.constant -1 : index
          %31 = arith.addi %29, %c-1_15 : index
          %32 = memref.load %arg3[%arg5, %31] : memref<?x30xf64>
          %33 = arith.addf %30, %32 : f64
          %c1_16 = arith.constant 1 : index
          %34 = arith.addi %29, %c1_16 : index
          %35 = memref.load %arg3[%arg5, %34] : memref<?x30xf64>
          %36 = arith.addf %33, %35 : f64
          %c1_17 = arith.constant 1 : index
          %37 = arith.addi %arg5, %c1_17 : index
          %38 = memref.load %arg3[%37, %29] : memref<?x30xf64>
          %39 = arith.addf %36, %38 : f64
          %c-1_18 = arith.constant -1 : index
          %40 = arith.addi %arg5, %c-1_18 : index
          %41 = memref.load %arg3[%40, %29] : memref<?x30xf64>
          %42 = arith.addf %39, %41 : f64
          %43 = arith.mulf %42, %cst : f64
          memref.store %43, %arg2[%arg5, %29] : memref<?x30xf64>
          %c3 = arith.constant 3 : index
          %44 = arith.addi %arg6, %c3 : index
          %45 = memref.load %arg3[%arg5, %44] : memref<?x30xf64>
          %c-1_19 = arith.constant -1 : index
          %46 = arith.addi %44, %c-1_19 : index
          %47 = memref.load %arg3[%arg5, %46] : memref<?x30xf64>
          %48 = arith.addf %45, %47 : f64
          %c1_20 = arith.constant 1 : index
          %49 = arith.addi %44, %c1_20 : index
          %50 = memref.load %arg3[%arg5, %49] : memref<?x30xf64>
          %51 = arith.addf %48, %50 : f64
          %c1_21 = arith.constant 1 : index
          %52 = arith.addi %arg5, %c1_21 : index
          %53 = memref.load %arg3[%52, %44] : memref<?x30xf64>
          %54 = arith.addf %51, %53 : f64
          %c-1_22 = arith.constant -1 : index
          %55 = arith.addi %arg5, %c-1_22 : index
          %56 = memref.load %arg3[%55, %44] : memref<?x30xf64>
          %57 = arith.addf %54, %56 : f64
          %58 = arith.mulf %57, %cst : f64
          memref.store %58, %arg2[%arg5, %44] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

