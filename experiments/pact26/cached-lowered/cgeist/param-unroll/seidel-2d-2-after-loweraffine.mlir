module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %0 step %c1 {
      %c1_0 = arith.constant 1 : index
      %c-1 = arith.constant -1 : index
      %2 = arith.addi %1, %c-1 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg4 = %c1_0 to %2 step %c1_1 {
        %c1_2 = arith.constant 1 : index
        %c-1_3 = arith.constant -1 : index
        %3 = arith.addi %1, %c-1_3 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg5 = %c1_2 to %3 step %c1_4 {
          %c-1_5 = arith.constant -1 : index
          %4 = arith.addi %arg4, %c-1_5 : index
          %c-1_6 = arith.constant -1 : index
          %5 = arith.addi %arg5, %c-1_6 : index
          %6 = memref.load %arg2[%4, %5] : memref<?x40xf64>
          %c-1_7 = arith.constant -1 : index
          %7 = arith.addi %arg4, %c-1_7 : index
          %8 = memref.load %arg2[%7, %arg5] : memref<?x40xf64>
          %9 = arith.addf %6, %8 : f64
          %c-1_8 = arith.constant -1 : index
          %10 = arith.addi %arg4, %c-1_8 : index
          %c1_9 = arith.constant 1 : index
          %11 = arith.addi %arg5, %c1_9 : index
          %12 = memref.load %arg2[%10, %11] : memref<?x40xf64>
          %13 = arith.addf %9, %12 : f64
          %c-1_10 = arith.constant -1 : index
          %14 = arith.addi %arg5, %c-1_10 : index
          %15 = memref.load %arg2[%arg4, %14] : memref<?x40xf64>
          %16 = arith.addf %13, %15 : f64
          %17 = memref.load %arg2[%arg4, %arg5] : memref<?x40xf64>
          %18 = arith.addf %16, %17 : f64
          %c1_11 = arith.constant 1 : index
          %19 = arith.addi %arg5, %c1_11 : index
          %20 = memref.load %arg2[%arg4, %19] : memref<?x40xf64>
          %21 = arith.addf %18, %20 : f64
          %c1_12 = arith.constant 1 : index
          %22 = arith.addi %arg4, %c1_12 : index
          %c-1_13 = arith.constant -1 : index
          %23 = arith.addi %arg5, %c-1_13 : index
          %24 = memref.load %arg2[%22, %23] : memref<?x40xf64>
          %25 = arith.addf %21, %24 : f64
          %c1_14 = arith.constant 1 : index
          %26 = arith.addi %arg4, %c1_14 : index
          %27 = memref.load %arg2[%26, %arg5] : memref<?x40xf64>
          %28 = arith.addf %25, %27 : f64
          %c1_15 = arith.constant 1 : index
          %29 = arith.addi %arg4, %c1_15 : index
          %c1_16 = arith.constant 1 : index
          %30 = arith.addi %arg5, %c1_16 : index
          %31 = memref.load %arg2[%29, %30] : memref<?x40xf64>
          %32 = arith.addf %28, %31 : f64
          %33 = arith.divf %32, %cst : f64
          memref.store %33, %arg2[%arg4, %arg5] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

