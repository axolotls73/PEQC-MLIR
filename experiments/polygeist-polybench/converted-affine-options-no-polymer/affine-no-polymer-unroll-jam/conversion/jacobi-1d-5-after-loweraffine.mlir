module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      %c1_0 = arith.constant 1 : index
      %c29 = arith.constant 29 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg5 = %c1_0 to %c29 step %c1_1 {
        %c-1 = arith.constant -1 : index
        %0 = arith.addi %arg5, %c-1 : index
        %1 = memref.load %arg2[%0] : memref<?xf64>
        %2 = memref.load %arg2[%arg5] : memref<?xf64>
        %3 = arith.addf %1, %2 : f64
        %c1_5 = arith.constant 1 : index
        %4 = arith.addi %arg5, %c1_5 : index
        %5 = memref.load %arg2[%4] : memref<?xf64>
        %6 = arith.addf %3, %5 : f64
        %7 = arith.mulf %6, %cst : f64
        memref.store %7, %arg3[%arg5] : memref<?xf64>
      }
      %c1_2 = arith.constant 1 : index
      %c29_3 = arith.constant 29 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg5 = %c1_2 to %c29_3 step %c1_4 {
        %c-1 = arith.constant -1 : index
        %0 = arith.addi %arg5, %c-1 : index
        %1 = memref.load %arg3[%0] : memref<?xf64>
        %2 = memref.load %arg3[%arg5] : memref<?xf64>
        %3 = arith.addf %1, %2 : f64
        %c1_5 = arith.constant 1 : index
        %4 = arith.addi %arg5, %c1_5 : index
        %5 = memref.load %arg3[%4] : memref<?xf64>
        %6 = arith.addf %3, %5 : f64
        %7 = arith.mulf %6, %cst : f64
        memref.store %7, %arg2[%arg5] : memref<?xf64>
      }
    }
    return
  }
}

