module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c38 = arith.constant 38 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c36 = arith.constant 36 : index
    %c4 = arith.constant 4 : index
    scf.for %arg7 = %c0 to %c36 step %c4 {
      memref.store %cst, %arg3[%arg7] : memref<?xf64>
      %0 = arith.addi %arg7, %c1 : index
      memref.store %cst, %arg3[%0] : memref<?xf64>
      %1 = arith.addi %arg7, %c2 : index
      memref.store %cst, %arg3[%1] : memref<?xf64>
      %2 = arith.addi %arg7, %c3 : index
      memref.store %cst, %arg3[%2] : memref<?xf64>
    }
    scf.for %arg7 = %c36 to %c38 step %c1 {
      memref.store %cst, %arg3[%arg7] : memref<?xf64>
    }
    scf.for %arg7 = %c0 to %c42 step %c1 {
      memref.store %cst, %arg4[%arg7] : memref<?xf64>
      scf.for %arg8 = %c0 to %c36 step %c4 {
        %0 = memref.load %arg3[%arg8] : memref<?xf64>
        %1 = memref.load %arg6[%arg7] : memref<?xf64>
        %2 = memref.load %arg2[%arg7, %arg8] : memref<?x38xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg3[%arg8] : memref<?xf64>
        %5 = memref.load %arg4[%arg7] : memref<?xf64>
        %6 = memref.load %arg2[%arg7, %arg8] : memref<?x38xf64>
        %7 = memref.load %arg5[%arg8] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = arith.addf %5, %8 : f64
        memref.store %9, %arg4[%arg7] : memref<?xf64>
        %10 = arith.addi %arg8, %c1 : index
        %11 = memref.load %arg3[%10] : memref<?xf64>
        %12 = memref.load %arg6[%arg7] : memref<?xf64>
        %13 = memref.load %arg2[%arg7, %10] : memref<?x38xf64>
        %14 = arith.mulf %12, %13 : f64
        %15 = arith.addf %11, %14 : f64
        memref.store %15, %arg3[%10] : memref<?xf64>
        %16 = memref.load %arg4[%arg7] : memref<?xf64>
        %17 = memref.load %arg2[%arg7, %10] : memref<?x38xf64>
        %18 = memref.load %arg5[%10] : memref<?xf64>
        %19 = arith.mulf %17, %18 : f64
        %20 = arith.addf %16, %19 : f64
        memref.store %20, %arg4[%arg7] : memref<?xf64>
        %21 = arith.addi %arg8, %c2 : index
        %22 = memref.load %arg3[%21] : memref<?xf64>
        %23 = memref.load %arg6[%arg7] : memref<?xf64>
        %24 = memref.load %arg2[%arg7, %21] : memref<?x38xf64>
        %25 = arith.mulf %23, %24 : f64
        %26 = arith.addf %22, %25 : f64
        memref.store %26, %arg3[%21] : memref<?xf64>
        %27 = memref.load %arg4[%arg7] : memref<?xf64>
        %28 = memref.load %arg2[%arg7, %21] : memref<?x38xf64>
        %29 = memref.load %arg5[%21] : memref<?xf64>
        %30 = arith.mulf %28, %29 : f64
        %31 = arith.addf %27, %30 : f64
        memref.store %31, %arg4[%arg7] : memref<?xf64>
        %32 = arith.addi %arg8, %c3 : index
        %33 = memref.load %arg3[%32] : memref<?xf64>
        %34 = memref.load %arg6[%arg7] : memref<?xf64>
        %35 = memref.load %arg2[%arg7, %32] : memref<?x38xf64>
        %36 = arith.mulf %34, %35 : f64
        %37 = arith.addf %33, %36 : f64
        memref.store %37, %arg3[%32] : memref<?xf64>
        %38 = memref.load %arg4[%arg7] : memref<?xf64>
        %39 = memref.load %arg2[%arg7, %32] : memref<?x38xf64>
        %40 = memref.load %arg5[%32] : memref<?xf64>
        %41 = arith.mulf %39, %40 : f64
        %42 = arith.addf %38, %41 : f64
        memref.store %42, %arg4[%arg7] : memref<?xf64>
      }
      scf.for %arg8 = %c36 to %c38 step %c1 {
        %0 = memref.load %arg3[%arg8] : memref<?xf64>
        %1 = memref.load %arg6[%arg7] : memref<?xf64>
        %2 = memref.load %arg2[%arg7, %arg8] : memref<?x38xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg3[%arg8] : memref<?xf64>
        %5 = memref.load %arg4[%arg7] : memref<?xf64>
        %6 = memref.load %arg2[%arg7, %arg8] : memref<?x38xf64>
        %7 = memref.load %arg5[%arg8] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = arith.addf %5, %8 : f64
        memref.store %9, %arg4[%arg7] : memref<?xf64>
      }
    }
    return
  }
}

