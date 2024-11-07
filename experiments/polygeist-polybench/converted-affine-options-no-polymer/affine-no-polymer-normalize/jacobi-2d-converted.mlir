module {
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %c-1 = arith.constant -1 : index
    %c28 = arith.constant 28 : index
    %cst = arith.constant 2.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c20 step %c1 {
      scf.for %arg5 = %c0 to %c28 step %c1 {
        %0 = arith.addi %arg5, %c1 : index
        scf.for %arg6 = %c0 to %c28 step %c1 {
          %1 = arith.addi %arg6, %c1 : index
          %2 = memref.load %arg2[%0, %1] : memref<?x30xf64>
          %3 = arith.addi %1, %c-1 : index
          %4 = memref.load %arg2[%0, %3] : memref<?x30xf64>
          %5 = arith.addf %2, %4 : f64
          %6 = arith.addi %1, %c1 : index
          %7 = memref.load %arg2[%0, %6] : memref<?x30xf64>
          %8 = arith.addf %5, %7 : f64
          %9 = arith.addi %0, %c1 : index
          %10 = memref.load %arg2[%9, %1] : memref<?x30xf64>
          %11 = arith.addf %8, %10 : f64
          %12 = arith.addi %0, %c-1 : index
          %13 = memref.load %arg2[%12, %1] : memref<?x30xf64>
          %14 = arith.addf %11, %13 : f64
          %15 = arith.mulf %14, %cst : f64
          memref.store %15, %arg3[%0, %1] : memref<?x30xf64>
        }
      }
      scf.for %arg5 = %c0 to %c28 step %c1 {
        %0 = arith.addi %arg5, %c1 : index
        scf.for %arg6 = %c0 to %c28 step %c1 {
          %1 = arith.addi %arg6, %c1 : index
          %2 = memref.load %arg3[%0, %1] : memref<?x30xf64>
          %3 = arith.addi %1, %c-1 : index
          %4 = memref.load %arg3[%0, %3] : memref<?x30xf64>
          %5 = arith.addf %2, %4 : f64
          %6 = arith.addi %1, %c1 : index
          %7 = memref.load %arg3[%0, %6] : memref<?x30xf64>
          %8 = arith.addf %5, %7 : f64
          %9 = arith.addi %0, %c1 : index
          %10 = memref.load %arg3[%9, %1] : memref<?x30xf64>
          %11 = arith.addf %8, %10 : f64
          %12 = arith.addi %0, %c-1 : index
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

