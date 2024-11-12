module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<1xf32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_10 = memref.alloca() : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_13 = memref.alloca() : memref<1xf32>
    %alloca_14 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_15 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_16 = memref.alloca() : memref<1xf32>
    %alloca_17 = memref.alloca() : memref<1xf32>
    %alloca_18 = memref.alloca() {scop.scratchpad} : memref<1xf32>
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
    memref.store %15, %alloca_9[%c0_27] : memref<1xf32>
    %c0_28 = arith.constant 0 : index
    %16 = memref.load %alloca_9[%c0_28] : memref<1xf32>
    %c0_29 = arith.constant 0 : index
    memref.store %16, %alloca[%c0_29] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    %c0_30 = arith.constant 0 : index
    memref.store %19, %alloca_7[%c0_30] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    %c0_31 = arith.constant 0 : index
    memref.store %21, %alloca_18[%c0_31] : memref<1xf32>
    %c0_32 = arith.constant 0 : index
    %22 = memref.load %alloca[%c0_32] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    %c0_33 = arith.constant 0 : index
    memref.store %26, %alloca_14[%c0_33] : memref<1xf32>
    %c0_34 = arith.constant 0 : index
    %27 = memref.load %alloca_7[%c0_34] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    %c0_35 = arith.constant 0 : index
    memref.store %29, %alloca_12[%c0_35] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_5[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_11[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_4[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_24[] : memref<f32>
    %c0_36 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0_36 to %c64 step %c1 {
      %c0_51 = arith.constant 0 : index
      %c1_52 = arith.constant 1 : index
      %c1_53 = arith.constant 1 : index
      scf.parallel (%arg8) = (%c0_51) to (%c1_52) step (%c1_53) {
        %40 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %alloca_5[] : memref<f32>
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        %c0_54 = arith.constant 0 : index
        %41 = memref.load %alloca_9[%c0_54] : memref<1xf32>
        %c0_55 = arith.constant 0 : index
        %42 = memref.load %alloca_18[%c0_55] : memref<1xf32>
        %c0_56 = arith.constant 0 : index
        %43 = memref.load %alloca_15[%c0_56] : memref<1xf32>
        %c0_57 = arith.constant 0 : index
        %44 = memref.load %alloca_6[%c0_57] : memref<1xf32>
        %c0_58 = arith.constant 0 : index
        %45 = memref.load %alloca_9[%c0_58] : memref<1xf32>
        %c0_59 = arith.constant 0 : index
        %46 = memref.load %alloca_18[%c0_59] : memref<1xf32>
        %c0_60 = arith.constant 0 : index
        %47 = memref.load %alloca_15[%c0_60] : memref<1xf32>
        %c0_61 = arith.constant 0 : index
        %48 = memref.load %alloca_6[%c0_61] : memref<1xf32>
        %c0_62 = arith.constant 0 : index
        %49 = memref.load %alloca_9[%c0_62] : memref<1xf32>
        %c0_63 = arith.constant 0 : index
        %50 = memref.load %alloca_18[%c0_63] : memref<1xf32>
        %c0_64 = arith.constant 0 : index
        %51 = memref.load %alloca_15[%c0_64] : memref<1xf32>
        %c0_65 = arith.constant 0 : index
        %52 = memref.load %alloca_6[%c0_65] : memref<1xf32>
        %c0_66 = arith.constant 0 : index
        %53 = memref.load %alloca_9[%c0_66] : memref<1xf32>
        %c0_67 = arith.constant 0 : index
        %54 = memref.load %alloca_18[%c0_67] : memref<1xf32>
        %c0_68 = arith.constant 0 : index
        %55 = memref.load %alloca_15[%c0_68] : memref<1xf32>
        %c0_69 = arith.constant 0 : index
        %56 = memref.load %alloca_6[%c0_69] : memref<1xf32>
        %c0_70 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_71 = arith.constant 1 : index
        scf.for %arg9 = %c0_70 to %c16 step %c1_71 {
          %c4 = arith.constant 4 : index
          %57 = arith.muli %arg9, %c4 : index
          %58 = memref.load %arg3[%40, %57] : memref<?x64xf32>
          %59 = arith.mulf %41, %58 : f32
          %60 = memref.load %alloca_5[] : memref<f32>
          %61 = arith.mulf %42, %60 : f32
          %62 = arith.addf %59, %61 : f32
          %63 = memref.load %alloca_4[] : memref<f32>
          %c0_72 = arith.constant 0 : index
          memref.store %63, %alloca_8[%c0_72] : memref<1xf32>
          %64 = arith.mulf %43, %63 : f32
          %65 = arith.addf %62, %64 : f32
          %66 = memref.load %alloca_24[] : memref<f32>
          %67 = arith.mulf %44, %66 : f32
          %68 = arith.addf %65, %67 : f32
          memref.store %68, %arg5[%40, %57] : memref<?x64xf32>
          %69 = memref.load %arg5[%40, %57] : memref<?x64xf32>
          memref.store %69, %alloca_4[] : memref<f32>
          %c0_73 = arith.constant 0 : index
          %70 = memref.load %alloca_8[%c0_73] : memref<1xf32>
          memref.store %70, %alloca_24[] : memref<f32>
          %71 = memref.load %arg3[%40, %57] : memref<?x64xf32>
          memref.store %71, %alloca_5[] : memref<f32>
          %c1_74 = arith.constant 1 : index
          %72 = arith.addi %57, %c1_74 : index
          %73 = memref.load %arg3[%40, %72] : memref<?x64xf32>
          %74 = arith.mulf %45, %73 : f32
          %75 = memref.load %alloca_5[] : memref<f32>
          %76 = arith.mulf %46, %75 : f32
          %77 = arith.addf %74, %76 : f32
          %78 = memref.load %alloca_4[] : memref<f32>
          %c0_75 = arith.constant 0 : index
          memref.store %78, %alloca_8[%c0_75] : memref<1xf32>
          %79 = arith.mulf %47, %78 : f32
          %80 = arith.addf %77, %79 : f32
          %81 = memref.load %alloca_24[] : memref<f32>
          %82 = arith.mulf %48, %81 : f32
          %83 = arith.addf %80, %82 : f32
          memref.store %83, %arg5[%40, %72] : memref<?x64xf32>
          %84 = memref.load %arg5[%40, %72] : memref<?x64xf32>
          memref.store %84, %alloca_4[] : memref<f32>
          %c0_76 = arith.constant 0 : index
          %85 = memref.load %alloca_8[%c0_76] : memref<1xf32>
          memref.store %85, %alloca_24[] : memref<f32>
          %86 = memref.load %arg3[%40, %72] : memref<?x64xf32>
          memref.store %86, %alloca_5[] : memref<f32>
          %c2_77 = arith.constant 2 : index
          %87 = arith.addi %57, %c2_77 : index
          %88 = memref.load %arg3[%40, %87] : memref<?x64xf32>
          %89 = arith.mulf %49, %88 : f32
          %90 = memref.load %alloca_5[] : memref<f32>
          %91 = arith.mulf %50, %90 : f32
          %92 = arith.addf %89, %91 : f32
          %93 = memref.load %alloca_4[] : memref<f32>
          %c0_78 = arith.constant 0 : index
          memref.store %93, %alloca_8[%c0_78] : memref<1xf32>
          %94 = arith.mulf %51, %93 : f32
          %95 = arith.addf %92, %94 : f32
          %96 = memref.load %alloca_24[] : memref<f32>
          %97 = arith.mulf %52, %96 : f32
          %98 = arith.addf %95, %97 : f32
          memref.store %98, %arg5[%40, %87] : memref<?x64xf32>
          %99 = memref.load %arg5[%40, %87] : memref<?x64xf32>
          memref.store %99, %alloca_4[] : memref<f32>
          %c0_79 = arith.constant 0 : index
          %100 = memref.load %alloca_8[%c0_79] : memref<1xf32>
          memref.store %100, %alloca_24[] : memref<f32>
          %101 = memref.load %arg3[%40, %87] : memref<?x64xf32>
          memref.store %101, %alloca_5[] : memref<f32>
          %c3 = arith.constant 3 : index
          %102 = arith.addi %57, %c3 : index
          %103 = memref.load %arg3[%40, %102] : memref<?x64xf32>
          %104 = arith.mulf %53, %103 : f32
          %105 = memref.load %alloca_5[] : memref<f32>
          %106 = arith.mulf %54, %105 : f32
          %107 = arith.addf %104, %106 : f32
          %108 = memref.load %alloca_4[] : memref<f32>
          %c0_80 = arith.constant 0 : index
          memref.store %108, %alloca_8[%c0_80] : memref<1xf32>
          %109 = arith.mulf %55, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = memref.load %alloca_24[] : memref<f32>
          %112 = arith.mulf %56, %111 : f32
          %113 = arith.addf %110, %112 : f32
          memref.store %113, %arg5[%40, %102] : memref<?x64xf32>
          %114 = memref.load %arg5[%40, %102] : memref<?x64xf32>
          memref.store %114, %alloca_4[] : memref<f32>
          %c0_81 = arith.constant 0 : index
          %115 = memref.load %alloca_8[%c0_81] : memref<1xf32>
          memref.store %115, %alloca_24[] : memref<f32>
          %116 = memref.load %arg3[%40, %102] : memref<?x64xf32>
          memref.store %116, %alloca_5[] : memref<f32>
        }
        scf.reduce 
      }
    }
    %34 = llvm.mlir.undef : f32
    memref.store %34, %alloca_3[] : memref<f32>
    %35 = llvm.mlir.undef : f32
    memref.store %35, %alloca_21[] : memref<f32>
    %36 = llvm.mlir.undef : f32
    memref.store %36, %alloca_10[] : memref<f32>
    %37 = llvm.mlir.undef : f32
    memref.store %37, %alloca_23[] : memref<f32>
    %38 = llvm.mlir.undef : f32
    memref.store %38, %alloca_22[] : memref<f32>
    %39 = llvm.mlir.undef : f32
    memref.store %39, %alloca_25[] : memref<f32>
    %c0_37 = arith.constant 0 : index
    %c64_38 = arith.constant 64 : index
    %c1_39 = arith.constant 1 : index
    scf.for %arg7 = %c0_37 to %c64_38 step %c1_39 {
      %c0_51 = arith.constant 0 : index
      %c1_52 = arith.constant 1 : index
      %c1_53 = arith.constant 1 : index
      scf.parallel (%arg8) = (%c0_51) to (%c1_52) step (%c1_53) {
        %40 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %alloca_21[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        %c0_54 = arith.constant 0 : index
        %41 = memref.load %alloca_12[%c0_54] : memref<1xf32>
        %c0_55 = arith.constant 0 : index
        %42 = memref.load %alloca_14[%c0_55] : memref<1xf32>
        %c0_56 = arith.constant 0 : index
        %43 = memref.load %alloca_15[%c0_56] : memref<1xf32>
        %c0_57 = arith.constant 0 : index
        %44 = memref.load %alloca_6[%c0_57] : memref<1xf32>
        %c0_58 = arith.constant 0 : index
        %45 = memref.load %alloca_12[%c0_58] : memref<1xf32>
        %c0_59 = arith.constant 0 : index
        %46 = memref.load %alloca_14[%c0_59] : memref<1xf32>
        %c0_60 = arith.constant 0 : index
        %47 = memref.load %alloca_15[%c0_60] : memref<1xf32>
        %c0_61 = arith.constant 0 : index
        %48 = memref.load %alloca_6[%c0_61] : memref<1xf32>
        %c0_62 = arith.constant 0 : index
        %49 = memref.load %alloca_12[%c0_62] : memref<1xf32>
        %c0_63 = arith.constant 0 : index
        %50 = memref.load %alloca_14[%c0_63] : memref<1xf32>
        %c0_64 = arith.constant 0 : index
        %51 = memref.load %alloca_15[%c0_64] : memref<1xf32>
        %c0_65 = arith.constant 0 : index
        %52 = memref.load %alloca_6[%c0_65] : memref<1xf32>
        %c0_66 = arith.constant 0 : index
        %53 = memref.load %alloca_12[%c0_66] : memref<1xf32>
        %c0_67 = arith.constant 0 : index
        %54 = memref.load %alloca_14[%c0_67] : memref<1xf32>
        %c0_68 = arith.constant 0 : index
        %55 = memref.load %alloca_15[%c0_68] : memref<1xf32>
        %c0_69 = arith.constant 0 : index
        %56 = memref.load %alloca_6[%c0_69] : memref<1xf32>
        %c0_70 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_71 = arith.constant 1 : index
        scf.for %arg9 = %c0_70 to %c16 step %c1_71 {
          %c4 = arith.constant 4 : index
          %57 = arith.muli %arg9, %c4 : index
          %58 = memref.load %alloca_3[] : memref<f32>
          %c0_72 = arith.constant 0 : index
          memref.store %58, %alloca_13[%c0_72] : memref<1xf32>
          %59 = arith.mulf %41, %58 : f32
          %60 = memref.load %alloca_21[] : memref<f32>
          %61 = arith.mulf %42, %60 : f32
          %62 = arith.addf %59, %61 : f32
          %63 = memref.load %alloca_22[] : memref<f32>
          %c0_73 = arith.constant 0 : index
          memref.store %63, %alloca_16[%c0_73] : memref<1xf32>
          %64 = arith.mulf %43, %63 : f32
          %65 = arith.addf %62, %64 : f32
          %66 = memref.load %alloca_25[] : memref<f32>
          %67 = arith.mulf %44, %66 : f32
          %68 = arith.addf %65, %67 : f32
          %c-1 = arith.constant -1 : index
          %69 = arith.muli %57, %c-1 : index
          %c63 = arith.constant 63 : index
          %70 = arith.addi %69, %c63 : index
          memref.store %68, %arg6[%40, %70] : memref<?x64xf32>
          %c-1_74 = arith.constant -1 : index
          %71 = arith.muli %57, %c-1_74 : index
          %c63_75 = arith.constant 63 : index
          %72 = arith.addi %71, %c63_75 : index
          %73 = memref.load %arg6[%40, %72] : memref<?x64xf32>
          memref.store %73, %alloca_22[] : memref<f32>
          %c0_76 = arith.constant 0 : index
          %74 = memref.load %alloca_16[%c0_76] : memref<1xf32>
          memref.store %74, %alloca_25[] : memref<f32>
          %c-1_77 = arith.constant -1 : index
          %75 = arith.muli %57, %c-1_77 : index
          %c63_78 = arith.constant 63 : index
          %76 = arith.addi %75, %c63_78 : index
          %77 = memref.load %arg3[%40, %76] : memref<?x64xf32>
          memref.store %77, %alloca_3[] : memref<f32>
          %c0_79 = arith.constant 0 : index
          %78 = memref.load %alloca_13[%c0_79] : memref<1xf32>
          memref.store %78, %alloca_21[] : memref<f32>
          %c1_80 = arith.constant 1 : index
          %79 = arith.addi %57, %c1_80 : index
          %80 = memref.load %alloca_3[] : memref<f32>
          %c0_81 = arith.constant 0 : index
          memref.store %80, %alloca_13[%c0_81] : memref<1xf32>
          %81 = arith.mulf %45, %80 : f32
          %82 = memref.load %alloca_21[] : memref<f32>
          %83 = arith.mulf %46, %82 : f32
          %84 = arith.addf %81, %83 : f32
          %85 = memref.load %alloca_22[] : memref<f32>
          %c0_82 = arith.constant 0 : index
          memref.store %85, %alloca_16[%c0_82] : memref<1xf32>
          %86 = arith.mulf %47, %85 : f32
          %87 = arith.addf %84, %86 : f32
          %88 = memref.load %alloca_25[] : memref<f32>
          %89 = arith.mulf %48, %88 : f32
          %90 = arith.addf %87, %89 : f32
          %c-1_83 = arith.constant -1 : index
          %91 = arith.muli %79, %c-1_83 : index
          %c63_84 = arith.constant 63 : index
          %92 = arith.addi %91, %c63_84 : index
          memref.store %90, %arg6[%40, %92] : memref<?x64xf32>
          %c-1_85 = arith.constant -1 : index
          %93 = arith.muli %79, %c-1_85 : index
          %c63_86 = arith.constant 63 : index
          %94 = arith.addi %93, %c63_86 : index
          %95 = memref.load %arg6[%40, %94] : memref<?x64xf32>
          memref.store %95, %alloca_22[] : memref<f32>
          %c0_87 = arith.constant 0 : index
          %96 = memref.load %alloca_16[%c0_87] : memref<1xf32>
          memref.store %96, %alloca_25[] : memref<f32>
          %c-1_88 = arith.constant -1 : index
          %97 = arith.muli %79, %c-1_88 : index
          %c63_89 = arith.constant 63 : index
          %98 = arith.addi %97, %c63_89 : index
          %99 = memref.load %arg3[%40, %98] : memref<?x64xf32>
          memref.store %99, %alloca_3[] : memref<f32>
          %c0_90 = arith.constant 0 : index
          %100 = memref.load %alloca_13[%c0_90] : memref<1xf32>
          memref.store %100, %alloca_21[] : memref<f32>
          %c2_91 = arith.constant 2 : index
          %101 = arith.addi %57, %c2_91 : index
          %102 = memref.load %alloca_3[] : memref<f32>
          %c0_92 = arith.constant 0 : index
          memref.store %102, %alloca_13[%c0_92] : memref<1xf32>
          %103 = arith.mulf %49, %102 : f32
          %104 = memref.load %alloca_21[] : memref<f32>
          %105 = arith.mulf %50, %104 : f32
          %106 = arith.addf %103, %105 : f32
          %107 = memref.load %alloca_22[] : memref<f32>
          %c0_93 = arith.constant 0 : index
          memref.store %107, %alloca_16[%c0_93] : memref<1xf32>
          %108 = arith.mulf %51, %107 : f32
          %109 = arith.addf %106, %108 : f32
          %110 = memref.load %alloca_25[] : memref<f32>
          %111 = arith.mulf %52, %110 : f32
          %112 = arith.addf %109, %111 : f32
          %c-1_94 = arith.constant -1 : index
          %113 = arith.muli %101, %c-1_94 : index
          %c63_95 = arith.constant 63 : index
          %114 = arith.addi %113, %c63_95 : index
          memref.store %112, %arg6[%40, %114] : memref<?x64xf32>
          %c-1_96 = arith.constant -1 : index
          %115 = arith.muli %101, %c-1_96 : index
          %c63_97 = arith.constant 63 : index
          %116 = arith.addi %115, %c63_97 : index
          %117 = memref.load %arg6[%40, %116] : memref<?x64xf32>
          memref.store %117, %alloca_22[] : memref<f32>
          %c0_98 = arith.constant 0 : index
          %118 = memref.load %alloca_16[%c0_98] : memref<1xf32>
          memref.store %118, %alloca_25[] : memref<f32>
          %c-1_99 = arith.constant -1 : index
          %119 = arith.muli %101, %c-1_99 : index
          %c63_100 = arith.constant 63 : index
          %120 = arith.addi %119, %c63_100 : index
          %121 = memref.load %arg3[%40, %120] : memref<?x64xf32>
          memref.store %121, %alloca_3[] : memref<f32>
          %c0_101 = arith.constant 0 : index
          %122 = memref.load %alloca_13[%c0_101] : memref<1xf32>
          memref.store %122, %alloca_21[] : memref<f32>
          %c3 = arith.constant 3 : index
          %123 = arith.addi %57, %c3 : index
          %124 = memref.load %alloca_3[] : memref<f32>
          %c0_102 = arith.constant 0 : index
          memref.store %124, %alloca_13[%c0_102] : memref<1xf32>
          %125 = arith.mulf %53, %124 : f32
          %126 = memref.load %alloca_21[] : memref<f32>
          %127 = arith.mulf %54, %126 : f32
          %128 = arith.addf %125, %127 : f32
          %129 = memref.load %alloca_22[] : memref<f32>
          %c0_103 = arith.constant 0 : index
          memref.store %129, %alloca_16[%c0_103] : memref<1xf32>
          %130 = arith.mulf %55, %129 : f32
          %131 = arith.addf %128, %130 : f32
          %132 = memref.load %alloca_25[] : memref<f32>
          %133 = arith.mulf %56, %132 : f32
          %134 = arith.addf %131, %133 : f32
          %c-1_104 = arith.constant -1 : index
          %135 = arith.muli %123, %c-1_104 : index
          %c63_105 = arith.constant 63 : index
          %136 = arith.addi %135, %c63_105 : index
          memref.store %134, %arg6[%40, %136] : memref<?x64xf32>
          %c-1_106 = arith.constant -1 : index
          %137 = arith.muli %123, %c-1_106 : index
          %c63_107 = arith.constant 63 : index
          %138 = arith.addi %137, %c63_107 : index
          %139 = memref.load %arg6[%40, %138] : memref<?x64xf32>
          memref.store %139, %alloca_22[] : memref<f32>
          %c0_108 = arith.constant 0 : index
          %140 = memref.load %alloca_16[%c0_108] : memref<1xf32>
          memref.store %140, %alloca_25[] : memref<f32>
          %c-1_109 = arith.constant -1 : index
          %141 = arith.muli %123, %c-1_109 : index
          %c63_110 = arith.constant 63 : index
          %142 = arith.addi %141, %c63_110 : index
          %143 = memref.load %arg3[%40, %142] : memref<?x64xf32>
          memref.store %143, %alloca_3[] : memref<f32>
          %c0_111 = arith.constant 0 : index
          %144 = memref.load %alloca_13[%c0_111] : memref<1xf32>
          memref.store %144, %alloca_21[] : memref<f32>
        }
        scf.reduce 
      }
    }
    %c0_40 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_41 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_40) to (%c2) step (%c1_41) {
      %c0_51 = arith.constant 0 : index
      %c2_52 = arith.constant 2 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c2_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %c32 = arith.constant 32 : index
        %c1_55 = arith.constant 1 : index
        scf.for %arg9 = %c0_54 to %c32 step %c1_55 {
          %c32_56 = arith.constant 32 : index
          %40 = arith.muli %arg7, %c32_56 : index
          %41 = arith.addi %40, %arg9 : index
          %c0_57 = arith.constant 0 : index
          %c8 = arith.constant 8 : index
          %c1_58 = arith.constant 1 : index
          scf.for %arg10 = %c0_57 to %c8 step %c1_58 {
            %c32_59 = arith.constant 32 : index
            %42 = arith.muli %arg8, %c32_59 : index
            %c4 = arith.constant 4 : index
            %43 = arith.muli %arg10, %c4 : index
            %44 = arith.addi %42, %43 : index
            %45 = memref.load %arg5[%41, %44] : memref<?x64xf32>
            %46 = memref.load %arg6[%41, %44] : memref<?x64xf32>
            %47 = arith.addf %45, %46 : f32
            memref.store %47, %arg4[%41, %44] : memref<?x64xf32>
            %c1_60 = arith.constant 1 : index
            %48 = arith.addi %44, %c1_60 : index
            %49 = memref.load %arg5[%41, %48] : memref<?x64xf32>
            %50 = memref.load %arg6[%41, %48] : memref<?x64xf32>
            %51 = arith.addf %49, %50 : f32
            memref.store %51, %arg4[%41, %48] : memref<?x64xf32>
            %c2_61 = arith.constant 2 : index
            %52 = arith.addi %44, %c2_61 : index
            %53 = memref.load %arg5[%41, %52] : memref<?x64xf32>
            %54 = memref.load %arg6[%41, %52] : memref<?x64xf32>
            %55 = arith.addf %53, %54 : f32
            memref.store %55, %arg4[%41, %52] : memref<?x64xf32>
            %c3 = arith.constant 3 : index
            %56 = arith.addi %44, %c3 : index
            %57 = memref.load %arg5[%41, %56] : memref<?x64xf32>
            %58 = memref.load %arg6[%41, %56] : memref<?x64xf32>
            %59 = arith.addf %57, %58 : f32
            memref.store %59, %arg4[%41, %56] : memref<?x64xf32>
          }
        }
      }
      scf.reduce 
    }
    %c0_42 = arith.constant 0 : index
    %c64_43 = arith.constant 64 : index
    %c1_44 = arith.constant 1 : index
    scf.for %arg7 = %c0_42 to %c64_43 step %c1_44 {
      %c0_51 = arith.constant 0 : index
      %c1_52 = arith.constant 1 : index
      %c1_53 = arith.constant 1 : index
      scf.parallel (%arg8) = (%c0_51) to (%c1_52) step (%c1_53) {
        %40 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_11[] : memref<f32>
        %c0_54 = arith.constant 0 : index
        %41 = memref.load %alloca_9[%c0_54] : memref<1xf32>
        %c0_55 = arith.constant 0 : index
        %42 = memref.load %alloca_18[%c0_55] : memref<1xf32>
        %c0_56 = arith.constant 0 : index
        %43 = memref.load %alloca_15[%c0_56] : memref<1xf32>
        %c0_57 = arith.constant 0 : index
        %44 = memref.load %alloca_6[%c0_57] : memref<1xf32>
        %c0_58 = arith.constant 0 : index
        %45 = memref.load %alloca_9[%c0_58] : memref<1xf32>
        %c0_59 = arith.constant 0 : index
        %46 = memref.load %alloca_18[%c0_59] : memref<1xf32>
        %c0_60 = arith.constant 0 : index
        %47 = memref.load %alloca_15[%c0_60] : memref<1xf32>
        %c0_61 = arith.constant 0 : index
        %48 = memref.load %alloca_6[%c0_61] : memref<1xf32>
        %c0_62 = arith.constant 0 : index
        %49 = memref.load %alloca_9[%c0_62] : memref<1xf32>
        %c0_63 = arith.constant 0 : index
        %50 = memref.load %alloca_18[%c0_63] : memref<1xf32>
        %c0_64 = arith.constant 0 : index
        %51 = memref.load %alloca_15[%c0_64] : memref<1xf32>
        %c0_65 = arith.constant 0 : index
        %52 = memref.load %alloca_6[%c0_65] : memref<1xf32>
        %c0_66 = arith.constant 0 : index
        %53 = memref.load %alloca_9[%c0_66] : memref<1xf32>
        %c0_67 = arith.constant 0 : index
        %54 = memref.load %alloca_18[%c0_67] : memref<1xf32>
        %c0_68 = arith.constant 0 : index
        %55 = memref.load %alloca_15[%c0_68] : memref<1xf32>
        %c0_69 = arith.constant 0 : index
        %56 = memref.load %alloca_6[%c0_69] : memref<1xf32>
        %c0_70 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_71 = arith.constant 1 : index
        scf.for %arg9 = %c0_70 to %c16 step %c1_71 {
          %c4 = arith.constant 4 : index
          %57 = arith.muli %arg9, %c4 : index
          %58 = memref.load %arg4[%57, %40] : memref<?x64xf32>
          %59 = arith.mulf %41, %58 : f32
          %60 = memref.load %alloca_11[] : memref<f32>
          %61 = arith.mulf %42, %60 : f32
          %62 = arith.addf %59, %61 : f32
          %63 = memref.load %alloca_4[] : memref<f32>
          %c0_72 = arith.constant 0 : index
          memref.store %63, %alloca_19[%c0_72] : memref<1xf32>
          %64 = arith.mulf %43, %63 : f32
          %65 = arith.addf %62, %64 : f32
          %66 = memref.load %alloca_24[] : memref<f32>
          %67 = arith.mulf %44, %66 : f32
          %68 = arith.addf %65, %67 : f32
          memref.store %68, %arg5[%57, %40] : memref<?x64xf32>
          %69 = memref.load %arg5[%57, %40] : memref<?x64xf32>
          memref.store %69, %alloca_4[] : memref<f32>
          %c0_73 = arith.constant 0 : index
          %70 = memref.load %alloca_19[%c0_73] : memref<1xf32>
          memref.store %70, %alloca_24[] : memref<f32>
          %71 = memref.load %arg4[%57, %40] : memref<?x64xf32>
          memref.store %71, %alloca_11[] : memref<f32>
          %c1_74 = arith.constant 1 : index
          %72 = arith.addi %57, %c1_74 : index
          %73 = memref.load %arg4[%72, %40] : memref<?x64xf32>
          %74 = arith.mulf %45, %73 : f32
          %75 = memref.load %alloca_11[] : memref<f32>
          %76 = arith.mulf %46, %75 : f32
          %77 = arith.addf %74, %76 : f32
          %78 = memref.load %alloca_4[] : memref<f32>
          %c0_75 = arith.constant 0 : index
          memref.store %78, %alloca_19[%c0_75] : memref<1xf32>
          %79 = arith.mulf %47, %78 : f32
          %80 = arith.addf %77, %79 : f32
          %81 = memref.load %alloca_24[] : memref<f32>
          %82 = arith.mulf %48, %81 : f32
          %83 = arith.addf %80, %82 : f32
          memref.store %83, %arg5[%72, %40] : memref<?x64xf32>
          %84 = memref.load %arg5[%72, %40] : memref<?x64xf32>
          memref.store %84, %alloca_4[] : memref<f32>
          %c0_76 = arith.constant 0 : index
          %85 = memref.load %alloca_19[%c0_76] : memref<1xf32>
          memref.store %85, %alloca_24[] : memref<f32>
          %86 = memref.load %arg4[%72, %40] : memref<?x64xf32>
          memref.store %86, %alloca_11[] : memref<f32>
          %c2_77 = arith.constant 2 : index
          %87 = arith.addi %57, %c2_77 : index
          %88 = memref.load %arg4[%87, %40] : memref<?x64xf32>
          %89 = arith.mulf %49, %88 : f32
          %90 = memref.load %alloca_11[] : memref<f32>
          %91 = arith.mulf %50, %90 : f32
          %92 = arith.addf %89, %91 : f32
          %93 = memref.load %alloca_4[] : memref<f32>
          %c0_78 = arith.constant 0 : index
          memref.store %93, %alloca_19[%c0_78] : memref<1xf32>
          %94 = arith.mulf %51, %93 : f32
          %95 = arith.addf %92, %94 : f32
          %96 = memref.load %alloca_24[] : memref<f32>
          %97 = arith.mulf %52, %96 : f32
          %98 = arith.addf %95, %97 : f32
          memref.store %98, %arg5[%87, %40] : memref<?x64xf32>
          %99 = memref.load %arg5[%87, %40] : memref<?x64xf32>
          memref.store %99, %alloca_4[] : memref<f32>
          %c0_79 = arith.constant 0 : index
          %100 = memref.load %alloca_19[%c0_79] : memref<1xf32>
          memref.store %100, %alloca_24[] : memref<f32>
          %101 = memref.load %arg4[%87, %40] : memref<?x64xf32>
          memref.store %101, %alloca_11[] : memref<f32>
          %c3 = arith.constant 3 : index
          %102 = arith.addi %57, %c3 : index
          %103 = memref.load %arg4[%102, %40] : memref<?x64xf32>
          %104 = arith.mulf %53, %103 : f32
          %105 = memref.load %alloca_11[] : memref<f32>
          %106 = arith.mulf %54, %105 : f32
          %107 = arith.addf %104, %106 : f32
          %108 = memref.load %alloca_4[] : memref<f32>
          %c0_80 = arith.constant 0 : index
          memref.store %108, %alloca_19[%c0_80] : memref<1xf32>
          %109 = arith.mulf %55, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = memref.load %alloca_24[] : memref<f32>
          %112 = arith.mulf %56, %111 : f32
          %113 = arith.addf %110, %112 : f32
          memref.store %113, %arg5[%102, %40] : memref<?x64xf32>
          %114 = memref.load %arg5[%102, %40] : memref<?x64xf32>
          memref.store %114, %alloca_4[] : memref<f32>
          %c0_81 = arith.constant 0 : index
          %115 = memref.load %alloca_19[%c0_81] : memref<1xf32>
          memref.store %115, %alloca_24[] : memref<f32>
          %116 = memref.load %arg4[%102, %40] : memref<?x64xf32>
          memref.store %116, %alloca_11[] : memref<f32>
        }
        scf.reduce 
      }
    }
    %c0_45 = arith.constant 0 : index
    %c64_46 = arith.constant 64 : index
    %c1_47 = arith.constant 1 : index
    scf.for %arg7 = %c0_45 to %c64_46 step %c1_47 {
      %c0_51 = arith.constant 0 : index
      %c1_52 = arith.constant 1 : index
      %c1_53 = arith.constant 1 : index
      scf.parallel (%arg8) = (%c0_51) to (%c1_52) step (%c1_53) {
        %40 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        memref.store %cst, %alloca_23[] : memref<f32>
        memref.store %cst, %alloca_10[] : memref<f32>
        %c0_54 = arith.constant 0 : index
        %41 = memref.load %alloca_12[%c0_54] : memref<1xf32>
        %c0_55 = arith.constant 0 : index
        %42 = memref.load %alloca_14[%c0_55] : memref<1xf32>
        %c0_56 = arith.constant 0 : index
        %43 = memref.load %alloca_15[%c0_56] : memref<1xf32>
        %c0_57 = arith.constant 0 : index
        %44 = memref.load %alloca_6[%c0_57] : memref<1xf32>
        %c0_58 = arith.constant 0 : index
        %45 = memref.load %alloca_12[%c0_58] : memref<1xf32>
        %c0_59 = arith.constant 0 : index
        %46 = memref.load %alloca_14[%c0_59] : memref<1xf32>
        %c0_60 = arith.constant 0 : index
        %47 = memref.load %alloca_15[%c0_60] : memref<1xf32>
        %c0_61 = arith.constant 0 : index
        %48 = memref.load %alloca_6[%c0_61] : memref<1xf32>
        %c0_62 = arith.constant 0 : index
        %49 = memref.load %alloca_12[%c0_62] : memref<1xf32>
        %c0_63 = arith.constant 0 : index
        %50 = memref.load %alloca_14[%c0_63] : memref<1xf32>
        %c0_64 = arith.constant 0 : index
        %51 = memref.load %alloca_15[%c0_64] : memref<1xf32>
        %c0_65 = arith.constant 0 : index
        %52 = memref.load %alloca_6[%c0_65] : memref<1xf32>
        %c0_66 = arith.constant 0 : index
        %53 = memref.load %alloca_12[%c0_66] : memref<1xf32>
        %c0_67 = arith.constant 0 : index
        %54 = memref.load %alloca_14[%c0_67] : memref<1xf32>
        %c0_68 = arith.constant 0 : index
        %55 = memref.load %alloca_15[%c0_68] : memref<1xf32>
        %c0_69 = arith.constant 0 : index
        %56 = memref.load %alloca_6[%c0_69] : memref<1xf32>
        %c0_70 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_71 = arith.constant 1 : index
        scf.for %arg9 = %c0_70 to %c16 step %c1_71 {
          %c4 = arith.constant 4 : index
          %57 = arith.muli %arg9, %c4 : index
          %58 = memref.load %alloca_10[] : memref<f32>
          %c0_72 = arith.constant 0 : index
          memref.store %58, %alloca_17[%c0_72] : memref<1xf32>
          %59 = arith.mulf %41, %58 : f32
          %60 = memref.load %alloca_23[] : memref<f32>
          %61 = arith.mulf %42, %60 : f32
          %62 = arith.addf %59, %61 : f32
          %63 = memref.load %alloca_22[] : memref<f32>
          %c0_73 = arith.constant 0 : index
          memref.store %63, %alloca_20[%c0_73] : memref<1xf32>
          %64 = arith.mulf %43, %63 : f32
          %65 = arith.addf %62, %64 : f32
          %66 = memref.load %alloca_25[] : memref<f32>
          %67 = arith.mulf %44, %66 : f32
          %68 = arith.addf %65, %67 : f32
          %c-1 = arith.constant -1 : index
          %69 = arith.muli %57, %c-1 : index
          %c63 = arith.constant 63 : index
          %70 = arith.addi %69, %c63 : index
          memref.store %68, %arg6[%70, %40] : memref<?x64xf32>
          %c-1_74 = arith.constant -1 : index
          %71 = arith.muli %57, %c-1_74 : index
          %c63_75 = arith.constant 63 : index
          %72 = arith.addi %71, %c63_75 : index
          %73 = memref.load %arg6[%72, %40] : memref<?x64xf32>
          memref.store %73, %alloca_22[] : memref<f32>
          %c0_76 = arith.constant 0 : index
          %74 = memref.load %alloca_20[%c0_76] : memref<1xf32>
          memref.store %74, %alloca_25[] : memref<f32>
          %c-1_77 = arith.constant -1 : index
          %75 = arith.muli %57, %c-1_77 : index
          %c63_78 = arith.constant 63 : index
          %76 = arith.addi %75, %c63_78 : index
          %77 = memref.load %arg4[%76, %40] : memref<?x64xf32>
          memref.store %77, %alloca_10[] : memref<f32>
          %c0_79 = arith.constant 0 : index
          %78 = memref.load %alloca_17[%c0_79] : memref<1xf32>
          memref.store %78, %alloca_23[] : memref<f32>
          %c1_80 = arith.constant 1 : index
          %79 = arith.addi %57, %c1_80 : index
          %80 = memref.load %alloca_10[] : memref<f32>
          %c0_81 = arith.constant 0 : index
          memref.store %80, %alloca_17[%c0_81] : memref<1xf32>
          %81 = arith.mulf %45, %80 : f32
          %82 = memref.load %alloca_23[] : memref<f32>
          %83 = arith.mulf %46, %82 : f32
          %84 = arith.addf %81, %83 : f32
          %85 = memref.load %alloca_22[] : memref<f32>
          %c0_82 = arith.constant 0 : index
          memref.store %85, %alloca_20[%c0_82] : memref<1xf32>
          %86 = arith.mulf %47, %85 : f32
          %87 = arith.addf %84, %86 : f32
          %88 = memref.load %alloca_25[] : memref<f32>
          %89 = arith.mulf %48, %88 : f32
          %90 = arith.addf %87, %89 : f32
          %c-1_83 = arith.constant -1 : index
          %91 = arith.muli %79, %c-1_83 : index
          %c63_84 = arith.constant 63 : index
          %92 = arith.addi %91, %c63_84 : index
          memref.store %90, %arg6[%92, %40] : memref<?x64xf32>
          %c-1_85 = arith.constant -1 : index
          %93 = arith.muli %79, %c-1_85 : index
          %c63_86 = arith.constant 63 : index
          %94 = arith.addi %93, %c63_86 : index
          %95 = memref.load %arg6[%94, %40] : memref<?x64xf32>
          memref.store %95, %alloca_22[] : memref<f32>
          %c0_87 = arith.constant 0 : index
          %96 = memref.load %alloca_20[%c0_87] : memref<1xf32>
          memref.store %96, %alloca_25[] : memref<f32>
          %c-1_88 = arith.constant -1 : index
          %97 = arith.muli %79, %c-1_88 : index
          %c63_89 = arith.constant 63 : index
          %98 = arith.addi %97, %c63_89 : index
          %99 = memref.load %arg4[%98, %40] : memref<?x64xf32>
          memref.store %99, %alloca_10[] : memref<f32>
          %c0_90 = arith.constant 0 : index
          %100 = memref.load %alloca_17[%c0_90] : memref<1xf32>
          memref.store %100, %alloca_23[] : memref<f32>
          %c2_91 = arith.constant 2 : index
          %101 = arith.addi %57, %c2_91 : index
          %102 = memref.load %alloca_10[] : memref<f32>
          %c0_92 = arith.constant 0 : index
          memref.store %102, %alloca_17[%c0_92] : memref<1xf32>
          %103 = arith.mulf %49, %102 : f32
          %104 = memref.load %alloca_23[] : memref<f32>
          %105 = arith.mulf %50, %104 : f32
          %106 = arith.addf %103, %105 : f32
          %107 = memref.load %alloca_22[] : memref<f32>
          %c0_93 = arith.constant 0 : index
          memref.store %107, %alloca_20[%c0_93] : memref<1xf32>
          %108 = arith.mulf %51, %107 : f32
          %109 = arith.addf %106, %108 : f32
          %110 = memref.load %alloca_25[] : memref<f32>
          %111 = arith.mulf %52, %110 : f32
          %112 = arith.addf %109, %111 : f32
          %c-1_94 = arith.constant -1 : index
          %113 = arith.muli %101, %c-1_94 : index
          %c63_95 = arith.constant 63 : index
          %114 = arith.addi %113, %c63_95 : index
          memref.store %112, %arg6[%114, %40] : memref<?x64xf32>
          %c-1_96 = arith.constant -1 : index
          %115 = arith.muli %101, %c-1_96 : index
          %c63_97 = arith.constant 63 : index
          %116 = arith.addi %115, %c63_97 : index
          %117 = memref.load %arg6[%116, %40] : memref<?x64xf32>
          memref.store %117, %alloca_22[] : memref<f32>
          %c0_98 = arith.constant 0 : index
          %118 = memref.load %alloca_20[%c0_98] : memref<1xf32>
          memref.store %118, %alloca_25[] : memref<f32>
          %c-1_99 = arith.constant -1 : index
          %119 = arith.muli %101, %c-1_99 : index
          %c63_100 = arith.constant 63 : index
          %120 = arith.addi %119, %c63_100 : index
          %121 = memref.load %arg4[%120, %40] : memref<?x64xf32>
          memref.store %121, %alloca_10[] : memref<f32>
          %c0_101 = arith.constant 0 : index
          %122 = memref.load %alloca_17[%c0_101] : memref<1xf32>
          memref.store %122, %alloca_23[] : memref<f32>
          %c3 = arith.constant 3 : index
          %123 = arith.addi %57, %c3 : index
          %124 = memref.load %alloca_10[] : memref<f32>
          %c0_102 = arith.constant 0 : index
          memref.store %124, %alloca_17[%c0_102] : memref<1xf32>
          %125 = arith.mulf %53, %124 : f32
          %126 = memref.load %alloca_23[] : memref<f32>
          %127 = arith.mulf %54, %126 : f32
          %128 = arith.addf %125, %127 : f32
          %129 = memref.load %alloca_22[] : memref<f32>
          %c0_103 = arith.constant 0 : index
          memref.store %129, %alloca_20[%c0_103] : memref<1xf32>
          %130 = arith.mulf %55, %129 : f32
          %131 = arith.addf %128, %130 : f32
          %132 = memref.load %alloca_25[] : memref<f32>
          %133 = arith.mulf %56, %132 : f32
          %134 = arith.addf %131, %133 : f32
          %c-1_104 = arith.constant -1 : index
          %135 = arith.muli %123, %c-1_104 : index
          %c63_105 = arith.constant 63 : index
          %136 = arith.addi %135, %c63_105 : index
          memref.store %134, %arg6[%136, %40] : memref<?x64xf32>
          %c-1_106 = arith.constant -1 : index
          %137 = arith.muli %123, %c-1_106 : index
          %c63_107 = arith.constant 63 : index
          %138 = arith.addi %137, %c63_107 : index
          %139 = memref.load %arg6[%138, %40] : memref<?x64xf32>
          memref.store %139, %alloca_22[] : memref<f32>
          %c0_108 = arith.constant 0 : index
          %140 = memref.load %alloca_20[%c0_108] : memref<1xf32>
          memref.store %140, %alloca_25[] : memref<f32>
          %c-1_109 = arith.constant -1 : index
          %141 = arith.muli %123, %c-1_109 : index
          %c63_110 = arith.constant 63 : index
          %142 = arith.addi %141, %c63_110 : index
          %143 = memref.load %arg4[%142, %40] : memref<?x64xf32>
          memref.store %143, %alloca_10[] : memref<f32>
          %c0_111 = arith.constant 0 : index
          %144 = memref.load %alloca_17[%c0_111] : memref<1xf32>
          memref.store %144, %alloca_23[] : memref<f32>
        }
        scf.reduce 
      }
    }
    %c0_48 = arith.constant 0 : index
    %c2_49 = arith.constant 2 : index
    %c1_50 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_48) to (%c2_49) step (%c1_50) {
      %c0_51 = arith.constant 0 : index
      %c2_52 = arith.constant 2 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c2_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %c32 = arith.constant 32 : index
        %c1_55 = arith.constant 1 : index
        scf.for %arg9 = %c0_54 to %c32 step %c1_55 {
          %c32_56 = arith.constant 32 : index
          %40 = arith.muli %arg7, %c32_56 : index
          %41 = arith.addi %40, %arg9 : index
          %c0_57 = arith.constant 0 : index
          %c8 = arith.constant 8 : index
          %c1_58 = arith.constant 1 : index
          scf.for %arg10 = %c0_57 to %c8 step %c1_58 {
            %c32_59 = arith.constant 32 : index
            %42 = arith.muli %arg8, %c32_59 : index
            %c4 = arith.constant 4 : index
            %43 = arith.muli %arg10, %c4 : index
            %44 = arith.addi %42, %43 : index
            %45 = memref.load %arg5[%41, %44] : memref<?x64xf32>
            %46 = memref.load %arg6[%41, %44] : memref<?x64xf32>
            %47 = arith.addf %45, %46 : f32
            memref.store %47, %arg4[%41, %44] : memref<?x64xf32>
            %c1_60 = arith.constant 1 : index
            %48 = arith.addi %44, %c1_60 : index
            %49 = memref.load %arg5[%41, %48] : memref<?x64xf32>
            %50 = memref.load %arg6[%41, %48] : memref<?x64xf32>
            %51 = arith.addf %49, %50 : f32
            memref.store %51, %arg4[%41, %48] : memref<?x64xf32>
            %c2_61 = arith.constant 2 : index
            %52 = arith.addi %44, %c2_61 : index
            %53 = memref.load %arg5[%41, %52] : memref<?x64xf32>
            %54 = memref.load %arg6[%41, %52] : memref<?x64xf32>
            %55 = arith.addf %53, %54 : f32
            memref.store %55, %arg4[%41, %52] : memref<?x64xf32>
            %c3 = arith.constant 3 : index
            %56 = arith.addi %44, %c3 : index
            %57 = memref.load %arg5[%41, %56] : memref<?x64xf32>
            %58 = memref.load %arg6[%41, %56] : memref<?x64xf32>
            %59 = arith.addf %57, %58 : f32
            memref.store %59, %arg4[%41, %56] : memref<?x64xf32>
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

