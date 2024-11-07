module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    %c32 = arith.constant 32 : index
    %c40 = arith.constant 40 : index
    %c-32 = arith.constant -32 : index
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c2 step %c1 {
      scf.for %arg7 = %c0 to %c2 step %c1 {
        %0 = arith.muli %arg6, %c-32 : index
        %1 = arith.addi %0, %c40 : index
        %2 = arith.minsi %1, %c32 : index
        scf.for %arg8 = %c0 to %2 step %c1 {
          %3 = arith.muli %arg6, %c32 : index
          %4 = arith.addi %3, %arg8 : index
          %5 = arith.muli %arg7, %c-32 : index
          %6 = arith.addi %5, %c40 : index
          %7 = arith.minsi %6, %c32 : index
          scf.for %arg9 = %c0 to %7 step %c1 {
            %8 = arith.muli %arg7, %c32 : index
            %9 = arith.addi %8, %arg9 : index
            %10 = memref.load %arg1[%4] : memref<?xf64>
            %11 = memref.load %arg5[%4, %9] : memref<?x40xf64>
            %12 = memref.load %arg3[%9] : memref<?xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = arith.addf %10, %13 : f64
            memref.store %14, %arg1[%4] : memref<?xf64>
            %15 = memref.load %arg2[%4] : memref<?xf64>
            %16 = memref.load %arg5[%9, %4] : memref<?x40xf64>
            %17 = memref.load %arg4[%9] : memref<?xf64>
            %18 = arith.mulf %16, %17 : f64
            %19 = arith.addf %15, %18 : f64
            memref.store %19, %arg2[%4] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

