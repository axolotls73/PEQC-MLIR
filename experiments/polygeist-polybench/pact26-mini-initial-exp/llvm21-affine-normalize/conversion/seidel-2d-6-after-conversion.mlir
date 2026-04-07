module {
  func.func @kernel_seidel_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x40xf64>) {
    %c-1 = arith.constant -1 : index
    %c38 = arith.constant 38 : index
    %cst = arith.constant 9.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c20 step %c1 {
      scf.for %arg4 = %c0 to %c38 step %c1 {
        %0 = arith.addi %arg4, %c1 : index
        scf.for %arg5 = %c0 to %c38 step %c1 {
          %1 = arith.addi %arg5, %c1 : index
          %2 = arith.addi %0, %c-1 : index
          %3 = arith.addi %1, %c-1 : index
          %4 = memref.load %arg2[%2, %3] : memref<?x40xf64>
          %5 = arith.addi %0, %c-1 : index
          %6 = memref.load %arg2[%5, %1] : memref<?x40xf64>
          %7 = arith.addf %4, %6 : f64
          %8 = arith.addi %0, %c-1 : index
          %9 = arith.addi %1, %c1 : index
          %10 = memref.load %arg2[%8, %9] : memref<?x40xf64>
          %11 = arith.addf %7, %10 : f64
          %12 = arith.addi %1, %c-1 : index
          %13 = memref.load %arg2[%0, %12] : memref<?x40xf64>
          %14 = arith.addf %11, %13 : f64
          %15 = memref.load %arg2[%0, %1] : memref<?x40xf64>
          %16 = arith.addf %14, %15 : f64
          %17 = arith.addi %1, %c1 : index
          %18 = memref.load %arg2[%0, %17] : memref<?x40xf64>
          %19 = arith.addf %16, %18 : f64
          %20 = arith.addi %0, %c1 : index
          %21 = arith.addi %1, %c-1 : index
          %22 = memref.load %arg2[%20, %21] : memref<?x40xf64>
          %23 = arith.addf %19, %22 : f64
          %24 = arith.addi %0, %c1 : index
          %25 = memref.load %arg2[%24, %1] : memref<?x40xf64>
          %26 = arith.addf %23, %25 : f64
          %27 = arith.addi %0, %c1 : index
          %28 = arith.addi %1, %c1 : index
          %29 = memref.load %arg2[%27, %28] : memref<?x40xf64>
          %30 = arith.addf %26, %29 : f64
          %31 = arith.divf %30, %cst : f64
          memref.store %31, %arg2[%0, %1] : memref<?x40xf64>
        }
      }
    }
    return
  }
}

