module {
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %alloca = memref.alloca() : memref<f64>
    memref.store %cst, %alloca[] : memref<f64>
    %1 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %1 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg8 = %c0_0 to %0 step %c1_1 {
        memref.store %cst, %alloca[] : memref<f64>
        %c0_2 = arith.constant 0 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg9 = %c0_2 to %arg7 step %c1_3 {
          %12 = memref.load %arg6[%arg7, %arg8] : memref<?x30xf64>
          %13 = arith.mulf %arg2, %12 : f64
          %14 = memref.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = memref.load %arg4[%arg9, %arg8] : memref<?x30xf64>
          %17 = arith.addf %16, %15 : f64
          memref.store %17, %arg4[%arg9, %arg8] : memref<?x30xf64>
          %18 = memref.load %arg6[%arg9, %arg8] : memref<?x30xf64>
          %19 = memref.load %arg5[%arg7, %arg9] : memref<?x20xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = memref.load %alloca[] : memref<f64>
          %22 = arith.addf %21, %20 : f64
          memref.store %22, %alloca[] : memref<f64>
        }
        %2 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
        %3 = arith.mulf %arg3, %2 : f64
        %4 = memref.load %arg6[%arg7, %arg8] : memref<?x30xf64>
        %5 = arith.mulf %arg2, %4 : f64
        %6 = memref.load %arg5[%arg7, %arg7] : memref<?x20xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = arith.addf %3, %7 : f64
        %9 = memref.load %alloca[] : memref<f64>
        %10 = arith.mulf %arg2, %9 : f64
        %11 = arith.addf %8, %10 : f64
        memref.store %11, %arg4[%arg7, %arg8] : memref<?x30xf64>
      }
    }
    return
  }
}

