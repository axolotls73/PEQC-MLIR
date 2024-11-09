module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      scf.for %arg7 = %c0 to %c8 step %c1 {
        scf.for %arg8 = %c0 to %c12 step %c1 {
          memref.store %cst, %arg5[%arg8] : memref<?xf64>
          scf.for %arg9 = %c0 to %c12 step %c1 {
            %0 = memref.load %arg3[%arg6, %arg7, %arg9] : memref<?x8x12xf64>
            %1 = memref.load %arg4[%arg9, %arg8] : memref<?x12xf64>
            %2 = arith.mulf %0, %1 : f64
            %3 = memref.load %arg5[%arg8] : memref<?xf64>
            %4 = arith.addf %3, %2 : f64
            memref.store %4, %arg5[%arg8] : memref<?xf64>
          }
        }
        scf.for %arg8 = %c0 to %c12 step %c1 {
          %0 = memref.load %arg5[%arg8] : memref<?xf64>
          memref.store %0, %arg3[%arg6, %arg7, %arg8] : memref<?x8x12xf64>
        }
      }
    }
    return
  }
}

