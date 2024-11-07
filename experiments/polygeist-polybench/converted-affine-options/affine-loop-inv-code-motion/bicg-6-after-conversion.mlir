module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c38 = arith.constant 38 : index
    %c42 = arith.constant 42 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg7, %c32 : index
      %1 = arith.muli %arg7, %c32 : index
      %2 = arith.addi %1, %c32 : index
      %3 = arith.minsi %2, %c42 : index
      scf.for %arg8 = %0 to %3 step %c1 {
        memref.store %cst, %arg4[%arg8] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg7, %c32 : index
        %1 = arith.muli %arg7, %c32 : index
        %2 = arith.addi %1, %c32 : index
        %3 = arith.minsi %2, %c42 : index
        scf.for %arg9 = %0 to %3 step %c1 {
          %4 = arith.muli %arg8, %c32 : index
          %5 = arith.muli %arg8, %c32 : index
          %6 = arith.addi %5, %c32 : index
          %7 = arith.minsi %6, %c38 : index
          scf.for %arg10 = %4 to %7 step %c1 {
            %8 = memref.load %arg4[%arg9] : memref<?xf64>
            %9 = memref.load %arg2[%arg9, %arg10] : memref<?x38xf64>
            %10 = memref.load %arg5[%arg10] : memref<?xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.addf %8, %11 : f64
            memref.store %12, %arg4[%arg9] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg7, %c32 : index
      %1 = arith.muli %arg7, %c32 : index
      %2 = arith.addi %1, %c32 : index
      %3 = arith.minsi %2, %c38 : index
      scf.for %arg8 = %0 to %3 step %c1 {
        memref.store %cst, %arg3[%arg8] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg8, %c32 : index
        %1 = arith.muli %arg8, %c32 : index
        %2 = arith.addi %1, %c32 : index
        %3 = arith.minsi %2, %c42 : index
        scf.for %arg9 = %0 to %3 step %c1 {
          %4 = memref.load %arg6[%arg9] : memref<?xf64>
          %5 = arith.muli %arg7, %c32 : index
          %6 = arith.muli %arg7, %c32 : index
          %7 = arith.addi %6, %c32 : index
          %8 = arith.minsi %7, %c38 : index
          scf.for %arg10 = %5 to %8 step %c1 {
            %9 = memref.load %arg3[%arg10] : memref<?xf64>
            %10 = memref.load %arg2[%arg9, %arg10] : memref<?x38xf64>
            %11 = arith.mulf %4, %10 : f64
            %12 = arith.addf %9, %11 : f64
            memref.store %12, %arg3[%arg10] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

