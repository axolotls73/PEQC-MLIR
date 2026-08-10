module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 5.000000e-01 : f64
    %cst_0 = arith.constant 0.69999999999999996 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %2 step %c1 {
      %c0_1 = arith.constant 0 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg8 = %c0_1 to %1 step %c1_2 {
        %4 = memref.load %arg6[%arg7] : memref<?xf64>
        %c0_9 = arith.constant 0 : index
        memref.store %4, %arg4[%c0_9, %arg8] : memref<?x30xf64>
      }
      %c1_3 = arith.constant 1 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg8 = %c1_3 to %0 step %c1_4 {
        %c0_9 = arith.constant 0 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg9 = %c0_9 to %1 step %c1_10 {
          %4 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %5 = memref.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %c-1_11 = arith.constant -1 : index
          %6 = arith.addi %arg8, %c-1_11 : index
          %7 = memref.load %arg5[%6, %arg9] : memref<?x30xf64>
          %8 = arith.subf %5, %7 : f64
          %9 = arith.mulf %8, %cst : f64
          %10 = arith.subf %4, %9 : f64
          memref.store %10, %arg4[%arg8, %arg9] : memref<?x30xf64>
        }
      }
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg8 = %c0_5 to %0 step %c1_6 {
        %c1_9 = arith.constant 1 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg9 = %c1_9 to %1 step %c1_10 {
          %4 = memref.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %5 = memref.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %c-1_11 = arith.constant -1 : index
          %6 = arith.addi %arg9, %c-1_11 : index
          %7 = memref.load %arg5[%arg8, %6] : memref<?x30xf64>
          %8 = arith.subf %5, %7 : f64
          %9 = arith.mulf %8, %cst : f64
          %10 = arith.subf %4, %9 : f64
          memref.store %10, %arg3[%arg8, %arg9] : memref<?x30xf64>
        }
      }
      %c0_7 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %3 = arith.addi %0, %c-1 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg8 = %c0_7 to %3 step %c1_8 {
        %c0_9 = arith.constant 0 : index
        %c-1_10 = arith.constant -1 : index
        %4 = arith.addi %1, %c-1_10 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg9 = %c0_9 to %4 step %c1_11 {
          %5 = memref.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %c1_12 = arith.constant 1 : index
          %6 = arith.addi %arg9, %c1_12 : index
          %7 = memref.load %arg3[%arg8, %6] : memref<?x30xf64>
          %8 = memref.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %9 = arith.subf %7, %8 : f64
          %c1_13 = arith.constant 1 : index
          %10 = arith.addi %arg8, %c1_13 : index
          %11 = memref.load %arg4[%10, %arg9] : memref<?x30xf64>
          %12 = arith.addf %9, %11 : f64
          %13 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %14 = arith.subf %12, %13 : f64
          %15 = arith.mulf %14, %cst_0 : f64
          %16 = arith.subf %5, %15 : f64
          memref.store %16, %arg5[%arg8, %arg9] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

