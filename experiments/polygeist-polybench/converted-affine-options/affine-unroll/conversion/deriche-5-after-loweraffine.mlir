module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() : memref<1xf32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<1xf32>
    %alloca_10 = memref.alloca() : memref<f32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_13 = memref.alloca() : memref<1xf32>
    %alloca_14 = memref.alloca() : memref<f32>
    %alloca_15 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_16 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_17 = memref.alloca() : memref<1xf32>
    %alloca_18 = memref.alloca() : memref<1xf32>
    %alloca_19 = memref.alloca() : memref<1xf32>
    %alloca_20 = memref.alloca() : memref<1xf32>
    %alloca_21 = memref.alloca() : memref<f32>
    %alloca_22 = memref.alloca() : memref<f32>
    %alloca_23 = memref.alloca() : memref<f32>
    %alloca_24 = memref.alloca() : memref<f32>
    %alloca_25 = memref.alloca() : memref<f32>
    %0 = arith.mulf %arg2, %cst_2 : f32
    %1 = math.exp %0 : f32
    %2 = arith.negf %1 : f32
    %c0 = arith.constant 0 : index
    memref.store %2, %alloca_6[%c0] : memref<1xf32>
    %3 = arith.negf %arg2 : f32
    %4 = math.powf %cst_1, %3 : f32
    %c0_26 = arith.constant 0 : index
    memref.store %4, %alloca_15[%c0_26] : memref<1xf32>
    %5 = arith.negf %arg2 : f32
    %6 = math.exp %5 : f32
    %7 = arith.mulf %arg2, %6 : f32
    %8 = arith.subf %cst_0, %6 : f32
    %9 = arith.mulf %8, %8 : f32
    %10 = arith.mulf %7, %cst_1 : f32
    %11 = arith.addf %10, %cst_0 : f32
    %12 = arith.mulf %arg2, %cst_1 : f32
    %13 = math.exp %12 : f32
    %14 = arith.subf %11, %13 : f32
    %15 = arith.divf %9, %14 : f32
    %c0_27 = arith.constant 0 : index
    memref.store %15, %alloca_11[%c0_27] : memref<1xf32>
    %c0_28 = arith.constant 0 : index
    %16 = memref.load %alloca_11[%c0_28] : memref<1xf32>
    %c0_29 = arith.constant 0 : index
    memref.store %16, %alloca_5[%c0_29] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    %c0_30 = arith.constant 0 : index
    memref.store %19, %alloca_8[%c0_30] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    %c0_31 = arith.constant 0 : index
    memref.store %21, %alloca_16[%c0_31] : memref<1xf32>
    %c0_32 = arith.constant 0 : index
    %22 = memref.load %alloca_5[%c0_32] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    %c0_33 = arith.constant 0 : index
    memref.store %26, %alloca_7[%c0_33] : memref<1xf32>
    %c0_34 = arith.constant 0 : index
    %27 = memref.load %alloca_8[%c0_34] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    %c0_35 = arith.constant 0 : index
    memref.store %29, %alloca_12[%c0_35] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_25[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_14[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_4[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_24[] : memref<f32>
    %c0_36 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0_36 to %c64 step %c1 {
      memref.store %cst, %alloca_25[] : memref<f32>
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_4[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c4 = arith.constant 4 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c4 {
        %c0_53 = arith.constant 0 : index
        %40 = memref.load %alloca_11[%c0_53] : memref<1xf32>
        %41 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %42 = arith.mulf %40, %41 : f32
        %c0_54 = arith.constant 0 : index
        %43 = memref.load %alloca_16[%c0_54] : memref<1xf32>
        %44 = memref.load %alloca_25[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %c0_55 = arith.constant 0 : index
        %47 = memref.load %alloca_15[%c0_55] : memref<1xf32>
        %48 = memref.load %alloca_4[] : memref<f32>
        %c0_56 = arith.constant 0 : index
        memref.store %48, %alloca_9[%c0_56] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %c0_57 = arith.constant 0 : index
        %51 = memref.load %alloca_6[%c0_57] : memref<1xf32>
        %52 = memref.load %alloca_24[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        memref.store %54, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %55 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        memref.store %55, %alloca_4[] : memref<f32>
        %c0_58 = arith.constant 0 : index
        %56 = memref.load %alloca_9[%c0_58] : memref<1xf32>
        memref.store %56, %alloca_24[] : memref<f32>
        %57 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        memref.store %57, %alloca_25[] : memref<f32>
        %c1_59 = arith.constant 1 : index
        %58 = arith.addi %arg8, %c1_59 : index
        %c0_60 = arith.constant 0 : index
        %59 = memref.load %alloca_11[%c0_60] : memref<1xf32>
        %60 = memref.load %arg3[%arg7, %58] : memref<?x64xf32>
        %61 = arith.mulf %59, %60 : f32
        %c0_61 = arith.constant 0 : index
        %62 = memref.load %alloca_16[%c0_61] : memref<1xf32>
        %63 = memref.load %alloca_25[] : memref<f32>
        %64 = arith.mulf %62, %63 : f32
        %65 = arith.addf %61, %64 : f32
        %c0_62 = arith.constant 0 : index
        %66 = memref.load %alloca_15[%c0_62] : memref<1xf32>
        %67 = memref.load %alloca_4[] : memref<f32>
        %c0_63 = arith.constant 0 : index
        memref.store %67, %alloca_9[%c0_63] : memref<1xf32>
        %68 = arith.mulf %66, %67 : f32
        %69 = arith.addf %65, %68 : f32
        %c0_64 = arith.constant 0 : index
        %70 = memref.load %alloca_6[%c0_64] : memref<1xf32>
        %71 = memref.load %alloca_24[] : memref<f32>
        %72 = arith.mulf %70, %71 : f32
        %73 = arith.addf %69, %72 : f32
        memref.store %73, %arg5[%arg7, %58] : memref<?x64xf32>
        %74 = memref.load %arg5[%arg7, %58] : memref<?x64xf32>
        memref.store %74, %alloca_4[] : memref<f32>
        %c0_65 = arith.constant 0 : index
        %75 = memref.load %alloca_9[%c0_65] : memref<1xf32>
        memref.store %75, %alloca_24[] : memref<f32>
        %76 = memref.load %arg3[%arg7, %58] : memref<?x64xf32>
        memref.store %76, %alloca_25[] : memref<f32>
        %c2_66 = arith.constant 2 : index
        %77 = arith.addi %arg8, %c2_66 : index
        %c0_67 = arith.constant 0 : index
        %78 = memref.load %alloca_11[%c0_67] : memref<1xf32>
        %79 = memref.load %arg3[%arg7, %77] : memref<?x64xf32>
        %80 = arith.mulf %78, %79 : f32
        %c0_68 = arith.constant 0 : index
        %81 = memref.load %alloca_16[%c0_68] : memref<1xf32>
        %82 = memref.load %alloca_25[] : memref<f32>
        %83 = arith.mulf %81, %82 : f32
        %84 = arith.addf %80, %83 : f32
        %c0_69 = arith.constant 0 : index
        %85 = memref.load %alloca_15[%c0_69] : memref<1xf32>
        %86 = memref.load %alloca_4[] : memref<f32>
        %c0_70 = arith.constant 0 : index
        memref.store %86, %alloca_9[%c0_70] : memref<1xf32>
        %87 = arith.mulf %85, %86 : f32
        %88 = arith.addf %84, %87 : f32
        %c0_71 = arith.constant 0 : index
        %89 = memref.load %alloca_6[%c0_71] : memref<1xf32>
        %90 = memref.load %alloca_24[] : memref<f32>
        %91 = arith.mulf %89, %90 : f32
        %92 = arith.addf %88, %91 : f32
        memref.store %92, %arg5[%arg7, %77] : memref<?x64xf32>
        %93 = memref.load %arg5[%arg7, %77] : memref<?x64xf32>
        memref.store %93, %alloca_4[] : memref<f32>
        %c0_72 = arith.constant 0 : index
        %94 = memref.load %alloca_9[%c0_72] : memref<1xf32>
        memref.store %94, %alloca_24[] : memref<f32>
        %95 = memref.load %arg3[%arg7, %77] : memref<?x64xf32>
        memref.store %95, %alloca_25[] : memref<f32>
        %c3 = arith.constant 3 : index
        %96 = arith.addi %arg8, %c3 : index
        %c0_73 = arith.constant 0 : index
        %97 = memref.load %alloca_11[%c0_73] : memref<1xf32>
        %98 = memref.load %arg3[%arg7, %96] : memref<?x64xf32>
        %99 = arith.mulf %97, %98 : f32
        %c0_74 = arith.constant 0 : index
        %100 = memref.load %alloca_16[%c0_74] : memref<1xf32>
        %101 = memref.load %alloca_25[] : memref<f32>
        %102 = arith.mulf %100, %101 : f32
        %103 = arith.addf %99, %102 : f32
        %c0_75 = arith.constant 0 : index
        %104 = memref.load %alloca_15[%c0_75] : memref<1xf32>
        %105 = memref.load %alloca_4[] : memref<f32>
        %c0_76 = arith.constant 0 : index
        memref.store %105, %alloca_9[%c0_76] : memref<1xf32>
        %106 = arith.mulf %104, %105 : f32
        %107 = arith.addf %103, %106 : f32
        %c0_77 = arith.constant 0 : index
        %108 = memref.load %alloca_6[%c0_77] : memref<1xf32>
        %109 = memref.load %alloca_24[] : memref<f32>
        %110 = arith.mulf %108, %109 : f32
        %111 = arith.addf %107, %110 : f32
        memref.store %111, %arg5[%arg7, %96] : memref<?x64xf32>
        %112 = memref.load %arg5[%arg7, %96] : memref<?x64xf32>
        memref.store %112, %alloca_4[] : memref<f32>
        %c0_78 = arith.constant 0 : index
        %113 = memref.load %alloca_9[%c0_78] : memref<1xf32>
        memref.store %113, %alloca_24[] : memref<f32>
        %114 = memref.load %arg3[%arg7, %96] : memref<?x64xf32>
        memref.store %114, %alloca_25[] : memref<f32>
      }
    }
    %34 = llvm.mlir.undef : f32
    memref.store %34, %alloca[] : memref<f32>
    %35 = llvm.mlir.undef : f32
    memref.store %35, %alloca_21[] : memref<f32>
    %36 = llvm.mlir.undef : f32
    memref.store %36, %alloca_10[] : memref<f32>
    %37 = llvm.mlir.undef : f32
    memref.store %37, %alloca_23[] : memref<f32>
    %38 = llvm.mlir.undef : f32
    memref.store %38, %alloca_22[] : memref<f32>
    %39 = llvm.mlir.undef : f32
    memref.store %39, %alloca_3[] : memref<f32>
    %c0_37 = arith.constant 0 : index
    %c64_38 = arith.constant 64 : index
    %c1_39 = arith.constant 1 : index
    scf.for %arg7 = %c0_37 to %c64_38 step %c1_39 {
      memref.store %cst, %alloca_21[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c4 = arith.constant 4 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c4 {
        %c0_53 = arith.constant 0 : index
        %40 = memref.load %alloca_12[%c0_53] : memref<1xf32>
        %41 = memref.load %alloca[] : memref<f32>
        %c0_54 = arith.constant 0 : index
        memref.store %41, %alloca_13[%c0_54] : memref<1xf32>
        %42 = arith.mulf %40, %41 : f32
        %c0_55 = arith.constant 0 : index
        %43 = memref.load %alloca_7[%c0_55] : memref<1xf32>
        %44 = memref.load %alloca_21[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %c0_56 = arith.constant 0 : index
        %47 = memref.load %alloca_15[%c0_56] : memref<1xf32>
        %48 = memref.load %alloca_22[] : memref<f32>
        %c0_57 = arith.constant 0 : index
        memref.store %48, %alloca_18[%c0_57] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %c0_58 = arith.constant 0 : index
        %51 = memref.load %alloca_6[%c0_58] : memref<1xf32>
        %52 = memref.load %alloca_3[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        %c-1 = arith.constant -1 : index
        %55 = arith.muli %arg8, %c-1 : index
        %c63 = arith.constant 63 : index
        %56 = arith.addi %55, %c63 : index
        memref.store %54, %arg6[%arg7, %56] : memref<?x64xf32>
        %c-1_59 = arith.constant -1 : index
        %57 = arith.muli %arg8, %c-1_59 : index
        %c63_60 = arith.constant 63 : index
        %58 = arith.addi %57, %c63_60 : index
        %59 = memref.load %arg6[%arg7, %58] : memref<?x64xf32>
        memref.store %59, %alloca_22[] : memref<f32>
        %c0_61 = arith.constant 0 : index
        %60 = memref.load %alloca_18[%c0_61] : memref<1xf32>
        memref.store %60, %alloca_3[] : memref<f32>
        %c-1_62 = arith.constant -1 : index
        %61 = arith.muli %arg8, %c-1_62 : index
        %c63_63 = arith.constant 63 : index
        %62 = arith.addi %61, %c63_63 : index
        %63 = memref.load %arg3[%arg7, %62] : memref<?x64xf32>
        memref.store %63, %alloca[] : memref<f32>
        %c0_64 = arith.constant 0 : index
        %64 = memref.load %alloca_13[%c0_64] : memref<1xf32>
        memref.store %64, %alloca_21[] : memref<f32>
        %c1_65 = arith.constant 1 : index
        %65 = arith.addi %arg8, %c1_65 : index
        %c0_66 = arith.constant 0 : index
        %66 = memref.load %alloca_12[%c0_66] : memref<1xf32>
        %67 = memref.load %alloca[] : memref<f32>
        %c0_67 = arith.constant 0 : index
        memref.store %67, %alloca_13[%c0_67] : memref<1xf32>
        %68 = arith.mulf %66, %67 : f32
        %c0_68 = arith.constant 0 : index
        %69 = memref.load %alloca_7[%c0_68] : memref<1xf32>
        %70 = memref.load %alloca_21[] : memref<f32>
        %71 = arith.mulf %69, %70 : f32
        %72 = arith.addf %68, %71 : f32
        %c0_69 = arith.constant 0 : index
        %73 = memref.load %alloca_15[%c0_69] : memref<1xf32>
        %74 = memref.load %alloca_22[] : memref<f32>
        %c0_70 = arith.constant 0 : index
        memref.store %74, %alloca_18[%c0_70] : memref<1xf32>
        %75 = arith.mulf %73, %74 : f32
        %76 = arith.addf %72, %75 : f32
        %c0_71 = arith.constant 0 : index
        %77 = memref.load %alloca_6[%c0_71] : memref<1xf32>
        %78 = memref.load %alloca_3[] : memref<f32>
        %79 = arith.mulf %77, %78 : f32
        %80 = arith.addf %76, %79 : f32
        %c-1_72 = arith.constant -1 : index
        %81 = arith.muli %65, %c-1_72 : index
        %c63_73 = arith.constant 63 : index
        %82 = arith.addi %81, %c63_73 : index
        memref.store %80, %arg6[%arg7, %82] : memref<?x64xf32>
        %c-1_74 = arith.constant -1 : index
        %83 = arith.muli %65, %c-1_74 : index
        %c63_75 = arith.constant 63 : index
        %84 = arith.addi %83, %c63_75 : index
        %85 = memref.load %arg6[%arg7, %84] : memref<?x64xf32>
        memref.store %85, %alloca_22[] : memref<f32>
        %c0_76 = arith.constant 0 : index
        %86 = memref.load %alloca_18[%c0_76] : memref<1xf32>
        memref.store %86, %alloca_3[] : memref<f32>
        %c-1_77 = arith.constant -1 : index
        %87 = arith.muli %65, %c-1_77 : index
        %c63_78 = arith.constant 63 : index
        %88 = arith.addi %87, %c63_78 : index
        %89 = memref.load %arg3[%arg7, %88] : memref<?x64xf32>
        memref.store %89, %alloca[] : memref<f32>
        %c0_79 = arith.constant 0 : index
        %90 = memref.load %alloca_13[%c0_79] : memref<1xf32>
        memref.store %90, %alloca_21[] : memref<f32>
        %c2_80 = arith.constant 2 : index
        %91 = arith.addi %arg8, %c2_80 : index
        %c0_81 = arith.constant 0 : index
        %92 = memref.load %alloca_12[%c0_81] : memref<1xf32>
        %93 = memref.load %alloca[] : memref<f32>
        %c0_82 = arith.constant 0 : index
        memref.store %93, %alloca_13[%c0_82] : memref<1xf32>
        %94 = arith.mulf %92, %93 : f32
        %c0_83 = arith.constant 0 : index
        %95 = memref.load %alloca_7[%c0_83] : memref<1xf32>
        %96 = memref.load %alloca_21[] : memref<f32>
        %97 = arith.mulf %95, %96 : f32
        %98 = arith.addf %94, %97 : f32
        %c0_84 = arith.constant 0 : index
        %99 = memref.load %alloca_15[%c0_84] : memref<1xf32>
        %100 = memref.load %alloca_22[] : memref<f32>
        %c0_85 = arith.constant 0 : index
        memref.store %100, %alloca_18[%c0_85] : memref<1xf32>
        %101 = arith.mulf %99, %100 : f32
        %102 = arith.addf %98, %101 : f32
        %c0_86 = arith.constant 0 : index
        %103 = memref.load %alloca_6[%c0_86] : memref<1xf32>
        %104 = memref.load %alloca_3[] : memref<f32>
        %105 = arith.mulf %103, %104 : f32
        %106 = arith.addf %102, %105 : f32
        %c-1_87 = arith.constant -1 : index
        %107 = arith.muli %91, %c-1_87 : index
        %c63_88 = arith.constant 63 : index
        %108 = arith.addi %107, %c63_88 : index
        memref.store %106, %arg6[%arg7, %108] : memref<?x64xf32>
        %c-1_89 = arith.constant -1 : index
        %109 = arith.muli %91, %c-1_89 : index
        %c63_90 = arith.constant 63 : index
        %110 = arith.addi %109, %c63_90 : index
        %111 = memref.load %arg6[%arg7, %110] : memref<?x64xf32>
        memref.store %111, %alloca_22[] : memref<f32>
        %c0_91 = arith.constant 0 : index
        %112 = memref.load %alloca_18[%c0_91] : memref<1xf32>
        memref.store %112, %alloca_3[] : memref<f32>
        %c-1_92 = arith.constant -1 : index
        %113 = arith.muli %91, %c-1_92 : index
        %c63_93 = arith.constant 63 : index
        %114 = arith.addi %113, %c63_93 : index
        %115 = memref.load %arg3[%arg7, %114] : memref<?x64xf32>
        memref.store %115, %alloca[] : memref<f32>
        %c0_94 = arith.constant 0 : index
        %116 = memref.load %alloca_13[%c0_94] : memref<1xf32>
        memref.store %116, %alloca_21[] : memref<f32>
        %c3 = arith.constant 3 : index
        %117 = arith.addi %arg8, %c3 : index
        %c0_95 = arith.constant 0 : index
        %118 = memref.load %alloca_12[%c0_95] : memref<1xf32>
        %119 = memref.load %alloca[] : memref<f32>
        %c0_96 = arith.constant 0 : index
        memref.store %119, %alloca_13[%c0_96] : memref<1xf32>
        %120 = arith.mulf %118, %119 : f32
        %c0_97 = arith.constant 0 : index
        %121 = memref.load %alloca_7[%c0_97] : memref<1xf32>
        %122 = memref.load %alloca_21[] : memref<f32>
        %123 = arith.mulf %121, %122 : f32
        %124 = arith.addf %120, %123 : f32
        %c0_98 = arith.constant 0 : index
        %125 = memref.load %alloca_15[%c0_98] : memref<1xf32>
        %126 = memref.load %alloca_22[] : memref<f32>
        %c0_99 = arith.constant 0 : index
        memref.store %126, %alloca_18[%c0_99] : memref<1xf32>
        %127 = arith.mulf %125, %126 : f32
        %128 = arith.addf %124, %127 : f32
        %c0_100 = arith.constant 0 : index
        %129 = memref.load %alloca_6[%c0_100] : memref<1xf32>
        %130 = memref.load %alloca_3[] : memref<f32>
        %131 = arith.mulf %129, %130 : f32
        %132 = arith.addf %128, %131 : f32
        %c-1_101 = arith.constant -1 : index
        %133 = arith.muli %117, %c-1_101 : index
        %c63_102 = arith.constant 63 : index
        %134 = arith.addi %133, %c63_102 : index
        memref.store %132, %arg6[%arg7, %134] : memref<?x64xf32>
        %c-1_103 = arith.constant -1 : index
        %135 = arith.muli %117, %c-1_103 : index
        %c63_104 = arith.constant 63 : index
        %136 = arith.addi %135, %c63_104 : index
        %137 = memref.load %arg6[%arg7, %136] : memref<?x64xf32>
        memref.store %137, %alloca_22[] : memref<f32>
        %c0_105 = arith.constant 0 : index
        %138 = memref.load %alloca_18[%c0_105] : memref<1xf32>
        memref.store %138, %alloca_3[] : memref<f32>
        %c-1_106 = arith.constant -1 : index
        %139 = arith.muli %117, %c-1_106 : index
        %c63_107 = arith.constant 63 : index
        %140 = arith.addi %139, %c63_107 : index
        %141 = memref.load %arg3[%arg7, %140] : memref<?x64xf32>
        memref.store %141, %alloca[] : memref<f32>
        %c0_108 = arith.constant 0 : index
        %142 = memref.load %alloca_13[%c0_108] : memref<1xf32>
        memref.store %142, %alloca_21[] : memref<f32>
      }
    }
    %c0_40 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_41 = arith.constant 1 : index
    scf.for %arg7 = %c0_40 to %c2 step %c1_41 {
      %c0_51 = arith.constant 0 : index
      %c2_52 = arith.constant 2 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c2_52 step %c1_53 {
        %c32 = arith.constant 32 : index
        %40 = arith.muli %arg7, %c32 : index
        %c32_54 = arith.constant 32 : index
        %41 = arith.muli %arg7, %c32_54 : index
        %c32_55 = arith.constant 32 : index
        %42 = arith.addi %41, %c32_55 : index
        %c1_56 = arith.constant 1 : index
        scf.for %arg9 = %40 to %42 step %c1_56 {
          %c32_57 = arith.constant 32 : index
          %43 = arith.muli %arg8, %c32_57 : index
          %c32_58 = arith.constant 32 : index
          %44 = arith.muli %arg8, %c32_58 : index
          %c32_59 = arith.constant 32 : index
          %45 = arith.addi %44, %c32_59 : index
          %c4 = arith.constant 4 : index
          scf.for %arg10 = %43 to %45 step %c4 {
            %46 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %47 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %48 = arith.addf %46, %47 : f32
            memref.store %48, %arg4[%arg9, %arg10] : memref<?x64xf32>
            %c1_60 = arith.constant 1 : index
            %49 = arith.addi %arg10, %c1_60 : index
            %50 = memref.load %arg5[%arg9, %49] : memref<?x64xf32>
            %51 = memref.load %arg6[%arg9, %49] : memref<?x64xf32>
            %52 = arith.addf %50, %51 : f32
            memref.store %52, %arg4[%arg9, %49] : memref<?x64xf32>
            %c2_61 = arith.constant 2 : index
            %53 = arith.addi %arg10, %c2_61 : index
            %54 = memref.load %arg5[%arg9, %53] : memref<?x64xf32>
            %55 = memref.load %arg6[%arg9, %53] : memref<?x64xf32>
            %56 = arith.addf %54, %55 : f32
            memref.store %56, %arg4[%arg9, %53] : memref<?x64xf32>
            %c3 = arith.constant 3 : index
            %57 = arith.addi %arg10, %c3 : index
            %58 = memref.load %arg5[%arg9, %57] : memref<?x64xf32>
            %59 = memref.load %arg6[%arg9, %57] : memref<?x64xf32>
            %60 = arith.addf %58, %59 : f32
            memref.store %60, %arg4[%arg9, %57] : memref<?x64xf32>
          }
        }
      }
    }
    %c0_42 = arith.constant 0 : index
    %c64_43 = arith.constant 64 : index
    %c1_44 = arith.constant 1 : index
    scf.for %arg7 = %c0_42 to %c64_43 step %c1_44 {
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_4[] : memref<f32>
      memref.store %cst, %alloca_14[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c4 = arith.constant 4 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c4 {
        %c0_53 = arith.constant 0 : index
        %40 = memref.load %alloca_11[%c0_53] : memref<1xf32>
        %41 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %42 = arith.mulf %40, %41 : f32
        %c0_54 = arith.constant 0 : index
        %43 = memref.load %alloca_16[%c0_54] : memref<1xf32>
        %44 = memref.load %alloca_14[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %c0_55 = arith.constant 0 : index
        %47 = memref.load %alloca_15[%c0_55] : memref<1xf32>
        %48 = memref.load %alloca_4[] : memref<f32>
        %c0_56 = arith.constant 0 : index
        memref.store %48, %alloca_19[%c0_56] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %c0_57 = arith.constant 0 : index
        %51 = memref.load %alloca_6[%c0_57] : memref<1xf32>
        %52 = memref.load %alloca_24[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        memref.store %54, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %55 = memref.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        memref.store %55, %alloca_4[] : memref<f32>
        %c0_58 = arith.constant 0 : index
        %56 = memref.load %alloca_19[%c0_58] : memref<1xf32>
        memref.store %56, %alloca_24[] : memref<f32>
        %57 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        memref.store %57, %alloca_14[] : memref<f32>
        %c1_59 = arith.constant 1 : index
        %58 = arith.addi %arg8, %c1_59 : index
        %c0_60 = arith.constant 0 : index
        %59 = memref.load %alloca_11[%c0_60] : memref<1xf32>
        %60 = memref.load %arg4[%58, %arg7] : memref<?x64xf32>
        %61 = arith.mulf %59, %60 : f32
        %c0_61 = arith.constant 0 : index
        %62 = memref.load %alloca_16[%c0_61] : memref<1xf32>
        %63 = memref.load %alloca_14[] : memref<f32>
        %64 = arith.mulf %62, %63 : f32
        %65 = arith.addf %61, %64 : f32
        %c0_62 = arith.constant 0 : index
        %66 = memref.load %alloca_15[%c0_62] : memref<1xf32>
        %67 = memref.load %alloca_4[] : memref<f32>
        %c0_63 = arith.constant 0 : index
        memref.store %67, %alloca_19[%c0_63] : memref<1xf32>
        %68 = arith.mulf %66, %67 : f32
        %69 = arith.addf %65, %68 : f32
        %c0_64 = arith.constant 0 : index
        %70 = memref.load %alloca_6[%c0_64] : memref<1xf32>
        %71 = memref.load %alloca_24[] : memref<f32>
        %72 = arith.mulf %70, %71 : f32
        %73 = arith.addf %69, %72 : f32
        memref.store %73, %arg5[%58, %arg7] : memref<?x64xf32>
        %74 = memref.load %arg5[%58, %arg7] : memref<?x64xf32>
        memref.store %74, %alloca_4[] : memref<f32>
        %c0_65 = arith.constant 0 : index
        %75 = memref.load %alloca_19[%c0_65] : memref<1xf32>
        memref.store %75, %alloca_24[] : memref<f32>
        %76 = memref.load %arg4[%58, %arg7] : memref<?x64xf32>
        memref.store %76, %alloca_14[] : memref<f32>
        %c2_66 = arith.constant 2 : index
        %77 = arith.addi %arg8, %c2_66 : index
        %c0_67 = arith.constant 0 : index
        %78 = memref.load %alloca_11[%c0_67] : memref<1xf32>
        %79 = memref.load %arg4[%77, %arg7] : memref<?x64xf32>
        %80 = arith.mulf %78, %79 : f32
        %c0_68 = arith.constant 0 : index
        %81 = memref.load %alloca_16[%c0_68] : memref<1xf32>
        %82 = memref.load %alloca_14[] : memref<f32>
        %83 = arith.mulf %81, %82 : f32
        %84 = arith.addf %80, %83 : f32
        %c0_69 = arith.constant 0 : index
        %85 = memref.load %alloca_15[%c0_69] : memref<1xf32>
        %86 = memref.load %alloca_4[] : memref<f32>
        %c0_70 = arith.constant 0 : index
        memref.store %86, %alloca_19[%c0_70] : memref<1xf32>
        %87 = arith.mulf %85, %86 : f32
        %88 = arith.addf %84, %87 : f32
        %c0_71 = arith.constant 0 : index
        %89 = memref.load %alloca_6[%c0_71] : memref<1xf32>
        %90 = memref.load %alloca_24[] : memref<f32>
        %91 = arith.mulf %89, %90 : f32
        %92 = arith.addf %88, %91 : f32
        memref.store %92, %arg5[%77, %arg7] : memref<?x64xf32>
        %93 = memref.load %arg5[%77, %arg7] : memref<?x64xf32>
        memref.store %93, %alloca_4[] : memref<f32>
        %c0_72 = arith.constant 0 : index
        %94 = memref.load %alloca_19[%c0_72] : memref<1xf32>
        memref.store %94, %alloca_24[] : memref<f32>
        %95 = memref.load %arg4[%77, %arg7] : memref<?x64xf32>
        memref.store %95, %alloca_14[] : memref<f32>
        %c3 = arith.constant 3 : index
        %96 = arith.addi %arg8, %c3 : index
        %c0_73 = arith.constant 0 : index
        %97 = memref.load %alloca_11[%c0_73] : memref<1xf32>
        %98 = memref.load %arg4[%96, %arg7] : memref<?x64xf32>
        %99 = arith.mulf %97, %98 : f32
        %c0_74 = arith.constant 0 : index
        %100 = memref.load %alloca_16[%c0_74] : memref<1xf32>
        %101 = memref.load %alloca_14[] : memref<f32>
        %102 = arith.mulf %100, %101 : f32
        %103 = arith.addf %99, %102 : f32
        %c0_75 = arith.constant 0 : index
        %104 = memref.load %alloca_15[%c0_75] : memref<1xf32>
        %105 = memref.load %alloca_4[] : memref<f32>
        %c0_76 = arith.constant 0 : index
        memref.store %105, %alloca_19[%c0_76] : memref<1xf32>
        %106 = arith.mulf %104, %105 : f32
        %107 = arith.addf %103, %106 : f32
        %c0_77 = arith.constant 0 : index
        %108 = memref.load %alloca_6[%c0_77] : memref<1xf32>
        %109 = memref.load %alloca_24[] : memref<f32>
        %110 = arith.mulf %108, %109 : f32
        %111 = arith.addf %107, %110 : f32
        memref.store %111, %arg5[%96, %arg7] : memref<?x64xf32>
        %112 = memref.load %arg5[%96, %arg7] : memref<?x64xf32>
        memref.store %112, %alloca_4[] : memref<f32>
        %c0_78 = arith.constant 0 : index
        %113 = memref.load %alloca_19[%c0_78] : memref<1xf32>
        memref.store %113, %alloca_24[] : memref<f32>
        %114 = memref.load %arg4[%96, %arg7] : memref<?x64xf32>
        memref.store %114, %alloca_14[] : memref<f32>
      }
    }
    %c0_45 = arith.constant 0 : index
    %c64_46 = arith.constant 64 : index
    %c1_47 = arith.constant 1 : index
    scf.for %arg7 = %c0_45 to %c64_46 step %c1_47 {
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      memref.store %cst, %alloca_23[] : memref<f32>
      memref.store %cst, %alloca_10[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c4 = arith.constant 4 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c4 {
        %c0_53 = arith.constant 0 : index
        %40 = memref.load %alloca_12[%c0_53] : memref<1xf32>
        %41 = memref.load %alloca_10[] : memref<f32>
        %c0_54 = arith.constant 0 : index
        memref.store %41, %alloca_17[%c0_54] : memref<1xf32>
        %42 = arith.mulf %40, %41 : f32
        %c0_55 = arith.constant 0 : index
        %43 = memref.load %alloca_7[%c0_55] : memref<1xf32>
        %44 = memref.load %alloca_23[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %c0_56 = arith.constant 0 : index
        %47 = memref.load %alloca_15[%c0_56] : memref<1xf32>
        %48 = memref.load %alloca_22[] : memref<f32>
        %c0_57 = arith.constant 0 : index
        memref.store %48, %alloca_20[%c0_57] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %c0_58 = arith.constant 0 : index
        %51 = memref.load %alloca_6[%c0_58] : memref<1xf32>
        %52 = memref.load %alloca_3[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        %c-1 = arith.constant -1 : index
        %55 = arith.muli %arg8, %c-1 : index
        %c63 = arith.constant 63 : index
        %56 = arith.addi %55, %c63 : index
        memref.store %54, %arg6[%56, %arg7] : memref<?x64xf32>
        %c-1_59 = arith.constant -1 : index
        %57 = arith.muli %arg8, %c-1_59 : index
        %c63_60 = arith.constant 63 : index
        %58 = arith.addi %57, %c63_60 : index
        %59 = memref.load %arg6[%58, %arg7] : memref<?x64xf32>
        memref.store %59, %alloca_22[] : memref<f32>
        %c0_61 = arith.constant 0 : index
        %60 = memref.load %alloca_20[%c0_61] : memref<1xf32>
        memref.store %60, %alloca_3[] : memref<f32>
        %c-1_62 = arith.constant -1 : index
        %61 = arith.muli %arg8, %c-1_62 : index
        %c63_63 = arith.constant 63 : index
        %62 = arith.addi %61, %c63_63 : index
        %63 = memref.load %arg4[%62, %arg7] : memref<?x64xf32>
        memref.store %63, %alloca_10[] : memref<f32>
        %c0_64 = arith.constant 0 : index
        %64 = memref.load %alloca_17[%c0_64] : memref<1xf32>
        memref.store %64, %alloca_23[] : memref<f32>
        %c1_65 = arith.constant 1 : index
        %65 = arith.addi %arg8, %c1_65 : index
        %c0_66 = arith.constant 0 : index
        %66 = memref.load %alloca_12[%c0_66] : memref<1xf32>
        %67 = memref.load %alloca_10[] : memref<f32>
        %c0_67 = arith.constant 0 : index
        memref.store %67, %alloca_17[%c0_67] : memref<1xf32>
        %68 = arith.mulf %66, %67 : f32
        %c0_68 = arith.constant 0 : index
        %69 = memref.load %alloca_7[%c0_68] : memref<1xf32>
        %70 = memref.load %alloca_23[] : memref<f32>
        %71 = arith.mulf %69, %70 : f32
        %72 = arith.addf %68, %71 : f32
        %c0_69 = arith.constant 0 : index
        %73 = memref.load %alloca_15[%c0_69] : memref<1xf32>
        %74 = memref.load %alloca_22[] : memref<f32>
        %c0_70 = arith.constant 0 : index
        memref.store %74, %alloca_20[%c0_70] : memref<1xf32>
        %75 = arith.mulf %73, %74 : f32
        %76 = arith.addf %72, %75 : f32
        %c0_71 = arith.constant 0 : index
        %77 = memref.load %alloca_6[%c0_71] : memref<1xf32>
        %78 = memref.load %alloca_3[] : memref<f32>
        %79 = arith.mulf %77, %78 : f32
        %80 = arith.addf %76, %79 : f32
        %c-1_72 = arith.constant -1 : index
        %81 = arith.muli %65, %c-1_72 : index
        %c63_73 = arith.constant 63 : index
        %82 = arith.addi %81, %c63_73 : index
        memref.store %80, %arg6[%82, %arg7] : memref<?x64xf32>
        %c-1_74 = arith.constant -1 : index
        %83 = arith.muli %65, %c-1_74 : index
        %c63_75 = arith.constant 63 : index
        %84 = arith.addi %83, %c63_75 : index
        %85 = memref.load %arg6[%84, %arg7] : memref<?x64xf32>
        memref.store %85, %alloca_22[] : memref<f32>
        %c0_76 = arith.constant 0 : index
        %86 = memref.load %alloca_20[%c0_76] : memref<1xf32>
        memref.store %86, %alloca_3[] : memref<f32>
        %c-1_77 = arith.constant -1 : index
        %87 = arith.muli %65, %c-1_77 : index
        %c63_78 = arith.constant 63 : index
        %88 = arith.addi %87, %c63_78 : index
        %89 = memref.load %arg4[%88, %arg7] : memref<?x64xf32>
        memref.store %89, %alloca_10[] : memref<f32>
        %c0_79 = arith.constant 0 : index
        %90 = memref.load %alloca_17[%c0_79] : memref<1xf32>
        memref.store %90, %alloca_23[] : memref<f32>
        %c2_80 = arith.constant 2 : index
        %91 = arith.addi %arg8, %c2_80 : index
        %c0_81 = arith.constant 0 : index
        %92 = memref.load %alloca_12[%c0_81] : memref<1xf32>
        %93 = memref.load %alloca_10[] : memref<f32>
        %c0_82 = arith.constant 0 : index
        memref.store %93, %alloca_17[%c0_82] : memref<1xf32>
        %94 = arith.mulf %92, %93 : f32
        %c0_83 = arith.constant 0 : index
        %95 = memref.load %alloca_7[%c0_83] : memref<1xf32>
        %96 = memref.load %alloca_23[] : memref<f32>
        %97 = arith.mulf %95, %96 : f32
        %98 = arith.addf %94, %97 : f32
        %c0_84 = arith.constant 0 : index
        %99 = memref.load %alloca_15[%c0_84] : memref<1xf32>
        %100 = memref.load %alloca_22[] : memref<f32>
        %c0_85 = arith.constant 0 : index
        memref.store %100, %alloca_20[%c0_85] : memref<1xf32>
        %101 = arith.mulf %99, %100 : f32
        %102 = arith.addf %98, %101 : f32
        %c0_86 = arith.constant 0 : index
        %103 = memref.load %alloca_6[%c0_86] : memref<1xf32>
        %104 = memref.load %alloca_3[] : memref<f32>
        %105 = arith.mulf %103, %104 : f32
        %106 = arith.addf %102, %105 : f32
        %c-1_87 = arith.constant -1 : index
        %107 = arith.muli %91, %c-1_87 : index
        %c63_88 = arith.constant 63 : index
        %108 = arith.addi %107, %c63_88 : index
        memref.store %106, %arg6[%108, %arg7] : memref<?x64xf32>
        %c-1_89 = arith.constant -1 : index
        %109 = arith.muli %91, %c-1_89 : index
        %c63_90 = arith.constant 63 : index
        %110 = arith.addi %109, %c63_90 : index
        %111 = memref.load %arg6[%110, %arg7] : memref<?x64xf32>
        memref.store %111, %alloca_22[] : memref<f32>
        %c0_91 = arith.constant 0 : index
        %112 = memref.load %alloca_20[%c0_91] : memref<1xf32>
        memref.store %112, %alloca_3[] : memref<f32>
        %c-1_92 = arith.constant -1 : index
        %113 = arith.muli %91, %c-1_92 : index
        %c63_93 = arith.constant 63 : index
        %114 = arith.addi %113, %c63_93 : index
        %115 = memref.load %arg4[%114, %arg7] : memref<?x64xf32>
        memref.store %115, %alloca_10[] : memref<f32>
        %c0_94 = arith.constant 0 : index
        %116 = memref.load %alloca_17[%c0_94] : memref<1xf32>
        memref.store %116, %alloca_23[] : memref<f32>
        %c3 = arith.constant 3 : index
        %117 = arith.addi %arg8, %c3 : index
        %c0_95 = arith.constant 0 : index
        %118 = memref.load %alloca_12[%c0_95] : memref<1xf32>
        %119 = memref.load %alloca_10[] : memref<f32>
        %c0_96 = arith.constant 0 : index
        memref.store %119, %alloca_17[%c0_96] : memref<1xf32>
        %120 = arith.mulf %118, %119 : f32
        %c0_97 = arith.constant 0 : index
        %121 = memref.load %alloca_7[%c0_97] : memref<1xf32>
        %122 = memref.load %alloca_23[] : memref<f32>
        %123 = arith.mulf %121, %122 : f32
        %124 = arith.addf %120, %123 : f32
        %c0_98 = arith.constant 0 : index
        %125 = memref.load %alloca_15[%c0_98] : memref<1xf32>
        %126 = memref.load %alloca_22[] : memref<f32>
        %c0_99 = arith.constant 0 : index
        memref.store %126, %alloca_20[%c0_99] : memref<1xf32>
        %127 = arith.mulf %125, %126 : f32
        %128 = arith.addf %124, %127 : f32
        %c0_100 = arith.constant 0 : index
        %129 = memref.load %alloca_6[%c0_100] : memref<1xf32>
        %130 = memref.load %alloca_3[] : memref<f32>
        %131 = arith.mulf %129, %130 : f32
        %132 = arith.addf %128, %131 : f32
        %c-1_101 = arith.constant -1 : index
        %133 = arith.muli %117, %c-1_101 : index
        %c63_102 = arith.constant 63 : index
        %134 = arith.addi %133, %c63_102 : index
        memref.store %132, %arg6[%134, %arg7] : memref<?x64xf32>
        %c-1_103 = arith.constant -1 : index
        %135 = arith.muli %117, %c-1_103 : index
        %c63_104 = arith.constant 63 : index
        %136 = arith.addi %135, %c63_104 : index
        %137 = memref.load %arg6[%136, %arg7] : memref<?x64xf32>
        memref.store %137, %alloca_22[] : memref<f32>
        %c0_105 = arith.constant 0 : index
        %138 = memref.load %alloca_20[%c0_105] : memref<1xf32>
        memref.store %138, %alloca_3[] : memref<f32>
        %c-1_106 = arith.constant -1 : index
        %139 = arith.muli %117, %c-1_106 : index
        %c63_107 = arith.constant 63 : index
        %140 = arith.addi %139, %c63_107 : index
        %141 = memref.load %arg4[%140, %arg7] : memref<?x64xf32>
        memref.store %141, %alloca_10[] : memref<f32>
        %c0_108 = arith.constant 0 : index
        %142 = memref.load %alloca_17[%c0_108] : memref<1xf32>
        memref.store %142, %alloca_23[] : memref<f32>
      }
    }
    %c0_48 = arith.constant 0 : index
    %c2_49 = arith.constant 2 : index
    %c1_50 = arith.constant 1 : index
    scf.for %arg7 = %c0_48 to %c2_49 step %c1_50 {
      %c0_51 = arith.constant 0 : index
      %c2_52 = arith.constant 2 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c2_52 step %c1_53 {
        %c32 = arith.constant 32 : index
        %40 = arith.muli %arg7, %c32 : index
        %c32_54 = arith.constant 32 : index
        %41 = arith.muli %arg7, %c32_54 : index
        %c32_55 = arith.constant 32 : index
        %42 = arith.addi %41, %c32_55 : index
        %c1_56 = arith.constant 1 : index
        scf.for %arg9 = %40 to %42 step %c1_56 {
          %c32_57 = arith.constant 32 : index
          %43 = arith.muli %arg8, %c32_57 : index
          %c32_58 = arith.constant 32 : index
          %44 = arith.muli %arg8, %c32_58 : index
          %c32_59 = arith.constant 32 : index
          %45 = arith.addi %44, %c32_59 : index
          %c4 = arith.constant 4 : index
          scf.for %arg10 = %43 to %45 step %c4 {
            %46 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %47 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %48 = arith.addf %46, %47 : f32
            memref.store %48, %arg4[%arg9, %arg10] : memref<?x64xf32>
            %c1_60 = arith.constant 1 : index
            %49 = arith.addi %arg10, %c1_60 : index
            %50 = memref.load %arg5[%arg9, %49] : memref<?x64xf32>
            %51 = memref.load %arg6[%arg9, %49] : memref<?x64xf32>
            %52 = arith.addf %50, %51 : f32
            memref.store %52, %arg4[%arg9, %49] : memref<?x64xf32>
            %c2_61 = arith.constant 2 : index
            %53 = arith.addi %arg10, %c2_61 : index
            %54 = memref.load %arg5[%arg9, %53] : memref<?x64xf32>
            %55 = memref.load %arg6[%arg9, %53] : memref<?x64xf32>
            %56 = arith.addf %54, %55 : f32
            memref.store %56, %arg4[%arg9, %53] : memref<?x64xf32>
            %c3 = arith.constant 3 : index
            %57 = arith.addi %arg10, %c3 : index
            %58 = memref.load %arg5[%arg9, %57] : memref<?x64xf32>
            %59 = memref.load %arg6[%arg9, %57] : memref<?x64xf32>
            %60 = arith.addf %58, %59 : f32
            memref.store %60, %arg4[%arg9, %57] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

