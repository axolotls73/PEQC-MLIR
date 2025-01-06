module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<f64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
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
    memref.store %0, %alloca[] : memref<f64>
    %c0_8 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0_8 to %c2 step %c1 {
      %c32 = arith.constant 32 : index
      %5 = arith.muli %arg3, %c32 : index
      %c1_9 = arith.constant 1 : index
      %6 = arith.addi %5, %c1_9 : index
      %c0_10 = arith.constant 0 : index
      %c32_11 = arith.constant 32 : index
      %c-32 = arith.constant -32 : index
      %7 = arith.muli %arg3, %c-32 : index
      %c39 = arith.constant 39 : index
      %8 = arith.addi %7, %c39 : index
      %9 = arith.minsi %c32_11, %8 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg4 = %c0_10 to %9 step %c1_12 {
        %10 = arith.addi %6, %arg4 : index
        memref.store %cst, %alloca[] : memref<f64>
        %11 = memref.load %alloca[] : memref<f64>
        %c-1 = arith.constant -1 : index
        %12 = arith.addi %10, %c-1 : index
        %13 = memref.load %arg1[%12] : memref<?xf64>
        %c0_13 = arith.constant 0 : index
        %14 = memref.load %arg2[%c0_13] : memref<?xf64>
        %15 = arith.mulf %13, %14 : f64
        %16 = arith.addf %11, %15 : f64
        memref.store %16, %alloca[] : memref<f64>
        %17 = memref.load %alloca_3[] : memref<f64>
        %18 = memref.load %alloca_4[] : memref<f64>
        %19 = arith.mulf %18, %18 : f64
        %20 = arith.subf %17, %19 : f64
        %21 = memref.load %alloca_3[] : memref<f64>
        %22 = arith.mulf %20, %21 : f64
        memref.store %22, %alloca_3[] : memref<f64>
        %c0_14 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %23 = arith.muli %arg3, %c8 : index
        %c4 = arith.constant 4 : index
        %c0_15 = arith.constant 0 : index
        %c-1_16 = arith.constant -1 : index
        %24 = arith.cmpi slt, %arg4, %c0_15 : index
        %25 = arith.subi %c-1_16, %arg4 : index
        %26 = arith.select %24, %25, %arg4 : index
        %27 = arith.divsi %26, %c4 : index
        %28 = arith.subi %c-1_16, %27 : index
        %29 = arith.select %24, %28, %27 : index
        %30 = arith.addi %23, %29 : index
        %c1_17 = arith.constant 1 : index
        scf.for %arg5 = %c0_14 to %30 step %c1_17 {
          %c4_56 = arith.constant 4 : index
          %81 = arith.muli %arg5, %c4_56 : index
          %c1_57 = arith.constant 1 : index
          %82 = arith.addi %81, %c1_57 : index
          %83 = memref.load %alloca[] : memref<f64>
          %c-1_58 = arith.constant -1 : index
          %84 = arith.muli %82, %c-1_58 : index
          %85 = arith.addi %10, %84 : index
          %c-1_59 = arith.constant -1 : index
          %86 = arith.addi %85, %c-1_59 : index
          %87 = memref.load %arg1[%86] : memref<?xf64>
          %88 = memref.load %arg2[%82] : memref<?xf64>
          %89 = arith.mulf %87, %88 : f64
          %90 = arith.addf %83, %89 : f64
          memref.store %90, %alloca[] : memref<f64>
          %c1_60 = arith.constant 1 : index
          %91 = arith.addi %82, %c1_60 : index
          %92 = memref.load %alloca[] : memref<f64>
          %c-1_61 = arith.constant -1 : index
          %93 = arith.muli %91, %c-1_61 : index
          %94 = arith.addi %10, %93 : index
          %c-1_62 = arith.constant -1 : index
          %95 = arith.addi %94, %c-1_62 : index
          %96 = memref.load %arg1[%95] : memref<?xf64>
          %97 = memref.load %arg2[%91] : memref<?xf64>
          %98 = arith.mulf %96, %97 : f64
          %99 = arith.addf %92, %98 : f64
          memref.store %99, %alloca[] : memref<f64>
          %c2_63 = arith.constant 2 : index
          %100 = arith.addi %82, %c2_63 : index
          %101 = memref.load %alloca[] : memref<f64>
          %c-1_64 = arith.constant -1 : index
          %102 = arith.muli %100, %c-1_64 : index
          %103 = arith.addi %10, %102 : index
          %c-1_65 = arith.constant -1 : index
          %104 = arith.addi %103, %c-1_65 : index
          %105 = memref.load %arg1[%104] : memref<?xf64>
          %106 = memref.load %arg2[%100] : memref<?xf64>
          %107 = arith.mulf %105, %106 : f64
          %108 = arith.addf %101, %107 : f64
          memref.store %108, %alloca[] : memref<f64>
          %c3 = arith.constant 3 : index
          %109 = arith.addi %82, %c3 : index
          %110 = memref.load %alloca[] : memref<f64>
          %c-1_66 = arith.constant -1 : index
          %111 = arith.muli %109, %c-1_66 : index
          %112 = arith.addi %10, %111 : index
          %c-1_67 = arith.constant -1 : index
          %113 = arith.addi %112, %c-1_67 : index
          %114 = memref.load %arg1[%113] : memref<?xf64>
          %115 = memref.load %arg2[%109] : memref<?xf64>
          %116 = arith.mulf %114, %115 : f64
          %117 = arith.addf %110, %116 : f64
          memref.store %117, %alloca[] : memref<f64>
        }
        %c0_18 = arith.constant 0 : index
        %c4_19 = arith.constant 4 : index
        %31 = arith.remsi %arg4, %c4_19 : index
        %c0_20 = arith.constant 0 : index
        %32 = arith.cmpi slt, %31, %c0_20 : index
        %33 = arith.addi %31, %c4_19 : index
        %34 = arith.select %32, %33, %31 : index
        %c1_21 = arith.constant 1 : index
        scf.for %arg5 = %c0_18 to %34 step %c1_21 {
          %c-1_56 = arith.constant -1 : index
          %81 = arith.addi %10, %c-1_56 : index
          %c4_57 = arith.constant 4 : index
          %c0_58 = arith.constant 0 : index
          %c-1_59 = arith.constant -1 : index
          %82 = arith.cmpi slt, %81, %c0_58 : index
          %83 = arith.subi %c-1_59, %81 : index
          %84 = arith.select %82, %83, %81 : index
          %85 = arith.divsi %84, %c4_57 : index
          %86 = arith.subi %c-1_59, %85 : index
          %87 = arith.select %82, %86, %85 : index
          %c4_60 = arith.constant 4 : index
          %88 = arith.muli %87, %c4_60 : index
          %89 = arith.addi %arg5, %88 : index
          %c1_61 = arith.constant 1 : index
          %90 = arith.addi %89, %c1_61 : index
          %91 = memref.load %alloca[] : memref<f64>
          %c-1_62 = arith.constant -1 : index
          %92 = arith.muli %90, %c-1_62 : index
          %93 = arith.addi %10, %92 : index
          %c-1_63 = arith.constant -1 : index
          %94 = arith.addi %93, %c-1_63 : index
          %95 = memref.load %arg1[%94] : memref<?xf64>
          %96 = memref.load %arg2[%90] : memref<?xf64>
          %97 = arith.mulf %95, %96 : f64
          %98 = arith.addf %91, %97 : f64
          memref.store %98, %alloca[] : memref<f64>
        }
        %c0_22 = arith.constant 0 : index
        %c32_23 = arith.constant 32 : index
        %35 = arith.muli %arg3, %c32_23 : index
        %36 = arith.addi %arg4, %35 : index
        %37 = arith.cmpi eq, %36, %c0_22 : index
        scf.if %37 {
          %c1_56 = arith.constant 1 : index
          %81 = memref.load %arg1[%c1_56] : memref<?xf64>
          %82 = memref.load %alloca[] : memref<f64>
          %83 = arith.addf %81, %82 : f64
          %84 = arith.negf %83 : f64
          %85 = memref.load %alloca_3[] : memref<f64>
          %86 = arith.divf %84, %85 : f64
          %c0_57 = arith.constant 0 : index
          memref.store %86, %alloca_1[%c0_57] : memref<1xf64>
          %c0_58 = arith.constant 0 : index
          %87 = memref.load %arg2[%c0_58] : memref<?xf64>
          %c0_59 = arith.constant 0 : index
          %88 = memref.load %alloca_1[%c0_59] : memref<1xf64>
          %c0_60 = arith.constant 0 : index
          %89 = memref.load %arg2[%c0_60] : memref<?xf64>
          %90 = arith.mulf %88, %89 : f64
          %91 = arith.addf %87, %90 : f64
          %c0_61 = arith.constant 0 : index
          memref.store %91, %alloca_2[%c0_61] : memref<40xf64>
          %c0_62 = arith.constant 0 : index
          %92 = memref.load %alloca_2[%c0_62] : memref<40xf64>
          %c0_63 = arith.constant 0 : index
          memref.store %92, %arg2[%c0_63] : memref<?xf64>
          %c0_64 = arith.constant 0 : index
          %93 = memref.load %alloca_1[%c0_64] : memref<1xf64>
          %c0_65 = arith.constant 0 : index
          memref.store %93, %alloca_5[%c0_65] : memref<1xf64>
          memref.store %93, %alloca_4[] : memref<f64>
          %c0_66 = arith.constant 0 : index
          %94 = memref.load %alloca_5[%c0_66] : memref<1xf64>
          %c1_67 = arith.constant 1 : index
          memref.store %94, %arg2[%c1_67] : memref<?xf64>
        }
        %c0_24 = arith.constant 0 : index
        %c32_25 = arith.constant 32 : index
        %38 = arith.muli %arg3, %c32_25 : index
        %39 = arith.addi %arg4, %38 : index
        %c-1_26 = arith.constant -1 : index
        %40 = arith.addi %39, %c-1_26 : index
        %41 = arith.cmpi sge, %40, %c0_24 : index
        scf.if %41 {
          %81 = memref.load %arg1[%10] : memref<?xf64>
          %82 = memref.load %alloca[] : memref<f64>
          %83 = arith.addf %81, %82 : f64
          %84 = arith.negf %83 : f64
          %85 = memref.load %alloca_3[] : memref<f64>
          %86 = arith.divf %84, %85 : f64
          %c0_56 = arith.constant 0 : index
          memref.store %86, %alloca_1[%c0_56] : memref<1xf64>
          %c0_57 = arith.constant 0 : index
          %87 = memref.load %arg2[%c0_57] : memref<?xf64>
          %c0_58 = arith.constant 0 : index
          %88 = memref.load %alloca_1[%c0_58] : memref<1xf64>
          %c-1_59 = arith.constant -1 : index
          %89 = arith.addi %10, %c-1_59 : index
          %90 = memref.load %arg2[%89] : memref<?xf64>
          %91 = arith.mulf %88, %90 : f64
          %92 = arith.addf %87, %91 : f64
          %c0_60 = arith.constant 0 : index
          memref.store %92, %alloca_2[%c0_60] : memref<40xf64>
          %c0_61 = arith.constant 0 : index
          %93 = memref.load %alloca_1[%c0_61] : memref<1xf64>
          %c0_62 = arith.constant 0 : index
          memref.store %93, %alloca_5[%c0_62] : memref<1xf64>
          memref.store %93, %alloca_4[] : memref<f64>
          %c0_63 = arith.constant 0 : index
          %94 = memref.load %alloca_5[%c0_63] : memref<1xf64>
          memref.store %94, %arg2[%10] : memref<?xf64>
        }
        %c0_27 = arith.constant 0 : index
        %c32_28 = arith.constant 32 : index
        %42 = arith.muli %arg3, %c32_28 : index
        %43 = arith.addi %arg4, %42 : index
        %c-1_29 = arith.constant -1 : index
        %44 = arith.addi %43, %c-1_29 : index
        %c4_30 = arith.constant 4 : index
        %c0_31 = arith.constant 0 : index
        %c-1_32 = arith.constant -1 : index
        %45 = arith.cmpi slt, %44, %c0_31 : index
        %46 = arith.subi %c-1_32, %44 : index
        %47 = arith.select %45, %46, %44 : index
        %48 = arith.divsi %47, %c4_30 : index
        %49 = arith.subi %c-1_32, %48 : index
        %50 = arith.select %45, %49, %48 : index
        %c1_33 = arith.constant 1 : index
        scf.parallel (%arg5) = (%c0_27) to (%50) step (%c1_33) {
          %c4_56 = arith.constant 4 : index
          %81 = arith.muli %arg5, %c4_56 : index
          %c39_57 = arith.constant 39 : index
          %82 = arith.addi %81, %c39_57 : index
          %c-38 = arith.constant -38 : index
          %83 = arith.addi %82, %c-38 : index
          %84 = memref.load %arg2[%83] : memref<?xf64>
          %c0_58 = arith.constant 0 : index
          %85 = memref.load %alloca_1[%c0_58] : memref<1xf64>
          %c-1_59 = arith.constant -1 : index
          %86 = arith.muli %82, %c-1_59 : index
          %87 = arith.addi %86, %10 : index
          %c37 = arith.constant 37 : index
          %88 = arith.addi %87, %c37 : index
          %89 = memref.load %arg2[%88] : memref<?xf64>
          %90 = arith.mulf %85, %89 : f64
          %91 = arith.addf %84, %90 : f64
          %c-38_60 = arith.constant -38 : index
          %92 = arith.addi %82, %c-38_60 : index
          memref.store %91, %alloca_2[%92] : memref<40xf64>
          %c1_61 = arith.constant 1 : index
          %93 = arith.addi %82, %c1_61 : index
          %c-38_62 = arith.constant -38 : index
          %94 = arith.addi %93, %c-38_62 : index
          %95 = memref.load %arg2[%94] : memref<?xf64>
          %c0_63 = arith.constant 0 : index
          %96 = memref.load %alloca_1[%c0_63] : memref<1xf64>
          %c-1_64 = arith.constant -1 : index
          %97 = arith.muli %93, %c-1_64 : index
          %98 = arith.addi %97, %10 : index
          %c37_65 = arith.constant 37 : index
          %99 = arith.addi %98, %c37_65 : index
          %100 = memref.load %arg2[%99] : memref<?xf64>
          %101 = arith.mulf %96, %100 : f64
          %102 = arith.addf %95, %101 : f64
          %c-38_66 = arith.constant -38 : index
          %103 = arith.addi %93, %c-38_66 : index
          memref.store %102, %alloca_2[%103] : memref<40xf64>
          %c2_67 = arith.constant 2 : index
          %104 = arith.addi %82, %c2_67 : index
          %c-38_68 = arith.constant -38 : index
          %105 = arith.addi %104, %c-38_68 : index
          %106 = memref.load %arg2[%105] : memref<?xf64>
          %c0_69 = arith.constant 0 : index
          %107 = memref.load %alloca_1[%c0_69] : memref<1xf64>
          %c-1_70 = arith.constant -1 : index
          %108 = arith.muli %104, %c-1_70 : index
          %109 = arith.addi %108, %10 : index
          %c37_71 = arith.constant 37 : index
          %110 = arith.addi %109, %c37_71 : index
          %111 = memref.load %arg2[%110] : memref<?xf64>
          %112 = arith.mulf %107, %111 : f64
          %113 = arith.addf %106, %112 : f64
          %c-38_72 = arith.constant -38 : index
          %114 = arith.addi %104, %c-38_72 : index
          memref.store %113, %alloca_2[%114] : memref<40xf64>
          %c3 = arith.constant 3 : index
          %115 = arith.addi %82, %c3 : index
          %c-38_73 = arith.constant -38 : index
          %116 = arith.addi %115, %c-38_73 : index
          %117 = memref.load %arg2[%116] : memref<?xf64>
          %c0_74 = arith.constant 0 : index
          %118 = memref.load %alloca_1[%c0_74] : memref<1xf64>
          %c-1_75 = arith.constant -1 : index
          %119 = arith.muli %115, %c-1_75 : index
          %120 = arith.addi %119, %10 : index
          %c37_76 = arith.constant 37 : index
          %121 = arith.addi %120, %c37_76 : index
          %122 = memref.load %arg2[%121] : memref<?xf64>
          %123 = arith.mulf %118, %122 : f64
          %124 = arith.addf %117, %123 : f64
          %c-38_77 = arith.constant -38 : index
          %125 = arith.addi %115, %c-38_77 : index
          memref.store %124, %alloca_2[%125] : memref<40xf64>
          scf.reduce 
        }
        %c0_34 = arith.constant 0 : index
        %c32_35 = arith.constant 32 : index
        %51 = arith.muli %arg3, %c32_35 : index
        %52 = arith.addi %arg4, %51 : index
        %c32_36 = arith.constant 32 : index
        %53 = arith.muli %arg3, %c32_36 : index
        %54 = arith.addi %arg4, %53 : index
        %c-1_37 = arith.constant -1 : index
        %55 = arith.addi %54, %c-1_37 : index
        %c4_38 = arith.constant 4 : index
        %c0_39 = arith.constant 0 : index
        %c-1_40 = arith.constant -1 : index
        %56 = arith.cmpi slt, %55, %c0_39 : index
        %57 = arith.subi %c-1_40, %55 : index
        %58 = arith.select %56, %57, %55 : index
        %59 = arith.divsi %58, %c4_38 : index
        %60 = arith.subi %c-1_40, %59 : index
        %61 = arith.select %56, %60, %59 : index
        %c-4 = arith.constant -4 : index
        %62 = arith.muli %61, %c-4 : index
        %63 = arith.addi %52, %62 : index
        %c-1_41 = arith.constant -1 : index
        %64 = arith.addi %63, %c-1_41 : index
        %c1_42 = arith.constant 1 : index
        scf.parallel (%arg5) = (%c0_34) to (%64) step (%c1_42) {
          %c-2 = arith.constant -2 : index
          %81 = arith.addi %10, %c-2 : index
          %c4_56 = arith.constant 4 : index
          %c0_57 = arith.constant 0 : index
          %c-1_58 = arith.constant -1 : index
          %82 = arith.cmpi slt, %81, %c0_57 : index
          %83 = arith.subi %c-1_58, %81 : index
          %84 = arith.select %82, %83, %81 : index
          %85 = arith.divsi %84, %c4_56 : index
          %86 = arith.subi %c-1_58, %85 : index
          %87 = arith.select %82, %86, %85 : index
          %c4_59 = arith.constant 4 : index
          %88 = arith.muli %87, %c4_59 : index
          %89 = arith.addi %88, %arg5 : index
          %c39_60 = arith.constant 39 : index
          %90 = arith.addi %89, %c39_60 : index
          %c-38 = arith.constant -38 : index
          %91 = arith.addi %90, %c-38 : index
          %92 = memref.load %arg2[%91] : memref<?xf64>
          %c0_61 = arith.constant 0 : index
          %93 = memref.load %alloca_1[%c0_61] : memref<1xf64>
          %c-1_62 = arith.constant -1 : index
          %94 = arith.muli %90, %c-1_62 : index
          %95 = arith.addi %94, %10 : index
          %c37 = arith.constant 37 : index
          %96 = arith.addi %95, %c37 : index
          %97 = memref.load %arg2[%96] : memref<?xf64>
          %98 = arith.mulf %93, %97 : f64
          %99 = arith.addf %92, %98 : f64
          %c-38_63 = arith.constant -38 : index
          %100 = arith.addi %90, %c-38_63 : index
          memref.store %99, %alloca_2[%100] : memref<40xf64>
          scf.reduce 
        }
        %c0_43 = arith.constant 0 : index
        %c32_44 = arith.constant 32 : index
        %65 = arith.muli %arg3, %c32_44 : index
        %66 = arith.addi %arg4, %65 : index
        %c-1_45 = arith.constant -1 : index
        %67 = arith.addi %66, %c-1_45 : index
        %68 = arith.cmpi sge, %67, %c0_43 : index
        scf.if %68 {
          %c-1_56 = arith.constant -1 : index
          %81 = arith.addi %10, %c-1_56 : index
          %82 = memref.load %arg2[%81] : memref<?xf64>
          %c0_57 = arith.constant 0 : index
          %83 = memref.load %alloca_1[%c0_57] : memref<1xf64>
          %c0_58 = arith.constant 0 : index
          %84 = memref.load %arg2[%c0_58] : memref<?xf64>
          %85 = arith.mulf %83, %84 : f64
          %86 = arith.addf %82, %85 : f64
          %c-1_59 = arith.constant -1 : index
          %87 = arith.addi %10, %c-1_59 : index
          memref.store %86, %alloca_2[%87] : memref<40xf64>
          %c0_60 = arith.constant 0 : index
          %88 = memref.load %alloca_2[%c0_60] : memref<40xf64>
          %c0_61 = arith.constant 0 : index
          memref.store %88, %arg2[%c0_61] : memref<?xf64>
        }
        %c0_46 = arith.constant 0 : index
        %c8_47 = arith.constant 8 : index
        %69 = arith.muli %arg3, %c8_47 : index
        %c4_48 = arith.constant 4 : index
        %c0_49 = arith.constant 0 : index
        %c-1_50 = arith.constant -1 : index
        %70 = arith.cmpi slt, %arg4, %c0_49 : index
        %71 = arith.subi %c-1_50, %arg4 : index
        %72 = arith.select %70, %71, %arg4 : index
        %73 = arith.divsi %72, %c4_48 : index
        %74 = arith.subi %c-1_50, %73 : index
        %75 = arith.select %70, %74, %73 : index
        %76 = arith.addi %69, %75 : index
        %c1_51 = arith.constant 1 : index
        scf.for %arg5 = %c0_46 to %76 step %c1_51 {
          %c4_56 = arith.constant 4 : index
          %81 = arith.muli %arg5, %c4_56 : index
          %82 = arith.addi %10, %81 : index
          %c38 = arith.constant 38 : index
          %83 = arith.addi %82, %c38 : index
          %c-1_57 = arith.constant -1 : index
          %84 = arith.muli %10, %c-1_57 : index
          %85 = arith.addi %84, %83 : index
          %c-37 = arith.constant -37 : index
          %86 = arith.addi %85, %c-37 : index
          %87 = memref.load %alloca_2[%86] : memref<40xf64>
          %c-1_58 = arith.constant -1 : index
          %88 = arith.muli %10, %c-1_58 : index
          %89 = arith.addi %88, %83 : index
          %c-37_59 = arith.constant -37 : index
          %90 = arith.addi %89, %c-37_59 : index
          memref.store %87, %arg2[%90] : memref<?xf64>
          %c1_60 = arith.constant 1 : index
          %91 = arith.addi %83, %c1_60 : index
          %c-1_61 = arith.constant -1 : index
          %92 = arith.muli %10, %c-1_61 : index
          %93 = arith.addi %92, %91 : index
          %c-37_62 = arith.constant -37 : index
          %94 = arith.addi %93, %c-37_62 : index
          %95 = memref.load %alloca_2[%94] : memref<40xf64>
          %c-1_63 = arith.constant -1 : index
          %96 = arith.muli %10, %c-1_63 : index
          %97 = arith.addi %96, %91 : index
          %c-37_64 = arith.constant -37 : index
          %98 = arith.addi %97, %c-37_64 : index
          memref.store %95, %arg2[%98] : memref<?xf64>
          %c2_65 = arith.constant 2 : index
          %99 = arith.addi %83, %c2_65 : index
          %c-1_66 = arith.constant -1 : index
          %100 = arith.muli %10, %c-1_66 : index
          %101 = arith.addi %100, %99 : index
          %c-37_67 = arith.constant -37 : index
          %102 = arith.addi %101, %c-37_67 : index
          %103 = memref.load %alloca_2[%102] : memref<40xf64>
          %c-1_68 = arith.constant -1 : index
          %104 = arith.muli %10, %c-1_68 : index
          %105 = arith.addi %104, %99 : index
          %c-37_69 = arith.constant -37 : index
          %106 = arith.addi %105, %c-37_69 : index
          memref.store %103, %arg2[%106] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %107 = arith.addi %83, %c3 : index
          %c-1_70 = arith.constant -1 : index
          %108 = arith.muli %10, %c-1_70 : index
          %109 = arith.addi %108, %107 : index
          %c-37_71 = arith.constant -37 : index
          %110 = arith.addi %109, %c-37_71 : index
          %111 = memref.load %alloca_2[%110] : memref<40xf64>
          %c-1_72 = arith.constant -1 : index
          %112 = arith.muli %10, %c-1_72 : index
          %113 = arith.addi %112, %107 : index
          %c-37_73 = arith.constant -37 : index
          %114 = arith.addi %113, %c-37_73 : index
          memref.store %111, %arg2[%114] : memref<?xf64>
        }
        %c0_52 = arith.constant 0 : index
        %c4_53 = arith.constant 4 : index
        %77 = arith.remsi %arg4, %c4_53 : index
        %c0_54 = arith.constant 0 : index
        %78 = arith.cmpi slt, %77, %c0_54 : index
        %79 = arith.addi %77, %c4_53 : index
        %80 = arith.select %78, %79, %77 : index
        %c1_55 = arith.constant 1 : index
        scf.parallel (%arg5) = (%c0_52) to (%80) step (%c1_55) {
          %c-1_56 = arith.constant -1 : index
          %81 = arith.addi %10, %c-1_56 : index
          %c4_57 = arith.constant 4 : index
          %c0_58 = arith.constant 0 : index
          %c-1_59 = arith.constant -1 : index
          %82 = arith.cmpi slt, %81, %c0_58 : index
          %83 = arith.subi %c-1_59, %81 : index
          %84 = arith.select %82, %83, %81 : index
          %85 = arith.divsi %84, %c4_57 : index
          %86 = arith.subi %c-1_59, %85 : index
          %87 = arith.select %82, %86, %85 : index
          %c4_60 = arith.constant 4 : index
          %88 = arith.muli %87, %c4_60 : index
          %89 = arith.addi %10, %88 : index
          %90 = arith.addi %89, %arg5 : index
          %c38 = arith.constant 38 : index
          %91 = arith.addi %90, %c38 : index
          %c-1_61 = arith.constant -1 : index
          %92 = arith.muli %10, %c-1_61 : index
          %93 = arith.addi %92, %91 : index
          %c-37 = arith.constant -37 : index
          %94 = arith.addi %93, %c-37 : index
          %95 = memref.load %alloca_2[%94] : memref<40xf64>
          %c-1_62 = arith.constant -1 : index
          %96 = arith.muli %10, %c-1_62 : index
          %97 = arith.addi %96, %91 : index
          %c-37_63 = arith.constant -37 : index
          %98 = arith.addi %97, %c-37_63 : index
          memref.store %95, %arg2[%98] : memref<?xf64>
          scf.reduce 
        }
      }
    }
    return
  }
}

