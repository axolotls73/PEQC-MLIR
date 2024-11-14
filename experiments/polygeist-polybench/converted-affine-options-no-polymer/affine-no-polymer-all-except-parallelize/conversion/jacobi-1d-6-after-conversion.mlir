module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c7 = arith.constant 7 : index
    %c20 = arith.constant 20 : index
    %cst = arith.constant 3.333300e-01 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %c1 step %c1 {
      scf.for %arg5 = %c0 to %c20 step %c1 {
        scf.for %arg6 = %c0 to %c7 step %c1 {
          %0 = arith.muli %arg6, %c4 : index
          %1 = arith.addi %0, %c1 : index
          %2 = arith.addi %1, %c-1 : index
          %3 = memref.load %arg2[%2] : memref<?xf64>
          %4 = memref.load %arg2[%1] : memref<?xf64>
          %5 = arith.addf %3, %4 : f64
          %6 = arith.addi %1, %c1 : index
          %7 = memref.load %arg2[%6] : memref<?xf64>
          %8 = arith.addf %5, %7 : f64
          %9 = arith.mulf %8, %cst : f64
          memref.store %9, %arg3[%1] : memref<?xf64>
          %10 = arith.addi %1, %c1 : index
          %11 = arith.addi %10, %c-1 : index
          %12 = memref.load %arg2[%11] : memref<?xf64>
          %13 = memref.load %arg2[%10] : memref<?xf64>
          %14 = arith.addf %12, %13 : f64
          %15 = arith.addi %10, %c1 : index
          %16 = memref.load %arg2[%15] : memref<?xf64>
          %17 = arith.addf %14, %16 : f64
          %18 = arith.mulf %17, %cst : f64
          memref.store %18, %arg3[%10] : memref<?xf64>
          %19 = arith.addi %1, %c2 : index
          %20 = arith.addi %19, %c-1 : index
          %21 = memref.load %arg2[%20] : memref<?xf64>
          %22 = memref.load %arg2[%19] : memref<?xf64>
          %23 = arith.addf %21, %22 : f64
          %24 = arith.addi %19, %c1 : index
          %25 = memref.load %arg2[%24] : memref<?xf64>
          %26 = arith.addf %23, %25 : f64
          %27 = arith.mulf %26, %cst : f64
          memref.store %27, %arg3[%19] : memref<?xf64>
          %28 = arith.addi %1, %c3 : index
          %29 = arith.addi %28, %c-1 : index
          %30 = memref.load %arg2[%29] : memref<?xf64>
          %31 = memref.load %arg2[%28] : memref<?xf64>
          %32 = arith.addf %30, %31 : f64
          %33 = arith.addi %28, %c1 : index
          %34 = memref.load %arg2[%33] : memref<?xf64>
          %35 = arith.addf %32, %34 : f64
          %36 = arith.mulf %35, %cst : f64
          memref.store %36, %arg3[%28] : memref<?xf64>
        }
        scf.for %arg6 = %c0 to %c7 step %c1 {
          %0 = arith.muli %arg6, %c4 : index
          %1 = arith.addi %0, %c1 : index
          %2 = arith.addi %1, %c-1 : index
          %3 = memref.load %arg3[%2] : memref<?xf64>
          %4 = memref.load %arg3[%1] : memref<?xf64>
          %5 = arith.addf %3, %4 : f64
          %6 = arith.addi %1, %c1 : index
          %7 = memref.load %arg3[%6] : memref<?xf64>
          %8 = arith.addf %5, %7 : f64
          %9 = arith.mulf %8, %cst : f64
          memref.store %9, %arg2[%1] : memref<?xf64>
          %10 = arith.addi %1, %c1 : index
          %11 = arith.addi %10, %c-1 : index
          %12 = memref.load %arg3[%11] : memref<?xf64>
          %13 = memref.load %arg3[%10] : memref<?xf64>
          %14 = arith.addf %12, %13 : f64
          %15 = arith.addi %10, %c1 : index
          %16 = memref.load %arg3[%15] : memref<?xf64>
          %17 = arith.addf %14, %16 : f64
          %18 = arith.mulf %17, %cst : f64
          memref.store %18, %arg2[%10] : memref<?xf64>
          %19 = arith.addi %1, %c2 : index
          %20 = arith.addi %19, %c-1 : index
          %21 = memref.load %arg3[%20] : memref<?xf64>
          %22 = memref.load %arg3[%19] : memref<?xf64>
          %23 = arith.addf %21, %22 : f64
          %24 = arith.addi %19, %c1 : index
          %25 = memref.load %arg3[%24] : memref<?xf64>
          %26 = arith.addf %23, %25 : f64
          %27 = arith.mulf %26, %cst : f64
          memref.store %27, %arg2[%19] : memref<?xf64>
          %28 = arith.addi %1, %c3 : index
          %29 = arith.addi %28, %c-1 : index
          %30 = memref.load %arg3[%29] : memref<?xf64>
          %31 = memref.load %arg3[%28] : memref<?xf64>
          %32 = arith.addf %30, %31 : f64
          %33 = arith.addi %28, %c1 : index
          %34 = memref.load %arg3[%33] : memref<?xf64>
          %35 = arith.addf %32, %34 : f64
          %36 = arith.mulf %35, %cst : f64
          memref.store %36, %arg2[%28] : memref<?xf64>
        }
      }
    }
    return
  }
}

