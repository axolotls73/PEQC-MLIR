module {
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %c0 = arith.constant 0 : index
    %c40 = arith.constant 40 : index
    %c4 = arith.constant 4 : index
    scf.for %arg6 = %c0 to %c40 step %c4 {
      memref.store %cst, %arg4[%arg6] : memref<?xf64>
      %c1_3 = arith.constant 1 : index
      %0 = arith.addi %arg6, %c1_3 : index
      memref.store %cst, %arg4[%0] : memref<?xf64>
      %c2 = arith.constant 2 : index
      %1 = arith.addi %arg6, %c2 : index
      memref.store %cst, %arg4[%1] : memref<?xf64>
      %c3 = arith.constant 3 : index
      %2 = arith.addi %arg6, %c3 : index
      memref.store %cst, %arg4[%2] : memref<?xf64>
    }
    %c40_0 = arith.constant 40 : index
    %c42 = arith.constant 42 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c40_0 to %c42 step %c1 {
      memref.store %cst, %arg4[%arg6] : memref<?xf64>
    }
    %c0_1 = arith.constant 0 : index
    %c38 = arith.constant 38 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg6 = %c0_1 to %c38 step %c1_2 {
      memref.store %cst, %arg5[%arg6] : memref<?xf64>
      %c0_3 = arith.constant 0 : index
      %c40_4 = arith.constant 40 : index
      %c4_5 = arith.constant 4 : index
      scf.for %arg7 = %c0_3 to %c40_4 step %c4_5 {
        %0 = memref.load %arg5[%arg6] : memref<?xf64>
        %1 = memref.load %arg2[%arg6, %arg7] : memref<?x42xf64>
        %2 = memref.load %arg3[%arg7] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg5[%arg6] : memref<?xf64>
        %c1_15 = arith.constant 1 : index
        %5 = arith.addi %arg7, %c1_15 : index
        %6 = memref.load %arg5[%arg6] : memref<?xf64>
        %7 = memref.load %arg2[%arg6, %5] : memref<?x42xf64>
        %8 = memref.load %arg3[%5] : memref<?xf64>
        %9 = arith.mulf %7, %8 : f64
        %10 = arith.addf %6, %9 : f64
        memref.store %10, %arg5[%arg6] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %11 = arith.addi %arg7, %c2 : index
        %12 = memref.load %arg5[%arg6] : memref<?xf64>
        %13 = memref.load %arg2[%arg6, %11] : memref<?x42xf64>
        %14 = memref.load %arg3[%11] : memref<?xf64>
        %15 = arith.mulf %13, %14 : f64
        %16 = arith.addf %12, %15 : f64
        memref.store %16, %arg5[%arg6] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %17 = arith.addi %arg7, %c3 : index
        %18 = memref.load %arg5[%arg6] : memref<?xf64>
        %19 = memref.load %arg2[%arg6, %17] : memref<?x42xf64>
        %20 = memref.load %arg3[%17] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = arith.addf %18, %21 : f64
        memref.store %22, %arg5[%arg6] : memref<?xf64>
      }
      %c40_6 = arith.constant 40 : index
      %c42_7 = arith.constant 42 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c40_6 to %c42_7 step %c1_8 {
        %0 = memref.load %arg5[%arg6] : memref<?xf64>
        %1 = memref.load %arg2[%arg6, %arg7] : memref<?x42xf64>
        %2 = memref.load %arg3[%arg7] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg5[%arg6] : memref<?xf64>
      }
      %c0_9 = arith.constant 0 : index
      %c40_10 = arith.constant 40 : index
      %c4_11 = arith.constant 4 : index
      scf.for %arg7 = %c0_9 to %c40_10 step %c4_11 {
        %0 = memref.load %arg4[%arg7] : memref<?xf64>
        %1 = memref.load %arg2[%arg6, %arg7] : memref<?x42xf64>
        %2 = memref.load %arg5[%arg6] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg4[%arg7] : memref<?xf64>
        %c1_15 = arith.constant 1 : index
        %5 = arith.addi %arg7, %c1_15 : index
        %6 = memref.load %arg4[%5] : memref<?xf64>
        %7 = memref.load %arg2[%arg6, %5] : memref<?x42xf64>
        %8 = memref.load %arg5[%arg6] : memref<?xf64>
        %9 = arith.mulf %7, %8 : f64
        %10 = arith.addf %6, %9 : f64
        memref.store %10, %arg4[%5] : memref<?xf64>
        %c2 = arith.constant 2 : index
        %11 = arith.addi %arg7, %c2 : index
        %12 = memref.load %arg4[%11] : memref<?xf64>
        %13 = memref.load %arg2[%arg6, %11] : memref<?x42xf64>
        %14 = memref.load %arg5[%arg6] : memref<?xf64>
        %15 = arith.mulf %13, %14 : f64
        %16 = arith.addf %12, %15 : f64
        memref.store %16, %arg4[%11] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %17 = arith.addi %arg7, %c3 : index
        %18 = memref.load %arg4[%17] : memref<?xf64>
        %19 = memref.load %arg2[%arg6, %17] : memref<?x42xf64>
        %20 = memref.load %arg5[%arg6] : memref<?xf64>
        %21 = arith.mulf %19, %20 : f64
        %22 = arith.addf %18, %21 : f64
        memref.store %22, %arg4[%17] : memref<?xf64>
      }
      %c40_12 = arith.constant 40 : index
      %c42_13 = arith.constant 42 : index
      %c1_14 = arith.constant 1 : index
      scf.for %arg7 = %c40_12 to %c42_13 step %c1_14 {
        %0 = memref.load %arg4[%arg7] : memref<?xf64>
        %1 = memref.load %arg2[%arg6, %arg7] : memref<?x42xf64>
        %2 = memref.load %arg5[%arg6] : memref<?xf64>
        %3 = arith.mulf %1, %2 : f64
        %4 = arith.addf %0, %3 : f64
        memref.store %4, %arg4[%arg7] : memref<?xf64>
      }
    }
    return
  }
}

