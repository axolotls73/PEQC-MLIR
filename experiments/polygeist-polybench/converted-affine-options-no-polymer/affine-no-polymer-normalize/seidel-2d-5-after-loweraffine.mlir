module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c20 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c38 = arith.constant 38 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg4 = %c0_0 to %c38 step %c1_1 {
        %c1_2 = arith.constant 1 : index
        %0 = arith.addi %arg4, %c1_2 : index
        %c0_3 = arith.constant 0 : index
        %c38_4 = arith.constant 38 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg5 = %c0_3 to %c38_4 step %c1_5 {
          %c1_6 = arith.constant 1 : index
          %1 = arith.addi %arg5, %c1_6 : index
          %c-1 = arith.constant -1 : index
          %2 = arith.addi %0, %c-1 : index
          %c-1_7 = arith.constant -1 : index
          %3 = arith.addi %1, %c-1_7 : index
          %4 = memref.load %arg2[%2, %3] : memref<?x40xf64>
          %c-1_8 = arith.constant -1 : index
          %5 = arith.addi %0, %c-1_8 : index
          %6 = memref.load %arg2[%5, %1] : memref<?x40xf64>
          %7 = arith.addf %4, %6 : f64
          %c-1_9 = arith.constant -1 : index
          %8 = arith.addi %0, %c-1_9 : index
          %c1_10 = arith.constant 1 : index
          %9 = arith.addi %1, %c1_10 : index
          %10 = memref.load %arg2[%8, %9] : memref<?x40xf64>
          %11 = arith.addf %7, %10 : f64
          %c-1_11 = arith.constant -1 : index
          %12 = arith.addi %1, %c-1_11 : index
          %13 = memref.load %arg2[%0, %12] : memref<?x40xf64>
          %14 = arith.addf %11, %13 : f64
          %15 = memref.load %arg2[%0, %1] : memref<?x40xf64>
          %16 = arith.addf %14, %15 : f64
          %c1_12 = arith.constant 1 : index
          %17 = arith.addi %1, %c1_12 : index
          %18 = memref.load %arg2[%0, %17] : memref<?x40xf64>
          %19 = arith.addf %16, %18 : f64
          %c1_13 = arith.constant 1 : index
          %20 = arith.addi %0, %c1_13 : index
          %c-1_14 = arith.constant -1 : index
          %21 = arith.addi %1, %c-1_14 : index
          %22 = memref.load %arg2[%20, %21] : memref<?x40xf64>
          %23 = arith.addf %19, %22 : f64
          %c1_15 = arith.constant 1 : index
          %24 = arith.addi %0, %c1_15 : index
          %25 = memref.load %arg2[%24, %1] : memref<?x40xf64>
          %26 = arith.addf %23, %25 : f64
          %c1_16 = arith.constant 1 : index
          %27 = arith.addi %0, %c1_16 : index
          %c1_17 = arith.constant 1 : index
          %28 = arith.addi %1, %c1_17 : index
          %29 = memref.load %arg2[%27, %28] : memref<?x40xf64>
          %30 = arith.addf %26, %29 : f64
          %31 = arith.divf %30, %cst : f64
          memref.store %31, %arg2[%0, %1] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

