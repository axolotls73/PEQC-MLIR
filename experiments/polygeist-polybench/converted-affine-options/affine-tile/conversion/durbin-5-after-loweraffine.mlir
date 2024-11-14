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
    %c32 = arith.constant 32 : index
    scf.for %arg3 = %c1 to %c40 step %c32 {
      %c32_8 = arith.constant 32 : index
      %7 = arith.addi %arg3, %c32_8 : index
      %c40_9 = arith.constant 40 : index
      %8 = arith.minsi %7, %c40_9 : index
      %c1_10 = arith.constant 1 : index
      scf.for %arg4 = %arg3 to %8 step %c1_10 {
        memref.store %cst, %alloca_1[] : memref<f64>
        %9 = memref.load %alloca_1[] : memref<f64>
        %c-1 = arith.constant -1 : index
        %10 = arith.addi %arg4, %c-1 : index
        %11 = memref.load %arg1[%10] : memref<?xf64>
        %c0_11 = arith.constant 0 : index
        %12 = memref.load %arg2[%c0_11] : memref<?xf64>
        %13 = arith.mulf %11, %12 : f64
        %14 = arith.addf %9, %13 : f64
        memref.store %14, %alloca_1[] : memref<f64>
        %15 = memref.load %alloca_3[] : memref<f64>
        %16 = memref.load %alloca_4[] : memref<f64>
        %17 = arith.mulf %16, %16 : f64
        %18 = arith.subf %15, %17 : f64
        %19 = memref.load %alloca_3[] : memref<f64>
        %20 = arith.mulf %18, %19 : f64
        memref.store %20, %alloca_3[] : memref<f64>
        %c1_12 = arith.constant 1 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg5 = %c1_12 to %arg4 step %c1_13 {
          %31 = memref.load %alloca_1[] : memref<f64>
          %c-1_22 = arith.constant -1 : index
          %32 = arith.muli %arg5, %c-1_22 : index
          %33 = arith.addi %arg4, %32 : index
          %c-1_23 = arith.constant -1 : index
          %34 = arith.addi %33, %c-1_23 : index
          %35 = memref.load %arg1[%34] : memref<?xf64>
          %36 = memref.load %arg2[%arg5] : memref<?xf64>
          %37 = arith.mulf %35, %36 : f64
          %38 = arith.addf %31, %37 : f64
          memref.store %38, %alloca_1[] : memref<f64>
        }
        %c0_14 = arith.constant 0 : index
        %c-1_15 = arith.constant -1 : index
        %21 = arith.addi %arg4, %c-1_15 : index
        %22 = arith.cmpi eq, %21, %c0_14 : index
        scf.if %22 {
          %c1_22 = arith.constant 1 : index
          %31 = memref.load %arg1[%c1_22] : memref<?xf64>
          %32 = memref.load %alloca_1[] : memref<f64>
          %33 = arith.addf %31, %32 : f64
          %34 = arith.negf %33 : f64
          %35 = memref.load %alloca_3[] : memref<f64>
          %36 = arith.divf %34, %35 : f64
          %c0_23 = arith.constant 0 : index
          memref.store %36, %alloca[%c0_23] : memref<1xf64>
          %c0_24 = arith.constant 0 : index
          %37 = memref.load %arg2[%c0_24] : memref<?xf64>
          %c0_25 = arith.constant 0 : index
          %38 = memref.load %alloca[%c0_25] : memref<1xf64>
          %c0_26 = arith.constant 0 : index
          %39 = memref.load %arg2[%c0_26] : memref<?xf64>
          %40 = arith.mulf %38, %39 : f64
          %41 = arith.addf %37, %40 : f64
          %c0_27 = arith.constant 0 : index
          memref.store %41, %alloca_2[%c0_27] : memref<40xf64>
          %c0_28 = arith.constant 0 : index
          %42 = memref.load %alloca_2[%c0_28] : memref<40xf64>
          %c0_29 = arith.constant 0 : index
          memref.store %42, %arg2[%c0_29] : memref<?xf64>
          %c0_30 = arith.constant 0 : index
          %43 = memref.load %alloca[%c0_30] : memref<1xf64>
          %c0_31 = arith.constant 0 : index
          memref.store %43, %alloca_5[%c0_31] : memref<1xf64>
          memref.store %43, %alloca_4[] : memref<f64>
          %c0_32 = arith.constant 0 : index
          %44 = memref.load %alloca_5[%c0_32] : memref<1xf64>
          %c1_33 = arith.constant 1 : index
          memref.store %44, %arg2[%c1_33] : memref<?xf64>
        }
        %c0_16 = arith.constant 0 : index
        %c-2 = arith.constant -2 : index
        %23 = arith.addi %arg4, %c-2 : index
        %24 = arith.cmpi sge, %23, %c0_16 : index
        scf.if %24 {
          %31 = memref.load %arg1[%arg4] : memref<?xf64>
          %32 = memref.load %alloca_1[] : memref<f64>
          %33 = arith.addf %31, %32 : f64
          %34 = arith.negf %33 : f64
          %35 = memref.load %alloca_3[] : memref<f64>
          %36 = arith.divf %34, %35 : f64
          %c0_22 = arith.constant 0 : index
          memref.store %36, %alloca[%c0_22] : memref<1xf64>
          %c0_23 = arith.constant 0 : index
          %37 = memref.load %arg2[%c0_23] : memref<?xf64>
          %c0_24 = arith.constant 0 : index
          %38 = memref.load %alloca[%c0_24] : memref<1xf64>
          %c-1_25 = arith.constant -1 : index
          %39 = arith.addi %arg4, %c-1_25 : index
          %40 = memref.load %arg2[%39] : memref<?xf64>
          %41 = arith.mulf %38, %40 : f64
          %42 = arith.addf %37, %41 : f64
          %c0_26 = arith.constant 0 : index
          memref.store %42, %alloca_2[%c0_26] : memref<40xf64>
          %c0_27 = arith.constant 0 : index
          %43 = memref.load %alloca[%c0_27] : memref<1xf64>
          %c0_28 = arith.constant 0 : index
          memref.store %43, %alloca_5[%c0_28] : memref<1xf64>
          memref.store %43, %alloca_4[] : memref<f64>
          %c0_29 = arith.constant 0 : index
          %44 = memref.load %alloca_5[%c0_29] : memref<1xf64>
          memref.store %44, %arg2[%arg4] : memref<?xf64>
        }
        %c39 = arith.constant 39 : index
        %c37 = arith.constant 37 : index
        %25 = arith.addi %arg4, %c37 : index
        %c1_17 = arith.constant 1 : index
        scf.for %arg5 = %c39 to %25 step %c1_17 {
          %c-38 = arith.constant -38 : index
          %31 = arith.addi %arg5, %c-38 : index
          %32 = memref.load %arg2[%31] : memref<?xf64>
          %c0_22 = arith.constant 0 : index
          %33 = memref.load %alloca[%c0_22] : memref<1xf64>
          %c-1_23 = arith.constant -1 : index
          %34 = arith.muli %arg5, %c-1_23 : index
          %35 = arith.addi %34, %arg4 : index
          %c37_24 = arith.constant 37 : index
          %36 = arith.addi %35, %c37_24 : index
          %37 = memref.load %arg2[%36] : memref<?xf64>
          %38 = arith.mulf %33, %37 : f64
          %39 = arith.addf %32, %38 : f64
          %c-38_25 = arith.constant -38 : index
          %40 = arith.addi %arg5, %c-38_25 : index
          memref.store %39, %alloca_2[%40] : memref<40xf64>
        }
        %c0_18 = arith.constant 0 : index
        %c-2_19 = arith.constant -2 : index
        %26 = arith.addi %arg4, %c-2_19 : index
        %27 = arith.cmpi sge, %26, %c0_18 : index
        scf.if %27 {
          %c-1_22 = arith.constant -1 : index
          %31 = arith.addi %arg4, %c-1_22 : index
          %32 = memref.load %arg2[%31] : memref<?xf64>
          %c0_23 = arith.constant 0 : index
          %33 = memref.load %alloca[%c0_23] : memref<1xf64>
          %c0_24 = arith.constant 0 : index
          %34 = memref.load %arg2[%c0_24] : memref<?xf64>
          %35 = arith.mulf %33, %34 : f64
          %36 = arith.addf %32, %35 : f64
          %c-1_25 = arith.constant -1 : index
          %37 = arith.addi %arg4, %c-1_25 : index
          memref.store %36, %alloca_2[%37] : memref<40xf64>
          %c0_26 = arith.constant 0 : index
          %38 = memref.load %alloca_2[%c0_26] : memref<40xf64>
          %c0_27 = arith.constant 0 : index
          memref.store %38, %arg2[%c0_27] : memref<?xf64>
        }
        %c38 = arith.constant 38 : index
        %28 = arith.addi %arg4, %c38 : index
        %c2 = arith.constant 2 : index
        %29 = arith.muli %arg4, %c2 : index
        %c37_20 = arith.constant 37 : index
        %30 = arith.addi %29, %c37_20 : index
        %c1_21 = arith.constant 1 : index
        scf.for %arg5 = %28 to %30 step %c1_21 {
          %c-1_22 = arith.constant -1 : index
          %31 = arith.muli %arg4, %c-1_22 : index
          %32 = arith.addi %31, %arg5 : index
          %c-37 = arith.constant -37 : index
          %33 = arith.addi %32, %c-37 : index
          %34 = memref.load %alloca_2[%33] : memref<40xf64>
          %c-1_23 = arith.constant -1 : index
          %35 = arith.muli %arg4, %c-1_23 : index
          %36 = arith.addi %35, %arg5 : index
          %c-37_24 = arith.constant -37 : index
          %37 = arith.addi %36, %c-37_24 : index
          memref.store %34, %arg2[%37] : memref<?xf64>
        }
      }
    }
    return
  }
}

