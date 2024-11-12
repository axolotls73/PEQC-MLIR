module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_1 = memref.alloca() : memref<f64>
    %alloca_2 = memref.alloca() : memref<40xf64>
    %alloca_3 = memref.alloca() : memref<f64>
    %alloca_4 = memref.alloca() : memref<f64>
    %alloca_5 = memref.alloca() : memref<1xf64>
    %c0 = arith.constant 0 : index
    %0 = memref.load %arg1[%c0] : memref<?xf64>
    %1 = arith.negf %0 : f64
    %c0_6 = arith.constant 0 : index
    memref.store %1, %arg2[%c0_6] : memref<?xf64>
    %2 = llvm.mlir.undef : f64
    memref.store %2, %alloca_3[] : memref<f64>
    %c0_7 = arith.constant 0 : index
    %3 = memref.load %arg1[%c0_7] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_3[] : memref<f64>
    %5 = llvm.mlir.undef : f64
    memref.store %5, %alloca_4[] : memref<f64>
    memref.store %cst_0, %alloca_4[] : memref<f64>
    %6 = llvm.mlir.undef : f64
    memref.store %6, %alloca_1[] : memref<f64>
    %c0_8 = arith.constant 0 : index
    %c39 = arith.constant 39 : index
    %c32 = arith.constant 32 : index
    scf.for %arg3 = %c0_8 to %c39 step %c32 {
      %c32_9 = arith.constant 32 : index
      %7 = arith.addi %arg3, %c32_9 : index
      %c39_10 = arith.constant 39 : index
      %8 = arith.minsi %7, %c39_10 : index
      %c1 = arith.constant 1 : index
      scf.for %arg4 = %arg3 to %8 step %c1 {
        memref.store %cst, %alloca_1[] : memref<f64>
        %9 = memref.load %alloca_1[] : memref<f64>
        %10 = memref.load %arg1[%arg4] : memref<?xf64>
        %c0_11 = arith.constant 0 : index
        %11 = memref.load %arg2[%c0_11] : memref<?xf64>
        %12 = arith.mulf %10, %11 : f64
        %13 = arith.addf %9, %12 : f64
        memref.store %13, %alloca_1[] : memref<f64>
        %14 = memref.load %alloca_4[] : memref<f64>
        %15 = memref.load %alloca_3[] : memref<f64>
        %16 = arith.mulf %15, %15 : f64
        %17 = arith.subf %14, %16 : f64
        %18 = memref.load %alloca_4[] : memref<f64>
        %19 = arith.mulf %17, %18 : f64
        memref.store %19, %alloca_4[] : memref<f64>
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg5 = %c0_12 to %arg4 step %c1_13 {
          %26 = memref.load %alloca_1[] : memref<f64>
          %c-1_23 = arith.constant -1 : index
          %27 = arith.muli %arg5, %c-1_23 : index
          %28 = arith.addi %arg4, %27 : index
          %c-1_24 = arith.constant -1 : index
          %29 = arith.addi %28, %c-1_24 : index
          %30 = memref.load %arg1[%29] : memref<?xf64>
          %c1_25 = arith.constant 1 : index
          %31 = arith.addi %arg5, %c1_25 : index
          %32 = memref.load %arg2[%31] : memref<?xf64>
          %33 = arith.mulf %30, %32 : f64
          %34 = arith.addf %26, %33 : f64
          memref.store %34, %alloca_1[] : memref<f64>
        }
        %c0_14 = arith.constant 0 : index
        %20 = arith.cmpi eq, %arg4, %c0_14 : index
        scf.if %20 {
          %c1_23 = arith.constant 1 : index
          %26 = memref.load %arg1[%c1_23] : memref<?xf64>
          %27 = memref.load %alloca_1[] : memref<f64>
          %28 = arith.addf %26, %27 : f64
          %29 = arith.negf %28 : f64
          %30 = memref.load %alloca_4[] : memref<f64>
          %31 = arith.divf %29, %30 : f64
          %c0_24 = arith.constant 0 : index
          memref.store %31, %alloca[%c0_24] : memref<1xf64>
          %c0_25 = arith.constant 0 : index
          %32 = memref.load %arg2[%c0_25] : memref<?xf64>
          %c0_26 = arith.constant 0 : index
          %33 = memref.load %alloca[%c0_26] : memref<1xf64>
          %c0_27 = arith.constant 0 : index
          %34 = memref.load %arg2[%c0_27] : memref<?xf64>
          %35 = arith.mulf %33, %34 : f64
          %36 = arith.addf %32, %35 : f64
          %c0_28 = arith.constant 0 : index
          memref.store %36, %alloca_2[%c0_28] : memref<40xf64>
          %c0_29 = arith.constant 0 : index
          %37 = memref.load %alloca_2[%c0_29] : memref<40xf64>
          %c0_30 = arith.constant 0 : index
          memref.store %37, %arg2[%c0_30] : memref<?xf64>
          %c0_31 = arith.constant 0 : index
          %38 = memref.load %alloca[%c0_31] : memref<1xf64>
          %c0_32 = arith.constant 0 : index
          memref.store %38, %alloca_5[%c0_32] : memref<1xf64>
          memref.store %38, %alloca_3[] : memref<f64>
          %c0_33 = arith.constant 0 : index
          %39 = memref.load %alloca_5[%c0_33] : memref<1xf64>
          %c1_34 = arith.constant 1 : index
          memref.store %39, %arg2[%c1_34] : memref<?xf64>
        }
        %c0_15 = arith.constant 0 : index
        %c-1 = arith.constant -1 : index
        %21 = arith.addi %arg4, %c-1 : index
        %22 = arith.cmpi sge, %21, %c0_15 : index
        scf.if %22 {
          %c1_23 = arith.constant 1 : index
          %26 = arith.addi %arg4, %c1_23 : index
          %27 = memref.load %arg1[%26] : memref<?xf64>
          %28 = memref.load %alloca_1[] : memref<f64>
          %29 = arith.addf %27, %28 : f64
          %30 = arith.negf %29 : f64
          %31 = memref.load %alloca_4[] : memref<f64>
          %32 = arith.divf %30, %31 : f64
          %c0_24 = arith.constant 0 : index
          memref.store %32, %alloca[%c0_24] : memref<1xf64>
          %c0_25 = arith.constant 0 : index
          %33 = memref.load %arg2[%c0_25] : memref<?xf64>
          %c0_26 = arith.constant 0 : index
          %34 = memref.load %alloca[%c0_26] : memref<1xf64>
          %35 = memref.load %arg2[%arg4] : memref<?xf64>
          %36 = arith.mulf %34, %35 : f64
          %37 = arith.addf %33, %36 : f64
          %c0_27 = arith.constant 0 : index
          memref.store %37, %alloca_2[%c0_27] : memref<40xf64>
          %c0_28 = arith.constant 0 : index
          %38 = memref.load %alloca[%c0_28] : memref<1xf64>
          %c0_29 = arith.constant 0 : index
          memref.store %38, %alloca_5[%c0_29] : memref<1xf64>
          memref.store %38, %alloca_3[] : memref<f64>
          %c0_30 = arith.constant 0 : index
          %39 = memref.load %alloca_5[%c0_30] : memref<1xf64>
          %c1_31 = arith.constant 1 : index
          %40 = arith.addi %arg4, %c1_31 : index
          memref.store %39, %arg2[%40] : memref<?xf64>
        }
        %c0_16 = arith.constant 0 : index
        %c-1_17 = arith.constant -1 : index
        %23 = arith.addi %arg4, %c-1_17 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg5 = %c0_16 to %23 step %c1_18 {
          %c1_23 = arith.constant 1 : index
          %26 = arith.addi %arg5, %c1_23 : index
          %27 = memref.load %arg2[%26] : memref<?xf64>
          %c0_24 = arith.constant 0 : index
          %28 = memref.load %alloca[%c0_24] : memref<1xf64>
          %c-1_25 = arith.constant -1 : index
          %29 = arith.muli %arg5, %c-1_25 : index
          %30 = arith.addi %29, %arg4 : index
          %c-1_26 = arith.constant -1 : index
          %31 = arith.addi %30, %c-1_26 : index
          %32 = memref.load %arg2[%31] : memref<?xf64>
          %33 = arith.mulf %28, %32 : f64
          %34 = arith.addf %27, %33 : f64
          %c1_27 = arith.constant 1 : index
          %35 = arith.addi %arg5, %c1_27 : index
          memref.store %34, %alloca_2[%35] : memref<40xf64>
        }
        %c0_19 = arith.constant 0 : index
        %c-1_20 = arith.constant -1 : index
        %24 = arith.addi %arg4, %c-1_20 : index
        %25 = arith.cmpi sge, %24, %c0_19 : index
        scf.if %25 {
          %26 = memref.load %arg2[%arg4] : memref<?xf64>
          %c0_23 = arith.constant 0 : index
          %27 = memref.load %alloca[%c0_23] : memref<1xf64>
          %c0_24 = arith.constant 0 : index
          %28 = memref.load %arg2[%c0_24] : memref<?xf64>
          %29 = arith.mulf %27, %28 : f64
          %30 = arith.addf %26, %29 : f64
          memref.store %30, %alloca_2[%arg4] : memref<40xf64>
          %c0_25 = arith.constant 0 : index
          %31 = memref.load %alloca_2[%c0_25] : memref<40xf64>
          %c0_26 = arith.constant 0 : index
          memref.store %31, %arg2[%c0_26] : memref<?xf64>
        }
        %c0_21 = arith.constant 0 : index
        %c1_22 = arith.constant 1 : index
        scf.for %arg5 = %c0_21 to %arg4 step %c1_22 {
          %c1_23 = arith.constant 1 : index
          %26 = arith.addi %arg5, %c1_23 : index
          %27 = memref.load %alloca_2[%26] : memref<40xf64>
          %c1_24 = arith.constant 1 : index
          %28 = arith.addi %arg5, %c1_24 : index
          memref.store %27, %arg2[%28] : memref<?xf64>
        }
      }
    }
    return
  }
}

