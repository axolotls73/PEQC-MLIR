module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      %c1_0 = arith.constant 1 : index
      %c29 = arith.constant 29 : index
      %c4 = arith.constant 4 : index
      scf.for %arg5 = %c1_0 to %c29 step %c4 {
        %c-1 = arith.constant -1 : index
        %0 = arith.addi %arg5, %c-1 : index
        %1 = memref.load %arg2[%0] : memref<?xf64>
        %2 = memref.load %arg2[%arg5] : memref<?xf64>
        %3 = arith.addf %1, %2 : f64
        %c1_4 = arith.constant 1 : index
        %4 = arith.addi %arg5, %c1_4 : index
        %5 = memref.load %arg2[%4] : memref<?xf64>
        %6 = arith.addf %3, %5 : f64
        %7 = arith.mulf %6, %cst : f64
        memref.store %7, %arg3[%arg5] : memref<?xf64>
        %c1_5 = arith.constant 1 : index
        %8 = arith.addi %arg5, %c1_5 : index
        %c-1_6 = arith.constant -1 : index
        %9 = arith.addi %8, %c-1_6 : index
        %10 = memref.load %arg2[%9] : memref<?xf64>
        %11 = memref.load %arg2[%8] : memref<?xf64>
        %12 = arith.addf %10, %11 : f64
        %c1_7 = arith.constant 1 : index
        %13 = arith.addi %8, %c1_7 : index
        %14 = memref.load %arg2[%13] : memref<?xf64>
        %15 = arith.addf %12, %14 : f64
        %16 = arith.mulf %15, %cst : f64
        memref.store %16, %arg3[%8] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %17 = arith.addi %arg5, %c2 : index
        %c-1_8 = arith.constant -1 : index
        %18 = arith.addi %17, %c-1_8 : index
        %19 = memref.load %arg2[%18] : memref<?xf64>
        %20 = memref.load %arg2[%17] : memref<?xf64>
        %21 = arith.addf %19, %20 : f64
        %c1_9 = arith.constant 1 : index
        %22 = arith.addi %17, %c1_9 : index
        %23 = memref.load %arg2[%22] : memref<?xf64>
        %24 = arith.addf %21, %23 : f64
        %25 = arith.mulf %24, %cst : f64
        memref.store %25, %arg3[%17] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %26 = arith.addi %arg5, %c3 : index
        %c-1_10 = arith.constant -1 : index
        %27 = arith.addi %26, %c-1_10 : index
        %28 = memref.load %arg2[%27] : memref<?xf64>
        %29 = memref.load %arg2[%26] : memref<?xf64>
        %30 = arith.addf %28, %29 : f64
        %c1_11 = arith.constant 1 : index
        %31 = arith.addi %26, %c1_11 : index
        %32 = memref.load %arg2[%31] : memref<?xf64>
        %33 = arith.addf %30, %32 : f64
        %34 = arith.mulf %33, %cst : f64
        memref.store %34, %arg3[%26] : memref<?xf64>
      }
      %c1_1 = arith.constant 1 : index
      %c29_2 = arith.constant 29 : index
      %c4_3 = arith.constant 4 : index
      scf.for %arg5 = %c1_1 to %c29_2 step %c4_3 {
        %c-1 = arith.constant -1 : index
        %0 = arith.addi %arg5, %c-1 : index
        %1 = memref.load %arg3[%0] : memref<?xf64>
        %2 = memref.load %arg3[%arg5] : memref<?xf64>
        %3 = arith.addf %1, %2 : f64
        %c1_4 = arith.constant 1 : index
        %4 = arith.addi %arg5, %c1_4 : index
        %5 = memref.load %arg3[%4] : memref<?xf64>
        %6 = arith.addf %3, %5 : f64
        %7 = arith.mulf %6, %cst : f64
        memref.store %7, %arg2[%arg5] : memref<?xf64>
        %c1_5 = arith.constant 1 : index
        %8 = arith.addi %arg5, %c1_5 : index
        %c-1_6 = arith.constant -1 : index
        %9 = arith.addi %8, %c-1_6 : index
        %10 = memref.load %arg3[%9] : memref<?xf64>
        %11 = memref.load %arg3[%8] : memref<?xf64>
        %12 = arith.addf %10, %11 : f64
        %c1_7 = arith.constant 1 : index
        %13 = arith.addi %8, %c1_7 : index
        %14 = memref.load %arg3[%13] : memref<?xf64>
        %15 = arith.addf %12, %14 : f64
        %16 = arith.mulf %15, %cst : f64
        memref.store %16, %arg2[%8] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %17 = arith.addi %arg5, %c2 : index
        %c-1_8 = arith.constant -1 : index
        %18 = arith.addi %17, %c-1_8 : index
        %19 = memref.load %arg3[%18] : memref<?xf64>
        %20 = memref.load %arg3[%17] : memref<?xf64>
        %21 = arith.addf %19, %20 : f64
        %c1_9 = arith.constant 1 : index
        %22 = arith.addi %17, %c1_9 : index
        %23 = memref.load %arg3[%22] : memref<?xf64>
        %24 = arith.addf %21, %23 : f64
        %25 = arith.mulf %24, %cst : f64
        memref.store %25, %arg2[%17] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %26 = arith.addi %arg5, %c3 : index
        %c-1_10 = arith.constant -1 : index
        %27 = arith.addi %26, %c-1_10 : index
        %28 = memref.load %arg3[%27] : memref<?xf64>
        %29 = memref.load %arg3[%26] : memref<?xf64>
        %30 = arith.addf %28, %29 : f64
        %c1_11 = arith.constant 1 : index
        %31 = arith.addi %26, %c1_11 : index
        %32 = memref.load %arg3[%31] : memref<?xf64>
        %33 = arith.addf %30, %32 : f64
        %34 = arith.mulf %33, %cst : f64
        memref.store %34, %arg2[%26] : memref<?xf64>
      }
    }
    return
  }
}

