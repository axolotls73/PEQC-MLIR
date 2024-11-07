module {
  func.func @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x38xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c9 = arith.constant 9 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c9 step %c1 {
      %c4 = arith.constant 4 : index
      %0 = arith.muli %arg7, %c4 : index
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg8 = %c0_4 to %c1_5 step %c1_6 {
        %c4_7 = arith.constant 4 : index
        %1 = arith.muli %arg8, %c4_7 : index
        %2 = arith.addi %0, %1 : index
        memref.store %cst, %arg3[%2] : memref<?xf64>
        %c1_8 = arith.constant 1 : index
        %3 = arith.addi %2, %c1_8 : index
        memref.store %cst, %arg3[%3] : memref<?xf64>
        %c2_9 = arith.constant 2 : index
        %4 = arith.addi %2, %c2_9 : index
        memref.store %cst, %arg3[%4] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %5 = arith.addi %2, %c3 : index
        memref.store %cst, %arg3[%5] : memref<?xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_1 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_0) to (%c2) step (%c1_1) {
      %c36 = arith.constant 36 : index
      %0 = arith.addi %arg7, %c36 : index
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      %c1_6 = arith.constant 1 : index
      scf.parallel (%arg8) = (%c0_4) to (%c1_5) step (%c1_6) {
        %1 = arith.addi %0, %arg8 : index
        memref.store %cst, %arg3[%1] : memref<?xf64>
        scf.reduce 
      }
      scf.reduce 
    }
    %c0_2 = arith.constant 0 : index
    %c42 = arith.constant 42 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg7 = %c0_2 to %c42 step %c1_3 {
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      %c1_6 = arith.constant 1 : index
      scf.parallel (%arg8) = (%c0_4) to (%c1_5) step (%c1_6) {
        %0 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %arg4[%0] : memref<?xf64>
        %1 = memref.load %arg6[%0] : memref<?xf64>
        %2 = memref.load %arg6[%0] : memref<?xf64>
        %3 = memref.load %arg6[%0] : memref<?xf64>
        %4 = memref.load %arg6[%0] : memref<?xf64>
        %c0_7 = arith.constant 0 : index
        %c9_8 = arith.constant 9 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg9 = %c0_7 to %c9_8 step %c1_9 {
          %c4 = arith.constant 4 : index
          %6 = arith.muli %arg9, %c4 : index
          %7 = memref.load %arg3[%6] : memref<?xf64>
          %8 = memref.load %arg2[%0, %6] : memref<?x38xf64>
          %9 = arith.mulf %1, %8 : f64
          %10 = arith.addf %7, %9 : f64
          memref.store %10, %arg3[%6] : memref<?xf64>
          %11 = memref.load %arg4[%0] : memref<?xf64>
          %12 = memref.load %arg2[%0, %6] : memref<?x38xf64>
          %13 = memref.load %arg5[%6] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = arith.addf %11, %14 : f64
          memref.store %15, %arg4[%0] : memref<?xf64>
          %c1_13 = arith.constant 1 : index
          %16 = arith.addi %6, %c1_13 : index
          %17 = memref.load %arg3[%16] : memref<?xf64>
          %18 = memref.load %arg2[%0, %16] : memref<?x38xf64>
          %19 = arith.mulf %2, %18 : f64
          %20 = arith.addf %17, %19 : f64
          memref.store %20, %arg3[%16] : memref<?xf64>
          %21 = memref.load %arg4[%0] : memref<?xf64>
          %22 = memref.load %arg2[%0, %16] : memref<?x38xf64>
          %23 = memref.load %arg5[%16] : memref<?xf64>
          %24 = arith.mulf %22, %23 : f64
          %25 = arith.addf %21, %24 : f64
          memref.store %25, %arg4[%0] : memref<?xf64>
          %c2_14 = arith.constant 2 : index
          %26 = arith.addi %6, %c2_14 : index
          %27 = memref.load %arg3[%26] : memref<?xf64>
          %28 = memref.load %arg2[%0, %26] : memref<?x38xf64>
          %29 = arith.mulf %3, %28 : f64
          %30 = arith.addf %27, %29 : f64
          memref.store %30, %arg3[%26] : memref<?xf64>
          %31 = memref.load %arg4[%0] : memref<?xf64>
          %32 = memref.load %arg2[%0, %26] : memref<?x38xf64>
          %33 = memref.load %arg5[%26] : memref<?xf64>
          %34 = arith.mulf %32, %33 : f64
          %35 = arith.addf %31, %34 : f64
          memref.store %35, %arg4[%0] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %36 = arith.addi %6, %c3 : index
          %37 = memref.load %arg3[%36] : memref<?xf64>
          %38 = memref.load %arg2[%0, %36] : memref<?x38xf64>
          %39 = arith.mulf %4, %38 : f64
          %40 = arith.addf %37, %39 : f64
          memref.store %40, %arg3[%36] : memref<?xf64>
          %41 = memref.load %arg4[%0] : memref<?xf64>
          %42 = memref.load %arg2[%0, %36] : memref<?x38xf64>
          %43 = memref.load %arg5[%36] : memref<?xf64>
          %44 = arith.mulf %42, %43 : f64
          %45 = arith.addf %41, %44 : f64
          memref.store %45, %arg4[%0] : memref<?xf64>
        }
        %5 = memref.load %arg6[%0] : memref<?xf64>
        %c0_10 = arith.constant 0 : index
        %c2_11 = arith.constant 2 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg9 = %c0_10 to %c2_11 step %c1_12 {
          %c36 = arith.constant 36 : index
          %6 = arith.addi %arg9, %c36 : index
          %7 = memref.load %arg3[%6] : memref<?xf64>
          %8 = memref.load %arg2[%0, %6] : memref<?x38xf64>
          %9 = arith.mulf %5, %8 : f64
          %10 = arith.addf %7, %9 : f64
          memref.store %10, %arg3[%6] : memref<?xf64>
          %11 = memref.load %arg4[%0] : memref<?xf64>
          %12 = memref.load %arg2[%0, %6] : memref<?x38xf64>
          %13 = memref.load %arg5[%6] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = arith.addf %11, %14 : f64
          memref.store %15, %arg4[%0] : memref<?xf64>
        }
        scf.reduce 
      }
    }
    return
  }
}

