module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.parallel (%arg4) = (%c0) to (%c1) step (%c1_0) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg4, %c32 : index
      %c0_1 = arith.constant 0 : index
      %c20 = arith.constant 20 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg5 = %c0_1 to %c20 step %c1_2 {
        %1 = arith.addi %0, %arg5 : index
        %c0_3 = arith.constant 0 : index
        %c7 = arith.constant 7 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg6 = %c0_3 to %c7 step %c1_4 {
          %c4 = arith.constant 4 : index
          %2 = arith.muli %arg6, %c4 : index
          %c1_8 = arith.constant 1 : index
          %3 = arith.addi %2, %c1_8 : index
          %c-1 = arith.constant -1 : index
          %4 = arith.addi %3, %c-1 : index
          %5 = memref.load %arg2[%4] : memref<?xf64>
          %6 = memref.load %arg2[%3] : memref<?xf64>
          %7 = arith.addf %5, %6 : f64
          %c1_9 = arith.constant 1 : index
          %8 = arith.addi %3, %c1_9 : index
          %9 = memref.load %arg2[%8] : memref<?xf64>
          %10 = arith.addf %7, %9 : f64
          %11 = arith.mulf %10, %cst : f64
          memref.store %11, %arg3[%3] : memref<?xf64>
          %c1_10 = arith.constant 1 : index
          %12 = arith.addi %3, %c1_10 : index
          %c-1_11 = arith.constant -1 : index
          %13 = arith.addi %12, %c-1_11 : index
          %14 = memref.load %arg2[%13] : memref<?xf64>
          %15 = memref.load %arg2[%12] : memref<?xf64>
          %16 = arith.addf %14, %15 : f64
          %c1_12 = arith.constant 1 : index
          %17 = arith.addi %12, %c1_12 : index
          %18 = memref.load %arg2[%17] : memref<?xf64>
          %19 = arith.addf %16, %18 : f64
          %20 = arith.mulf %19, %cst : f64
          memref.store %20, %arg3[%12] : memref<?xf64>
          %c2 = arith.constant 2 : index
          %21 = arith.addi %3, %c2 : index
          %c-1_13 = arith.constant -1 : index
          %22 = arith.addi %21, %c-1_13 : index
          %23 = memref.load %arg2[%22] : memref<?xf64>
          %24 = memref.load %arg2[%21] : memref<?xf64>
          %25 = arith.addf %23, %24 : f64
          %c1_14 = arith.constant 1 : index
          %26 = arith.addi %21, %c1_14 : index
          %27 = memref.load %arg2[%26] : memref<?xf64>
          %28 = arith.addf %25, %27 : f64
          %29 = arith.mulf %28, %cst : f64
          memref.store %29, %arg3[%21] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %30 = arith.addi %3, %c3 : index
          %c-1_15 = arith.constant -1 : index
          %31 = arith.addi %30, %c-1_15 : index
          %32 = memref.load %arg2[%31] : memref<?xf64>
          %33 = memref.load %arg2[%30] : memref<?xf64>
          %34 = arith.addf %32, %33 : f64
          %c1_16 = arith.constant 1 : index
          %35 = arith.addi %30, %c1_16 : index
          %36 = memref.load %arg2[%35] : memref<?xf64>
          %37 = arith.addf %34, %36 : f64
          %38 = arith.mulf %37, %cst : f64
          memref.store %38, %arg3[%30] : memref<?xf64>
        }
        %c0_5 = arith.constant 0 : index
        %c7_6 = arith.constant 7 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg6 = %c0_5 to %c7_6 step %c1_7 {
          %c4 = arith.constant 4 : index
          %2 = arith.muli %arg6, %c4 : index
          %c1_8 = arith.constant 1 : index
          %3 = arith.addi %2, %c1_8 : index
          %c-1 = arith.constant -1 : index
          %4 = arith.addi %3, %c-1 : index
          %5 = memref.load %arg3[%4] : memref<?xf64>
          %6 = memref.load %arg3[%3] : memref<?xf64>
          %7 = arith.addf %5, %6 : f64
          %c1_9 = arith.constant 1 : index
          %8 = arith.addi %3, %c1_9 : index
          %9 = memref.load %arg3[%8] : memref<?xf64>
          %10 = arith.addf %7, %9 : f64
          %11 = arith.mulf %10, %cst : f64
          memref.store %11, %arg2[%3] : memref<?xf64>
          %c1_10 = arith.constant 1 : index
          %12 = arith.addi %3, %c1_10 : index
          %c-1_11 = arith.constant -1 : index
          %13 = arith.addi %12, %c-1_11 : index
          %14 = memref.load %arg3[%13] : memref<?xf64>
          %15 = memref.load %arg3[%12] : memref<?xf64>
          %16 = arith.addf %14, %15 : f64
          %c1_12 = arith.constant 1 : index
          %17 = arith.addi %12, %c1_12 : index
          %18 = memref.load %arg3[%17] : memref<?xf64>
          %19 = arith.addf %16, %18 : f64
          %20 = arith.mulf %19, %cst : f64
          memref.store %20, %arg2[%12] : memref<?xf64>
          %c2 = arith.constant 2 : index
          %21 = arith.addi %3, %c2 : index
          %c-1_13 = arith.constant -1 : index
          %22 = arith.addi %21, %c-1_13 : index
          %23 = memref.load %arg3[%22] : memref<?xf64>
          %24 = memref.load %arg3[%21] : memref<?xf64>
          %25 = arith.addf %23, %24 : f64
          %c1_14 = arith.constant 1 : index
          %26 = arith.addi %21, %c1_14 : index
          %27 = memref.load %arg3[%26] : memref<?xf64>
          %28 = arith.addf %25, %27 : f64
          %29 = arith.mulf %28, %cst : f64
          memref.store %29, %arg2[%21] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %30 = arith.addi %3, %c3 : index
          %c-1_15 = arith.constant -1 : index
          %31 = arith.addi %30, %c-1_15 : index
          %32 = memref.load %arg3[%31] : memref<?xf64>
          %33 = memref.load %arg3[%30] : memref<?xf64>
          %34 = arith.addf %32, %33 : f64
          %c1_16 = arith.constant 1 : index
          %35 = arith.addi %30, %c1_16 : index
          %36 = memref.load %arg3[%35] : memref<?xf64>
          %37 = arith.addf %34, %36 : f64
          %38 = arith.mulf %37, %cst : f64
          memref.store %38, %arg2[%30] : memref<?xf64>
        }
      }
      scf.reduce 
    }
    return
  }
}

