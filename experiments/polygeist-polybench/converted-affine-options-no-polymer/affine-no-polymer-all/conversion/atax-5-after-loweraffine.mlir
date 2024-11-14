module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0) to (%c1) step (%c1_0) {
      %c128 = arith.constant 128 : index
      %0 = arith.muli %arg6, %c128 : index
      %c0_6 = arith.constant 0 : index
      %c10 = arith.constant 10 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg7 = %c0_6 to %c10 step %c1_7 {
        %c4 = arith.constant 4 : index
        %1 = arith.muli %arg7, %c4 : index
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
      scf.reduce 
    }
    %c0_1 = arith.constant 0 : index
    %c1_2 = arith.constant 1 : index
    %c1_3 = arith.constant 1 : index
    scf.parallel (%arg6) = (%c0_1) to (%c1_2) step (%c1_3) {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg6, %c32 : index
      %c40 = arith.constant 40 : index
      %1 = arith.addi %0, %c40 : index
      %c0_6 = arith.constant 0 : index
      %c2_7 = arith.constant 2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c0_6 to %c2_7 step %c1_8 {
        %2 = arith.addi %1, %arg7 : index
        memref.store %cst, %arg4[%2] : memref<?xf64>
      }
      scf.reduce 
    }
    %c0_4 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg6 = %c0_4 to %c2 step %c1_5 {
      %c32 = arith.constant 32 : index
      %0 = arith.muli %arg6, %c32 : index
      %c0_6 = arith.constant 0 : index
      %c32_7 = arith.constant 32 : index
      %c-32 = arith.constant -32 : index
      %1 = arith.muli %arg6, %c-32 : index
      %c38 = arith.constant 38 : index
      %2 = arith.addi %1, %c38 : index
      %3 = arith.minsi %c32_7, %2 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c0_6 to %3 step %c1_8 {
        %4 = arith.addi %0, %arg7 : index
        memref.store %cst, %arg5[%4] : memref<?xf64>
        %c0_9 = arith.constant 0 : index
        %c10 = arith.constant 10 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg8 = %c0_9 to %c10 step %c1_10 {
          %c4 = arith.constant 4 : index
          %5 = arith.muli %arg8, %c4 : index
          %6 = memref.load %arg5[%4] : memref<?xf64>
          %7 = memref.load %arg2[%4, %5] : memref<?x42xf64>
          %8 = memref.load %arg3[%5] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %6, %9 : f64
          memref.store %10, %arg5[%4] : memref<?xf64>
          %c1_20 = arith.constant 1 : index
          %11 = arith.addi %5, %c1_20 : index
          %12 = memref.load %arg5[%4] : memref<?xf64>
          %13 = memref.load %arg2[%4, %11] : memref<?x42xf64>
          %14 = memref.load %arg3[%11] : memref<?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = arith.addf %12, %15 : f64
          memref.store %16, %arg5[%4] : memref<?xf64>
          %c2_21 = arith.constant 2 : index
          %17 = arith.addi %5, %c2_21 : index
          %18 = memref.load %arg5[%4] : memref<?xf64>
          %19 = memref.load %arg2[%4, %17] : memref<?x42xf64>
          %20 = memref.load %arg3[%17] : memref<?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = arith.addf %18, %21 : f64
          memref.store %22, %arg5[%4] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %23 = arith.addi %5, %c3 : index
          %24 = memref.load %arg5[%4] : memref<?xf64>
          %25 = memref.load %arg2[%4, %23] : memref<?x42xf64>
          %26 = memref.load %arg3[%23] : memref<?xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %24, %27 : f64
          memref.store %28, %arg5[%4] : memref<?xf64>
        }
        %c0_11 = arith.constant 0 : index
        %c2_12 = arith.constant 2 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg8 = %c0_11 to %c2_12 step %c1_13 {
          %c40 = arith.constant 40 : index
          %5 = arith.addi %arg8, %c40 : index
          %6 = memref.load %arg5[%4] : memref<?xf64>
          %7 = memref.load %arg2[%4, %5] : memref<?x42xf64>
          %8 = memref.load %arg3[%5] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %6, %9 : f64
          memref.store %10, %arg5[%4] : memref<?xf64>
        }
        %c0_14 = arith.constant 0 : index
        %c10_15 = arith.constant 10 : index
        %c1_16 = arith.constant 1 : index
        scf.parallel (%arg8) = (%c0_14) to (%c10_15) step (%c1_16) {
          %c4 = arith.constant 4 : index
          %5 = arith.muli %arg8, %c4 : index
          %6 = memref.load %arg4[%5] : memref<?xf64>
          %7 = memref.load %arg2[%4, %5] : memref<?x42xf64>
          %8 = memref.load %arg5[%4] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %6, %9 : f64
          memref.store %10, %arg4[%5] : memref<?xf64>
          %c1_20 = arith.constant 1 : index
          %11 = arith.addi %5, %c1_20 : index
          %12 = memref.load %arg4[%11] : memref<?xf64>
          %13 = memref.load %arg2[%4, %11] : memref<?x42xf64>
          %14 = memref.load %arg5[%4] : memref<?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = arith.addf %12, %15 : f64
          memref.store %16, %arg4[%11] : memref<?xf64>
          %c2_21 = arith.constant 2 : index
          %17 = arith.addi %5, %c2_21 : index
          %18 = memref.load %arg4[%17] : memref<?xf64>
          %19 = memref.load %arg2[%4, %17] : memref<?x42xf64>
          %20 = memref.load %arg5[%4] : memref<?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = arith.addf %18, %21 : f64
          memref.store %22, %arg4[%17] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %23 = arith.addi %5, %c3 : index
          %24 = memref.load %arg4[%23] : memref<?xf64>
          %25 = memref.load %arg2[%4, %23] : memref<?x42xf64>
          %26 = memref.load %arg5[%4] : memref<?xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %24, %27 : f64
          memref.store %28, %arg4[%23] : memref<?xf64>
          scf.reduce 
        }
        %c0_17 = arith.constant 0 : index
        %c2_18 = arith.constant 2 : index
        %c1_19 = arith.constant 1 : index
        scf.parallel (%arg8) = (%c0_17) to (%c2_18) step (%c1_19) {
          %c40 = arith.constant 40 : index
          %5 = arith.addi %arg8, %c40 : index
          %6 = memref.load %arg4[%5] : memref<?xf64>
          %7 = memref.load %arg2[%4, %5] : memref<?x42xf64>
          %8 = memref.load %arg5[%4] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = arith.addf %6, %9 : f64
          memref.store %10, %arg4[%5] : memref<?xf64>
          scf.reduce 
        }
      }
    }
    return
  }
}

