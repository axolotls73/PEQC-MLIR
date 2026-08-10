module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %2 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg7 = %c0_0 to %0 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg8 = %c0_2 to %1 step %c1_3 {
          memref.store %cst, %arg5[%arg8] : memref<?xf64>
          %c0_6 = arith.constant 0 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg9 = %c0_6 to %1 step %c1_7 {
            %3 = memref.load %arg3[%arg6, %arg7, %arg9] : memref<?x8x12xf64>
            %4 = memref.load %arg4[%arg9, %arg8] : memref<?x12xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = memref.load %arg5[%arg8] : memref<?xf64>
            %7 = arith.addf %6, %5 : f64
            memref.store %7, %arg5[%arg8] : memref<?xf64>
          }
        }
        %c0_4 = arith.constant 0 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg8 = %c0_4 to %1 step %c1_5 {
          %3 = memref.load %arg5[%arg8] : memref<?xf64>
          memref.store %3, %arg3[%arg6, %arg7, %arg8] : memref<?x8x12xf64>
        }
      }
    }
    return
  }
}

