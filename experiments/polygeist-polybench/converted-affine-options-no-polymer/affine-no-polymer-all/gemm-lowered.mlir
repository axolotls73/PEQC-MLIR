module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c24 = arith.constant 24 : index
    %c24_0 = arith.constant 24 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.parallel (%arg8) = (%c0) to (%c20) step (%c1) {
      %c0_1 = arith.constant 0 : index
      %c1_2 = arith.constant 1 : index
      %c1_3 = arith.constant 1 : index
      scf.parallel (%arg9) = (%c0_1) to (%c1_2) step (%c1_3) {
        %0 = arith.addi %arg8, %arg9 : index
        %c0_4 = arith.constant 0 : index
        %c6 = arith.constant 6 : index
        %c1_5 = arith.constant 1 : index
        scf.parallel (%arg10) = (%c0_4) to (%c6) step (%c1_5) {
          %c4 = arith.constant 4 : index
          %3 = arith.muli %arg10, %c4 : index
          %4 = memref.load %arg5[%0, %3] : memref<?x25xf64>
          %5 = arith.mulf %4, %arg4 : f64
          memref.store %5, %arg5[%0, %3] : memref<?x25xf64>
          %c1_8 = arith.constant 1 : index
          %6 = arith.addi %3, %c1_8 : index
          %7 = memref.load %arg5[%0, %6] : memref<?x25xf64>
          %8 = arith.mulf %7, %arg4 : f64
          memref.store %8, %arg5[%0, %6] : memref<?x25xf64>
          %c2 = arith.constant 2 : index
          %9 = arith.addi %3, %c2 : index
          %10 = memref.load %arg5[%0, %9] : memref<?x25xf64>
          %11 = arith.mulf %10, %arg4 : f64
          memref.store %11, %arg5[%0, %9] : memref<?x25xf64>
          %c3 = arith.constant 3 : index
          %12 = arith.addi %3, %c3 : index
          %13 = memref.load %arg5[%0, %12] : memref<?x25xf64>
          %14 = arith.mulf %13, %arg4 : f64
          memref.store %14, %arg5[%0, %12] : memref<?x25xf64>
          scf.reduce 
        }
        %1 = memref.load %arg5[%0, %c24_0] : memref<?x25xf64>
        %2 = arith.mulf %1, %arg4 : f64
        memref.store %2, %arg5[%0, %c24_0] : memref<?x25xf64>
        %c0_6 = arith.constant 0 : index
        %c30 = arith.constant 30 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg10 = %c0_6 to %c30 step %c1_7 {
          %c0_8 = arith.constant 0 : index
          %c6_9 = arith.constant 6 : index
          %c1_10 = arith.constant 1 : index
          scf.parallel (%arg11) = (%c0_8) to (%c6_9) step (%c1_10) {
            %c4 = arith.constant 4 : index
            %9 = arith.muli %arg11, %c4 : index
            %10 = memref.load %arg6[%0, %arg10] : memref<?x30xf64>
            %11 = arith.mulf %arg3, %10 : f64
            %12 = memref.load %arg7[%arg10, %9] : memref<?x25xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = memref.load %arg5[%0, %9] : memref<?x25xf64>
            %15 = arith.addf %14, %13 : f64
            memref.store %15, %arg5[%0, %9] : memref<?x25xf64>
            %c1_11 = arith.constant 1 : index
            %16 = arith.addi %9, %c1_11 : index
            %17 = memref.load %arg6[%0, %arg10] : memref<?x30xf64>
            %18 = arith.mulf %arg3, %17 : f64
            %19 = memref.load %arg7[%arg10, %16] : memref<?x25xf64>
            %20 = arith.mulf %18, %19 : f64
            %21 = memref.load %arg5[%0, %16] : memref<?x25xf64>
            %22 = arith.addf %21, %20 : f64
            memref.store %22, %arg5[%0, %16] : memref<?x25xf64>
            %c2 = arith.constant 2 : index
            %23 = arith.addi %9, %c2 : index
            %24 = memref.load %arg6[%0, %arg10] : memref<?x30xf64>
            %25 = arith.mulf %arg3, %24 : f64
            %26 = memref.load %arg7[%arg10, %23] : memref<?x25xf64>
            %27 = arith.mulf %25, %26 : f64
            %28 = memref.load %arg5[%0, %23] : memref<?x25xf64>
            %29 = arith.addf %28, %27 : f64
            memref.store %29, %arg5[%0, %23] : memref<?x25xf64>
            %c3 = arith.constant 3 : index
            %30 = arith.addi %9, %c3 : index
            %31 = memref.load %arg6[%0, %arg10] : memref<?x30xf64>
            %32 = arith.mulf %arg3, %31 : f64
            %33 = memref.load %arg7[%arg10, %30] : memref<?x25xf64>
            %34 = arith.mulf %32, %33 : f64
            %35 = memref.load %arg5[%0, %30] : memref<?x25xf64>
            %36 = arith.addf %35, %34 : f64
            memref.store %36, %arg5[%0, %30] : memref<?x25xf64>
            scf.reduce 
          }
          %3 = memref.load %arg6[%0, %arg10] : memref<?x30xf64>
          %4 = arith.mulf %arg3, %3 : f64
          %5 = memref.load %arg7[%arg10, %c24] : memref<?x25xf64>
          %6 = arith.mulf %4, %5 : f64
          %7 = memref.load %arg5[%0, %c24] : memref<?x25xf64>
          %8 = arith.addf %7, %6 : f64
          memref.store %8, %arg5[%0, %c24] : memref<?x25xf64>
        }
        scf.reduce 
      }
      scf.reduce 
    }
    return
  }
}

