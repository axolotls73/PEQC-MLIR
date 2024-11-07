module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c24 = arith.constant 24 : index
    %c24_0 = arith.constant 24 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %c0 to %c20 step %c1 {
      %c0_4 = arith.constant 0 : index
      %c24_5 = arith.constant 24 : index
      %c4 = arith.constant 4 : index
      scf.for %arg9 = %c0_4 to %c24_5 step %c4 {
        %2 = memref.load %arg5[%arg8, %arg9] : memref<?x25xf64>
        %3 = arith.mulf %2, %arg4 : f64
        memref.store %3, %arg5[%arg8, %arg9] : memref<?x25xf64>
        %c1_6 = arith.constant 1 : index
        %4 = arith.addi %arg9, %c1_6 : index
        %5 = memref.load %arg5[%arg8, %4] : memref<?x25xf64>
        %6 = arith.mulf %5, %arg4 : f64
        memref.store %6, %arg5[%arg8, %4] : memref<?x25xf64>
        %c2 = arith.constant 2 : index
        %7 = arith.addi %arg9, %c2 : index
        %8 = memref.load %arg5[%arg8, %7] : memref<?x25xf64>
        %9 = arith.mulf %8, %arg4 : f64
        memref.store %9, %arg5[%arg8, %7] : memref<?x25xf64>
        %c3 = arith.constant 3 : index
        %10 = arith.addi %arg9, %c3 : index
        %11 = memref.load %arg5[%arg8, %10] : memref<?x25xf64>
        %12 = arith.mulf %11, %arg4 : f64
        memref.store %12, %arg5[%arg8, %10] : memref<?x25xf64>
      }
      %0 = memref.load %arg5[%arg8, %c24_0] : memref<?x25xf64>
      %1 = arith.mulf %0, %arg4 : f64
      memref.store %1, %arg5[%arg8, %c24_0] : memref<?x25xf64>
    }
    %c0_1 = arith.constant 0 : index
    %c20_2 = arith.constant 20 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg8 = %c0_1 to %c20_2 step %c1_3 {
      %c0_4 = arith.constant 0 : index
      %c30 = arith.constant 30 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg9 = %c0_4 to %c30 step %c1_5 {
        %c0_6 = arith.constant 0 : index
        %c24_7 = arith.constant 24 : index
        %c4 = arith.constant 4 : index
        scf.for %arg10 = %c0_6 to %c24_7 step %c4 {
          %6 = memref.load %arg5[%arg8, %arg10] : memref<?x25xf64>
          %7 = memref.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %8 = arith.mulf %arg3, %7 : f64
          %9 = memref.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %6, %10 : f64
          memref.store %11, %arg5[%arg8, %arg10] : memref<?x25xf64>
          %c1_8 = arith.constant 1 : index
          %12 = arith.addi %arg10, %c1_8 : index
          %13 = memref.load %arg5[%arg8, %12] : memref<?x25xf64>
          %14 = memref.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %15 = arith.mulf %arg3, %14 : f64
          %16 = memref.load %arg7[%arg9, %12] : memref<?x25xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = arith.addf %13, %17 : f64
          memref.store %18, %arg5[%arg8, %12] : memref<?x25xf64>
          %c2 = arith.constant 2 : index
          %19 = arith.addi %arg10, %c2 : index
          %20 = memref.load %arg5[%arg8, %19] : memref<?x25xf64>
          %21 = memref.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %22 = arith.mulf %arg3, %21 : f64
          %23 = memref.load %arg7[%arg9, %19] : memref<?x25xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.addf %20, %24 : f64
          memref.store %25, %arg5[%arg8, %19] : memref<?x25xf64>
          %c3 = arith.constant 3 : index
          %26 = arith.addi %arg10, %c3 : index
          %27 = memref.load %arg5[%arg8, %26] : memref<?x25xf64>
          %28 = memref.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %29 = arith.mulf %arg3, %28 : f64
          %30 = memref.load %arg7[%arg9, %26] : memref<?x25xf64>
          %31 = arith.mulf %29, %30 : f64
          %32 = arith.addf %27, %31 : f64
          memref.store %32, %arg5[%arg8, %26] : memref<?x25xf64>
        }
        %0 = memref.load %arg5[%arg8, %c24] : memref<?x25xf64>
        %1 = memref.load %arg6[%arg8, %arg9] : memref<?x30xf64>
        %2 = arith.mulf %arg3, %1 : f64
        %3 = memref.load %arg7[%arg9, %c24] : memref<?x25xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %0, %4 : f64
        memref.store %5, %arg5[%arg8, %c24] : memref<?x25xf64>
      }
    }
    return
  }
}

