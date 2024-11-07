module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c42 = arith.constant 42 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c42 step %c1 {
      memref.store %cst, %arg4[%arg6] : memref<?xf64>
    }
    %c0_0 = arith.constant 0 : index
    %c38 = arith.constant 38 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg6 = %c0_0 to %c38 step %c1_1 {
      memref.store %cst, %arg5[%arg6] : memref<?xf64>
      %c0_2 = arith.constant 0 : index
      %c42_3 = arith.constant 42 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg7 = %c0_2 to %c42_3 step %c1_4 {
        %1 = memref.load %arg5[%arg6] : memref<?xf64>
        %2 = memref.load %arg2[%arg6, %arg7] : memref<?x42xf64>
        %3 = memref.load %arg3[%arg7] : memref<?xf64>
        %4 = arith.mulf %2, %3 : f64
        %5 = arith.addf %1, %4 : f64
        memref.store %5, %arg5[%arg6] : memref<?xf64>
      }
      %0 = memref.load %arg5[%arg6] : memref<?xf64>
      %c0_5 = arith.constant 0 : index
      %c42_6 = arith.constant 42 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg7 = %c0_5 to %c42_6 step %c1_7 {
        %1 = memref.load %arg4[%arg7] : memref<?xf64>
        %2 = memref.load %arg2[%arg6, %arg7] : memref<?x42xf64>
        %3 = arith.mulf %2, %0 : f64
        %4 = arith.addf %1, %3 : f64
        memref.store %4, %arg4[%arg7] : memref<?xf64>
      }
    }
    return
  }
}

