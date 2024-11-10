module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %c38 = arith.constant 38 : index
    %c32 = arith.constant 32 : index
    %c42 = arith.constant 42 : index
    %c-32 = arith.constant -32 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg7, %c-32 : index
      %1 = arith.addi %0, %c42 : index
      %2 = arith.minsi %1, %c32 : index
      scf.for %arg8 = %c0 to %2 step %c1 {
        %3 = arith.muli %arg7, %c32 : index
        %4 = arith.addi %3, %arg8 : index
        memref.store %cst, %arg4[%4] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg7, %c-32 : index
        %1 = arith.addi %0, %c42 : index
        %2 = arith.minsi %1, %c32 : index
        scf.for %arg9 = %c0 to %2 step %c1 {
          %3 = arith.muli %arg8, %c-32 : index
          %4 = arith.addi %3, %c38 : index
          %5 = arith.minsi %4, %c32 : index
          scf.for %arg10 = %c0 to %5 step %c1 {
            %6 = arith.muli %arg7, %c32 : index
            %7 = arith.addi %6, %arg9 : index
            %8 = memref.load %arg4[%7] : memref<?xf64>
            %9 = arith.muli %arg7, %c32 : index
            %10 = arith.addi %9, %arg9 : index
            %11 = arith.muli %arg8, %c32 : index
            %12 = arith.addi %11, %arg10 : index
            %13 = memref.load %arg2[%10, %12] : memref<?x38xf64>
            %14 = arith.muli %arg8, %c32 : index
            %15 = arith.addi %14, %arg10 : index
            %16 = memref.load %arg5[%15] : memref<?xf64>
            %17 = arith.mulf %13, %16 : f64
            %18 = arith.addf %8, %17 : f64
            %19 = arith.muli %arg7, %c32 : index
            %20 = arith.addi %19, %arg9 : index
            memref.store %18, %arg4[%20] : memref<?xf64>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %0 = arith.muli %arg7, %c-32 : index
      %1 = arith.addi %0, %c38 : index
      %2 = arith.minsi %1, %c32 : index
      scf.for %arg8 = %c0 to %2 step %c1 {
        %3 = arith.muli %arg7, %c32 : index
        %4 = arith.addi %3, %arg8 : index
        memref.store %cst, %arg3[%4] : memref<?xf64>
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg8, %c-32 : index
        %1 = arith.addi %0, %c42 : index
        %2 = arith.minsi %1, %c32 : index
        scf.for %arg9 = %c0 to %2 step %c1 {
          %3 = arith.muli %arg7, %c-32 : index
          %4 = arith.addi %3, %c38 : index
          %5 = arith.minsi %4, %c32 : index
          scf.for %arg10 = %c0 to %5 step %c1 {
            %6 = arith.muli %arg7, %c32 : index
            %7 = arith.addi %6, %arg10 : index
            %8 = memref.load %arg3[%7] : memref<?xf64>
            %9 = arith.muli %arg8, %c32 : index
            %10 = arith.addi %9, %arg9 : index
            %11 = memref.load %arg6[%10] : memref<?xf64>
            %12 = arith.muli %arg8, %c32 : index
            %13 = arith.addi %12, %arg9 : index
            %14 = arith.muli %arg7, %c32 : index
            %15 = arith.addi %14, %arg10 : index
            %16 = memref.load %arg2[%13, %15] : memref<?x38xf64>
            %17 = arith.mulf %11, %16 : f64
            %18 = arith.addf %8, %17 : f64
            %19 = arith.muli %arg7, %c32 : index
            %20 = arith.addi %19, %arg10 : index
            memref.store %18, %arg3[%20] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

