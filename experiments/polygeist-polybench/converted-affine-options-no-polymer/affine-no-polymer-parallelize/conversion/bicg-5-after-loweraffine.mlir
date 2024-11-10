module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c38 = arith.constant 38 : index
    %c1 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0) to (%c38) step (%c1) {
      memref.store %cst, %arg3[%arg7] : memref<?xf64>
      scf.reduce 
    }
    %c0_0 = arith.constant 0 : index
    %c42 = arith.constant 42 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg7 = %c0_0 to %c42 step %c1_1 {
      memref.store %cst, %arg4[%arg7] : memref<?xf64>
      %c0_2 = arith.constant 0 : index
      %c38_3 = arith.constant 38 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg8 = %c0_2 to %c38_3 step %c1_4 {
        %0 = memref.load %arg3[%arg8] : memref<?xf64>
        %1 = memref.load %arg6[%arg7] : memref<?xf64>
        %2 = memref.load %arg2[%arg7, %arg8] : memref<?x38xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg3[%arg8] : memref<?xf64>
        %5 = memref.load %arg4[%arg7] : memref<?xf64>
        %6 = memref.load %arg2[%arg7, %arg8] : memref<?x38xf64>
        %7 = memref.load %arg5[%arg8] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = arith.addf %5, %8 : f64
        memref.store %9, %arg4[%arg7] : memref<?xf64>
      }
    }
    return
  }
}

