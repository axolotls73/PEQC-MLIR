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
        %29 = memref.load %alloca_1[] : memref<f64>
        %c-1_20 = arith.constant -1 : index
        %30 = arith.muli %arg4, %c-1_20 : index
        %31 = arith.addi %arg3, %30 : index
        %c-1_21 = arith.constant -1 : index
        %32 = arith.addi %31, %c-1_21 : index
        %33 = memref.load %arg1[%32] : memref<?xf64>
        %34 = memref.load %arg2[%arg4] : memref<?xf64>
        %35 = arith.mulf %33, %34 : f64
        %36 = arith.addf %29, %35 : f64
        memref.store %36, %alloca_1[] : memref<f64>
      }
      %c0_12 = arith.constant 0 : index
      %c-1_13 = arith.constant -1 : index
      %19 = arith.addi %arg3, %c-1_13 : index
      %20 = arith.cmpi eq, %19, %c0_12 : index
      scf.if %20 {
        %c1_20 = arith.constant 1 : index
        %29 = memref.load %arg1[%c1_20] : memref<?xf64>
        %30 = memref.load %alloca_1[] : memref<f64>
        %31 = arith.addf %29, %30 : f64
        %32 = arith.negf %31 : f64
        %33 = memref.load %alloca_3[] : memref<f64>
        %34 = arith.divf %32, %33 : f64
        %c0_21 = arith.constant 0 : index
        memref.store %34, %alloca[%c0_21] : memref<1xf64>
        %c0_22 = arith.constant 0 : index
        %35 = memref.load %arg2[%c0_22] : memref<?xf64>
        %c0_23 = arith.constant 0 : index
        %36 = memref.load %alloca[%c0_23] : memref<1xf64>
        %c0_24 = arith.constant 0 : index
        %37 = memref.load %arg2[%c0_24] : memref<?xf64>
        %38 = arith.mulf %36, %37 : f64
        %39 = arith.addf %35, %38 : f64
        %c0_25 = arith.constant 0 : index
        memref.store %39, %alloca_2[%c0_25] : memref<40xf64>
        %c0_26 = arith.constant 0 : index
        %40 = memref.load %alloca_2[%c0_26] : memref<40xf64>
        %c0_27 = arith.constant 0 : index
        memref.store %40, %arg2[%c0_27] : memref<?xf64>
        %c0_28 = arith.constant 0 : index
        %41 = memref.load %alloca[%c0_28] : memref<1xf64>
        %c0_29 = arith.constant 0 : index
        memref.store %41, %alloca_5[%c0_29] : memref<1xf64>
        memref.store %41, %alloca_4[] : memref<f64>
        %c0_30 = arith.constant 0 : index
        %42 = memref.load %alloca_5[%c0_30] : memref<1xf64>
        %c1_31 = arith.constant 1 : index
        memref.store %42, %arg2[%c1_31] : memref<?xf64>
      }
      %c0_14 = arith.constant 0 : index
      %c-2 = arith.constant -2 : index
      %21 = arith.addi %arg3, %c-2 : index
      %22 = arith.cmpi sge, %21, %c0_14 : index
      scf.if %22 {
        %29 = memref.load %arg1[%arg3] : memref<?xf64>
        %30 = memref.load %alloca_1[] : memref<f64>
        %31 = arith.addf %29, %30 : f64
        %32 = arith.negf %31 : f64
        %33 = memref.load %alloca_3[] : memref<f64>
        %34 = arith.divf %32, %33 : f64
        %c0_20 = arith.constant 0 : index
        memref.store %34, %alloca[%c0_20] : memref<1xf64>
        %c0_21 = arith.constant 0 : index
        %35 = memref.load %arg2[%c0_21] : memref<?xf64>
        %c0_22 = arith.constant 0 : index
        %36 = memref.load %alloca[%c0_22] : memref<1xf64>
        %c-1_23 = arith.constant -1 : index
        %37 = arith.addi %arg3, %c-1_23 : index
        %38 = memref.load %arg2[%37] : memref<?xf64>
        %39 = arith.mulf %36, %38 : f64
        %40 = arith.addf %35, %39 : f64
        %c0_24 = arith.constant 0 : index
        memref.store %40, %alloca_2[%c0_24] : memref<40xf64>
        %c0_25 = arith.constant 0 : index
        %41 = memref.load %alloca[%c0_25] : memref<1xf64>
        %c0_26 = arith.constant 0 : index
        memref.store %41, %alloca_5[%c0_26] : memref<1xf64>
        memref.store %41, %alloca_4[] : memref<f64>
        %c0_27 = arith.constant 0 : index
        %42 = memref.load %alloca_5[%c0_27] : memref<1xf64>
        memref.store %42, %arg2[%arg3] : memref<?xf64>
      }
      %c39 = arith.constant 39 : index
      %c37 = arith.constant 37 : index
      %23 = arith.addi %arg3, %c37 : index
      %c1_15 = arith.constant 1 : index
      scf.for %arg4 = %c39 to %23 step %c1_15 {
        %c-38 = arith.constant -38 : index
        %29 = arith.addi %arg4, %c-38 : index
        %30 = memref.load %arg2[%29] : memref<?xf64>
        %c0_20 = arith.constant 0 : index
        %31 = memref.load %alloca[%c0_20] : memref<1xf64>
        %c-1_21 = arith.constant -1 : index
        %32 = arith.muli %arg4, %c-1_21 : index
        %33 = arith.addi %32, %arg3 : index
        %c37_22 = arith.constant 37 : index
        %34 = arith.addi %33, %c37_22 : index
        %35 = memref.load %arg2[%34] : memref<?xf64>
        %36 = arith.mulf %31, %35 : f64
        %37 = arith.addf %30, %36 : f64
        %c-38_23 = arith.constant -38 : index
        %38 = arith.addi %arg4, %c-38_23 : index
        memref.store %37, %alloca_2[%38] : memref<40xf64>
      }
      %c0_16 = arith.constant 0 : index
      %c-2_17 = arith.constant -2 : index
      %24 = arith.addi %arg3, %c-2_17 : index
      %25 = arith.cmpi sge, %24, %c0_16 : index
      scf.if %25 {
        %c-1_20 = arith.constant -1 : index
        %29 = arith.addi %arg3, %c-1_20 : index
        %30 = memref.load %arg2[%29] : memref<?xf64>
        %c0_21 = arith.constant 0 : index
        %31 = memref.load %alloca[%c0_21] : memref<1xf64>
        %c0_22 = arith.constant 0 : index
        %32 = memref.load %arg2[%c0_22] : memref<?xf64>
        %33 = arith.mulf %31, %32 : f64
        %34 = arith.addf %30, %33 : f64
        %c-1_23 = arith.constant -1 : index
        %35 = arith.addi %arg3, %c-1_23 : index
        memref.store %34, %alloca_2[%35] : memref<40xf64>
        %c0_24 = arith.constant 0 : index
        %36 = memref.load %alloca_2[%c0_24] : memref<40xf64>
        %c0_25 = arith.constant 0 : index
        memref.store %36, %arg2[%c0_25] : memref<?xf64>
      }
      %c38 = arith.constant 38 : index
      %26 = arith.addi %arg3, %c38 : index
      %c2 = arith.constant 2 : index
      %27 = arith.muli %arg3, %c2 : index
      %c37_18 = arith.constant 37 : index
      %28 = arith.addi %27, %c37_18 : index
      %c1_19 = arith.constant 1 : index
      scf.for %arg4 = %26 to %28 step %c1_19 {
        %c-1_20 = arith.constant -1 : index
        %29 = arith.muli %arg3, %c-1_20 : index
        %30 = arith.addi %29, %arg4 : index
        %c-37 = arith.constant -37 : index
        %31 = arith.addi %30, %c-37 : index
        %32 = memref.load %alloca_2[%31] : memref<40xf64>
        %c-1_21 = arith.constant -1 : index
        %33 = arith.muli %arg3, %c-1_21 : index
        %34 = arith.addi %33, %arg4 : index
        %c-37_22 = arith.constant -37 : index
        %35 = arith.addi %34, %c-37_22 : index
        memref.store %32, %arg2[%35] : memref<?xf64>
      }
    }
    return
  }
}

