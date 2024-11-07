module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %c-1 = arith.constant -1 : index
    %c39 = arith.constant 39 : index
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c20 step %c1 {
      scf.for %arg4 = %c1 to %c39 step %c1 {
        scf.for %arg5 = %c1 to %c39 step %c1 {
          %0 = arith.addi %arg4, %c-1 : index
          %1 = arith.addi %arg5, %c-1 : index
          %2 = memref.load %arg2[%0, %1] : memref<?x40xf64>
          %3 = arith.addi %arg4, %c-1 : index
          %4 = memref.load %arg2[%3, %arg5] : memref<?x40xf64>
          %5 = arith.addf %2, %4 : f64
          %6 = arith.addi %arg4, %c-1 : index
          %7 = arith.addi %arg5, %c1 : index
          %8 = memref.load %arg2[%6, %7] : memref<?x40xf64>
          %9 = arith.addf %5, %8 : f64
          %10 = arith.addi %arg5, %c-1 : index
          %11 = memref.load %arg2[%arg4, %10] : memref<?x40xf64>
          %12 = arith.addf %9, %11 : f64
          %13 = memref.load %arg2[%arg4, %arg5] : memref<?x40xf64>
          %14 = arith.addf %12, %13 : f64
          %15 = arith.addi %arg5, %c1 : index
          %16 = memref.load %arg2[%arg4, %15] : memref<?x40xf64>
          %17 = arith.addf %14, %16 : f64
          %18 = arith.addi %arg4, %c1 : index
          %19 = arith.addi %arg5, %c-1 : index
          %20 = memref.load %arg2[%18, %19] : memref<?x40xf64>
          %21 = arith.addf %17, %20 : f64
          %22 = arith.addi %arg4, %c1 : index
          %23 = memref.load %arg2[%22, %arg5] : memref<?x40xf64>
          %24 = arith.addf %21, %23 : f64
          %25 = arith.addi %arg4, %c1 : index
          %26 = arith.addi %arg5, %c1 : index
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

