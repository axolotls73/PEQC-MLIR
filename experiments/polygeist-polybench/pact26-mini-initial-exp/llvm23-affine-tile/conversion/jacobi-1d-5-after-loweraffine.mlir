module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    scf.for %arg4 = %c0 to %c20 step %c32 {
      %c20_0 = arith.constant 20 : index
      %0 = arith.addi %arg4, %c20_0 : index
      %c1 = arith.constant 1 : index
      scf.for %arg5 = %arg4 to %0 step %c1 {
        %c1_1 = arith.constant 1 : index
        %c29 = arith.constant 29 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg6 = %c1_1 to %c29 step %c1_2 {
          %c-1 = arith.constant -1 : index
          %1 = arith.addi %arg6, %c-1 : index
          %2 = memref.load %arg2[%1] : memref<?xf64>
          %3 = memref.load %arg2[%arg6] : memref<?xf64>
          %4 = arith.addf %2, %3 : f64
          %c1_6 = arith.constant 1 : index
          %5 = arith.addi %arg6, %c1_6 : index
          %6 = memref.load %arg2[%5] : memref<?xf64>
          %7 = arith.addf %4, %6 : f64
          %8 = arith.mulf %7, %cst : f64
          memref.store %8, %arg3[%arg6] : memref<?xf64>
        }
        %c1_3 = arith.constant 1 : index
        %c29_4 = arith.constant 29 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg6 = %c1_3 to %c29_4 step %c1_5 {
          %c-1 = arith.constant -1 : index
          %1 = arith.addi %arg6, %c-1 : index
          %2 = memref.load %arg3[%1] : memref<?xf64>
          %3 = memref.load %arg3[%arg6] : memref<?xf64>
          %4 = arith.addf %2, %3 : f64
          %c1_6 = arith.constant 1 : index
          %5 = arith.addi %arg6, %c1_6 : index
          %6 = memref.load %arg3[%5] : memref<?xf64>
          %7 = arith.addf %4, %6 : f64
          %8 = arith.mulf %7, %cst : f64
          memref.store %8, %arg2[%arg6] : memref<?xf64>
        }
      }
    }
    return
  }
}

