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
      %c0_27 = arith.constant 0 : index
      %c64_28 = arith.constant 64 : index
      %c4 = arith.constant 4 : index
      scf.for %arg8 = %c0_27 to %c64_28 step %c4 {
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
        %c1_29 = arith.constant 1 : index
        %36 = arith.addi %arg8, %c1_29 : index
        %37 = memref.load %arg3[%arg7, %36] : memref<?x64xf32>
        %38 = arith.mulf %11, %37 : f32
        %39 = memref.load %alloca_11[] : memref<f32>
        %40 = arith.mulf %14, %39 : f32
        %41 = arith.addf %38, %40 : f32
        %42 = memref.load %alloca_9[] : memref<f32>
        %43 = arith.mulf %21, %42 : f32
        %44 = arith.addf %41, %43 : f32
        %45 = memref.load %alloca_8[] : memref<f32>
        %46 = arith.mulf %22, %45 : f32
        %47 = arith.addf %44, %46 : f32
        memref.store %47, %arg5[%arg7, %36] : memref<?x64xf32>
        %48 = memref.load %arg3[%arg7, %36] : memref<?x64xf32>
        memref.store %48, %alloca_11[] : memref<f32>
        memref.store %42, %alloca_8[] : memref<f32>
        %49 = memref.load %arg5[%arg7, %36] : memref<?x64xf32>
        memref.store %49, %alloca_9[] : memref<f32>
        %c2 = arith.constant 2 : index
        %50 = arith.addi %arg8, %c2 : index
        %51 = memref.load %arg3[%arg7, %50] : memref<?x64xf32>
        %52 = arith.mulf %11, %51 : f32
        %53 = memref.load %alloca_11[] : memref<f32>
        %54 = arith.mulf %14, %53 : f32
        %55 = arith.addf %52, %54 : f32
        %56 = memref.load %alloca_9[] : memref<f32>
        %57 = arith.mulf %21, %56 : f32
        %58 = arith.addf %55, %57 : f32
        %59 = memref.load %alloca_8[] : memref<f32>
        %60 = arith.mulf %22, %59 : f32
        %61 = arith.addf %58, %60 : f32
        memref.store %61, %arg5[%arg7, %50] : memref<?x64xf32>
        %62 = memref.load %arg3[%arg7, %50] : memref<?x64xf32>
        memref.store %62, %alloca_11[] : memref<f32>
        memref.store %56, %alloca_8[] : memref<f32>
        %63 = memref.load %arg5[%arg7, %50] : memref<?x64xf32>
        memref.store %63, %alloca_9[] : memref<f32>
        %c3 = arith.constant 3 : index
        %64 = arith.addi %arg8, %c3 : index
        %65 = memref.load %arg3[%arg7, %64] : memref<?x64xf32>
        %66 = arith.mulf %11, %65 : f32
        %67 = memref.load %alloca_11[] : memref<f32>
        %68 = arith.mulf %14, %67 : f32
        %69 = arith.addf %66, %68 : f32
        %70 = memref.load %alloca_9[] : memref<f32>
        %71 = arith.mulf %21, %70 : f32
        %72 = arith.addf %69, %71 : f32
        %73 = memref.load %alloca_8[] : memref<f32>
        %74 = arith.mulf %22, %73 : f32
        %75 = arith.addf %72, %74 : f32
        memref.store %75, %arg5[%arg7, %64] : memref<?x64xf32>
        %76 = memref.load %arg3[%arg7, %64] : memref<?x64xf32>
        memref.store %76, %alloca_11[] : memref<f32>
        memref.store %70, %alloca_8[] : memref<f32>
        %77 = memref.load %arg5[%arg7, %64] : memref<?x64xf32>
        memref.store %77, %alloca_9[] : memref<f32>
      }
    }
    %c0_12 = arith.constant 0 : index
    %c64_13 = arith.constant 64 : index
    %c1_14 = arith.constant 1 : index
    scf.for %arg7 = %c0_12 to %c64_13 step %c1_14 {
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_7[] : memref<f32>
      memref.store %cst, %alloca_6[] : memref<f32>
      %c0_27 = arith.constant 0 : index
      %c64_28 = arith.constant 64 : index
      %c4 = arith.constant 4 : index
      scf.for %arg8 = %c0_27 to %c64_28 step %c4 {
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
        %34 = arith.muli %arg8, %c-1 : index
        %c63 = arith.constant 63 : index
        %35 = arith.addi %34, %c63 : index
        memref.store %33, %arg6[%arg7, %35] : memref<?x64xf32>
        memref.store %23, %alloca_6[] : memref<f32>
        %c-1_29 = arith.constant -1 : index
        %36 = arith.muli %arg8, %c-1_29 : index
        %c63_30 = arith.constant 63 : index
        %37 = arith.addi %36, %c63_30 : index
        %38 = memref.load %arg3[%arg7, %37] : memref<?x64xf32>
        memref.store %38, %alloca_7[] : memref<f32>
        memref.store %28, %alloca[] : memref<f32>
        %c-1_31 = arith.constant -1 : index
        %39 = arith.muli %arg8, %c-1_31 : index
        %c63_32 = arith.constant 63 : index
        %40 = arith.addi %39, %c63_32 : index
        %41 = memref.load %arg6[%arg7, %40] : memref<?x64xf32>
        memref.store %41, %alloca_3[] : memref<f32>
        %c1_33 = arith.constant 1 : index
        %42 = arith.addi %arg8, %c1_33 : index
        %43 = memref.load %alloca_7[] : memref<f32>
        %44 = arith.mulf %16, %43 : f32
        %45 = memref.load %alloca_6[] : memref<f32>
        %46 = arith.mulf %20, %45 : f32
        %47 = arith.addf %44, %46 : f32
        %48 = memref.load %alloca_3[] : memref<f32>
        %49 = arith.mulf %21, %48 : f32
        %50 = arith.addf %47, %49 : f32
        %51 = memref.load %alloca[] : memref<f32>
        %52 = arith.mulf %22, %51 : f32
        %53 = arith.addf %50, %52 : f32
        %c-1_34 = arith.constant -1 : index
        %54 = arith.muli %42, %c-1_34 : index
        %c63_35 = arith.constant 63 : index
        %55 = arith.addi %54, %c63_35 : index
        memref.store %53, %arg6[%arg7, %55] : memref<?x64xf32>
        memref.store %43, %alloca_6[] : memref<f32>
        %c-1_36 = arith.constant -1 : index
        %56 = arith.muli %42, %c-1_36 : index
        %c63_37 = arith.constant 63 : index
        %57 = arith.addi %56, %c63_37 : index
        %58 = memref.load %arg3[%arg7, %57] : memref<?x64xf32>
        memref.store %58, %alloca_7[] : memref<f32>
        memref.store %48, %alloca[] : memref<f32>
        %c-1_38 = arith.constant -1 : index
        %59 = arith.muli %42, %c-1_38 : index
        %c63_39 = arith.constant 63 : index
        %60 = arith.addi %59, %c63_39 : index
        %61 = memref.load %arg6[%arg7, %60] : memref<?x64xf32>
        memref.store %61, %alloca_3[] : memref<f32>
        %c2 = arith.constant 2 : index
        %62 = arith.addi %arg8, %c2 : index
        %63 = memref.load %alloca_7[] : memref<f32>
        %64 = arith.mulf %16, %63 : f32
        %65 = memref.load %alloca_6[] : memref<f32>
        %66 = arith.mulf %20, %65 : f32
        %67 = arith.addf %64, %66 : f32
        %68 = memref.load %alloca_3[] : memref<f32>
        %69 = arith.mulf %21, %68 : f32
        %70 = arith.addf %67, %69 : f32
        %71 = memref.load %alloca[] : memref<f32>
        %72 = arith.mulf %22, %71 : f32
        %73 = arith.addf %70, %72 : f32
        %c-1_40 = arith.constant -1 : index
        %74 = arith.muli %62, %c-1_40 : index
        %c63_41 = arith.constant 63 : index
        %75 = arith.addi %74, %c63_41 : index
        memref.store %73, %arg6[%arg7, %75] : memref<?x64xf32>
        memref.store %63, %alloca_6[] : memref<f32>
        %c-1_42 = arith.constant -1 : index
        %76 = arith.muli %62, %c-1_42 : index
        %c63_43 = arith.constant 63 : index
        %77 = arith.addi %76, %c63_43 : index
        %78 = memref.load %arg3[%arg7, %77] : memref<?x64xf32>
        memref.store %78, %alloca_7[] : memref<f32>
        memref.store %68, %alloca[] : memref<f32>
        %c-1_44 = arith.constant -1 : index
        %79 = arith.muli %62, %c-1_44 : index
        %c63_45 = arith.constant 63 : index
        %80 = arith.addi %79, %c63_45 : index
        %81 = memref.load %arg6[%arg7, %80] : memref<?x64xf32>
        memref.store %81, %alloca_3[] : memref<f32>
        %c3 = arith.constant 3 : index
        %82 = arith.addi %arg8, %c3 : index
        %83 = memref.load %alloca_7[] : memref<f32>
        %84 = arith.mulf %16, %83 : f32
        %85 = memref.load %alloca_6[] : memref<f32>
        %86 = arith.mulf %20, %85 : f32
        %87 = arith.addf %84, %86 : f32
        %88 = memref.load %alloca_3[] : memref<f32>
        %89 = arith.mulf %21, %88 : f32
        %90 = arith.addf %87, %89 : f32
        %91 = memref.load %alloca[] : memref<f32>
        %92 = arith.mulf %22, %91 : f32
        %93 = arith.addf %90, %92 : f32
        %c-1_46 = arith.constant -1 : index
        %94 = arith.muli %82, %c-1_46 : index
        %c63_47 = arith.constant 63 : index
        %95 = arith.addi %94, %c63_47 : index
        memref.store %93, %arg6[%arg7, %95] : memref<?x64xf32>
        memref.store %83, %alloca_6[] : memref<f32>
        %c-1_48 = arith.constant -1 : index
        %96 = arith.muli %82, %c-1_48 : index
        %c63_49 = arith.constant 63 : index
        %97 = arith.addi %96, %c63_49 : index
        %98 = memref.load %arg3[%arg7, %97] : memref<?x64xf32>
        memref.store %98, %alloca_7[] : memref<f32>
        memref.store %88, %alloca[] : memref<f32>
        %c-1_50 = arith.constant -1 : index
        %99 = arith.muli %82, %c-1_50 : index
        %c63_51 = arith.constant 63 : index
        %100 = arith.addi %99, %c63_51 : index
        %101 = memref.load %arg6[%arg7, %100] : memref<?x64xf32>
        memref.store %101, %alloca_3[] : memref<f32>
      }
    }
    %c0_15 = arith.constant 0 : index
    %c64_16 = arith.constant 64 : index
    %c1_17 = arith.constant 1 : index
    scf.for %arg7 = %c0_15 to %c64_16 step %c1_17 {
      %c0_27 = arith.constant 0 : index
      %c64_28 = arith.constant 64 : index
      %c4 = arith.constant 4 : index
      scf.for %arg8 = %c0_27 to %c64_28 step %c4 {
        %23 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        %24 = memref.load %arg6[%arg7, %arg8] : memref<?x64xf32>
        %25 = arith.addf %23, %24 : f32
        memref.store %25, %arg4[%arg7, %arg8] : memref<?x64xf32>
        %c1_29 = arith.constant 1 : index
        %26 = arith.addi %arg8, %c1_29 : index
        %27 = memref.load %arg5[%arg7, %26] : memref<?x64xf32>
        %28 = memref.load %arg6[%arg7, %26] : memref<?x64xf32>
        %29 = arith.addf %27, %28 : f32
        memref.store %29, %arg4[%arg7, %26] : memref<?x64xf32>
        %c2 = arith.constant 2 : index
        %30 = arith.addi %arg8, %c2 : index
        %31 = memref.load %arg5[%arg7, %30] : memref<?x64xf32>
        %32 = memref.load %arg6[%arg7, %30] : memref<?x64xf32>
        %33 = arith.addf %31, %32 : f32
        memref.store %33, %arg4[%arg7, %30] : memref<?x64xf32>
        %c3 = arith.constant 3 : index
        %34 = arith.addi %arg8, %c3 : index
        %35 = memref.load %arg5[%arg7, %34] : memref<?x64xf32>
        %36 = memref.load %arg6[%arg7, %34] : memref<?x64xf32>
        %37 = arith.addf %35, %36 : f32
        memref.store %37, %arg4[%arg7, %34] : memref<?x64xf32>
      }
    }
    %c0_18 = arith.constant 0 : index
    %c64_19 = arith.constant 64 : index
    %c1_20 = arith.constant 1 : index
    scf.for %arg7 = %c0_18 to %c64_19 step %c1_20 {
      memref.store %cst, %alloca_10[] : memref<f32>
      memref.store %cst, %alloca_9[] : memref<f32>
      memref.store %cst, %alloca_8[] : memref<f32>
      %c0_27 = arith.constant 0 : index
      %c64_28 = arith.constant 64 : index
      %c4 = arith.constant 4 : index
      scf.for %arg8 = %c0_27 to %c64_28 step %c4 {
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
        %c1_29 = arith.constant 1 : index
        %36 = arith.addi %arg8, %c1_29 : index
        %37 = memref.load %arg4[%36, %arg7] : memref<?x64xf32>
        %38 = arith.mulf %11, %37 : f32
        %39 = memref.load %alloca_10[] : memref<f32>
        %40 = arith.mulf %14, %39 : f32
        %41 = arith.addf %38, %40 : f32
        %42 = memref.load %alloca_9[] : memref<f32>
        %43 = arith.mulf %21, %42 : f32
        %44 = arith.addf %41, %43 : f32
        %45 = memref.load %alloca_8[] : memref<f32>
        %46 = arith.mulf %22, %45 : f32
        %47 = arith.addf %44, %46 : f32
        memref.store %47, %arg5[%36, %arg7] : memref<?x64xf32>
        %48 = memref.load %arg4[%36, %arg7] : memref<?x64xf32>
        memref.store %48, %alloca_10[] : memref<f32>
        memref.store %42, %alloca_8[] : memref<f32>
        %49 = memref.load %arg5[%36, %arg7] : memref<?x64xf32>
        memref.store %49, %alloca_9[] : memref<f32>
        %c2 = arith.constant 2 : index
        %50 = arith.addi %arg8, %c2 : index
        %51 = memref.load %arg4[%50, %arg7] : memref<?x64xf32>
        %52 = arith.mulf %11, %51 : f32
        %53 = memref.load %alloca_10[] : memref<f32>
        %54 = arith.mulf %14, %53 : f32
        %55 = arith.addf %52, %54 : f32
        %56 = memref.load %alloca_9[] : memref<f32>
        %57 = arith.mulf %21, %56 : f32
        %58 = arith.addf %55, %57 : f32
        %59 = memref.load %alloca_8[] : memref<f32>
        %60 = arith.mulf %22, %59 : f32
        %61 = arith.addf %58, %60 : f32
        memref.store %61, %arg5[%50, %arg7] : memref<?x64xf32>
        %62 = memref.load %arg4[%50, %arg7] : memref<?x64xf32>
        memref.store %62, %alloca_10[] : memref<f32>
        memref.store %56, %alloca_8[] : memref<f32>
        %63 = memref.load %arg5[%50, %arg7] : memref<?x64xf32>
        memref.store %63, %alloca_9[] : memref<f32>
        %c3 = arith.constant 3 : index
        %64 = arith.addi %arg8, %c3 : index
        %65 = memref.load %arg4[%64, %arg7] : memref<?x64xf32>
        %66 = arith.mulf %11, %65 : f32
        %67 = memref.load %alloca_10[] : memref<f32>
        %68 = arith.mulf %14, %67 : f32
        %69 = arith.addf %66, %68 : f32
        %70 = memref.load %alloca_9[] : memref<f32>
        %71 = arith.mulf %21, %70 : f32
        %72 = arith.addf %69, %71 : f32
        %73 = memref.load %alloca_8[] : memref<f32>
        %74 = arith.mulf %22, %73 : f32
        %75 = arith.addf %72, %74 : f32
        memref.store %75, %arg5[%64, %arg7] : memref<?x64xf32>
        %76 = memref.load %arg4[%64, %arg7] : memref<?x64xf32>
        memref.store %76, %alloca_10[] : memref<f32>
        memref.store %70, %alloca_8[] : memref<f32>
        %77 = memref.load %arg5[%64, %arg7] : memref<?x64xf32>
        memref.store %77, %alloca_9[] : memref<f32>
      }
    }
    %c0_21 = arith.constant 0 : index
    %c64_22 = arith.constant 64 : index
    %c1_23 = arith.constant 1 : index
    scf.for %arg7 = %c0_21 to %c64_22 step %c1_23 {
      memref.store %cst, %alloca_5[] : memref<f32>
      memref.store %cst, %alloca_4[] : memref<f32>
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      %c0_27 = arith.constant 0 : index
      %c64_28 = arith.constant 64 : index
      %c4 = arith.constant 4 : index
      scf.for %arg8 = %c0_27 to %c64_28 step %c4 {
        %23 = memref.load %alloca_5[] : memref<f32>
        %24 = arith.mulf %16, %23 : f32
        %25 = memref.load %alloca_4[] : memref<f32>
        %26 = arith.mulf %20, %25 : f32
        %27 = arith.addf %24, %26 : f32
        %28 = memref.load %alloca_3[] : memref<f32>
        %29 = arith.mulf %21, %28 : f32
        %30 = arith.addf %27, %29 : f32
        %31 = memref.load %alloca[] : memref<f32>
        %32 = arith.mulf %22, %31 : f32
        %33 = arith.addf %30, %32 : f32
        %c-1 = arith.constant -1 : index
        %34 = arith.muli %arg8, %c-1 : index
        %c63 = arith.constant 63 : index
        %35 = arith.addi %34, %c63 : index
        memref.store %33, %arg6[%35, %arg7] : memref<?x64xf32>
        memref.store %23, %alloca_4[] : memref<f32>
        %c-1_29 = arith.constant -1 : index
        %36 = arith.muli %arg8, %c-1_29 : index
        %c63_30 = arith.constant 63 : index
        %37 = arith.addi %36, %c63_30 : index
        %38 = memref.load %arg4[%37, %arg7] : memref<?x64xf32>
        memref.store %38, %alloca_5[] : memref<f32>
        memref.store %28, %alloca[] : memref<f32>
        %c-1_31 = arith.constant -1 : index
        %39 = arith.muli %arg8, %c-1_31 : index
        %c63_32 = arith.constant 63 : index
        %40 = arith.addi %39, %c63_32 : index
        %41 = memref.load %arg6[%40, %arg7] : memref<?x64xf32>
        memref.store %41, %alloca_3[] : memref<f32>
        %c1_33 = arith.constant 1 : index
        %42 = arith.addi %arg8, %c1_33 : index
        %43 = memref.load %alloca_5[] : memref<f32>
        %44 = arith.mulf %16, %43 : f32
        %45 = memref.load %alloca_4[] : memref<f32>
        %46 = arith.mulf %20, %45 : f32
        %47 = arith.addf %44, %46 : f32
        %48 = memref.load %alloca_3[] : memref<f32>
        %49 = arith.mulf %21, %48 : f32
        %50 = arith.addf %47, %49 : f32
        %51 = memref.load %alloca[] : memref<f32>
        %52 = arith.mulf %22, %51 : f32
        %53 = arith.addf %50, %52 : f32
        %c-1_34 = arith.constant -1 : index
        %54 = arith.muli %42, %c-1_34 : index
        %c63_35 = arith.constant 63 : index
        %55 = arith.addi %54, %c63_35 : index
        memref.store %53, %arg6[%55, %arg7] : memref<?x64xf32>
        memref.store %43, %alloca_4[] : memref<f32>
        %c-1_36 = arith.constant -1 : index
        %56 = arith.muli %42, %c-1_36 : index
        %c63_37 = arith.constant 63 : index
        %57 = arith.addi %56, %c63_37 : index
        %58 = memref.load %arg4[%57, %arg7] : memref<?x64xf32>
        memref.store %58, %alloca_5[] : memref<f32>
        memref.store %48, %alloca[] : memref<f32>
        %c-1_38 = arith.constant -1 : index
        %59 = arith.muli %42, %c-1_38 : index
        %c63_39 = arith.constant 63 : index
        %60 = arith.addi %59, %c63_39 : index
        %61 = memref.load %arg6[%60, %arg7] : memref<?x64xf32>
        memref.store %61, %alloca_3[] : memref<f32>
        %c2 = arith.constant 2 : index
        %62 = arith.addi %arg8, %c2 : index
        %63 = memref.load %alloca_5[] : memref<f32>
        %64 = arith.mulf %16, %63 : f32
        %65 = memref.load %alloca_4[] : memref<f32>
        %66 = arith.mulf %20, %65 : f32
        %67 = arith.addf %64, %66 : f32
        %68 = memref.load %alloca_3[] : memref<f32>
        %69 = arith.mulf %21, %68 : f32
        %70 = arith.addf %67, %69 : f32
        %71 = memref.load %alloca[] : memref<f32>
        %72 = arith.mulf %22, %71 : f32
        %73 = arith.addf %70, %72 : f32
        %c-1_40 = arith.constant -1 : index
        %74 = arith.muli %62, %c-1_40 : index
        %c63_41 = arith.constant 63 : index
        %75 = arith.addi %74, %c63_41 : index
        memref.store %73, %arg6[%75, %arg7] : memref<?x64xf32>
        memref.store %63, %alloca_4[] : memref<f32>
        %c-1_42 = arith.constant -1 : index
        %76 = arith.muli %62, %c-1_42 : index
        %c63_43 = arith.constant 63 : index
        %77 = arith.addi %76, %c63_43 : index
        %78 = memref.load %arg4[%77, %arg7] : memref<?x64xf32>
        memref.store %78, %alloca_5[] : memref<f32>
        memref.store %68, %alloca[] : memref<f32>
        %c-1_44 = arith.constant -1 : index
        %79 = arith.muli %62, %c-1_44 : index
        %c63_45 = arith.constant 63 : index
        %80 = arith.addi %79, %c63_45 : index
        %81 = memref.load %arg6[%80, %arg7] : memref<?x64xf32>
        memref.store %81, %alloca_3[] : memref<f32>
        %c3 = arith.constant 3 : index
        %82 = arith.addi %arg8, %c3 : index
        %83 = memref.load %alloca_5[] : memref<f32>
        %84 = arith.mulf %16, %83 : f32
        %85 = memref.load %alloca_4[] : memref<f32>
        %86 = arith.mulf %20, %85 : f32
        %87 = arith.addf %84, %86 : f32
        %88 = memref.load %alloca_3[] : memref<f32>
        %89 = arith.mulf %21, %88 : f32
        %90 = arith.addf %87, %89 : f32
        %91 = memref.load %alloca[] : memref<f32>
        %92 = arith.mulf %22, %91 : f32
        %93 = arith.addf %90, %92 : f32
        %c-1_46 = arith.constant -1 : index
        %94 = arith.muli %82, %c-1_46 : index
        %c63_47 = arith.constant 63 : index
        %95 = arith.addi %94, %c63_47 : index
        memref.store %93, %arg6[%95, %arg7] : memref<?x64xf32>
        memref.store %83, %alloca_4[] : memref<f32>
        %c-1_48 = arith.constant -1 : index
        %96 = arith.muli %82, %c-1_48 : index
        %c63_49 = arith.constant 63 : index
        %97 = arith.addi %96, %c63_49 : index
        %98 = memref.load %arg4[%97, %arg7] : memref<?x64xf32>
        memref.store %98, %alloca_5[] : memref<f32>
        memref.store %88, %alloca[] : memref<f32>
        %c-1_50 = arith.constant -1 : index
        %99 = arith.muli %82, %c-1_50 : index
        %c63_51 = arith.constant 63 : index
        %100 = arith.addi %99, %c63_51 : index
        %101 = memref.load %arg6[%100, %arg7] : memref<?x64xf32>
        memref.store %101, %alloca_3[] : memref<f32>
      }
    }
    %c0_24 = arith.constant 0 : index
    %c64_25 = arith.constant 64 : index
    %c1_26 = arith.constant 1 : index
    scf.for %arg7 = %c0_24 to %c64_25 step %c1_26 {
      %c0_27 = arith.constant 0 : index
      %c64_28 = arith.constant 64 : index
      %c4 = arith.constant 4 : index
      scf.for %arg8 = %c0_27 to %c64_28 step %c4 {
        %23 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        %24 = memref.load %arg6[%arg7, %arg8] : memref<?x64xf32>
        %25 = arith.addf %23, %24 : f32
        memref.store %25, %arg4[%arg7, %arg8] : memref<?x64xf32>
        %c1_29 = arith.constant 1 : index
        %26 = arith.addi %arg8, %c1_29 : index
        %27 = memref.load %arg5[%arg7, %26] : memref<?x64xf32>
        %28 = memref.load %arg6[%arg7, %26] : memref<?x64xf32>
        %29 = arith.addf %27, %28 : f32
        memref.store %29, %arg4[%arg7, %26] : memref<?x64xf32>
        %c2 = arith.constant 2 : index
        %30 = arith.addi %arg8, %c2 : index
        %31 = memref.load %arg5[%arg7, %30] : memref<?x64xf32>
        %32 = memref.load %arg6[%arg7, %30] : memref<?x64xf32>
        %33 = arith.addf %31, %32 : f32
        memref.store %33, %arg4[%arg7, %30] : memref<?x64xf32>
        %c3 = arith.constant 3 : index
        %34 = arith.addi %arg8, %c3 : index
        %35 = memref.load %arg5[%arg7, %34] : memref<?x64xf32>
        %36 = memref.load %arg6[%arg7, %34] : memref<?x64xf32>
        %37 = arith.addf %35, %36 : f32
        memref.store %37, %arg4[%arg7, %34] : memref<?x64xf32>
      }
    }
    return
  }
}

