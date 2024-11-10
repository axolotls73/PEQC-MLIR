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
          %3 = arith.muli %arg7, %c-32 : index
          %4 = arith.addi %3, %c40 : index
          %5 = arith.minsi %4, %c32 : index
          scf.for %arg9 = %c0 to %5 step %c1 {
            %6 = arith.muli %arg6, %c32 : index
            %7 = arith.addi %6, %arg8 : index
            %8 = memref.load %arg1[%7] : memref<?xf64>
            %9 = arith.muli %arg6, %c32 : index
            %10 = arith.addi %9, %arg8 : index
            %11 = arith.muli %arg7, %c32 : index
            %12 = arith.addi %11, %arg9 : index
            %13 = memref.load %arg5[%10, %12] : memref<?x40xf64>
            %14 = arith.muli %arg7, %c32 : index
            %15 = arith.addi %14, %arg9 : index
            %16 = memref.load %arg3[%15] : memref<?xf64>
            %17 = arith.mulf %13, %16 : f64
            %18 = arith.addf %8, %17 : f64
            %19 = arith.muli %arg6, %c32 : index
            %20 = arith.addi %19, %arg8 : index
            memref.store %18, %arg1[%20] : memref<?xf64>
            %21 = arith.muli %arg6, %c32 : index
            %22 = arith.addi %21, %arg8 : index
            %23 = memref.load %arg2[%22] : memref<?xf64>
            %24 = arith.muli %arg7, %c32 : index
            %25 = arith.addi %24, %arg9 : index
            %26 = arith.muli %arg6, %c32 : index
            %27 = arith.addi %26, %arg8 : index
            %28 = memref.load %arg5[%25, %27] : memref<?x40xf64>
            %29 = arith.muli %arg7, %c32 : index
            %30 = arith.addi %29, %arg9 : index
            %31 = memref.load %arg4[%30] : memref<?xf64>
            %32 = arith.mulf %28, %31 : f64
            %33 = arith.addf %23, %32 : f64
            %34 = arith.muli %arg6, %c32 : index
            %35 = arith.addi %34, %arg8 : index
            memref.store %33, %arg2[%35] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

