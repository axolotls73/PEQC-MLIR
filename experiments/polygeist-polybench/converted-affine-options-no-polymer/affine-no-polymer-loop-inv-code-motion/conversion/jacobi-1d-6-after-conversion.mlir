module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c29 = arith.constant 29 : index
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      scf.for %arg5 = %c1 to %c29 step %c1 {
        %0 = arith.addi %arg5, %c-1 : index
        %1 = memref.load %arg2[%0] : memref<?xf64>
        %2 = memref.load %arg2[%arg5] : memref<?xf64>
        %3 = arith.addf %1, %2 : f64
        %4 = arith.addi %arg5, %c1 : index
        %5 = memref.load %arg2[%4] : memref<?xf64>
        %6 = arith.addf %3, %5 : f64
        %7 = arith.mulf %6, %cst : f64
        memref.store %7, %arg3[%arg5] : memref<?xf64>
      }
      scf.for %arg5 = %c1 to %c29 step %c1 {
        %0 = arith.addi %arg5, %c-1 : index
        %1 = memref.load %arg3[%0] : memref<?xf64>
        %2 = memref.load %arg3[%arg5] : memref<?xf64>
        %3 = arith.addf %1, %2 : f64
        %4 = arith.addi %arg5, %c1 : index
        %5 = memref.load %arg3[%4] : memref<?xf64>
        %6 = arith.addf %3, %5 : f64
        %7 = arith.mulf %6, %cst : f64
        memref.store %7, %arg2[%arg5] : memref<?xf64>
      }
    }
    return
  }
}

