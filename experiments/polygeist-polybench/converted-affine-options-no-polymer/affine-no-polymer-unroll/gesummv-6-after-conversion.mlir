module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c28 = arith.constant 28 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %c0 to %c30 step %c1 {
      memref.store %cst, %arg5[%arg8] : memref<?xf64>
      memref.store %cst, %arg7[%arg8] : memref<?xf64>
      scf.for %arg9 = %c0 to %c28 step %c4 {
        %5 = memref.load %arg3[%arg8, %arg9] : memref<?x30xf64>
        %6 = memref.load %arg6[%arg9] : memref<?xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = memref.load %arg5[%arg8] : memref<?xf64>
        %9 = arith.addf %7, %8 : f64
        memref.store %9, %arg5[%arg8] : memref<?xf64>
        %10 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
        %11 = memref.load %arg6[%arg9] : memref<?xf64>
        %12 = arith.mulf %10, %11 : f64
        %13 = memref.load %arg7[%arg8] : memref<?xf64>
        %14 = arith.addf %12, %13 : f64
        memref.store %14, %arg7[%arg8] : memref<?xf64>
        %15 = arith.addi %arg9, %c1 : index
        %16 = memref.load %arg3[%arg8, %15] : memref<?x30xf64>
        %17 = memref.load %arg6[%15] : memref<?xf64>
        %18 = arith.mulf %16, %17 : f64
        %19 = memref.load %arg5[%arg8] : memref<?xf64>
        %20 = arith.addf %18, %19 : f64
        memref.store %20, %arg5[%arg8] : memref<?xf64>
        %21 = memref.load %arg4[%arg8, %15] : memref<?x30xf64>
        %22 = memref.load %arg6[%15] : memref<?xf64>
        %23 = arith.mulf %21, %22 : f64
        %24 = memref.load %arg7[%arg8] : memref<?xf64>
        %25 = arith.addf %23, %24 : f64
        memref.store %25, %arg7[%arg8] : memref<?xf64>
        %26 = arith.addi %arg9, %c2 : index
        %27 = memref.load %arg3[%arg8, %26] : memref<?x30xf64>
        %28 = memref.load %arg6[%26] : memref<?xf64>
        %29 = arith.mulf %27, %28 : f64
        %30 = memref.load %arg5[%arg8] : memref<?xf64>
        %31 = arith.addf %29, %30 : f64
        memref.store %31, %arg5[%arg8] : memref<?xf64>
        %32 = memref.load %arg4[%arg8, %26] : memref<?x30xf64>
        %33 = memref.load %arg6[%26] : memref<?xf64>
        %34 = arith.mulf %32, %33 : f64
        %35 = memref.load %arg7[%arg8] : memref<?xf64>
        %36 = arith.addf %34, %35 : f64
        memref.store %36, %arg7[%arg8] : memref<?xf64>
        %37 = arith.addi %arg9, %c3 : index
        %38 = memref.load %arg3[%arg8, %37] : memref<?x30xf64>
        %39 = memref.load %arg6[%37] : memref<?xf64>
        %40 = arith.mulf %38, %39 : f64
        %41 = memref.load %arg5[%arg8] : memref<?xf64>
        %42 = arith.addf %40, %41 : f64
        memref.store %42, %arg5[%arg8] : memref<?xf64>
        %43 = memref.load %arg4[%arg8, %37] : memref<?x30xf64>
        %44 = memref.load %arg6[%37] : memref<?xf64>
        %45 = arith.mulf %43, %44 : f64
        %46 = memref.load %arg7[%arg8] : memref<?xf64>
        %47 = arith.addf %45, %46 : f64
        memref.store %47, %arg7[%arg8] : memref<?xf64>
      }
      scf.for %arg9 = %c28 to %c30 step %c1 {
        %5 = memref.load %arg3[%arg8, %arg9] : memref<?x30xf64>
        %6 = memref.load %arg6[%arg9] : memref<?xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = memref.load %arg5[%arg8] : memref<?xf64>
        %9 = arith.addf %7, %8 : f64
        memref.store %9, %arg5[%arg8] : memref<?xf64>
        %10 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
        %11 = memref.load %arg6[%arg9] : memref<?xf64>
        %12 = arith.mulf %10, %11 : f64
        %13 = memref.load %arg7[%arg8] : memref<?xf64>
        %14 = arith.addf %12, %13 : f64
        memref.store %14, %arg7[%arg8] : memref<?xf64>
      }
      %0 = memref.load %arg5[%arg8] : memref<?xf64>
      %1 = arith.mulf %arg1, %0 : f64
      %2 = memref.load %arg7[%arg8] : memref<?xf64>
      %3 = arith.mulf %arg2, %2 : f64
      %4 = arith.addf %1, %3 : f64
      memref.store %4, %arg7[%arg8] : memref<?xf64>
    }
    return
  }
}

