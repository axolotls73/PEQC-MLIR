module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c38 = arith.constant 38 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg6, %c32 : index
      %1 = arith.muli %arg6, %c32 : index
      %2 = arith.addi %1, %c32 : index
      %3 = arith.minsi %2, %c38 : index
      scf.for %arg7 = %0 to %3 step %c1 {
        memref.store %cst, %arg5[%arg7] : memref<?xf64>
      }
    }
    scf.for %arg6 = %c0 to %c2 step %c1 {
      scf.for %arg7 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg6, %c32 : index
        %1 = arith.muli %arg6, %c32 : index
        %2 = arith.addi %1, %c32 : index
        %3 = arith.minsi %2, %c38 : index
        scf.for %arg8 = %0 to %3 step %c1 {
          %4 = arith.muli %arg7, %c32 : index
          %5 = arith.muli %arg7, %c32 : index
          %6 = arith.addi %5, %c32 : index
          %7 = arith.minsi %6, %c42 : index
          scf.for %arg9 = %4 to %7 step %c1 {
            %8 = memref.load %arg5[%arg8] : memref<?xf64>
            %9 = memref.load %arg2[%arg8, %arg9] : memref<?x42xf64>
            %10 = memref.load %arg3[%arg9] : memref<?xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.addf %8, %11 : f64
            memref.store %12, %arg5[%arg8] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg6 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg6, %c32 : index
      %1 = arith.muli %arg6, %c32 : index
      %2 = arith.addi %1, %c32 : index
      %3 = arith.minsi %2, %c42 : index
      scf.for %arg7 = %0 to %3 step %c1 {
        memref.store %cst, %arg4[%arg7] : memref<?xf64>
      }
    }
    scf.for %arg6 = %c0 to %c2 step %c1 {
      scf.for %arg7 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg7, %c32 : index
        %1 = arith.muli %arg7, %c32 : index
        %2 = arith.addi %1, %c32 : index
        %3 = arith.minsi %2, %c38 : index
        scf.for %arg8 = %0 to %3 step %c1 {
          %4 = arith.muli %arg6, %c32 : index
          %5 = arith.muli %arg6, %c32 : index
          %6 = arith.addi %5, %c32 : index
          %7 = arith.minsi %6, %c42 : index
          scf.for %arg9 = %4 to %7 step %c1 {
            %8 = memref.load %arg4[%arg9] : memref<?xf64>
            %9 = memref.load %arg2[%arg8, %arg9] : memref<?x42xf64>
            %10 = memref.load %arg5[%arg8] : memref<?xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.addf %8, %11 : f64
            memref.store %12, %arg4[%arg9] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

