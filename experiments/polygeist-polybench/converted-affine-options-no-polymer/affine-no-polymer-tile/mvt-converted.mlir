module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c40 step %c1 {
      scf.for %arg7 = %c0 to %c40 step %c1 {
        %0 = arith.addi %arg6, %c1 : index
        scf.for %arg8 = %arg6 to %0 step %c1 {
          %1 = arith.addi %arg7, %c1 : index
          scf.for %arg9 = %arg7 to %1 step %c1 {
            %2 = memref.load %arg1[%arg8] : memref<?xf64>
            %3 = memref.load %arg5[%arg8, %arg9] : memref<?x40xf64>
            %4 = memref.load %arg3[%arg9] : memref<?xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = arith.addf %2, %5 : f64
            memref.store %6, %arg1[%arg8] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg6 = %c0 to %c40 step %c1 {
      scf.for %arg7 = %c0 to %c40 step %c1 {
        %0 = arith.addi %arg6, %c1 : index
        scf.for %arg8 = %arg6 to %0 step %c1 {
          %1 = arith.addi %arg7, %c1 : index
          scf.for %arg9 = %arg7 to %1 step %c1 {
            %2 = memref.load %arg2[%arg8] : memref<?xf64>
            %3 = memref.load %arg5[%arg9, %arg8] : memref<?x40xf64>
            %4 = memref.load %arg4[%arg9] : memref<?xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = arith.addf %2, %5 : f64
            memref.store %6, %arg2[%arg8] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

