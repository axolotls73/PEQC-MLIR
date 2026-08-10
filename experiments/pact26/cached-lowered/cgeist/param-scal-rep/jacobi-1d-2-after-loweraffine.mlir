module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
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
        %c-1_5 = arith.constant -1 : index
        %4 = arith.addi %arg5, %c-1_5 : index
        %5 = memref.load %arg2[%4] : memref<?xf64>
        %6 = memref.load %arg2[%arg5] : memref<?xf64>
        %7 = arith.addf %5, %6 : f64
        %c1_6 = arith.constant 1 : index
        %8 = arith.addi %arg5, %c1_6 : index
        %9 = memref.load %arg2[%8] : memref<?xf64>
        %10 = arith.addf %7, %9 : f64
        %11 = arith.mulf %10, %cst : f64
        memref.store %11, %arg3[%arg5] : memref<?xf64>
      }
      %c1_2 = arith.constant 1 : index
      %c-1_3 = arith.constant -1 : index
      %3 = arith.addi %0, %c-1_3 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg5 = %c1_2 to %3 step %c1_4 {
        %c-1_5 = arith.constant -1 : index
        %4 = arith.addi %arg5, %c-1_5 : index
        %5 = memref.load %arg3[%4] : memref<?xf64>
        %6 = memref.load %arg3[%arg5] : memref<?xf64>
        %7 = arith.addf %5, %6 : f64
        %c1_6 = arith.constant 1 : index
        %8 = arith.addi %arg5, %c1_6 : index
        %9 = memref.load %arg3[%8] : memref<?xf64>
        %10 = arith.addf %7, %9 : f64
        %11 = arith.mulf %10, %cst : f64
        memref.store %11, %arg2[%arg5] : memref<?xf64>
      }
    }
    return
  }
}

