module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c30 = arith.constant 30 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c24 = arith.constant 24 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %c0 to %c20 step %c1 {
      scf.for %arg9 = %c0 to %c24 step %c4 {
        %2 = memref.load %arg5[%arg8, %arg9] : memref<?x25xf64>
        %3 = arith.mulf %2, %arg4 : f64
        memref.store %3, %arg5[%arg8, %arg9] : memref<?x25xf64>
        %4 = arith.addi %arg9, %c1 : index
        %5 = memref.load %arg5[%arg8, %4] : memref<?x25xf64>
        %6 = arith.mulf %5, %arg4 : f64
        memref.store %6, %arg5[%arg8, %4] : memref<?x25xf64>
        %7 = arith.addi %arg9, %c2 : index
        %8 = memref.load %arg5[%arg8, %7] : memref<?x25xf64>
        %9 = arith.mulf %8, %arg4 : f64
        memref.store %9, %arg5[%arg8, %7] : memref<?x25xf64>
        %10 = arith.addi %arg9, %c3 : index
        %11 = memref.load %arg5[%arg8, %10] : memref<?x25xf64>
        %12 = arith.mulf %11, %arg4 : f64
        memref.store %12, %arg5[%arg8, %10] : memref<?x25xf64>
      }
      %0 = memref.load %arg5[%arg8, %c24] : memref<?x25xf64>
      %1 = arith.mulf %0, %arg4 : f64
      memref.store %1, %arg5[%arg8, %c24] : memref<?x25xf64>
      scf.for %arg9 = %c0 to %c30 step %c1 {
        scf.for %arg10 = %c0 to %c24 step %c4 {
          %8 = memref.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %9 = arith.mulf %arg3, %8 : f64
          %10 = memref.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = memref.load %arg5[%arg8, %arg10] : memref<?x25xf64>
          %13 = arith.addf %12, %11 : f64
          memref.store %13, %arg5[%arg8, %arg10] : memref<?x25xf64>
          %14 = arith.addi %arg10, %c1 : index
          %15 = memref.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %16 = arith.mulf %arg3, %15 : f64
          %17 = memref.load %arg7[%arg9, %14] : memref<?x25xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %arg5[%arg8, %14] : memref<?x25xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %arg5[%arg8, %14] : memref<?x25xf64>
          %21 = arith.addi %arg10, %c2 : index
          %22 = memref.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %23 = arith.mulf %arg3, %22 : f64
          %24 = memref.load %arg7[%arg9, %21] : memref<?x25xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = memref.load %arg5[%arg8, %21] : memref<?x25xf64>
          %27 = arith.addf %26, %25 : f64
          memref.store %27, %arg5[%arg8, %21] : memref<?x25xf64>
          %28 = arith.addi %arg10, %c3 : index
          %29 = memref.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %30 = arith.mulf %arg3, %29 : f64
          %31 = memref.load %arg7[%arg9, %28] : memref<?x25xf64>
          %32 = arith.mulf %30, %31 : f64
          %33 = memref.load %arg5[%arg8, %28] : memref<?x25xf64>
          %34 = arith.addf %33, %32 : f64
          memref.store %34, %arg5[%arg8, %28] : memref<?x25xf64>
        }
        %2 = memref.load %arg6[%arg8, %arg9] : memref<?x30xf64>
        %3 = arith.mulf %arg3, %2 : f64
        %4 = memref.load %arg7[%arg9, %c24] : memref<?x25xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = memref.load %arg5[%arg8, %c24] : memref<?x25xf64>
        %7 = arith.addf %6, %5 : f64
        memref.store %7, %arg5[%arg8, %c24] : memref<?x25xf64>
      }
    }
    return
  }
}

