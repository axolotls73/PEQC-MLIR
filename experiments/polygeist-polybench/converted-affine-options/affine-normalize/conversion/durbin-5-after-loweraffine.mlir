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
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0_8 to %c39 step %c1 {
      %c1_9 = arith.constant 1 : index
      %5 = arith.addi %arg3, %c1_9 : index
      memref.store %cst, %alloca_1[] : memref<f64>
      %6 = memref.load %alloca_1[] : memref<f64>
      %c-1 = arith.constant -1 : index
      %7 = arith.addi %5, %c-1 : index
      %8 = memref.load %arg1[%7] : memref<?xf64>
      %c0_10 = arith.constant 0 : index
      %9 = memref.load %arg2[%c0_10] : memref<?xf64>
      %10 = arith.mulf %8, %9 : f64
      %11 = arith.addf %6, %10 : f64
      memref.store %11, %alloca_1[] : memref<f64>
      %12 = memref.load %alloca_3[] : memref<f64>
      %13 = memref.load %alloca_4[] : memref<f64>
      %14 = arith.mulf %13, %13 : f64
      %15 = arith.subf %12, %14 : f64
      %16 = memref.load %alloca_3[] : memref<f64>
      %17 = arith.mulf %15, %16 : f64
      memref.store %17, %alloca_3[] : memref<f64>
      %c0_11 = arith.constant 0 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg4 = %c0_11 to %arg3 step %c1_12 {
        %c1_23 = arith.constant 1 : index
        %24 = arith.addi %arg4, %c1_23 : index
        %25 = memref.load %alloca_1[] : memref<f64>
        %c-1_24 = arith.constant -1 : index
        %26 = arith.muli %24, %c-1_24 : index
        %27 = arith.addi %5, %26 : index
        %c-1_25 = arith.constant -1 : index
        %28 = arith.addi %27, %c-1_25 : index
        %29 = memref.load %arg1[%28] : memref<?xf64>
        %30 = memref.load %arg2[%24] : memref<?xf64>
        %31 = arith.mulf %29, %30 : f64
        %32 = arith.addf %25, %31 : f64
        memref.store %32, %alloca_1[] : memref<f64>
      }
      %c0_13 = arith.constant 0 : index
      %18 = arith.cmpi eq, %arg3, %c0_13 : index
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
      %c0_14 = arith.constant 0 : index
      %c-1_15 = arith.constant -1 : index
      %19 = arith.addi %arg3, %c-1_15 : index
      %20 = arith.cmpi sge, %19, %c0_14 : index
      scf.if %20 {
        %24 = memref.load %arg1[%5] : memref<?xf64>
        %25 = memref.load %alloca_1[] : memref<f64>
        %26 = arith.addf %24, %25 : f64
        %27 = arith.negf %26 : f64
        %28 = memref.load %alloca_3[] : memref<f64>
        %29 = arith.divf %27, %28 : f64
        %c0_23 = arith.constant 0 : index
        memref.store %29, %alloca[%c0_23] : memref<1xf64>
        %c0_24 = arith.constant 0 : index
        %30 = memref.load %arg2[%c0_24] : memref<?xf64>
        %c0_25 = arith.constant 0 : index
        %31 = memref.load %alloca[%c0_25] : memref<1xf64>
        %c-1_26 = arith.constant -1 : index
        %32 = arith.addi %5, %c-1_26 : index
        %33 = memref.load %arg2[%32] : memref<?xf64>
        %34 = arith.mulf %31, %33 : f64
        %35 = arith.addf %30, %34 : f64
        %c0_27 = arith.constant 0 : index
        memref.store %35, %alloca_2[%c0_27] : memref<40xf64>
        %c0_28 = arith.constant 0 : index
        %36 = memref.load %alloca[%c0_28] : memref<1xf64>
        %c0_29 = arith.constant 0 : index
        memref.store %36, %alloca_5[%c0_29] : memref<1xf64>
        memref.store %36, %alloca_4[] : memref<f64>
        %c0_30 = arith.constant 0 : index
        %37 = memref.load %alloca_5[%c0_30] : memref<1xf64>
        memref.store %37, %arg2[%5] : memref<?xf64>
      }
      %c0_16 = arith.constant 0 : index
      %c-1_17 = arith.constant -1 : index
      %21 = arith.addi %arg3, %c-1_17 : index
      %c1_18 = arith.constant 1 : index
      scf.for %arg4 = %c0_16 to %21 step %c1_18 {
        %c39_23 = arith.constant 39 : index
        %24 = arith.addi %arg4, %c39_23 : index
        %c-38 = arith.constant -38 : index
        %25 = arith.addi %24, %c-38 : index
        %26 = memref.load %arg2[%25] : memref<?xf64>
        %c0_24 = arith.constant 0 : index
        %27 = memref.load %alloca[%c0_24] : memref<1xf64>
        %c-1_25 = arith.constant -1 : index
        %28 = arith.muli %24, %c-1_25 : index
        %29 = arith.addi %28, %5 : index
        %c37 = arith.constant 37 : index
        %30 = arith.addi %29, %c37 : index
        %31 = memref.load %arg2[%30] : memref<?xf64>
        %32 = arith.mulf %27, %31 : f64
        %33 = arith.addf %26, %32 : f64
        %c-38_26 = arith.constant -38 : index
        %34 = arith.addi %24, %c-38_26 : index
        memref.store %33, %alloca_2[%34] : memref<40xf64>
      }
      %c0_19 = arith.constant 0 : index
      %c-1_20 = arith.constant -1 : index
      %22 = arith.addi %arg3, %c-1_20 : index
      %23 = arith.cmpi sge, %22, %c0_19 : index
      scf.if %23 {
        %c-1_23 = arith.constant -1 : index
        %24 = arith.addi %5, %c-1_23 : index
        %25 = memref.load %arg2[%24] : memref<?xf64>
        %c0_24 = arith.constant 0 : index
        %26 = memref.load %alloca[%c0_24] : memref<1xf64>
        %c0_25 = arith.constant 0 : index
        %27 = memref.load %arg2[%c0_25] : memref<?xf64>
        %28 = arith.mulf %26, %27 : f64
        %29 = arith.addf %25, %28 : f64
        %c-1_26 = arith.constant -1 : index
        %30 = arith.addi %5, %c-1_26 : index
        memref.store %29, %alloca_2[%30] : memref<40xf64>
        %c0_27 = arith.constant 0 : index
        %31 = memref.load %alloca_2[%c0_27] : memref<40xf64>
        %c0_28 = arith.constant 0 : index
        memref.store %31, %arg2[%c0_28] : memref<?xf64>
      }
      %c0_21 = arith.constant 0 : index
      %c1_22 = arith.constant 1 : index
      scf.for %arg4 = %c0_21 to %arg3 step %c1_22 {
        %24 = arith.addi %5, %arg4 : index
        %c38 = arith.constant 38 : index
        %25 = arith.addi %24, %c38 : index
        %c-1_23 = arith.constant -1 : index
        %26 = arith.muli %5, %c-1_23 : index
        %27 = arith.addi %26, %25 : index
        %c-37 = arith.constant -37 : index
        %28 = arith.addi %27, %c-37 : index
        %29 = memref.load %alloca_2[%28] : memref<40xf64>
        %c-1_24 = arith.constant -1 : index
        %30 = arith.muli %5, %c-1_24 : index
        %31 = arith.addi %30, %25 : index
        %c-37_25 = arith.constant -37 : index
        %32 = arith.addi %31, %c-37_25 : index
        memref.store %29, %arg2[%32] : memref<?xf64>
      }
    }
    return
  }
}

