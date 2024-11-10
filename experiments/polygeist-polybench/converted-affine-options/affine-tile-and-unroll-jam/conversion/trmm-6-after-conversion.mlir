module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c32 = arith.constant 32 : index
    %c20 = arith.constant 20 : index
    %c30 = arith.constant 30 : index
    %c-1 = arith.constant -1 : index
    %c0 = arith.constant 0 : index
    %c19 = arith.constant 19 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %c19 step %c1 {
      %0 = arith.muli %arg5, %c-1 : index
      %1 = arith.addi %0, %c19 : index
      scf.for %arg6 = %c0 to %1 step %c1 {
        scf.for %arg7 = %c0 to %c30 step %c1 {
          %2 = memref.load %arg4[%arg5, %arg7] : memref<?x30xf64>
          %3 = arith.addi %arg5, %arg6 : index
          %4 = arith.addi %3, %c1 : index
          %5 = memref.load %arg3[%4, %arg5] : memref<?x20xf64>
          %6 = arith.addi %arg5, %arg6 : index
          %7 = arith.addi %6, %c1 : index
          %8 = memref.load %arg4[%7, %arg7] : memref<?x30xf64>
          %9 = arith.mulf %5, %8 : f64
          %10 = arith.addf %2, %9 : f64
          memref.store %10, %arg4[%arg5, %arg7] : memref<?x30xf64>
        }
      }
    }
    scf.for %arg5 = %c0 to %c20 step %c32 {
      scf.for %arg6 = %c0 to %c30 step %c32 {
        %0 = arith.addi %arg5, %c20 : index
        scf.for %arg7 = %arg5 to %0 step %c1 {
          %1 = arith.addi %arg6, %c30 : index
          scf.for %arg8 = %arg6 to %1 step %c1 {
            %2 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
            %3 = arith.mulf %arg2, %2 : f64
            memref.store %3, %arg4[%arg7, %arg8] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

