module {
  func.func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c30 = arith.constant 30 : index
    %c32 = arith.constant 32 : index
    scf.for %arg8 = %c0 to %c30 step %c32 {
      %c30_0 = arith.constant 30 : index
      %0 = arith.addi %arg8, %c30_0 : index
      %c1 = arith.constant 1 : index
      scf.for %arg9 = %arg8 to %0 step %c1 {
        memref.store %cst, %arg7[%arg9] : memref<?xf64>
        %c0_1 = arith.constant 0 : index
        %c30_2 = arith.constant 30 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg10 = %c0_1 to %c30_2 step %c1_3 {
          %6 = memref.load %arg4[%arg9, %arg10] : memref<?x30xf64>
          %7 = memref.load %arg6[%arg10] : memref<?xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %arg7[%arg9] : memref<?xf64>
          %10 = arith.addf %8, %9 : f64
          memref.store %10, %arg7[%arg9] : memref<?xf64>
        }
        memref.store %cst, %arg5[%arg9] : memref<?xf64>
        %c0_4 = arith.constant 0 : index
        %c30_5 = arith.constant 30 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg10 = %c0_4 to %c30_5 step %c1_6 {
          %6 = memref.load %arg3[%arg9, %arg10] : memref<?x30xf64>
          %7 = memref.load %arg6[%arg10] : memref<?xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = memref.load %arg5[%arg9] : memref<?xf64>
          %10 = arith.addf %8, %9 : f64
          memref.store %10, %arg5[%arg9] : memref<?xf64>
        }
        %1 = memref.load %arg5[%arg9] : memref<?xf64>
        %2 = arith.mulf %arg1, %1 : f64
        %3 = memref.load %arg7[%arg9] : memref<?xf64>
        %4 = arith.mulf %arg2, %3 : f64
        %5 = arith.addf %2, %4 : f64
        memref.store %5, %arg7[%arg9] : memref<?xf64>
      }
    }
    return
  }
}

