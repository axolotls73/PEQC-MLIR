module {
  func.func @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x25xf64>, %arg6: memref<?x30xf64>, %arg7: memref<?x25xf64>) {
    %c24 = arith.constant 24 : index
    %c24_0 = arith.constant 24 : index
    %c0 = arith.constant 0 : index
    %c20 = arith.constant 20 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %c0 to %c20 step %c1 {
      %c0_1 = arith.constant 0 : index
      %c1_2 = arith.constant 1 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg9 = %c0_1 to %c1_2 step %c1_3 {
        %0 = arith.addi %arg8, %arg9 : index
        %c0_4 = arith.constant 0 : index
        %c6 = arith.constant 6 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg10 = %c0_4 to %c6 step %c1_5 {
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
        }
        %1 = memref.load %arg5[%0, %c24_0] : memref<?x25xf64>
        %2 = arith.mulf %1, %arg4 : f64
        memref.store %2, %arg5[%0, %c24_0] : memref<?x25xf64>
        %c0_6 = arith.constant 0 : index
        %c30 = arith.constant 30 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg10 = %c0_6 to %c30 step %c1_7 {
          %3 = memref.load %arg6[%0, %arg10] : memref<?x30xf64>
          %4 = arith.mulf %arg3, %3 : f64
          %5 = memref.load %arg6[%0, %arg10] : memref<?x30xf64>
          %6 = arith.mulf %arg3, %5 : f64
          %7 = memref.load %arg6[%0, %arg10] : memref<?x30xf64>
          %8 = arith.mulf %arg3, %7 : f64
          %9 = memref.load %arg6[%0, %arg10] : memref<?x30xf64>
          %10 = arith.mulf %arg3, %9 : f64
          %c0_8 = arith.constant 0 : index
          %c6_9 = arith.constant 6 : index
          %c1_10 = arith.constant 1 : index
          scf.for %arg11 = %c0_8 to %c6_9 step %c1_10 {
            %c4 = arith.constant 4 : index
            %17 = arith.muli %arg11, %c4 : index
            %18 = memref.load %arg7[%arg10, %17] : memref<?x25xf64>
            %19 = arith.mulf %4, %18 : f64
            %20 = memref.load %arg5[%0, %17] : memref<?x25xf64>
            %21 = arith.addf %20, %19 : f64
            memref.store %21, %arg5[%0, %17] : memref<?x25xf64>
            %c1_11 = arith.constant 1 : index
            %22 = arith.addi %17, %c1_11 : index
            %23 = memref.load %arg7[%arg10, %22] : memref<?x25xf64>
            %24 = arith.mulf %6, %23 : f64
            %25 = memref.load %arg5[%0, %22] : memref<?x25xf64>
            %26 = arith.addf %25, %24 : f64
            memref.store %26, %arg5[%0, %22] : memref<?x25xf64>
            %c2 = arith.constant 2 : index
            %27 = arith.addi %17, %c2 : index
            %28 = memref.load %arg7[%arg10, %27] : memref<?x25xf64>
            %29 = arith.mulf %8, %28 : f64
            %30 = memref.load %arg5[%0, %27] : memref<?x25xf64>
            %31 = arith.addf %30, %29 : f64
            memref.store %31, %arg5[%0, %27] : memref<?x25xf64>
            %c3 = arith.constant 3 : index
            %32 = arith.addi %17, %c3 : index
            %33 = memref.load %arg7[%arg10, %32] : memref<?x25xf64>
            %34 = arith.mulf %10, %33 : f64
            %35 = memref.load %arg5[%0, %32] : memref<?x25xf64>
            %36 = arith.addf %35, %34 : f64
            memref.store %36, %arg5[%0, %32] : memref<?x25xf64>
          }
          %11 = memref.load %arg6[%0, %arg10] : memref<?x30xf64>
          %12 = arith.mulf %arg3, %11 : f64
          %13 = memref.load %arg7[%arg10, %c24] : memref<?x25xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = memref.load %arg5[%0, %c24] : memref<?x25xf64>
          %16 = arith.addf %15, %14 : f64
          memref.store %16, %arg5[%0, %c24] : memref<?x25xf64>
        }
      }
    }
    return
  }
}

