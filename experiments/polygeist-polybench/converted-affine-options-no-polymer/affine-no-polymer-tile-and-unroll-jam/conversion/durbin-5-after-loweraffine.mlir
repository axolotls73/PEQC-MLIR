module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %0 = llvm.mlir.undef : f64
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %0, %alloca[] : memref<f64>
    %alloca_1 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_1[] : memref<f64>
    %alloca_2 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_2[] : memref<f64>
    %alloca_3 = memref.alloca() : memref<40xf64>
    %c0 = arith.constant 0 : index
    %1 = memref.load %arg1[%c0] : memref<?xf64>
    %2 = arith.negf %1 : f64
    %c0_4 = arith.constant 0 : index
    memref.store %2, %arg2[%c0_4] : memref<?xf64>
    memref.store %cst_0, %alloca_1[] : memref<f64>
    %c0_5 = arith.constant 0 : index
    %3 = memref.load %arg1[%c0_5] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_2[] : memref<f64>
    %c0_6 = arith.constant 0 : index
    %c39 = arith.constant 39 : index
    %c32 = arith.constant 32 : index
    scf.for %arg3 = %c0_6 to %c39 step %c32 {
      %c32_7 = arith.constant 32 : index
      %5 = arith.addi %arg3, %c32_7 : index
      %c39_8 = arith.constant 39 : index
      %6 = arith.minsi %5, %c39_8 : index
      %c1 = arith.constant 1 : index
      scf.for %arg4 = %arg3 to %6 step %c1 {
        %7 = memref.load %alloca_2[] : memref<f64>
        %8 = arith.mulf %7, %7 : f64
        %9 = arith.subf %cst_0, %8 : f64
        %10 = memref.load %alloca_1[] : memref<f64>
        %11 = arith.mulf %9, %10 : f64
        memref.store %11, %alloca_1[] : memref<f64>
        memref.store %cst, %alloca[] : memref<f64>
        %c0_9 = arith.constant 0 : index
        %c1_10 = arith.constant 1 : index
        %12 = arith.addi %arg4, %c1_10 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg5 = %c0_9 to %12 step %c1_11 {
          %c-1 = arith.constant -1 : index
          %22 = arith.muli %arg5, %c-1 : index
          %23 = arith.addi %22, %arg4 : index
          %24 = memref.load %arg1[%23] : memref<?xf64>
          %25 = memref.load %arg2[%arg5] : memref<?xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = memref.load %alloca[] : memref<f64>
          %28 = arith.addf %27, %26 : f64
          memref.store %28, %alloca[] : memref<f64>
        }
        %c1_12 = arith.constant 1 : index
        %13 = arith.addi %arg4, %c1_12 : index
        %14 = memref.load %arg1[%13] : memref<?xf64>
        %15 = memref.load %alloca[] : memref<f64>
        %16 = arith.addf %14, %15 : f64
        %17 = arith.negf %16 : f64
        %18 = arith.divf %17, %11 : f64
        memref.store %18, %alloca_2[] : memref<f64>
        %c0_13 = arith.constant 0 : index
        %c1_14 = arith.constant 1 : index
        %19 = arith.addi %arg4, %c1_14 : index
        %c1_15 = arith.constant 1 : index
        scf.for %arg5 = %c0_13 to %19 step %c1_15 {
          %22 = memref.load %arg2[%arg5] : memref<?xf64>
          %c-1 = arith.constant -1 : index
          %23 = arith.muli %arg5, %c-1 : index
          %24 = arith.addi %23, %arg4 : index
          %25 = memref.load %arg2[%24] : memref<?xf64>
          %26 = arith.mulf %18, %25 : f64
          %27 = arith.addf %22, %26 : f64
          memref.store %27, %alloca_3[%arg5] : memref<40xf64>
        }
        %c0_16 = arith.constant 0 : index
        %c1_17 = arith.constant 1 : index
        %20 = arith.addi %arg4, %c1_17 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg5 = %c0_16 to %20 step %c1_18 {
          %22 = memref.load %alloca_3[%arg5] : memref<40xf64>
          memref.store %22, %arg2[%arg5] : memref<?xf64>
        }
        %c1_19 = arith.constant 1 : index
        %21 = arith.addi %arg4, %c1_19 : index
        memref.store %18, %arg2[%21] : memref<?xf64>
      }
    }
    return
  }
}

