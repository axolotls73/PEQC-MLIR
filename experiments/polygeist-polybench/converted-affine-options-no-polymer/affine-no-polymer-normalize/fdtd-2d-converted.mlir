module {
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c29 = arith.constant 29 : index
    %c-1 = arith.constant -1 : index
    %c19 = arith.constant 19 : index
    %c30 = arith.constant 30 : index
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c20 step %c1 {
      scf.for %arg8 = %c0 to %c30 step %c1 {
        %0 = memref.load %arg6[%arg7] : memref<?xf64>
        memref.store %0, %arg4[%c0, %arg8] : memref<?x30xf64>
      }
      scf.for %arg8 = %c0 to %c19 step %c1 {
        %0 = arith.addi %arg8, %c1 : index
        scf.for %arg9 = %c0 to %c30 step %c1 {
          %1 = memref.load %arg4[%0, %arg9] : memref<?x30xf64>
          %2 = memref.load %arg5[%0, %arg9] : memref<?x30xf64>
          %3 = arith.addi %0, %c-1 : index
          %4 = memref.load %arg5[%3, %arg9] : memref<?x30xf64>
          %5 = arith.subf %2, %4 : f64
          %6 = arith.mulf %5, %cst_0 : f64
          %7 = arith.subf %1, %6 : f64
          memref.store %7, %arg4[%0, %arg9] : memref<?x30xf64>
        }
      }
      scf.for %arg8 = %c0 to %c20 step %c1 {
        scf.for %arg9 = %c0 to %c29 step %c1 {
          %0 = arith.addi %arg9, %c1 : index
          %1 = memref.load %arg3[%arg8, %0] : memref<?x30xf64>
          %2 = memref.load %arg5[%arg8, %0] : memref<?x30xf64>
          %3 = arith.addi %0, %c-1 : index
          %4 = memref.load %arg5[%arg8, %3] : memref<?x30xf64>
          %5 = arith.subf %2, %4 : f64
          %6 = arith.mulf %5, %cst_0 : f64
          %7 = arith.subf %1, %6 : f64
          memref.store %7, %arg3[%arg8, %0] : memref<?x30xf64>
        }
      }
      scf.for %arg8 = %c0 to %c19 step %c1 {
        scf.for %arg9 = %c0 to %c29 step %c1 {
          %0 = memref.load %arg5[%arg8, %arg9] : memref<?x30xf64>
          %1 = arith.addi %arg9, %c1 : index
          %2 = memref.load %arg3[%arg8, %1] : memref<?x30xf64>
          %3 = memref.load %arg3[%arg8, %arg9] : memref<?x30xf64>
          %4 = arith.subf %2, %3 : f64
          %5 = arith.addi %arg8, %c1 : index
          %6 = memref.load %arg4[%5, %arg9] : memref<?x30xf64>
          %7 = arith.addf %4, %6 : f64
          %8 = memref.load %arg4[%arg8, %arg9] : memref<?x30xf64>
          %9 = arith.subf %7, %8 : f64
          %10 = arith.mulf %9, %cst : f64
          %11 = arith.subf %0, %10 : f64
          memref.store %11, %arg5[%arg8, %arg9] : memref<?x30xf64>
        }
      }
    }
    return
  }
}

