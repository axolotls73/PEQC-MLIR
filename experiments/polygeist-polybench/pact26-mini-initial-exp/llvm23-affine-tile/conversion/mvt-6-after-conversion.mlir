module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    scf.for %arg6 = %c0 to %c40 step %c32 {
      scf.for %arg7 = %c0 to %c40 step %c32 {
        %0 = arith.addi %arg6, %c32 : index
        %1 = arith.minsi %0, %c40 : index
        scf.for %arg8 = %arg6 to %1 step %c1 {
          %2 = arith.addi %arg7, %c32 : index
          %3 = arith.minsi %2, %c40 : index
          scf.for %arg9 = %arg7 to %3 step %c1 {
            %4 = memref.load %arg1[%arg8] : memref<?xf64>
            %5 = memref.load %arg5[%arg8, %arg9] : memref<?x40xf64>
            %6 = memref.load %arg3[%arg9] : memref<?xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = arith.addf %4, %7 : f64
            memref.store %8, %arg1[%arg8] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg6 = %c0 to %c40 step %c32 {
      scf.for %arg7 = %c0 to %c40 step %c32 {
        %0 = arith.addi %arg6, %c32 : index
        %1 = arith.minsi %0, %c40 : index
        scf.for %arg8 = %arg6 to %1 step %c1 {
          %2 = arith.addi %arg7, %c32 : index
          %3 = arith.minsi %2, %c40 : index
          scf.for %arg9 = %arg7 to %3 step %c1 {
            %4 = memref.load %arg2[%arg8] : memref<?xf64>
            %5 = memref.load %arg5[%arg9, %arg8] : memref<?x40xf64>
            %6 = memref.load %arg4[%arg9] : memref<?xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = arith.addf %4, %7 : f64
            memref.store %8, %arg2[%arg8] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

