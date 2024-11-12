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
    memref.store %2, %alloca_4[] : memref<f64>
    %c0_7 = arith.constant 0 : index
    %3 = memref.load %arg1[%c0_7] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_4[] : memref<f64>
    %5 = llvm.mlir.undef : f64
    memref.store %5, %alloca_3[] : memref<f64>
    memref.store %cst_0, %alloca_3[] : memref<f64>
    %6 = llvm.mlir.undef : f64
    memref.store %6, %alloca_1[] : memref<f64>
    %c1 = arith.constant 1 : index
    %c40 = arith.constant 40 : index
    %c1_8 = arith.constant 1 : index
    scf.for %arg3 = %c1 to %c40 step %c1_8 {
      memref.store %cst, %alloca_1[] : memref<f64>
      %7 = memref.load %alloca_1[] : memref<f64>
      %c-1 = arith.constant -1 : index
      %8 = arith.addi %arg3, %c-1 : index
      %9 = memref.load %arg1[%8] : memref<?xf64>
      %c0_9 = arith.constant 0 : index
      %10 = memref.load %arg2[%c0_9] : memref<?xf64>
      %11 = arith.mulf %9, %10 : f64
      %12 = arith.addf %7, %11 : f64
      memref.store %12, %alloca_1[] : memref<f64>
      %13 = memref.load %alloca_3[] : memref<f64>
      %14 = memref.load %alloca_4[] : memref<f64>
      %15 = arith.mulf %14, %14 : f64
      %16 = arith.subf %13, %15 : f64
      %17 = memref.load %alloca_3[] : memref<f64>
      %18 = arith.mulf %16, %17 : f64
      memref.store %18, %alloca_3[] : memref<f64>
      %c1_10 = arith.constant 1 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg4 = %c1_10 to %arg3 step %c1_11 {
        %30 = memref.load %alloca_1[] : memref<f64>
        %c-1_21 = arith.constant -1 : index
        %31 = arith.muli %arg4, %c-1_21 : index
        %32 = arith.addi %arg3, %31 : index
        %c-1_22 = arith.constant -1 : index
        %33 = arith.addi %32, %c-1_22 : index
        %34 = memref.load %arg1[%33] : memref<?xf64>
        %35 = memref.load %arg2[%arg4] : memref<?xf64>
        %36 = arith.mulf %34, %35 : f64
        %37 = arith.addf %30, %36 : f64
        memref.store %37, %alloca_1[] : memref<f64>
      }
      %c0_12 = arith.constant 0 : index
      %c-1_13 = arith.constant -1 : index
      %19 = arith.addi %arg3, %c-1_13 : index
      %20 = arith.cmpi eq, %19, %c0_12 : index
      scf.if %20 {
        %c1_21 = arith.constant 1 : index
        %30 = memref.load %arg1[%c1_21] : memref<?xf64>
        %31 = memref.load %alloca_1[] : memref<f64>
        %32 = arith.addf %30, %31 : f64
        %33 = arith.negf %32 : f64
        %34 = memref.load %alloca_3[] : memref<f64>
        %35 = arith.divf %33, %34 : f64
        %c0_22 = arith.constant 0 : index
        memref.store %35, %alloca[%c0_22] : memref<1xf64>
        %c0_23 = arith.constant 0 : index
        %36 = memref.load %arg2[%c0_23] : memref<?xf64>
        %c0_24 = arith.constant 0 : index
        %37 = memref.load %alloca[%c0_24] : memref<1xf64>
        %c0_25 = arith.constant 0 : index
        %38 = memref.load %arg2[%c0_25] : memref<?xf64>
        %39 = arith.mulf %37, %38 : f64
        %40 = arith.addf %36, %39 : f64
        %c0_26 = arith.constant 0 : index
        memref.store %40, %alloca_2[%c0_26] : memref<40xf64>
        %c0_27 = arith.constant 0 : index
        %41 = memref.load %alloca_2[%c0_27] : memref<40xf64>
        %c0_28 = arith.constant 0 : index
        memref.store %41, %arg2[%c0_28] : memref<?xf64>
        %c0_29 = arith.constant 0 : index
        %42 = memref.load %alloca[%c0_29] : memref<1xf64>
        %c0_30 = arith.constant 0 : index
        memref.store %42, %alloca_5[%c0_30] : memref<1xf64>
        memref.store %42, %alloca_4[] : memref<f64>
        %c0_31 = arith.constant 0 : index
        %43 = memref.load %alloca_5[%c0_31] : memref<1xf64>
        %c1_32 = arith.constant 1 : index
        memref.store %43, %arg2[%c1_32] : memref<?xf64>
      }
      %c0_14 = arith.constant 0 : index
      %c-2 = arith.constant -2 : index
      %21 = arith.addi %arg3, %c-2 : index
      %22 = arith.cmpi sge, %21, %c0_14 : index
      scf.if %22 {
        %30 = memref.load %arg1[%arg3] : memref<?xf64>
        %31 = memref.load %alloca_1[] : memref<f64>
        %32 = arith.addf %30, %31 : f64
        %33 = arith.negf %32 : f64
        %34 = memref.load %alloca_3[] : memref<f64>
        %35 = arith.divf %33, %34 : f64
        %c0_21 = arith.constant 0 : index
        memref.store %35, %alloca[%c0_21] : memref<1xf64>
        %c0_22 = arith.constant 0 : index
        %36 = memref.load %arg2[%c0_22] : memref<?xf64>
        %c0_23 = arith.constant 0 : index
        %37 = memref.load %alloca[%c0_23] : memref<1xf64>
        %c-1_24 = arith.constant -1 : index
        %38 = arith.addi %arg3, %c-1_24 : index
        %39 = memref.load %arg2[%38] : memref<?xf64>
        %40 = arith.mulf %37, %39 : f64
        %41 = arith.addf %36, %40 : f64
        %c0_25 = arith.constant 0 : index
        memref.store %41, %alloca_2[%c0_25] : memref<40xf64>
        %c0_26 = arith.constant 0 : index
        %42 = memref.load %alloca[%c0_26] : memref<1xf64>
        %c0_27 = arith.constant 0 : index
        memref.store %42, %alloca_5[%c0_27] : memref<1xf64>
        memref.store %42, %alloca_4[] : memref<f64>
        %c0_28 = arith.constant 0 : index
        %43 = memref.load %alloca_5[%c0_28] : memref<1xf64>
        memref.store %43, %arg2[%arg3] : memref<?xf64>
      }
      %c0_15 = arith.constant 0 : index
      %23 = memref.load %alloca[%c0_15] : memref<1xf64>
      %c39 = arith.constant 39 : index
      %c37 = arith.constant 37 : index
      %24 = arith.addi %arg3, %c37 : index
      %c1_16 = arith.constant 1 : index
      scf.for %arg4 = %c39 to %24 step %c1_16 {
        %c-38 = arith.constant -38 : index
        %30 = arith.addi %arg4, %c-38 : index
        %31 = memref.load %arg2[%30] : memref<?xf64>
        %c-1_21 = arith.constant -1 : index
        %32 = arith.muli %arg4, %c-1_21 : index
        %33 = arith.addi %32, %arg3 : index
        %c37_22 = arith.constant 37 : index
        %34 = arith.addi %33, %c37_22 : index
        %35 = memref.load %arg2[%34] : memref<?xf64>
        %36 = arith.mulf %23, %35 : f64
        %37 = arith.addf %31, %36 : f64
        %c-38_23 = arith.constant -38 : index
        %38 = arith.addi %arg4, %c-38_23 : index
        memref.store %37, %alloca_2[%38] : memref<40xf64>
      }
      %c0_17 = arith.constant 0 : index
      %c-2_18 = arith.constant -2 : index
      %25 = arith.addi %arg3, %c-2_18 : index
      %26 = arith.cmpi sge, %25, %c0_17 : index
      scf.if %26 {
        %c-1_21 = arith.constant -1 : index
        %30 = arith.addi %arg3, %c-1_21 : index
        %31 = memref.load %arg2[%30] : memref<?xf64>
        %c0_22 = arith.constant 0 : index
        %32 = memref.load %alloca[%c0_22] : memref<1xf64>
        %c0_23 = arith.constant 0 : index
        %33 = memref.load %arg2[%c0_23] : memref<?xf64>
        %34 = arith.mulf %32, %33 : f64
        %35 = arith.addf %31, %34 : f64
        %c-1_24 = arith.constant -1 : index
        %36 = arith.addi %arg3, %c-1_24 : index
        memref.store %35, %alloca_2[%36] : memref<40xf64>
        %c0_25 = arith.constant 0 : index
        %37 = memref.load %alloca_2[%c0_25] : memref<40xf64>
        %c0_26 = arith.constant 0 : index
        memref.store %37, %arg2[%c0_26] : memref<?xf64>
      }
      %c38 = arith.constant 38 : index
      %27 = arith.addi %arg3, %c38 : index
      %c2 = arith.constant 2 : index
      %28 = arith.muli %arg3, %c2 : index
      %c37_19 = arith.constant 37 : index
      %29 = arith.addi %28, %c37_19 : index
      %c1_20 = arith.constant 1 : index
      scf.for %arg4 = %27 to %29 step %c1_20 {
        %c-1_21 = arith.constant -1 : index
        %30 = arith.muli %arg3, %c-1_21 : index
        %31 = arith.addi %30, %arg4 : index
        %c-37 = arith.constant -37 : index
        %32 = arith.addi %31, %c-37 : index
        %33 = memref.load %alloca_2[%32] : memref<40xf64>
        %c-1_22 = arith.constant -1 : index
        %34 = arith.muli %arg3, %c-1_22 : index
        %35 = arith.addi %34, %arg4 : index
        %c-37_23 = arith.constant -37 : index
        %36 = arith.addi %35, %c-37_23 : index
        memref.store %33, %arg2[%36] : memref<?xf64>
      }
    }
    return
  }
}

