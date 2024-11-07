module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg7 = %c0_0 to %c8 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c12 = arith.constant 12 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg8 = %c0_2 to %c12 step %c1_3 {
          memref.store %cst, %arg5[%arg8] : memref<?xf64>
          %c0_4 = arith.constant 0 : index
          %c12_5 = arith.constant 12 : index
          %c1_6 = arith.constant 1 : index
          scf.for %arg9 = %c0_4 to %c12_5 step %c1_6 {
            %1 = memref.load %arg3[%arg6, %arg7, %arg9] : memref<?x8x12xf64>
            %2 = memref.load %arg4[%arg9, %arg8] : memref<?x12xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = memref.load %arg5[%arg8] : memref<?xf64>
            %5 = arith.addf %4, %3 : f64
            memref.store %5, %arg5[%arg8] : memref<?xf64>
          }
          %0 = memref.load %arg5[%arg8] : memref<?xf64>
          memref.store %0, %arg3[%arg6, %arg7, %arg8] : memref<?x8x12xf64>
        }
      }
    }
    return
  }
}

