module {
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0) to (%c1) step (%c1_0) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg6, %c32 : index
      %c0_1 = arith.constant 0 : index
      %c1_2 = arith.constant 1 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg7 = %c0_1 to %c1_2 step %c1_3 {
        %c32_4 = arith.constant 32 : index
        %1 = arith.muli %arg7, %c32_4 : index
        %c0_5 = arith.constant 0 : index
        %c10 = arith.constant 10 : index
        %c1_6 = arith.constant 1 : index
        scf.for %arg8 = %c0_5 to %c10 step %c1_6 {
          %2 = arith.addi %0, %arg8 : index
          %c0_7 = arith.constant 0 : index
          %c8 = arith.constant 8 : index
          %c1_8 = arith.constant 1 : index
          scf.for %arg9 = %c0_7 to %c8 step %c1_8 {
            %3 = arith.addi %1, %arg9 : index
            %c0_9 = arith.constant 0 : index
            %c12 = arith.constant 12 : index
            %c1_10 = arith.constant 1 : index
            scf.for %arg10 = %c0_9 to %c12 step %c1_10 {
              memref.store %cst, %arg5[%arg10] : memref<?xf64>
              %c0_13 = arith.constant 0 : index
              %c3_14 = arith.constant 3 : index
              %c1_15 = arith.constant 1 : index
              scf.for %arg11 = %c0_13 to %c3_14 step %c1_15 {
                %c4 = arith.constant 4 : index
                %4 = arith.muli %arg11, %c4 : index
                %5 = memref.load %arg3[%2, %3, %4] : memref<?x8x12xf64>
                %6 = memref.load %arg4[%4, %arg10] : memref<?x12xf64>
                %7 = arith.mulf %5, %6 : f64
                %8 = memref.load %arg5[%arg10] : memref<?xf64>
                %9 = arith.addf %8, %7 : f64
                memref.store %9, %arg5[%arg10] : memref<?xf64>
                %c1_16 = arith.constant 1 : index
                %10 = arith.addi %4, %c1_16 : index
                %11 = memref.load %arg3[%2, %3, %10] : memref<?x8x12xf64>
                %12 = memref.load %arg4[%10, %arg10] : memref<?x12xf64>
                %13 = arith.mulf %11, %12 : f64
                %14 = memref.load %arg5[%arg10] : memref<?xf64>
                %15 = arith.addf %14, %13 : f64
                memref.store %15, %arg5[%arg10] : memref<?xf64>
                %c2 = arith.constant 2 : index
                %16 = arith.addi %4, %c2 : index
                %17 = memref.load %arg3[%2, %3, %16] : memref<?x8x12xf64>
                %18 = memref.load %arg4[%16, %arg10] : memref<?x12xf64>
                %19 = arith.mulf %17, %18 : f64
                %20 = memref.load %arg5[%arg10] : memref<?xf64>
                %21 = arith.addf %20, %19 : f64
                memref.store %21, %arg5[%arg10] : memref<?xf64>
                %c3_17 = arith.constant 3 : index
                %22 = arith.addi %4, %c3_17 : index
                %23 = memref.load %arg3[%2, %3, %22] : memref<?x8x12xf64>
                %24 = memref.load %arg4[%22, %arg10] : memref<?x12xf64>
                %25 = arith.mulf %23, %24 : f64
                %26 = memref.load %arg5[%arg10] : memref<?xf64>
                %27 = arith.addf %26, %25 : f64
                memref.store %27, %arg5[%arg10] : memref<?xf64>
              }
            }
            %c0_11 = arith.constant 0 : index
            %c3 = arith.constant 3 : index
            %c1_12 = arith.constant 1 : index
            scf.for %arg10 = %c0_11 to %c3 step %c1_12 {
              %c4 = arith.constant 4 : index
              %4 = arith.muli %arg10, %c4 : index
              %5 = memref.load %arg5[%4] : memref<?xf64>
              memref.store %5, %arg3[%2, %3, %4] : memref<?x8x12xf64>
              %c1_13 = arith.constant 1 : index
              %6 = arith.addi %4, %c1_13 : index
              %7 = memref.load %arg5[%6] : memref<?xf64>
              memref.store %7, %arg3[%2, %3, %6] : memref<?x8x12xf64>
              %c2 = arith.constant 2 : index
              %8 = arith.addi %4, %c2 : index
              %9 = memref.load %arg5[%8] : memref<?xf64>
              memref.store %9, %arg3[%2, %3, %8] : memref<?x8x12xf64>
              %c3_14 = arith.constant 3 : index
              %10 = arith.addi %4, %c3_14 : index
              %11 = memref.load %arg5[%10] : memref<?xf64>
              memref.store %11, %arg3[%2, %3, %10] : memref<?x8x12xf64>
            }
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

