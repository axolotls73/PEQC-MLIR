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
      scf.for %arg7 = %c0_4 to %c1_5 step %c1_6 {
        %1 = arith.addi %0, %arg7 : index
        memref.store %cst, %arg4[%1] : memref<?xf64>
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
          %6 = arith.muli %arg8, %c4 : index
          %7 = memref.load %arg5[%0] : memref<?xf64>
          %8 = memref.load %arg2[%0, %6] : memref<?x42xf64>
          %9 = memref.load %arg3[%6] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %7, %10 : f64
          memref.store %11, %arg5[%0] : memref<?xf64>
          %c1_19 = arith.constant 1 : index
          %12 = arith.addi %6, %c1_19 : index
          %13 = memref.load %arg5[%0] : memref<?xf64>
          %14 = memref.load %arg2[%0, %12] : memref<?x42xf64>
          %15 = memref.load %arg3[%12] : memref<?xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = arith.addf %13, %16 : f64
          memref.store %17, %arg5[%0] : memref<?xf64>
          %c2_20 = arith.constant 2 : index
          %18 = arith.addi %6, %c2_20 : index
          %19 = memref.load %arg5[%0] : memref<?xf64>
          %20 = memref.load %arg2[%0, %18] : memref<?x42xf64>
          %21 = memref.load %arg3[%18] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = arith.addf %19, %22 : f64
          memref.store %23, %arg5[%0] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %24 = arith.addi %6, %c3 : index
          %25 = memref.load %arg5[%0] : memref<?xf64>
          %26 = memref.load %arg2[%0, %24] : memref<?x42xf64>
          %27 = memref.load %arg3[%24] : memref<?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = arith.addf %25, %28 : f64
          memref.store %29, %arg5[%0] : memref<?xf64>
        }
        %c0_10 = arith.constant 0 : index
        %c2_11 = arith.constant 2 : index
        %c1_12 = arith.constant 1 : index
        scf.for %arg8 = %c0_10 to %c2_11 step %c1_12 {
          %c40 = arith.constant 40 : index
          %6 = arith.addi %arg8, %c40 : index
          %7 = memref.load %arg5[%0] : memref<?xf64>
          %8 = memref.load %arg2[%0, %6] : memref<?x42xf64>
          %9 = memref.load %arg3[%6] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = arith.addf %7, %10 : f64
          memref.store %11, %arg5[%0] : memref<?xf64>
        }
        %1 = memref.load %arg5[%0] : memref<?xf64>
        %2 = memref.load %arg5[%0] : memref<?xf64>
        %3 = memref.load %arg5[%0] : memref<?xf64>
        %4 = memref.load %arg5[%0] : memref<?xf64>
        %c0_13 = arith.constant 0 : index
        %c10_14 = arith.constant 10 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg8 = %c0_13 to %c10_14 step %c1_15 {
          %c4 = arith.constant 4 : index
          %6 = arith.muli %arg8, %c4 : index
          %7 = memref.load %arg4[%6] : memref<?xf64>
          %8 = memref.load %arg2[%0, %6] : memref<?x42xf64>
          %9 = arith.mulf %8, %1 : f64
          %10 = arith.addf %7, %9 : f64
          memref.store %10, %arg4[%6] : memref<?xf64>
          %c1_19 = arith.constant 1 : index
          %11 = arith.addi %6, %c1_19 : index
          %12 = memref.load %arg4[%11] : memref<?xf64>
          %13 = memref.load %arg2[%0, %11] : memref<?x42xf64>
          %14 = arith.mulf %13, %2 : f64
          %15 = arith.addf %12, %14 : f64
          memref.store %15, %arg4[%11] : memref<?xf64>
          %c2_20 = arith.constant 2 : index
          %16 = arith.addi %6, %c2_20 : index
          %17 = memref.load %arg4[%16] : memref<?xf64>
          %18 = memref.load %arg2[%0, %16] : memref<?x42xf64>
          %19 = arith.mulf %18, %3 : f64
          %20 = arith.addf %17, %19 : f64
          memref.store %20, %arg4[%16] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %21 = arith.addi %6, %c3 : index
          %22 = memref.load %arg4[%21] : memref<?xf64>
          %23 = memref.load %arg2[%0, %21] : memref<?x42xf64>
          %24 = arith.mulf %23, %4 : f64
          %25 = arith.addf %22, %24 : f64
          memref.store %25, %arg4[%21] : memref<?xf64>
        }
        %5 = memref.load %arg5[%0] : memref<?xf64>
        %c0_16 = arith.constant 0 : index
        %c2_17 = arith.constant 2 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg8 = %c0_16 to %c2_17 step %c1_18 {
          %c40 = arith.constant 40 : index
          %6 = arith.addi %arg8, %c40 : index
          %7 = memref.load %arg4[%6] : memref<?xf64>
          %8 = memref.load %arg2[%0, %6] : memref<?x42xf64>
          %9 = arith.mulf %8, %5 : f64
          %10 = arith.addf %7, %9 : f64
          memref.store %10, %arg4[%6] : memref<?xf64>
        }
        scf.reduce 
      }
    }
    return
  }
}

