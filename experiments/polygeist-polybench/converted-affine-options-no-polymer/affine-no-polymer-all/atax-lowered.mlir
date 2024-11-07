module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %c10 step %c1 {
      %c4 = arith.constant 4 : index
      %0 = arith.muli %arg6, %c4 : index
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg7 = %c0_4 to %c1_5 step %c1_6 {
        %c4_7 = arith.constant 4 : index
        %1 = arith.muli %arg7, %c4_7 : index
        %2 = arith.addi %0, %1 : index
        memref.store %cst, %arg4[%2] : memref<?xf64>
        %c1_8 = arith.constant 1 : index
        %3 = arith.addi %2, %c1_8 : index
        memref.store %cst, %arg4[%3] : memref<?xf64>
        %c2_9 = arith.constant 2 : index
        %4 = arith.addi %2, %c2_9 : index
        memref.store %cst, %arg4[%4] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %5 = arith.addi %2, %c3 : index
        memref.store %cst, %arg4[%5] : memref<?xf64>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_1 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_0) to (%c2) step (%c1_1) {
      %c40 = arith.constant 40 : index
      %0 = arith.addi %arg6, %c40 : index
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      %c1_6 = arith.constant 1 : index
      scf.parallel (%arg7) = (%c0_4) to (%c1_5) step (%c1_6) {
        %1 = arith.addi %0, %arg7 : index
        memref.store %cst, %arg4[%1] : memref<?xf64>
        scf.reduce 
      }
      scf.reduce 
    }
    %c0_2 = arith.constant 0 : index
    %c38 = arith.constant 38 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg6 = %c0_2 to %c38 step %c1_3 {
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      %c1_6 = arith.constant 1 : index
      scf.parallel (%arg7) = (%c0_4) to (%c1_5) step (%c1_6) {
        %0 = arith.addi %arg6, %arg7 : index
        memref.store %cst, %arg5[%0] : memref<?xf64>
        %c0_7 = arith.constant 0 : index
        %c10_8 = arith.constant 10 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg8 = %c0_7 to %c10_8 step %c1_9 {
          %c4 = arith.constant 4 : index
          %1 = arith.muli %arg8, %c4 : index
          %2 = memref.load %arg5[%0] : memref<?xf64>
          %3 = memref.load %arg2[%0, %1] : memref<?x42xf64>
          %4 = memref.load %arg3[%1] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          memref.store %6, %arg5[%0] : memref<?xf64>
          %c1_19 = arith.constant 1 : index
          %7 = arith.addi %1, %c1_19 : index
          %8 = memref.load %arg5[%0] : memref<?xf64>
          %9 = memref.load %arg2[%0, %7] : memref<?x42xf64>
          %10 = memref.load %arg3[%7] : memref<?xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = arith.addf %8, %11 : f64
          memref.store %12, %arg5[%0] : memref<?xf64>
          %c2_20 = arith.constant 2 : index
          %13 = arith.addi %1, %c2_20 : index
          %14 = memref.load %arg5[%0] : memref<?xf64>
          %15 = memref.load %arg2[%0, %13] : memref<?x42xf64>
          %16 = memref.load %arg3[%13] : memref<?xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = arith.addf %14, %17 : f64
          memref.store %18, %arg5[%0] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %19 = arith.addi %1, %c3 : index
          %20 = memref.load %arg5[%0] : memref<?xf64>
          %21 = memref.load %arg2[%0, %19] : memref<?x42xf64>
          %22 = memref.load %arg3[%19] : memref<?xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = arith.addf %20, %23 : f64
          memref.store %24, %arg5[%0] : memref<?xf64>
        }
        %c0_10 = arith.constant 0 : index
        %c2_11 = arith.constant 2 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg8 = %c0_10 to %c2_11 step %c1_12 {
          %c40 = arith.constant 40 : index
          %1 = arith.addi %arg8, %c40 : index
          %2 = memref.load %arg5[%0] : memref<?xf64>
          %3 = memref.load %arg2[%0, %1] : memref<?x42xf64>
          %4 = memref.load %arg3[%1] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          memref.store %6, %arg5[%0] : memref<?xf64>
        }
        %c0_13 = arith.constant 0 : index
        %c10_14 = arith.constant 10 : index
        %c1_15 = arith.constant 1 : index
        scf.parallel (%arg8) = (%c0_13) to (%c10_14) step (%c1_15) {
          %c4 = arith.constant 4 : index
          %1 = arith.muli %arg8, %c4 : index
          %2 = memref.load %arg4[%1] : memref<?xf64>
          %3 = memref.load %arg2[%0, %1] : memref<?x42xf64>
          %4 = memref.load %arg5[%0] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          memref.store %6, %arg4[%1] : memref<?xf64>
          %c1_19 = arith.constant 1 : index
          %7 = arith.addi %1, %c1_19 : index
          %8 = memref.load %arg4[%7] : memref<?xf64>
          %9 = memref.load %arg2[%0, %7] : memref<?x42xf64>
          %10 = memref.load %arg5[%0] : memref<?xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = arith.addf %8, %11 : f64
          memref.store %12, %arg4[%7] : memref<?xf64>
          %c2_20 = arith.constant 2 : index
          %13 = arith.addi %1, %c2_20 : index
          %14 = memref.load %arg4[%13] : memref<?xf64>
          %15 = memref.load %arg2[%0, %13] : memref<?x42xf64>
          %16 = memref.load %arg5[%0] : memref<?xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = arith.addf %14, %17 : f64
          memref.store %18, %arg4[%13] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %19 = arith.addi %1, %c3 : index
          %20 = memref.load %arg4[%19] : memref<?xf64>
          %21 = memref.load %arg2[%0, %19] : memref<?x42xf64>
          %22 = memref.load %arg5[%0] : memref<?xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = arith.addf %20, %23 : f64
          memref.store %24, %arg4[%19] : memref<?xf64>
          scf.reduce 
        }
        %c0_16 = arith.constant 0 : index
        %c2_17 = arith.constant 2 : index
        %c1_18 = arith.constant 1 : index
        scf.parallel (%arg8) = (%c0_16) to (%c2_17) step (%c1_18) {
          %c40 = arith.constant 40 : index
          %1 = arith.addi %arg8, %c40 : index
          %2 = memref.load %arg4[%1] : memref<?xf64>
          %3 = memref.load %arg2[%0, %1] : memref<?x42xf64>
          %4 = memref.load %arg5[%0] : memref<?xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = arith.addf %2, %5 : f64
          memref.store %6, %arg4[%1] : memref<?xf64>
          scf.reduce 
        }
        scf.reduce 
      }
    }
    return
  }
}

