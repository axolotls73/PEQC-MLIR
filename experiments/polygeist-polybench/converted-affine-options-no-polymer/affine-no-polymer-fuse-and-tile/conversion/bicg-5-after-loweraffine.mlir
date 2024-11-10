module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c38 = arith.constant 38 : index
    %c32 = arith.constant 32 : index
    scf.for %arg7 = %c0 to %c38 step %c32 {
      %c32_2 = arith.constant 32 : index
      %0 = arith.addi %arg7, %c32_2 : index
      %c38_3 = arith.constant 38 : index
      %1 = arith.minsi %0, %c38_3 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst, %arg3[%arg8] : memref<?xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c42 = arith.constant 42 : index
    %c32_1 = arith.constant 32 : index
    scf.for %arg7 = %c0_0 to %c42 step %c32_1 {
      %c32_2 = arith.constant 32 : index
      %0 = arith.addi %arg7, %c32_2 : index
      %c42_3 = arith.constant 42 : index
      %1 = arith.minsi %0, %c42_3 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %1 step %c1 {
        memref.store %cst, %arg4[%arg8] : memref<?xf64>
        %c0_4 = arith.constant 0 : index
        %c38_5 = arith.constant 38 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg9 = %c0_4 to %c38_5 step %c1_6 {
          %2 = memref.load %arg3[%arg9] : memref<?xf64>
          %3 = memref.load %arg6[%arg8] : memref<?xf64>
          %4 = memref.load %arg2[%arg8, %arg9] : memref<?x38xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          memref.store %6, %arg3[%arg9] : memref<?xf64>
          %7 = memref.load %arg4[%arg8] : memref<?xf64>
          %8 = memref.load %arg2[%arg8, %arg9] : memref<?x38xf64>
          %9 = memref.load %arg5[%arg9] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %7, %10 : f64
          memref.store %11, %arg4[%arg8] : memref<?xf64>
        }
      }
    }
    return
  }
}

