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
        %c1_7 = arith.constant 1 : index
        scf.for %arg6 = %c1_5 to %c29_6 step %c1_7 {
          %0 = memref.load %arg2[%arg5, %arg6] : memref<?x30xf64>
          %c-1 = arith.constant -1 : index
          %1 = arith.addi %arg6, %c-1 : index
          %2 = memref.load %arg2[%arg5, %1] : memref<?x30xf64>
          %3 = arith.addf %0, %2 : f64
          %c1_8 = arith.constant 1 : index
          %4 = arith.addi %arg6, %c1_8 : index
          %5 = memref.load %arg2[%arg5, %4] : memref<?x30xf64>
          %6 = arith.addf %3, %5 : f64
          %c1_9 = arith.constant 1 : index
          %7 = arith.addi %arg5, %c1_9 : index
          %8 = memref.load %arg2[%7, %arg6] : memref<?x30xf64>
          %9 = arith.addf %6, %8 : f64
          %c-1_10 = arith.constant -1 : index
          %10 = arith.addi %arg5, %c-1_10 : index
          %11 = memref.load %arg2[%10, %arg6] : memref<?x30xf64>
          %12 = arith.addf %9, %11 : f64
          %13 = arith.mulf %12, %cst : f64
          memref.store %13, %arg3[%arg5, %arg6] : memref<?x30xf64>
        }
      }
      %c1_2 = arith.constant 1 : index
      %c29_3 = arith.constant 29 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg5 = %c1_2 to %c29_3 step %c1_4 {
        %c1_5 = arith.constant 1 : index
        %c29_6 = arith.constant 29 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg6 = %c1_5 to %c29_6 step %c1_7 {
          %0 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %c-1 = arith.constant -1 : index
          %1 = arith.addi %arg6, %c-1 : index
          %2 = memref.load %arg3[%arg5, %1] : memref<?x30xf64>
          %3 = arith.addf %0, %2 : f64
          %c1_8 = arith.constant 1 : index
          %4 = arith.addi %arg6, %c1_8 : index
          %5 = memref.load %arg3[%arg5, %4] : memref<?x30xf64>
          %6 = arith.addf %3, %5 : f64
          %c1_9 = arith.constant 1 : index
          %7 = arith.addi %arg5, %c1_9 : index
          %8 = memref.load %arg3[%7, %arg6] : memref<?x30xf64>
          %9 = arith.addf %6, %8 : f64
          %c-1_10 = arith.constant -1 : index
          %10 = arith.addi %arg5, %c-1_10 : index
          %11 = memref.load %arg3[%10, %arg6] : memref<?x30xf64>
          %12 = arith.addf %9, %11 : f64
          %13 = arith.mulf %12, %cst : f64
          memref.store %13, %arg2[%arg5, %arg6] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

