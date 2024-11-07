module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c4 = arith.constant 4 : index
    scf.for %arg8 = %c0 to %c20 step %c4 {
      %c0_0 = arith.constant 0 : index
      %c25 = arith.constant 25 : index
      %c1 = arith.constant 1 : index
      scf.for %arg9 = %c0_0 to %c25 step %c1 {
        %0 = memref.load %arg5[%arg8, %arg9] : memref<?x25xf64>
        %1 = arith.mulf %0, %arg4 : f64
        memref.store %1, %arg5[%arg8, %arg9] : memref<?x25xf64>
        %c1_3 = arith.constant 1 : index
        %2 = arith.addi %arg8, %c1_3 : index
        %3 = memref.load %arg5[%2, %arg9] : memref<?x25xf64>
        %4 = arith.mulf %3, %arg4 : f64
        memref.store %4, %arg5[%2, %arg9] : memref<?x25xf64>
        %c2 = arith.constant 2 : index
        %5 = arith.addi %arg8, %c2 : index
        %6 = memref.load %arg5[%5, %arg9] : memref<?x25xf64>
        %7 = arith.mulf %6, %arg4 : f64
        memref.store %7, %arg5[%5, %arg9] : memref<?x25xf64>
        %c3 = arith.constant 3 : index
        %8 = arith.addi %arg8, %c3 : index
        %9 = memref.load %arg5[%8, %arg9] : memref<?x25xf64>
        %10 = arith.mulf %9, %arg4 : f64
        memref.store %10, %arg5[%8, %arg9] : memref<?x25xf64>
      }
      %c0_1 = arith.constant 0 : index
      %c30 = arith.constant 30 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg9 = %c0_1 to %c30 step %c1_2 {
        %c0_3 = arith.constant 0 : index
        %c25_4 = arith.constant 25 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg10 = %c0_3 to %c25_4 step %c1_5 {
          %0 = memref.load %arg6[%arg8, %arg9] : memref<?x30xf64>
          %1 = arith.mulf %arg3, %0 : f64
          %2 = memref.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = memref.load %arg5[%arg8, %arg10] : memref<?x25xf64>
          %5 = arith.addf %4, %3 : f64
          memref.store %5, %arg5[%arg8, %arg10] : memref<?x25xf64>
          %c1_6 = arith.constant 1 : index
          %6 = arith.addi %arg8, %c1_6 : index
          %7 = memref.load %arg6[%6, %arg9] : memref<?x30xf64>
          %8 = arith.mulf %arg3, %7 : f64
          %9 = memref.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = memref.load %arg5[%6, %arg10] : memref<?x25xf64>
          %12 = arith.addf %11, %10 : f64
          memref.store %12, %arg5[%6, %arg10] : memref<?x25xf64>
          %c2 = arith.constant 2 : index
          %13 = arith.addi %arg8, %c2 : index
          %14 = memref.load %arg6[%13, %arg9] : memref<?x30xf64>
          %15 = arith.mulf %arg3, %14 : f64
          %16 = memref.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = memref.load %arg5[%13, %arg10] : memref<?x25xf64>
          %19 = arith.addf %18, %17 : f64
          memref.store %19, %arg5[%13, %arg10] : memref<?x25xf64>
          %c3 = arith.constant 3 : index
          %20 = arith.addi %arg8, %c3 : index
          %21 = memref.load %arg6[%20, %arg9] : memref<?x30xf64>
          %22 = arith.mulf %arg3, %21 : f64
          %23 = memref.load %arg7[%arg9, %arg10] : memref<?x25xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = memref.load %arg5[%20, %arg10] : memref<?x25xf64>
          %26 = arith.addf %25, %24 : f64
          memref.store %26, %arg5[%20, %arg10] : memref<?x25xf64>
        }
      }
    }
    return
  }
}

