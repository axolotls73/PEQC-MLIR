module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      scf.for %arg7 = %c0 to %c8 step %c1 {
        scf.for %arg8 = %c0 to %c12 step %c1 {
          memref.store %cst, %arg5[%arg8] : memref<?xf64>
          scf.for %arg9 = %c0 to %c12 step %c4 {
            %0 = memref.load %arg3[%arg6, %arg7, %arg9] : memref<?x8x12xf64>
            %1 = memref.load %arg4[%arg9, %arg8] : memref<?x12xf64>
            %2 = arith.mulf %0, %1 : f64
            %3 = memref.load %arg5[%arg8] : memref<?xf64>
            %4 = arith.addf %3, %2 : f64
            memref.store %4, %arg5[%arg8] : memref<?xf64>
            %5 = arith.addi %arg9, %c1 : index
            %6 = memref.load %arg3[%arg6, %arg7, %5] : memref<?x8x12xf64>
            %7 = memref.load %arg4[%5, %arg8] : memref<?x12xf64>
            %8 = arith.mulf %6, %7 : f64
            %9 = memref.load %arg5[%arg8] : memref<?xf64>
            %10 = arith.addf %9, %8 : f64
            memref.store %10, %arg5[%arg8] : memref<?xf64>
            %11 = arith.addi %arg9, %c2 : index
            %12 = memref.load %arg3[%arg6, %arg7, %11] : memref<?x8x12xf64>
            %13 = memref.load %arg4[%11, %arg8] : memref<?x12xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = memref.load %arg5[%arg8] : memref<?xf64>
            %16 = arith.addf %15, %14 : f64
            memref.store %16, %arg5[%arg8] : memref<?xf64>
            %17 = arith.addi %arg9, %c3 : index
            %18 = memref.load %arg3[%arg6, %arg7, %17] : memref<?x8x12xf64>
            %19 = memref.load %arg4[%17, %arg8] : memref<?x12xf64>
            %20 = arith.mulf %18, %19 : f64
            %21 = memref.load %arg5[%arg8] : memref<?xf64>
            %22 = arith.addf %21, %20 : f64
            memref.store %22, %arg5[%arg8] : memref<?xf64>
          }
        }
        scf.for %arg8 = %c0 to %c12 step %c4 {
          %0 = memref.load %arg5[%arg8] : memref<?xf64>
          memref.store %0, %arg3[%arg6, %arg7, %arg8] : memref<?x8x12xf64>
          %1 = arith.addi %arg8, %c1 : index
          %2 = memref.load %arg5[%1] : memref<?xf64>
          memref.store %2, %arg3[%arg6, %arg7, %1] : memref<?x8x12xf64>
          %3 = arith.addi %arg8, %c2 : index
          %4 = memref.load %arg5[%3] : memref<?xf64>
          memref.store %4, %arg3[%arg6, %arg7, %3] : memref<?x8x12xf64>
          %5 = arith.addi %arg8, %c3 : index
          %6 = memref.load %arg5[%5] : memref<?xf64>
          memref.store %6, %arg3[%arg6, %arg7, %5] : memref<?x8x12xf64>
        }
      }
    }
    return
  }
}

