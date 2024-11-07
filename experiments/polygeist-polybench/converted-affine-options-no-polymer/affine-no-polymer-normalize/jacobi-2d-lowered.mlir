module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c28 = arith.constant 28 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg5 = %c0_0 to %c28 step %c1_1 {
        %c1_5 = arith.constant 1 : index
        %0 = arith.addi %arg5, %c1_5 : index
        %c0_6 = arith.constant 0 : index
        %c28_7 = arith.constant 28 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg6 = %c0_6 to %c28_7 step %c1_8 {
          %c1_9 = arith.constant 1 : index
          %1 = arith.addi %arg6, %c1_9 : index
          %2 = memref.load %arg2[%0, %1] : memref<?x30xf64>
          %c-1 = arith.constant -1 : index
          %3 = arith.addi %1, %c-1 : index
          %4 = memref.load %arg2[%0, %3] : memref<?x30xf64>
          %5 = arith.addf %2, %4 : f64
          %c1_10 = arith.constant 1 : index
          %6 = arith.addi %1, %c1_10 : index
          %7 = memref.load %arg2[%0, %6] : memref<?x30xf64>
          %8 = arith.addf %5, %7 : f64
          %c1_11 = arith.constant 1 : index
          %9 = arith.addi %0, %c1_11 : index
          %10 = memref.load %arg2[%9, %1] : memref<?x30xf64>
          %11 = arith.addf %8, %10 : f64
          %c-1_12 = arith.constant -1 : index
          %12 = arith.addi %0, %c-1_12 : index
          %13 = memref.load %arg2[%12, %1] : memref<?x30xf64>
          %14 = arith.addf %11, %13 : f64
          %15 = arith.mulf %14, %cst : f64
          memref.store %15, %arg3[%0, %1] : memref<?x30xf64>
        }
      }
      %c0_2 = arith.constant 0 : index
      %c28_3 = arith.constant 28 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg5 = %c0_2 to %c28_3 step %c1_4 {
        %c1_5 = arith.constant 1 : index
        %0 = arith.addi %arg5, %c1_5 : index
        %c0_6 = arith.constant 0 : index
        %c28_7 = arith.constant 28 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg6 = %c0_6 to %c28_7 step %c1_8 {
          %c1_9 = arith.constant 1 : index
          %1 = arith.addi %arg6, %c1_9 : index
          %2 = memref.load %arg3[%0, %1] : memref<?x30xf64>
          %c-1 = arith.constant -1 : index
          %3 = arith.addi %1, %c-1 : index
          %4 = memref.load %arg3[%0, %3] : memref<?x30xf64>
          %5 = arith.addf %2, %4 : f64
          %c1_10 = arith.constant 1 : index
          %6 = arith.addi %1, %c1_10 : index
          %7 = memref.load %arg3[%0, %6] : memref<?x30xf64>
          %8 = arith.addf %5, %7 : f64
          %c1_11 = arith.constant 1 : index
          %9 = arith.addi %0, %c1_11 : index
          %10 = memref.load %arg3[%9, %1] : memref<?x30xf64>
          %11 = arith.addf %8, %10 : f64
          %c-1_12 = arith.constant -1 : index
          %12 = arith.addi %0, %c-1_12 : index
          %13 = memref.load %arg3[%12, %1] : memref<?x30xf64>
          %14 = arith.addf %11, %13 : f64
          %15 = arith.mulf %14, %cst : f64
          memref.store %15, %arg2[%0, %1] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

