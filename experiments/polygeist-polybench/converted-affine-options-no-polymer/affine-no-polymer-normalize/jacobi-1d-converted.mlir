module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c-1 = arith.constant -1 : index
    %c28 = arith.constant 28 : index
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      scf.for %arg5 = %c0 to %c28 step %c1 {
        %0 = arith.addi %arg5, %c1 : index
        %1 = arith.addi %0, %c-1 : index
        %2 = memref.load %arg2[%1] : memref<?xf64>
        %3 = memref.load %arg2[%0] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        %5 = arith.addi %0, %c1 : index
        %6 = memref.load %arg2[%5] : memref<?xf64>
        %7 = arith.addf %4, %6 : f64
        %8 = arith.mulf %7, %cst : f64
        memref.store %8, %arg3[%0] : memref<?xf64>
      }
      scf.for %arg5 = %c0 to %c28 step %c1 {
        %0 = arith.addi %arg5, %c1 : index
        %1 = arith.addi %0, %c-1 : index
        %2 = memref.load %arg3[%1] : memref<?xf64>
        %3 = memref.load %arg3[%0] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        %5 = arith.addi %0, %c1 : index
        %6 = memref.load %arg3[%5] : memref<?xf64>
        %7 = arith.addf %4, %6 : f64
        %8 = arith.mulf %7, %cst : f64
        memref.store %8, %arg2[%0] : memref<?xf64>
      }
    }
    return
  }
}

