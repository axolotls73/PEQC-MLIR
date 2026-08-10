module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c20 step %c1 {
      %c1_0 = arith.constant 1 : index
      %c39 = arith.constant 39 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg4 = %c1_0 to %c39 step %c1_1 {
        %c1_2 = arith.constant 1 : index
        %c39_3 = arith.constant 39 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg5 = %c1_2 to %c39_3 step %c1_4 {
          %c-1 = arith.constant -1 : index
          %0 = arith.addi %arg4, %c-1 : index
          %c-1_5 = arith.constant -1 : index
          %1 = arith.addi %arg5, %c-1_5 : index
          %2 = memref.load %arg2[%0, %1] : memref<?x40xf64>
          %c-1_6 = arith.constant -1 : index
          %3 = arith.addi %arg4, %c-1_6 : index
          %4 = memref.load %arg2[%3, %arg5] : memref<?x40xf64>
          %5 = arith.addf %2, %4 : f64
          %c-1_7 = arith.constant -1 : index
          %6 = arith.addi %arg4, %c-1_7 : index
          %c1_8 = arith.constant 1 : index
          %7 = arith.addi %arg5, %c1_8 : index
          %8 = memref.load %arg2[%6, %7] : memref<?x40xf64>
          %9 = arith.addf %5, %8 : f64
          %c-1_9 = arith.constant -1 : index
          %10 = arith.addi %arg5, %c-1_9 : index
          %11 = memref.load %arg2[%arg4, %10] : memref<?x40xf64>
          %12 = arith.addf %9, %11 : f64
          %13 = memref.load %arg2[%arg4, %arg5] : memref<?x40xf64>
          %14 = arith.addf %12, %13 : f64
          %c1_10 = arith.constant 1 : index
          %15 = arith.addi %arg5, %c1_10 : index
          %16 = memref.load %arg2[%arg4, %15] : memref<?x40xf64>
          %17 = arith.addf %14, %16 : f64
          %c1_11 = arith.constant 1 : index
          %18 = arith.addi %arg4, %c1_11 : index
          %c-1_12 = arith.constant -1 : index
          %19 = arith.addi %arg5, %c-1_12 : index
          %20 = memref.load %arg2[%18, %19] : memref<?x40xf64>
          %21 = arith.addf %17, %20 : f64
          %c1_13 = arith.constant 1 : index
          %22 = arith.addi %arg4, %c1_13 : index
          %23 = memref.load %arg2[%22, %arg5] : memref<?x40xf64>
          %24 = arith.addf %21, %23 : f64
          %c1_14 = arith.constant 1 : index
          %25 = arith.addi %arg4, %c1_14 : index
          %c1_15 = arith.constant 1 : index
          %26 = arith.addi %arg5, %c1_15 : index
          %27 = memref.load %arg2[%25, %26] : memref<?x40xf64>
          %28 = arith.addf %24, %27 : f64
          %29 = arith.divf %28, %cst : f64
          memref.store %29, %arg2[%arg4, %arg5] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

