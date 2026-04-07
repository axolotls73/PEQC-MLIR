module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %cst, %alloca[] : memref<f64>
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c20 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c30 = arith.constant 30 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg8 = %c0_0 to %c30 step %c1_1 {
        memref.store %cst, %alloca[] : memref<f64>
        %c0_2 = arith.constant 0 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg9 = %c0_2 to %arg7 step %c1_3 {
          %10 = memref.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %11 = arith.mulf %arg2, %10 : f64
          %12 = memref.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = memref.load %arg4[%arg9, %arg8] : memref<?x30xf64>
          %15 = arith.addf %14, %13 : f64
          memref.store %15, %arg4[%arg9, %arg8] : memref<?x30xf64>
          %16 = memref.load %arg6[%arg9, %arg8] : memref<?x30xf64>
          %17 = memref.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %alloca[] : memref<f64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %alloca[] : memref<f64>
        }
        %0 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %1 = arith.mulf %arg3, %0 : f64
        %2 = memref.load %arg6[%arg7, %arg8] : memref<?x30xf64>
        %3 = arith.mulf %arg2, %2 : f64
        %4 = memref.load %arg5[%arg7, %arg7] : memref<?x20xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = arith.addf %1, %5 : f64
        %7 = memref.load %alloca[] : memref<f64>
        %8 = arith.mulf %arg2, %7 : f64
        %9 = arith.addf %6, %8 : f64
        memref.store %9, %arg4[%arg7, %arg8] : memref<?x30xf64>
      }
    }
    return
  }
}

