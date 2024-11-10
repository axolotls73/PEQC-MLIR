module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg7 = %c0_0 to %c8 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c1_3 = arith.constant 1 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg8 = %c0_2 to %c1_3 step %c1_4 {
          %0 = arith.addi %arg6, %arg8 : index
          %c0_5 = arith.constant 0 : index
          %c1_6 = arith.constant 1 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg9 = %c0_5 to %c1_6 step %c1_7 {
            %1 = arith.addi %arg7, %arg9 : index
            %c0_8 = arith.constant 0 : index
            %c12 = arith.constant 12 : index
            %c1_9 = arith.constant 1 : index
            scf.for %arg10 = %c0_8 to %c12 step %c1_9 {
              memref.store %cst, %arg5[%arg10] : memref<?xf64>
              %c0_12 = arith.constant 0 : index
              %c3_13 = arith.constant 3 : index
              %c1_14 = arith.constant 1 : index
              scf.for %arg11 = %c0_12 to %c3_13 step %c1_14 {
                %c4 = arith.constant 4 : index
                %2 = arith.muli %arg11, %c4 : index
                %3 = memref.load %arg3[%0, %1, %2] : memref<?x8x12xf64>
                %4 = memref.load %arg4[%2, %arg10] : memref<?x12xf64>
                %5 = arith.mulf %3, %4 : f64
                %6 = memref.load %arg5[%arg10] : memref<?xf64>
                %7 = arith.addf %6, %5 : f64
                memref.store %7, %arg5[%arg10] : memref<?xf64>
                %c1_15 = arith.constant 1 : index
                %8 = arith.addi %2, %c1_15 : index
                %9 = memref.load %arg3[%0, %1, %8] : memref<?x8x12xf64>
                %10 = memref.load %arg4[%8, %arg10] : memref<?x12xf64>
                %11 = arith.mulf %9, %10 : f64
                %12 = memref.load %arg5[%arg10] : memref<?xf64>
                %13 = arith.addf %12, %11 : f64
                memref.store %13, %arg5[%arg10] : memref<?xf64>
                %c2 = arith.constant 2 : index
                %14 = arith.addi %2, %c2 : index
                %15 = memref.load %arg3[%0, %1, %14] : memref<?x8x12xf64>
                %16 = memref.load %arg4[%14, %arg10] : memref<?x12xf64>
                %17 = arith.mulf %15, %16 : f64
                %18 = memref.load %arg5[%arg10] : memref<?xf64>
                %19 = arith.addf %18, %17 : f64
                memref.store %19, %arg5[%arg10] : memref<?xf64>
                %c3_16 = arith.constant 3 : index
                %20 = arith.addi %2, %c3_16 : index
                %21 = memref.load %arg3[%0, %1, %20] : memref<?x8x12xf64>
                %22 = memref.load %arg4[%20, %arg10] : memref<?x12xf64>
                %23 = arith.mulf %21, %22 : f64
                %24 = memref.load %arg5[%arg10] : memref<?xf64>
                %25 = arith.addf %24, %23 : f64
                memref.store %25, %arg5[%arg10] : memref<?xf64>
              }
            }
            %c0_10 = arith.constant 0 : index
            %c3 = arith.constant 3 : index
            %c1_11 = arith.constant 1 : index
            scf.for %arg10 = %c0_10 to %c3 step %c1_11 {
              %c4 = arith.constant 4 : index
              %2 = arith.muli %arg10, %c4 : index
              %3 = memref.load %arg5[%2] : memref<?xf64>
              memref.store %3, %arg3[%0, %1, %2] : memref<?x8x12xf64>
              %c1_12 = arith.constant 1 : index
              %4 = arith.addi %2, %c1_12 : index
              %5 = memref.load %arg5[%4] : memref<?xf64>
              memref.store %5, %arg3[%0, %1, %4] : memref<?x8x12xf64>
              %c2 = arith.constant 2 : index
              %6 = arith.addi %2, %c2 : index
              %7 = memref.load %arg5[%6] : memref<?xf64>
              memref.store %7, %arg3[%0, %1, %6] : memref<?x8x12xf64>
              %c3_13 = arith.constant 3 : index
              %8 = arith.addi %2, %c3_13 : index
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

