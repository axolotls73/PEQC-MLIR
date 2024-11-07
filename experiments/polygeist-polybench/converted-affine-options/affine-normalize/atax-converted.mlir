module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c32 = arith.constant 32 : index
    %c38 = arith.constant 38 : index
    %c-32 = arith.constant -32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg6, %c-32 : index
      %1 = arith.addi %0, %c38 : index
      %2 = arith.minsi %1, %c32 : index
      scf.for %arg7 = %c0 to %2 step %c1 {
        %3 = arith.muli %arg6, %c32 : index
        %4 = arith.addi %3, %arg7 : index
        memref.store %cst, %arg5[%4] : memref<?xf64>
      }
    }
    scf.for %arg6 = %c0 to %c2 step %c1 {
      scf.for %arg7 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg6, %c-32 : index
        %1 = arith.addi %0, %c38 : index
        %2 = arith.minsi %1, %c32 : index
        scf.for %arg8 = %c0 to %2 step %c1 {
          %3 = arith.muli %arg6, %c32 : index
          %4 = arith.addi %3, %arg8 : index
          %5 = arith.muli %arg7, %c-32 : index
          %6 = arith.addi %5, %c42 : index
          %7 = arith.minsi %6, %c32 : index
          scf.for %arg9 = %c0 to %7 step %c1 {
            %8 = arith.muli %arg7, %c32 : index
            %9 = arith.addi %8, %arg9 : index
            %10 = memref.load %arg5[%4] : memref<?xf64>
            %11 = memref.load %arg2[%4, %9] : memref<?x42xf64>
            %12 = memref.load %arg3[%9] : memref<?xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = arith.addf %10, %13 : f64
            memref.store %14, %arg5[%4] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg6 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg6, %c-32 : index
      %1 = arith.addi %0, %c42 : index
      %2 = arith.minsi %1, %c32 : index
      scf.for %arg7 = %c0 to %2 step %c1 {
        %3 = arith.muli %arg6, %c32 : index
        %4 = arith.addi %3, %arg7 : index
        memref.store %cst, %arg4[%4] : memref<?xf64>
      }
    }
    scf.for %arg6 = %c0 to %c2 step %c1 {
      scf.for %arg7 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg7, %c-32 : index
        %1 = arith.addi %0, %c38 : index
        %2 = arith.minsi %1, %c32 : index
        scf.for %arg8 = %c0 to %2 step %c1 {
          %3 = arith.muli %arg7, %c32 : index
          %4 = arith.addi %3, %arg8 : index
          %5 = arith.muli %arg6, %c-32 : index
          %6 = arith.addi %5, %c42 : index
          %7 = arith.minsi %6, %c32 : index
          scf.for %arg9 = %c0 to %7 step %c1 {
            %8 = arith.muli %arg6, %c32 : index
            %9 = arith.addi %8, %arg9 : index
            %10 = memref.load %arg4[%9] : memref<?xf64>
            %11 = memref.load %arg2[%4, %9] : memref<?x42xf64>
            %12 = memref.load %arg5[%4] : memref<?xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = arith.addf %10, %13 : f64
            memref.store %14, %arg4[%9] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

