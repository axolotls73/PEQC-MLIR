module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c40 = arith.constant 40 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c2 step %c1 {
      scf.for %arg7 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg6, %c32 : index
        %1 = arith.muli %arg6, %c32 : index
        %2 = arith.addi %1, %c32 : index
        %3 = arith.minsi %2, %c40 : index
        scf.for %arg8 = %0 to %3 step %c1 {
          %4 = arith.muli %arg7, %c32 : index
          %5 = arith.muli %arg7, %c32 : index
          %6 = arith.addi %5, %c32 : index
          %7 = arith.minsi %6, %c40 : index
          scf.for %arg9 = %4 to %7 step %c1 {
            %8 = memref.load %arg1[%arg8] : memref<?xf64>
            %9 = memref.load %arg5[%arg8, %arg9] : memref<?x40xf64>
            %10 = memref.load %arg3[%arg9] : memref<?xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.addf %8, %11 : f64
            memref.store %12, %arg1[%arg8] : memref<?xf64>
            %13 = memref.load %arg2[%arg8] : memref<?xf64>
            %14 = memref.load %arg5[%arg9, %arg8] : memref<?x40xf64>
            %15 = memref.load %arg4[%arg9] : memref<?xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = arith.addf %13, %16 : f64
            memref.store %17, %arg2[%arg8] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

