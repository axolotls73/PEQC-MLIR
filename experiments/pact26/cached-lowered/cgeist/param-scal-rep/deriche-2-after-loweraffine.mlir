module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 1.000000e+00 : f32
    %cst_0 = arith.constant 2.000000e+00 : f32
    %cst_1 = arith.constant -2.000000e+00 : f32
    %cst_2 = arith.constant 0.000000e+00 : f32
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %2 = llvm.mlir.undef : f32
    %alloca = memref.alloca() : memref<f32>
    memref.store %2, %alloca[] : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    memref.store %2, %alloca_3[] : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    memref.store %2, %alloca_4[] : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    memref.store %2, %alloca_5[] : memref<f32>
    %alloca_6 = memref.alloca() : memref<f32>
    memref.store %2, %alloca_6[] : memref<f32>
    %alloca_7 = memref.alloca() : memref<f32>
    memref.store %2, %alloca_7[] : memref<f32>
    %alloca_8 = memref.alloca() : memref<f32>
    memref.store %2, %alloca_8[] : memref<f32>
    %alloca_9 = memref.alloca() : memref<f32>
    memref.store %2, %alloca_9[] : memref<f32>
    %alloca_10 = memref.alloca() : memref<f32>
    memref.store %2, %alloca_10[] : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
    memref.store %2, %alloca_11[] : memref<f32>
    %3 = arith.negf %arg2 : f32
    %4 = math.exp %3 : f32
    %5 = arith.subf %cst, %4 : f32
    %6 = arith.mulf %5, %5 : f32
    %7 = arith.mulf %arg2, %4 : f32
    %8 = arith.mulf %7, %cst_0 : f32
    %9 = arith.addf %8, %cst : f32
    %10 = arith.mulf %arg2, %cst_0 : f32
    %11 = math.exp %10 : f32
    %12 = arith.subf %9, %11 : f32
    %13 = arith.divf %6, %12 : f32
    %14 = arith.mulf %13, %4 : f32
    %15 = arith.subf %arg2, %cst : f32
    %16 = arith.mulf %14, %15 : f32
    %17 = arith.addf %arg2, %cst : f32
    %18 = arith.mulf %14, %17 : f32
    %19 = arith.negf %13 : f32
    %20 = arith.mulf %arg2, %cst_1 : f32
    %21 = math.exp %20 : f32
    %22 = arith.mulf %19, %21 : f32
    %23 = math.powf %cst_0, %3 : f32
    %24 = arith.negf %21 : f32
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %1 step %c1 {
      memref.store %cst_2, %alloca_9[] : memref<f32>
      memref.store %cst_2, %alloca_8[] : memref<f32>
      memref.store %cst_2, %alloca_11[] : memref<f32>
      %c0_22 = arith.constant 0 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg8 = %c0_22 to %0 step %c1_23 {
        %25 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %26 = arith.mulf %13, %25 : f32
        %27 = memref.load %alloca_11[] : memref<f32>
        %28 = arith.mulf %16, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %30 = memref.load %alloca_9[] : memref<f32>
        %31 = arith.mulf %23, %30 : f32
        %32 = arith.addf %29, %31 : f32
        %33 = memref.load %alloca_8[] : memref<f32>
        %34 = arith.mulf %24, %33 : f32
        %35 = arith.addf %32, %34 : f32
        memref.store %35, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %36 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        memref.store %36, %alloca_11[] : memref<f32>
        memref.store %30, %alloca_8[] : memref<f32>
        %37 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        memref.store %37, %alloca_9[] : memref<f32>
      }
    }
    %c0_12 = arith.constant 0 : index
    %c1_13 = arith.constant 1 : index
    scf.for %arg7 = %c0_12 to %1 step %c1_13 {
      memref.store %cst_2, %alloca_3[] : memref<f32>
      memref.store %cst_2, %alloca[] : memref<f32>
      memref.store %cst_2, %alloca_7[] : memref<f32>
      memref.store %cst_2, %alloca_6[] : memref<f32>
      %c0_22 = arith.constant 0 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg8 = %c0_22 to %0 step %c1_23 {
        %25 = memref.load %alloca_7[] : memref<f32>
        %26 = arith.mulf %18, %25 : f32
        %27 = memref.load %alloca_6[] : memref<f32>
        %28 = arith.mulf %22, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %30 = memref.load %alloca_3[] : memref<f32>
        %31 = arith.mulf %23, %30 : f32
        %32 = arith.addf %29, %31 : f32
        %33 = memref.load %alloca[] : memref<f32>
        %34 = arith.mulf %24, %33 : f32
        %35 = arith.addf %32, %34 : f32
        %c-1 = arith.constant -1 : index
        %36 = arith.muli %arg8, %c-1 overflow<nsw> : index
        %37 = arith.addi %36, %0 : index
        %c-1_24 = arith.constant -1 : index
        %38 = arith.addi %37, %c-1_24 : index
        memref.store %35, %arg6[%arg7, %38] : memref<?x64xf32>
        memref.store %25, %alloca_6[] : memref<f32>
        %c-1_25 = arith.constant -1 : index
        %39 = arith.muli %arg8, %c-1_25 overflow<nsw> : index
        %40 = arith.addi %39, %0 : index
        %c-1_26 = arith.constant -1 : index
        %41 = arith.addi %40, %c-1_26 : index
        %42 = memref.load %arg3[%arg7, %41] : memref<?x64xf32>
        memref.store %42, %alloca_7[] : memref<f32>
        memref.store %30, %alloca[] : memref<f32>
        %c-1_27 = arith.constant -1 : index
        %43 = arith.muli %arg8, %c-1_27 overflow<nsw> : index
        %44 = arith.addi %43, %0 : index
        %c-1_28 = arith.constant -1 : index
        %45 = arith.addi %44, %c-1_28 : index
        %46 = memref.load %arg6[%arg7, %45] : memref<?x64xf32>
        memref.store %46, %alloca_3[] : memref<f32>
      }
    }
    %c0_14 = arith.constant 0 : index
    %c1_15 = arith.constant 1 : index
    scf.for %arg7 = %c0_14 to %1 step %c1_15 {
      %c0_22 = arith.constant 0 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg8 = %c0_22 to %0 step %c1_23 {
        %25 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        %26 = memref.load %arg6[%arg7, %arg8] : memref<?x64xf32>
        %27 = arith.addf %25, %26 : f32
        memref.store %27, %arg4[%arg7, %arg8] : memref<?x64xf32>
      }
    }
    %c0_16 = arith.constant 0 : index
    %c1_17 = arith.constant 1 : index
    scf.for %arg7 = %c0_16 to %0 step %c1_17 {
      memref.store %cst_2, %alloca_10[] : memref<f32>
      memref.store %cst_2, %alloca_9[] : memref<f32>
      memref.store %cst_2, %alloca_8[] : memref<f32>
      %c0_22 = arith.constant 0 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg8 = %c0_22 to %1 step %c1_23 {
        %25 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %26 = arith.mulf %13, %25 : f32
        %27 = memref.load %alloca_10[] : memref<f32>
        %28 = arith.mulf %16, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %30 = memref.load %alloca_9[] : memref<f32>
        %31 = arith.mulf %23, %30 : f32
        %32 = arith.addf %29, %31 : f32
        %33 = memref.load %alloca_8[] : memref<f32>
        %34 = arith.mulf %24, %33 : f32
        %35 = arith.addf %32, %34 : f32
        memref.store %35, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %36 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        memref.store %36, %alloca_10[] : memref<f32>
        memref.store %30, %alloca_8[] : memref<f32>
        %37 = memref.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        memref.store %37, %alloca_9[] : memref<f32>
      }
    }
    %c0_18 = arith.constant 0 : index
    %c1_19 = arith.constant 1 : index
    scf.for %arg7 = %c0_18 to %0 step %c1_19 {
      memref.store %cst_2, %alloca_5[] : memref<f32>
      memref.store %cst_2, %alloca_4[] : memref<f32>
      memref.store %cst_2, %alloca_3[] : memref<f32>
      memref.store %cst_2, %alloca[] : memref<f32>
      %c0_22 = arith.constant 0 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg8 = %c0_22 to %1 step %c1_23 {
        %25 = memref.load %alloca_5[] : memref<f32>
        %26 = arith.mulf %18, %25 : f32
        %27 = memref.load %alloca_4[] : memref<f32>
        %28 = arith.mulf %22, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %30 = memref.load %alloca_3[] : memref<f32>
        %31 = arith.mulf %23, %30 : f32
        %32 = arith.addf %29, %31 : f32
        %33 = memref.load %alloca[] : memref<f32>
        %34 = arith.mulf %24, %33 : f32
        %35 = arith.addf %32, %34 : f32
        %c-1 = arith.constant -1 : index
        %36 = arith.muli %arg8, %c-1 overflow<nsw> : index
        %37 = arith.addi %36, %1 : index
        %c-1_24 = arith.constant -1 : index
        %38 = arith.addi %37, %c-1_24 : index
        memref.store %35, %arg6[%38, %arg7] : memref<?x64xf32>
        memref.store %25, %alloca_4[] : memref<f32>
        %c-1_25 = arith.constant -1 : index
        %39 = arith.muli %arg8, %c-1_25 overflow<nsw> : index
        %40 = arith.addi %39, %1 : index
        %c-1_26 = arith.constant -1 : index
        %41 = arith.addi %40, %c-1_26 : index
        %42 = memref.load %arg4[%41, %arg7] : memref<?x64xf32>
        memref.store %42, %alloca_5[] : memref<f32>
        memref.store %30, %alloca[] : memref<f32>
        %c-1_27 = arith.constant -1 : index
        %43 = arith.muli %arg8, %c-1_27 overflow<nsw> : index
        %44 = arith.addi %43, %1 : index
        %c-1_28 = arith.constant -1 : index
        %45 = arith.addi %44, %c-1_28 : index
        %46 = memref.load %arg6[%45, %arg7] : memref<?x64xf32>
        memref.store %46, %alloca_3[] : memref<f32>
      }
    }
    %c0_20 = arith.constant 0 : index
    %c1_21 = arith.constant 1 : index
    scf.for %arg7 = %c0_20 to %1 step %c1_21 {
      %c0_22 = arith.constant 0 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg8 = %c0_22 to %0 step %c1_23 {
        %25 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        %26 = memref.load %arg6[%arg7, %arg8] : memref<?x64xf32>
        %27 = arith.addf %25, %26 : f32
        memref.store %27, %arg4[%arg7, %arg8] : memref<?x64xf32>
      }
    }
    return
  }
}

