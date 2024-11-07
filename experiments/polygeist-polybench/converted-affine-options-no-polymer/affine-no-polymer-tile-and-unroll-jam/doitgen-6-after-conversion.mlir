module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %c12 = arith.constant 12 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c32 = arith.constant 32 : index
    scf.for %arg6 = %c0 to %c10 step %c32 {
      scf.for %arg7 = %c0 to %c8 step %c32 {
        %0 = arith.addi %arg6, %c10 : index
        scf.for %arg8 = %arg6 to %0 step %c1 {
          %1 = arith.addi %arg7, %c8 : index
          scf.for %arg9 = %arg7 to %1 step %c1 {
            scf.for %arg10 = %c0 to %c12 step %c1 {
              memref.store %cst, %arg5[%arg10] : memref<?xf64>
              scf.for %arg11 = %c0 to %c12 step %c1 {
                %2 = memref.load %arg3[%arg8, %arg9, %arg11] : memref<?x8x12xf64>
                %3 = memref.load %arg4[%arg11, %arg10] : memref<?x12xf64>
                %4 = arith.mulf %2, %3 : f64
                %5 = memref.load %arg5[%arg10] : memref<?xf64>
                %6 = arith.addf %5, %4 : f64
                memref.store %6, %arg5[%arg10] : memref<?xf64>
              }
            }
            scf.for %arg10 = %c0 to %c12 step %c1 {
              %2 = memref.load %arg5[%arg10] : memref<?xf64>
              memref.store %2, %arg3[%arg8, %arg9, %arg10] : memref<?x8x12xf64>
            }
          }
        }
      }
    }
    return
  }
}

