module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant -2.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant 1.000000e+00 : f32
    %0 = llvm.mlir.undef : f32
    %alloca = memref.alloca() : memref<f32>
    memref.store %0, %alloca[] : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_3[] : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_4[] : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_5[] : memref<f32>
    %alloca_6 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_6[] : memref<f32>
    %alloca_7 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_7[] : memref<f32>
    %alloca_8 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_8[] : memref<f32>
    %alloca_9 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_9[] : memref<f32>
    %alloca_10 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_10[] : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_11[] : memref<f32>
    %1 = arith.negf %arg2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.subf %cst_2, %2 : f32
    %4 = arith.mulf %3, %3 : f32
    %5 = arith.mulf %arg2, %2 : f32
    %6 = arith.mulf %5, %cst_1 : f32
    %7 = arith.addf %6, %cst_2 : f32
    %8 = arith.mulf %arg2, %cst_1 : f32
    %9 = math.exp %8 : f32
    %10 = arith.subf %7, %9 : f32
    %11 = arith.divf %4, %10 : f32
    %12 = arith.mulf %11, %2 : f32
    %13 = arith.subf %arg2, %cst_2 : f32
    %14 = arith.mulf %12, %13 : f32
    %15 = arith.addf %arg2, %cst_2 : f32
    %16 = arith.mulf %12, %15 : f32
    %17 = arith.negf %11 : f32
    %18 = arith.mulf %arg2, %cst_0 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    %21 = math.powf %cst_1, %1 : f32
    %22 = arith.negf %19 : f32
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_9[] : memref<f32>
      memref.store %cst, %alloca_8[] : memref<f32>
      memref.store %cst, %alloca_11[] : memref<f32>
      %c0_21 = arith.constant 0 : index
      %c64_22 = arith.constant 64 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg8 = %c0_21 to %c64_22 step %c1_23 {
        %23 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %24 = arith.mulf %11, %23 : f32
        %25 = memref.load %alloca_11[] : memref<f32>
        %26 = arith.mulf %14, %25 : f32
        %27 = arith.addf %24, %26 : f32
        %28 = memref.load %alloca_9[] : memref<f32>
        %29 = arith.mulf %21, %28 : f32
        %30 = arith.addf %27, %29 : f32
        %31 = memref.load %alloca_8[] : memref<f32>
        %32 = arith.mulf %22, %31 : f32
        %33 = arith.addf %30, %32 : f32
        memref.store %33, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %34 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        memref.store %34, %alloca_11[] : memref<f32>
        memref.store %28, %alloca_8[] : memref<f32>
        %35 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        memref.store %35, %alloca_9[] : memref<f32>
      }
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_7[] : memref<f32>
      memref.store %cst, %alloca_6[] : memref<f32>
      %c0_24 = arith.constant 0 : index
      %c64_25 = arith.constant 64 : index
      %c1_26 = arith.constant 1 : index
      scf.for %arg8 = %c0_24 to %c64_25 step %c1_26 {
        %23 = memref.load %alloca_7[] : memref<f32>
        %24 = arith.mulf %16, %23 : f32
        %25 = memref.load %alloca_6[] : memref<f32>
        %26 = arith.mulf %20, %25 : f32
        %27 = arith.addf %24, %26 : f32
        %28 = memref.load %alloca_3[] : memref<f32>
        %29 = arith.mulf %21, %28 : f32
        %30 = arith.addf %27, %29 : f32
        %31 = memref.load %alloca[] : memref<f32>
        %32 = arith.mulf %22, %31 : f32
        %33 = arith.addf %30, %32 : f32
        %c-1 = arith.constant -1 : index
        %34 = arith.muli %arg8, %c-1 overflow<nsw> : index
        %c63 = arith.constant 63 : index
        %35 = arith.addi %34, %c63 : index
        memref.store %33, %arg6[%arg7, %35] : memref<?x64xf32>
        memref.store %23, %alloca_6[] : memref<f32>
        %c-1_30 = arith.constant -1 : index
        %36 = arith.muli %arg8, %c-1_30 overflow<nsw> : index
        %c63_31 = arith.constant 63 : index
        %37 = arith.addi %36, %c63_31 : index
        %38 = memref.load %arg3[%arg7, %37] : memref<?x64xf32>
        memref.store %38, %alloca_7[] : memref<f32>
        memref.store %28, %alloca[] : memref<f32>
        %c-1_32 = arith.constant -1 : index
        %39 = arith.muli %arg8, %c-1_32 overflow<nsw> : index
        %c63_33 = arith.constant 63 : index
        %40 = arith.addi %39, %c63_33 : index
        %41 = memref.load %arg6[%arg7, %40] : memref<?x64xf32>
        memref.store %41, %alloca_3[] : memref<f32>
      }
      %c0_27 = arith.constant 0 : index
      %c64_28 = arith.constant 64 : index
      %c1_29 = arith.constant 1 : index
      scf.for %arg8 = %c0_27 to %c64_28 step %c1_29 {
        %23 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        %24 = memref.load %arg6[%arg7, %arg8] : memref<?x64xf32>
        %25 = arith.addf %23, %24 : f32
        memref.store %25, %arg4[%arg7, %arg8] : memref<?x64xf32>
      }
    }
    %c0_12 = arith.constant 0 : index
    %c64_13 = arith.constant 64 : index
    %c1_14 = arith.constant 1 : index
    scf.for %arg7 = %c0_12 to %c64_13 step %c1_14 {
      memref.store %cst, %alloca_5[] : memref<f32>
      memref.store %cst, %alloca_4[] : memref<f32>
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      %c0_21 = arith.constant 0 : index
      %c64_22 = arith.constant 64 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg8 = %c0_21 to %c64_22 step %c1_23 {
        %c-1 = arith.constant -1 : index
        %23 = arith.muli %arg8, %c-1 overflow<nsw> : index
        %c63 = arith.constant 63 : index
        %24 = arith.addi %23, %c63 : index
        %25 = memref.load %arg5[%24, %arg7] : memref<?x64xf32>
        %26 = memref.load %arg6[%24, %arg7] : memref<?x64xf32>
        %27 = arith.addf %25, %26 : f32
        memref.store %27, %arg4[%24, %arg7] : memref<?x64xf32>
        %28 = memref.load %alloca_5[] : memref<f32>
        %29 = arith.mulf %16, %28 : f32
        %30 = memref.load %alloca_4[] : memref<f32>
        %31 = arith.mulf %20, %30 : f32
        %32 = arith.addf %29, %31 : f32
        %33 = memref.load %alloca_3[] : memref<f32>
        %34 = arith.mulf %21, %33 : f32
        %35 = arith.addf %32, %34 : f32
        %36 = memref.load %alloca[] : memref<f32>
        %37 = arith.mulf %22, %36 : f32
        %38 = arith.addf %35, %37 : f32
        %c-1_24 = arith.constant -1 : index
        %39 = arith.muli %arg8, %c-1_24 overflow<nsw> : index
        %c63_25 = arith.constant 63 : index
        %40 = arith.addi %39, %c63_25 : index
        memref.store %38, %arg6[%40, %arg7] : memref<?x64xf32>
        memref.store %28, %alloca_4[] : memref<f32>
        %c-1_26 = arith.constant -1 : index
        %41 = arith.muli %arg8, %c-1_26 overflow<nsw> : index
        %c63_27 = arith.constant 63 : index
        %42 = arith.addi %41, %c63_27 : index
        %43 = memref.load %arg4[%42, %arg7] : memref<?x64xf32>
        memref.store %43, %alloca_5[] : memref<f32>
        memref.store %33, %alloca[] : memref<f32>
        %c-1_28 = arith.constant -1 : index
        %44 = arith.muli %arg8, %c-1_28 overflow<nsw> : index
        %c63_29 = arith.constant 63 : index
        %45 = arith.addi %44, %c63_29 : index
        %46 = memref.load %arg6[%45, %arg7] : memref<?x64xf32>
        memref.store %46, %alloca_3[] : memref<f32>
      }
    }
    %c0_15 = arith.constant 0 : index
    %c64_16 = arith.constant 64 : index
    %c1_17 = arith.constant 1 : index
    scf.for %arg7 = %c0_15 to %c64_16 step %c1_17 {
      memref.store %cst, %alloca_10[] : memref<f32>
      memref.store %cst, %alloca_9[] : memref<f32>
      memref.store %cst, %alloca_8[] : memref<f32>
      %c0_21 = arith.constant 0 : index
      %c64_22 = arith.constant 64 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg8 = %c0_21 to %c64_22 step %c1_23 {
        %23 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %24 = arith.mulf %11, %23 : f32
        %25 = memref.load %alloca_10[] : memref<f32>
        %26 = arith.mulf %14, %25 : f32
        %27 = arith.addf %24, %26 : f32
        %28 = memref.load %alloca_9[] : memref<f32>
        %29 = arith.mulf %21, %28 : f32
        %30 = arith.addf %27, %29 : f32
        %31 = memref.load %alloca_8[] : memref<f32>
        %32 = arith.mulf %22, %31 : f32
        %33 = arith.addf %30, %32 : f32
        memref.store %33, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %34 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        memref.store %34, %alloca_10[] : memref<f32>
        memref.store %28, %alloca_8[] : memref<f32>
        %35 = memref.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        memref.store %35, %alloca_9[] : memref<f32>
      }
    }
    %c0_18 = arith.constant 0 : index
    %c64_19 = arith.constant 64 : index
    %c1_20 = arith.constant 1 : index
    scf.for %arg7 = %c0_18 to %c64_19 step %c1_20 {
      %c0_21 = arith.constant 0 : index
      %c64_22 = arith.constant 64 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg8 = %c0_21 to %c64_22 step %c1_23 {
        %23 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        %24 = memref.load %arg6[%arg7, %arg8] : memref<?x64xf32>
        %25 = arith.addf %23, %24 : f32
        memref.store %25, %arg4[%arg7, %arg8] : memref<?x64xf32>
      }
    }
    return
  }
}

