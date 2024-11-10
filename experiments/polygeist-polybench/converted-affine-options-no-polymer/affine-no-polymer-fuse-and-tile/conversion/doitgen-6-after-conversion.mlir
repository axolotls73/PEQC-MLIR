module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %c1 = arith.constant 1 : index
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c32 = arith.constant 32 : index
    scf.for %arg6 = %c0 to %c10 step %c32 {
      scf.for %arg7 = %c0 to %c8 step %c32 {
        scf.for %arg8 = %c0 to %c12 step %c32 {
          %0 = arith.addi %arg6, %c10 : index
          scf.for %arg9 = %arg6 to %0 step %c1 {
            %1 = arith.addi %arg7, %c8 : index
            scf.for %arg10 = %arg7 to %1 step %c1 {
              %2 = arith.addi %arg8, %c12 : index
              scf.for %arg11 = %arg8 to %2 step %c1 {
                memref.store %cst, %arg5[%arg11] : memref<?xf64>
                scf.for %arg12 = %c0 to %c12 step %c1 {
                  %4 = memref.load %arg3[%arg9, %arg10, %arg12] : memref<?x8x12xf64>
                  %5 = memref.load %arg4[%arg12, %arg11] : memref<?x12xf64>
                  %6 = arith.mulf %4, %5 : f64
                  %7 = memref.load %arg5[%arg11] : memref<?xf64>
                  %8 = arith.addf %7, %6 : f64
                  memref.store %8, %arg5[%arg11] : memref<?xf64>
                }
                %3 = memref.load %arg5[%arg11] : memref<?xf64>
                memref.store %3, %arg3[%arg9, %arg10, %arg11] : memref<?x8x12xf64>
              }
            }
          }
        }
      }
    }
    return
  }
}

