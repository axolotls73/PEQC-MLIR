module {
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    %c19 = arith.constant 19 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c30 = arith.constant 30 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c32 = arith.constant 32 : index
    scf.for %arg5 = %c0 to %c20 step %c32 {
      scf.for %arg6 = %c0 to %c30 step %c32 {
        %0 = arith.addi %arg5, %c20 : index
        scf.for %arg7 = %arg5 to %0 step %c1 {
          %1 = arith.addi %arg6, %c30 : index
          scf.for %arg8 = %arg6 to %1 step %c1 {
            %2 = arith.muli %arg7, %c-1 : index
            %3 = arith.addi %2, %c19 : index
            scf.for %arg9 = %c0 to %3 step %c1 {
              %6 = arith.addi %arg7, %arg9 : index
              %7 = arith.addi %6, %c1 : index
              %8 = memref.load %arg3[%7, %arg7] : memref<?x20xf64>
              %9 = arith.addi %arg7, %arg9 : index
              %10 = arith.addi %9, %c1 : index
              %11 = memref.load %arg4[%10, %arg8] : memref<?x30xf64>
              %12 = arith.mulf %8, %11 : f64
              %13 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
              %14 = arith.addf %13, %12 : f64
              memref.store %14, %arg4[%arg7, %arg8] : memref<?x30xf64>
            }
            %4 = memref.load %arg4[%arg7, %arg8] : memref<?x30xf64>
            %5 = arith.mulf %arg2, %4 : f64
            memref.store %5, %arg4[%arg7, %arg8] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

