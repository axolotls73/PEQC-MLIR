module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c24 = arith.constant 24 : index
    %c24_0 = arith.constant 24 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_1 = arith.constant 1 : index
    scf.parallel (%arg8) = (%c0) to (%c1) step (%c1_1) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg8, %c32 : index
      %c0_5 = arith.constant 0 : index
      %c20 = arith.constant 20 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg9 = %c0_5 to %c20 step %c1_6 {
        %1 = arith.addi %0, %arg9 : index
        %c0_7 = arith.constant 0 : index
        %c6 = arith.constant 6 : index
        %c1_8 = arith.constant 1 : index
        scf.for %arg10 = %c0_7 to %c6 step %c1_8 {
          %c4 = arith.constant 4 : index
          %4 = arith.muli %arg10, %c4 : index
          %5 = memref.load %arg5[%1, %4] : memref<?x25xf64>
          %6 = arith.mulf %5, %arg4 : f64
          memref.store %6, %arg5[%1, %4] : memref<?x25xf64>
          %c1_9 = arith.constant 1 : index
          %7 = arith.addi %4, %c1_9 : index
          %8 = memref.load %arg5[%1, %7] : memref<?x25xf64>
          %9 = arith.mulf %8, %arg4 : f64
          memref.store %9, %arg5[%1, %7] : memref<?x25xf64>
          %c2 = arith.constant 2 : index
          %10 = arith.addi %4, %c2 : index
          %11 = memref.load %arg5[%1, %10] : memref<?x25xf64>
          %12 = arith.mulf %11, %arg4 : f64
          memref.store %12, %arg5[%1, %10] : memref<?x25xf64>
          %c3 = arith.constant 3 : index
          %13 = arith.addi %4, %c3 : index
          %14 = memref.load %arg5[%1, %13] : memref<?x25xf64>
          %15 = arith.mulf %14, %arg4 : f64
          memref.store %15, %arg5[%1, %13] : memref<?x25xf64>
        }
        %2 = memref.load %arg5[%1, %c24_0] : memref<?x25xf64>
        %3 = arith.mulf %2, %arg4 : f64
        memref.store %3, %arg5[%1, %c24_0] : memref<?x25xf64>
      }
      scf.reduce 
    }
    %c0_2 = arith.constant 0 : index
    %c1_3 = arith.constant 1 : index
    %c1_4 = arith.constant 1 : index
    scf.parallel (%arg8) = (%c0_2) to (%c1_3) step (%c1_4) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg8, %c32 : index
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg9 = %c0_5 to %c1_6 step %c1_7 {
        %c32_8 = arith.constant 32 : index
        %1 = arith.muli %arg9, %c32_8 : index
        %c0_9 = arith.constant 0 : index
        %c20 = arith.constant 20 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg10 = %c0_9 to %c20 step %c1_10 {
          %2 = arith.addi %0, %arg10 : index
          %c0_11 = arith.constant 0 : index
          %c30 = arith.constant 30 : index
          %c1_12 = arith.constant 1 : index
          scf.for %arg11 = %c0_11 to %c30 step %c1_12 {
            %3 = arith.addi %1, %arg11 : index
            %4 = memref.load %arg6[%2, %3] : memref<?x30xf64>
            %5 = arith.mulf %arg3, %4 : f64
            %6 = memref.load %arg6[%2, %3] : memref<?x30xf64>
            %7 = arith.mulf %arg3, %6 : f64
            %8 = memref.load %arg6[%2, %3] : memref<?x30xf64>
            %9 = arith.mulf %arg3, %8 : f64
            %10 = memref.load %arg6[%2, %3] : memref<?x30xf64>
            %11 = arith.mulf %arg3, %10 : f64
            %c0_13 = arith.constant 0 : index
            %c6 = arith.constant 6 : index
            %c1_14 = arith.constant 1 : index
            scf.for %arg12 = %c0_13 to %c6 step %c1_14 {
              %c4 = arith.constant 4 : index
              %18 = arith.muli %arg12, %c4 : index
              %19 = memref.load %arg5[%2, %18] : memref<?x25xf64>
              %20 = memref.load %arg7[%3, %18] : memref<?x25xf64>
              %21 = arith.mulf %5, %20 : f64
              %22 = arith.addf %19, %21 : f64
              memref.store %22, %arg5[%2, %18] : memref<?x25xf64>
              %c1_15 = arith.constant 1 : index
              %23 = arith.addi %18, %c1_15 : index
              %24 = memref.load %arg5[%2, %23] : memref<?x25xf64>
              %25 = memref.load %arg7[%3, %23] : memref<?x25xf64>
              %26 = arith.mulf %7, %25 : f64
              %27 = arith.addf %24, %26 : f64
              memref.store %27, %arg5[%2, %23] : memref<?x25xf64>
              %c2 = arith.constant 2 : index
              %28 = arith.addi %18, %c2 : index
              %29 = memref.load %arg5[%2, %28] : memref<?x25xf64>
              %30 = memref.load %arg7[%3, %28] : memref<?x25xf64>
              %31 = arith.mulf %9, %30 : f64
              %32 = arith.addf %29, %31 : f64
              memref.store %32, %arg5[%2, %28] : memref<?x25xf64>
              %c3 = arith.constant 3 : index
              %33 = arith.addi %18, %c3 : index
              %34 = memref.load %arg5[%2, %33] : memref<?x25xf64>
              %35 = memref.load %arg7[%3, %33] : memref<?x25xf64>
              %36 = arith.mulf %11, %35 : f64
              %37 = arith.addf %34, %36 : f64
              memref.store %37, %arg5[%2, %33] : memref<?x25xf64>
            }
            %12 = memref.load %arg5[%2, %c24] : memref<?x25xf64>
            %13 = memref.load %arg6[%2, %3] : memref<?x30xf64>
            %14 = arith.mulf %arg3, %13 : f64
            %15 = memref.load %arg7[%3, %c24] : memref<?x25xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = arith.addf %12, %16 : f64
            memref.store %17, %arg5[%2, %c24] : memref<?x25xf64>
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

