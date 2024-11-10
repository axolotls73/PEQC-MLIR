module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c3 = arith.constant 3 : index
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      scf.for %arg7 = %c0 to %c8 step %c1 {
        scf.for %arg8 = %c0 to %c1 step %c1 {
          %0 = arith.addi %arg6, %arg8 : index
          scf.for %arg9 = %c0 to %c1 step %c1 {
            %1 = arith.addi %arg7, %arg9 : index
            scf.for %arg10 = %c0 to %c12 step %c1 {
              memref.store %cst, %arg5[%arg10] : memref<?xf64>
              scf.for %arg11 = %c0 to %c3 step %c1 {
                %2 = arith.muli %arg11, %c4 : index
                %3 = memref.load %arg3[%0, %1, %2] : memref<?x8x12xf64>
                %4 = memref.load %arg4[%2, %arg10] : memref<?x12xf64>
                %5 = arith.mulf %3, %4 : f64
                %6 = memref.load %arg5[%arg10] : memref<?xf64>
                %7 = arith.addf %6, %5 : f64
                memref.store %7, %arg5[%arg10] : memref<?xf64>
                %8 = arith.addi %2, %c1 : index
                %9 = memref.load %arg3[%0, %1, %8] : memref<?x8x12xf64>
                %10 = memref.load %arg4[%8, %arg10] : memref<?x12xf64>
                %11 = arith.mulf %9, %10 : f64
                %12 = memref.load %arg5[%arg10] : memref<?xf64>
                %13 = arith.addf %12, %11 : f64
                memref.store %13, %arg5[%arg10] : memref<?xf64>
                %14 = arith.addi %2, %c2 : index
                %15 = memref.load %arg3[%0, %1, %14] : memref<?x8x12xf64>
                %16 = memref.load %arg4[%14, %arg10] : memref<?x12xf64>
                %17 = arith.mulf %15, %16 : f64
                %18 = memref.load %arg5[%arg10] : memref<?xf64>
                %19 = arith.addf %18, %17 : f64
                memref.store %19, %arg5[%arg10] : memref<?xf64>
                %20 = arith.addi %2, %c3 : index
                %21 = memref.load %arg3[%0, %1, %20] : memref<?x8x12xf64>
                %22 = memref.load %arg4[%20, %arg10] : memref<?x12xf64>
                %23 = arith.mulf %21, %22 : f64
                %24 = memref.load %arg5[%arg10] : memref<?xf64>
                %25 = arith.addf %24, %23 : f64
                memref.store %25, %arg5[%arg10] : memref<?xf64>
              }
            }
            scf.for %arg10 = %c0 to %c3 step %c1 {
              %2 = arith.muli %arg10, %c4 : index
              %3 = memref.load %arg5[%2] : memref<?xf64>
              memref.store %3, %arg3[%0, %1, %2] : memref<?x8x12xf64>
              %4 = arith.addi %2, %c1 : index
              %5 = memref.load %arg5[%4] : memref<?xf64>
              memref.store %5, %arg3[%0, %1, %4] : memref<?x8x12xf64>
              %6 = arith.addi %2, %c2 : index
              %7 = memref.load %arg5[%6] : memref<?xf64>
              memref.store %7, %arg3[%0, %1, %6] : memref<?x8x12xf64>
              %8 = arith.addi %2, %c3 : index
              %9 = memref.load %arg5[%8] : memref<?xf64>
              memref.store %9, %arg3[%0, %1, %8] : memref<?x8x12xf64>
            }
          }
        }
      }
    }
    return
  }
}

