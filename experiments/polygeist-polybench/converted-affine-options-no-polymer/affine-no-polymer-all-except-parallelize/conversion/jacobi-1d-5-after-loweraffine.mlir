module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg5 = %c0_0 to %c1_1 step %c1_2 {
        %0 = arith.addi %arg4, %arg5 : index
        %c0_3 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg6 = %c0_3 to %c7 step %c1_4 {
          %c4 = arith.constant 4 : index
          %1 = arith.muli %arg6, %c4 : index
          %c1_8 = arith.constant 1 : index
          %2 = arith.addi %1, %c1_8 : index
          %c-1 = arith.constant -1 : index
          %3 = arith.addi %2, %c-1 : index
          %4 = memref.load %arg2[%3] : memref<?xf64>
          %5 = memref.load %arg2[%2] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          %c1_9 = arith.constant 1 : index
          %7 = arith.addi %2, %c1_9 : index
          %8 = memref.load %arg2[%7] : memref<?xf64>
          %9 = arith.addf %6, %8 : f64
          %10 = arith.mulf %9, %cst : f64
          memref.store %10, %arg3[%2] : memref<?xf64>
          %c1_10 = arith.constant 1 : index
          %11 = arith.addi %2, %c1_10 : index
          %c-1_11 = arith.constant -1 : index
          %12 = arith.addi %11, %c-1_11 : index
          %13 = memref.load %arg2[%12] : memref<?xf64>
          %14 = memref.load %arg2[%11] : memref<?xf64>
          %15 = arith.addf %13, %14 : f64
          %c1_12 = arith.constant 1 : index
          %16 = arith.addi %11, %c1_12 : index
          %17 = memref.load %arg2[%16] : memref<?xf64>
          %18 = arith.addf %15, %17 : f64
          %19 = arith.mulf %18, %cst : f64
          memref.store %19, %arg3[%11] : memref<?xf64>
          %c2 = arith.constant 2 : index
          %20 = arith.addi %2, %c2 : index
          %c-1_13 = arith.constant -1 : index
          %21 = arith.addi %20, %c-1_13 : index
          %22 = memref.load %arg2[%21] : memref<?xf64>
          %23 = memref.load %arg2[%20] : memref<?xf64>
          %24 = arith.addf %22, %23 : f64
          %c1_14 = arith.constant 1 : index
          %25 = arith.addi %20, %c1_14 : index
          %26 = memref.load %arg2[%25] : memref<?xf64>
          %27 = arith.addf %24, %26 : f64
          %28 = arith.mulf %27, %cst : f64
          memref.store %28, %arg3[%20] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %29 = arith.addi %2, %c3 : index
          %c-1_15 = arith.constant -1 : index
          %30 = arith.addi %29, %c-1_15 : index
          %31 = memref.load %arg2[%30] : memref<?xf64>
          %32 = memref.load %arg2[%29] : memref<?xf64>
          %33 = arith.addf %31, %32 : f64
          %c1_16 = arith.constant 1 : index
          %34 = arith.addi %29, %c1_16 : index
          %35 = memref.load %arg2[%34] : memref<?xf64>
          %36 = arith.addf %33, %35 : f64
          %37 = arith.mulf %36, %cst : f64
          memref.store %37, %arg3[%29] : memref<?xf64>
        }
        %c0_5 = arith.constant 0 : index
        %c7_6 = arith.constant 7 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg6 = %c0_5 to %c7_6 step %c1_7 {
          %c4 = arith.constant 4 : index
          %1 = arith.muli %arg6, %c4 : index
          %c1_8 = arith.constant 1 : index
          %2 = arith.addi %1, %c1_8 : index
          %c-1 = arith.constant -1 : index
          %3 = arith.addi %2, %c-1 : index
          %4 = memref.load %arg3[%3] : memref<?xf64>
          %5 = memref.load %arg3[%2] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          %c1_9 = arith.constant 1 : index
          %7 = arith.addi %2, %c1_9 : index
          %8 = memref.load %arg3[%7] : memref<?xf64>
          %9 = arith.addf %6, %8 : f64
          %10 = arith.mulf %9, %cst : f64
          memref.store %10, %arg2[%2] : memref<?xf64>
          %c1_10 = arith.constant 1 : index
          %11 = arith.addi %2, %c1_10 : index
          %c-1_11 = arith.constant -1 : index
          %12 = arith.addi %11, %c-1_11 : index
          %13 = memref.load %arg3[%12] : memref<?xf64>
          %14 = memref.load %arg3[%11] : memref<?xf64>
          %15 = arith.addf %13, %14 : f64
          %c1_12 = arith.constant 1 : index
          %16 = arith.addi %11, %c1_12 : index
          %17 = memref.load %arg3[%16] : memref<?xf64>
          %18 = arith.addf %15, %17 : f64
          %19 = arith.mulf %18, %cst : f64
          memref.store %19, %arg2[%11] : memref<?xf64>
          %c2 = arith.constant 2 : index
          %20 = arith.addi %2, %c2 : index
          %c-1_13 = arith.constant -1 : index
          %21 = arith.addi %20, %c-1_13 : index
          %22 = memref.load %arg3[%21] : memref<?xf64>
          %23 = memref.load %arg3[%20] : memref<?xf64>
          %24 = arith.addf %22, %23 : f64
          %c1_14 = arith.constant 1 : index
          %25 = arith.addi %20, %c1_14 : index
          %26 = memref.load %arg3[%25] : memref<?xf64>
          %27 = arith.addf %24, %26 : f64
          %28 = arith.mulf %27, %cst : f64
          memref.store %28, %arg2[%20] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %29 = arith.addi %2, %c3 : index
          %c-1_15 = arith.constant -1 : index
          %30 = arith.addi %29, %c-1_15 : index
          %31 = memref.load %arg3[%30] : memref<?xf64>
          %32 = memref.load %arg3[%29] : memref<?xf64>
          %33 = arith.addf %31, %32 : f64
          %c1_16 = arith.constant 1 : index
          %34 = arith.addi %29, %c1_16 : index
          %35 = memref.load %arg3[%34] : memref<?xf64>
          %36 = arith.addf %33, %35 : f64
          %37 = arith.mulf %36, %cst : f64
          memref.store %37, %arg2[%29] : memref<?xf64>
        }
      }
    }
    return
  }
}

