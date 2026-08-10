module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %cst = arith.constant 2.000000e-01 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %1 step %c1 {
      %c1_0 = arith.constant 1 : index
      %c-1 = arith.constant -1 : index
      %2 = arith.addi %0, %c-1 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg5 = %c1_0 to %2 step %c1_1 {
        %c1_5 = arith.constant 1 : index
        %c-1_6 = arith.constant -1 : index
        %4 = arith.addi %0, %c-1_6 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg6 = %c1_5 to %4 step %c1_7 {
          %5 = memref.load %arg2[%arg5, %arg6] : memref<?x30xf64>
          %c-1_8 = arith.constant -1 : index
          %6 = arith.addi %arg6, %c-1_8 : index
          %7 = memref.load %arg2[%arg5, %6] : memref<?x30xf64>
          %8 = arith.addf %5, %7 : f64
          %c1_9 = arith.constant 1 : index
          %9 = arith.addi %arg6, %c1_9 : index
          %10 = memref.load %arg2[%arg5, %9] : memref<?x30xf64>
          %11 = arith.addf %8, %10 : f64
          %c1_10 = arith.constant 1 : index
          %12 = arith.addi %arg5, %c1_10 : index
          %13 = memref.load %arg2[%12, %arg6] : memref<?x30xf64>
          %14 = arith.addf %11, %13 : f64
          %c-1_11 = arith.constant -1 : index
          %15 = arith.addi %arg5, %c-1_11 : index
          %16 = memref.load %arg2[%15, %arg6] : memref<?x30xf64>
          %17 = arith.addf %14, %16 : f64
          %18 = arith.mulf %17, %cst : f64
          memref.store %18, %arg3[%arg5, %arg6] : memref<?x30xf64>
        }
      }
      %c1_2 = arith.constant 1 : index
      %c-1_3 = arith.constant -1 : index
      %3 = arith.addi %0, %c-1_3 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg5 = %c1_2 to %3 step %c1_4 {
        %c1_5 = arith.constant 1 : index
        %c-1_6 = arith.constant -1 : index
        %4 = arith.addi %0, %c-1_6 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg6 = %c1_5 to %4 step %c1_7 {
          %5 = memref.load %arg3[%arg5, %arg6] : memref<?x30xf64>
          %c-1_8 = arith.constant -1 : index
          %6 = arith.addi %arg6, %c-1_8 : index
          %7 = memref.load %arg3[%arg5, %6] : memref<?x30xf64>
          %8 = arith.addf %5, %7 : f64
          %c1_9 = arith.constant 1 : index
          %9 = arith.addi %arg6, %c1_9 : index
          %10 = memref.load %arg3[%arg5, %9] : memref<?x30xf64>
          %11 = arith.addf %8, %10 : f64
          %c1_10 = arith.constant 1 : index
          %12 = arith.addi %arg5, %c1_10 : index
          %13 = memref.load %arg3[%12, %arg6] : memref<?x30xf64>
          %14 = arith.addf %11, %13 : f64
          %c-1_11 = arith.constant -1 : index
          %15 = arith.addi %arg5, %c-1_11 : index
          %16 = memref.load %arg3[%15, %arg6] : memref<?x30xf64>
          %17 = arith.addf %14, %16 : f64
          %18 = arith.mulf %17, %cst : f64
          memref.store %18, %arg2[%arg5, %arg6] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

