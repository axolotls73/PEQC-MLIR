module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_1 = memref.alloca() : memref<f64>
    %alloca_2 = memref.alloca() : memref<40xf64>
    %alloca_3 = memref.alloca() : memref<f64>
    %alloca_4 = memref.alloca() : memref<f64>
    %alloca_5 = memref.alloca() : memref<1xf64>
    %c0 = arith.constant 0 : index
    %1 = memref.load %arg1[%c0] : memref<?xf64>
    %2 = arith.negf %1 : f64
    %c0_6 = arith.constant 0 : index
    memref.store %2, %arg2[%c0_6] : memref<?xf64>
    memref.store %0, %alloca_4[] : memref<f64>
    %c0_7 = arith.constant 0 : index
    %3 = memref.load %arg1[%c0_7] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_4[] : memref<f64>
    memref.store %0, %alloca_3[] : memref<f64>
    memref.store %cst_0, %alloca_3[] : memref<f64>
    memref.store %0, %alloca_1[] : memref<f64>
    %c0_8 = arith.constant 0 : index
    %c39 = arith.constant 39 : index
    %c32 = arith.constant 32 : index
    scf.for %arg3 = %c0_8 to %c39 step %c32 {
      %c32_9 = arith.constant 32 : index
      %5 = arith.addi %arg3, %c32_9 : index
      %c39_10 = arith.constant 39 : index
      %6 = arith.minsi %5, %c39_10 : index
      %c1 = arith.constant 1 : index
      scf.for %arg4 = %arg3 to %6 step %c1 {
        memref.store %cst, %alloca_1[] : memref<f64>
        %7 = memref.load %alloca_1[] : memref<f64>
        %8 = memref.load %arg1[%arg4] : memref<?xf64>
        %c0_11 = arith.constant 0 : index
        %9 = memref.load %arg2[%c0_11] : memref<?xf64>
        %10 = arith.mulf %8, %9 : f64
        %11 = arith.addf %7, %10 : f64
        memref.store %11, %alloca_1[] : memref<f64>
        %12 = memref.load %alloca_3[] : memref<f64>
        %13 = memref.load %alloca_4[] : memref<f64>
        %14 = arith.mulf %13, %13 : f64
        %15 = arith.subf %12, %14 : f64
        %16 = memref.load %alloca_3[] : memref<f64>
        %17 = arith.mulf %15, %16 : f64
        memref.store %17, %alloca_3[] : memref<f64>
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg5 = %c0_12 to %arg4 step %c1_13 {
          %24 = memref.load %alloca_1[] : memref<f64>
          %c-1_23 = arith.constant -1 : index
          %25 = arith.muli %arg5, %c-1_23 : index
          %26 = arith.addi %arg4, %25 : index
          %c-1_24 = arith.constant -1 : index
          %27 = arith.addi %26, %c-1_24 : index
          %28 = memref.load %arg1[%27] : memref<?xf64>
          %c1_25 = arith.constant 1 : index
          %29 = arith.addi %arg5, %c1_25 : index
          %30 = memref.load %arg2[%29] : memref<?xf64>
          %31 = arith.mulf %28, %30 : f64
          %32 = arith.addf %24, %31 : f64
          memref.store %32, %alloca_1[] : memref<f64>
        }
        %c0_14 = arith.constant 0 : index
        %18 = arith.cmpi eq, %arg4, %c0_14 : index
        scf.if %18 {
          %c1_23 = arith.constant 1 : index
          %24 = memref.load %arg1[%c1_23] : memref<?xf64>
          %25 = memref.load %alloca_1[] : memref<f64>
          %26 = arith.addf %24, %25 : f64
          %27 = arith.negf %26 : f64
          %28 = memref.load %alloca_3[] : memref<f64>
          %29 = arith.divf %27, %28 : f64
          %c0_24 = arith.constant 0 : index
          memref.store %29, %alloca[%c0_24] : memref<1xf64>
          %c0_25 = arith.constant 0 : index
          %30 = memref.load %arg2[%c0_25] : memref<?xf64>
          %c0_26 = arith.constant 0 : index
          %31 = memref.load %alloca[%c0_26] : memref<1xf64>
          %c0_27 = arith.constant 0 : index
          %32 = memref.load %arg2[%c0_27] : memref<?xf64>
          %33 = arith.mulf %31, %32 : f64
          %34 = arith.addf %30, %33 : f64
          %c0_28 = arith.constant 0 : index
          memref.store %34, %alloca_2[%c0_28] : memref<40xf64>
          %c0_29 = arith.constant 0 : index
          %35 = memref.load %alloca_2[%c0_29] : memref<40xf64>
          %c0_30 = arith.constant 0 : index
          memref.store %35, %arg2[%c0_30] : memref<?xf64>
          %c0_31 = arith.constant 0 : index
          %36 = memref.load %alloca[%c0_31] : memref<1xf64>
          %c0_32 = arith.constant 0 : index
          memref.store %36, %alloca_5[%c0_32] : memref<1xf64>
          memref.store %36, %alloca_4[] : memref<f64>
          %c0_33 = arith.constant 0 : index
          %37 = memref.load %alloca_5[%c0_33] : memref<1xf64>
          %c1_34 = arith.constant 1 : index
          memref.store %37, %arg2[%c1_34] : memref<?xf64>
        }
        %c0_15 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %19 = arith.addi %arg4, %c-1 : index
        %20 = arith.cmpi sge, %19, %c0_15 : index
        scf.if %20 {
          %c1_23 = arith.constant 1 : index
          %24 = arith.addi %arg4, %c1_23 : index
          %25 = memref.load %arg1[%24] : memref<?xf64>
          %26 = memref.load %alloca_1[] : memref<f64>
          %27 = arith.addf %25, %26 : f64
          %28 = arith.negf %27 : f64
          %29 = memref.load %alloca_3[] : memref<f64>
          %30 = arith.divf %28, %29 : f64
          %c0_24 = arith.constant 0 : index
          memref.store %30, %alloca[%c0_24] : memref<1xf64>
          %c0_25 = arith.constant 0 : index
          %31 = memref.load %arg2[%c0_25] : memref<?xf64>
          %c0_26 = arith.constant 0 : index
          %32 = memref.load %alloca[%c0_26] : memref<1xf64>
          %33 = memref.load %arg2[%arg4] : memref<?xf64>
          %34 = arith.mulf %32, %33 : f64
          %35 = arith.addf %31, %34 : f64
          %c0_27 = arith.constant 0 : index
          memref.store %35, %alloca_2[%c0_27] : memref<40xf64>
          %c0_28 = arith.constant 0 : index
          %36 = memref.load %alloca[%c0_28] : memref<1xf64>
          %c0_29 = arith.constant 0 : index
          memref.store %36, %alloca_5[%c0_29] : memref<1xf64>
          memref.store %36, %alloca_4[] : memref<f64>
          %c0_30 = arith.constant 0 : index
          %37 = memref.load %alloca_5[%c0_30] : memref<1xf64>
          %c1_31 = arith.constant 1 : index
          %38 = arith.addi %arg4, %c1_31 : index
          memref.store %37, %arg2[%38] : memref<?xf64>
        }
        %c0_16 = arith.constant 0 : index
        %c-1_17 = arith.constant -1 : index
        %21 = arith.addi %arg4, %c-1_17 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg5 = %c0_16 to %21 step %c1_18 {
          %c1_23 = arith.constant 1 : index
          %24 = arith.addi %arg5, %c1_23 : index
          %25 = memref.load %arg2[%24] : memref<?xf64>
          %c0_24 = arith.constant 0 : index
          %26 = memref.load %alloca[%c0_24] : memref<1xf64>
          %c-1_25 = arith.constant -1 : index
          %27 = arith.muli %arg5, %c-1_25 : index
          %28 = arith.addi %27, %arg4 : index
          %c-1_26 = arith.constant -1 : index
          %29 = arith.addi %28, %c-1_26 : index
          %30 = memref.load %arg2[%29] : memref<?xf64>
          %31 = arith.mulf %26, %30 : f64
          %32 = arith.addf %25, %31 : f64
          %c1_27 = arith.constant 1 : index
          %33 = arith.addi %arg5, %c1_27 : index
          memref.store %32, %alloca_2[%33] : memref<40xf64>
        }
        %c0_19 = arith.constant 0 : index
        %c-1_20 = arith.constant -1 : index
        %22 = arith.addi %arg4, %c-1_20 : index
        %23 = arith.cmpi sge, %22, %c0_19 : index
        scf.if %23 {
          %24 = memref.load %arg2[%arg4] : memref<?xf64>
          %c0_23 = arith.constant 0 : index
          %25 = memref.load %alloca[%c0_23] : memref<1xf64>
          %c0_24 = arith.constant 0 : index
          %26 = memref.load %arg2[%c0_24] : memref<?xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = arith.addf %24, %27 : f64
          memref.store %28, %alloca_2[%arg4] : memref<40xf64>
          %c0_25 = arith.constant 0 : index
          %29 = memref.load %alloca_2[%c0_25] : memref<40xf64>
          %c0_26 = arith.constant 0 : index
          memref.store %29, %arg2[%c0_26] : memref<?xf64>
        }
        %c0_21 = arith.constant 0 : index
        %c1_22 = arith.constant 1 : index
        scf.for %arg5 = %c0_21 to %arg4 step %c1_22 {
          %c1_23 = arith.constant 1 : index
          %24 = arith.addi %arg5, %c1_23 : index
          %25 = memref.load %alloca_2[%24] : memref<40xf64>
          %c1_24 = arith.constant 1 : index
          %26 = arith.addi %arg5, %c1_24 : index
          memref.store %25, %arg2[%26] : memref<?xf64>
        }
      }
    }
    return
  }
}

