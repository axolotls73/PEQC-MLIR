module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
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
    memref.store %6, %alloca[] : memref<f64>
    %c0_8 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0_8 to %c2 step %c1 {
      %c32 = arith.constant 32 : index
      %7 = arith.muli %arg3, %c32 : index
      %c1_9 = arith.constant 1 : index
      %8 = arith.addi %7, %c1_9 : index
      %c0_10 = arith.constant 0 : index
      %c32_11 = arith.constant 32 : index
      %c-32 = arith.constant -32 : index
      %9 = arith.muli %arg3, %c-32 : index
      %c39 = arith.constant 39 : index
      %10 = arith.addi %9, %c39 : index
      %11 = arith.minsi %c32_11, %10 : index
      %c1_12 = arith.constant 1 : index
      scf.for %arg4 = %c0_10 to %11 step %c1_12 {
        %12 = arith.addi %8, %arg4 : index
        memref.store %cst, %alloca[] : memref<f64>
        %13 = memref.load %alloca[] : memref<f64>
        %c-1 = arith.constant -1 : index
        %14 = arith.addi %12, %c-1 : index
        %15 = memref.load %arg1[%14] : memref<?xf64>
        %c0_13 = arith.constant 0 : index
        %16 = memref.load %arg2[%c0_13] : memref<?xf64>
        %17 = arith.mulf %15, %16 : f64
        %18 = arith.addf %13, %17 : f64
        memref.store %18, %alloca[] : memref<f64>
        %19 = memref.load %alloca_3[] : memref<f64>
        %20 = memref.load %alloca_4[] : memref<f64>
        %21 = arith.mulf %20, %20 : f64
        %22 = arith.subf %19, %21 : f64
        %23 = memref.load %alloca_3[] : memref<f64>
        %24 = arith.mulf %22, %23 : f64
        memref.store %24, %alloca_3[] : memref<f64>
        %c0_14 = arith.constant 0 : index
        %c8 = arith.constant 8 : index
        %25 = arith.muli %arg3, %c8 : index
        %c4 = arith.constant 4 : index
        %c0_15 = arith.constant 0 : index
        %c-1_16 = arith.constant -1 : index
        %26 = arith.cmpi slt, %arg4, %c0_15 : index
        %27 = arith.subi %c-1_16, %arg4 : index
        %28 = arith.select %26, %27, %arg4 : index
        %29 = arith.divsi %28, %c4 : index
        %30 = arith.subi %c-1_16, %29 : index
        %31 = arith.select %26, %30, %29 : index
        %32 = arith.addi %25, %31 : index
        %c1_17 = arith.constant 1 : index
        scf.for %arg5 = %c0_14 to %32 step %c1_17 {
          %c4_56 = arith.constant 4 : index
          %83 = arith.muli %arg5, %c4_56 : index
          %c1_57 = arith.constant 1 : index
          %84 = arith.addi %83, %c1_57 : index
          %85 = memref.load %alloca[] : memref<f64>
          %c-1_58 = arith.constant -1 : index
          %86 = arith.muli %84, %c-1_58 : index
          %87 = arith.addi %12, %86 : index
          %c-1_59 = arith.constant -1 : index
          %88 = arith.addi %87, %c-1_59 : index
          %89 = memref.load %arg1[%88] : memref<?xf64>
          %90 = memref.load %arg2[%84] : memref<?xf64>
          %91 = arith.mulf %89, %90 : f64
          %92 = arith.addf %85, %91 : f64
          memref.store %92, %alloca[] : memref<f64>
          %c1_60 = arith.constant 1 : index
          %93 = arith.addi %84, %c1_60 : index
          %94 = memref.load %alloca[] : memref<f64>
          %c-1_61 = arith.constant -1 : index
          %95 = arith.muli %93, %c-1_61 : index
          %96 = arith.addi %12, %95 : index
          %c-1_62 = arith.constant -1 : index
          %97 = arith.addi %96, %c-1_62 : index
          %98 = memref.load %arg1[%97] : memref<?xf64>
          %99 = memref.load %arg2[%93] : memref<?xf64>
          %100 = arith.mulf %98, %99 : f64
          %101 = arith.addf %94, %100 : f64
          memref.store %101, %alloca[] : memref<f64>
          %c2_63 = arith.constant 2 : index
          %102 = arith.addi %84, %c2_63 : index
          %103 = memref.load %alloca[] : memref<f64>
          %c-1_64 = arith.constant -1 : index
          %104 = arith.muli %102, %c-1_64 : index
          %105 = arith.addi %12, %104 : index
          %c-1_65 = arith.constant -1 : index
          %106 = arith.addi %105, %c-1_65 : index
          %107 = memref.load %arg1[%106] : memref<?xf64>
          %108 = memref.load %arg2[%102] : memref<?xf64>
          %109 = arith.mulf %107, %108 : f64
          %110 = arith.addf %103, %109 : f64
          memref.store %110, %alloca[] : memref<f64>
          %c3 = arith.constant 3 : index
          %111 = arith.addi %84, %c3 : index
          %112 = memref.load %alloca[] : memref<f64>
          %c-1_66 = arith.constant -1 : index
          %113 = arith.muli %111, %c-1_66 : index
          %114 = arith.addi %12, %113 : index
          %c-1_67 = arith.constant -1 : index
          %115 = arith.addi %114, %c-1_67 : index
          %116 = memref.load %arg1[%115] : memref<?xf64>
          %117 = memref.load %arg2[%111] : memref<?xf64>
          %118 = arith.mulf %116, %117 : f64
          %119 = arith.addf %112, %118 : f64
          memref.store %119, %alloca[] : memref<f64>
        }
        %c0_18 = arith.constant 0 : index
        %c4_19 = arith.constant 4 : index
        %33 = arith.remsi %arg4, %c4_19 : index
        %c0_20 = arith.constant 0 : index
        %34 = arith.cmpi slt, %33, %c0_20 : index
        %35 = arith.addi %33, %c4_19 : index
        %36 = arith.select %34, %35, %33 : index
        %c1_21 = arith.constant 1 : index
        scf.for %arg5 = %c0_18 to %36 step %c1_21 {
          %c-1_56 = arith.constant -1 : index
          %83 = arith.addi %12, %c-1_56 : index
          %c4_57 = arith.constant 4 : index
          %c0_58 = arith.constant 0 : index
          %c-1_59 = arith.constant -1 : index
          %84 = arith.cmpi slt, %83, %c0_58 : index
          %85 = arith.subi %c-1_59, %83 : index
          %86 = arith.select %84, %85, %83 : index
          %87 = arith.divsi %86, %c4_57 : index
          %88 = arith.subi %c-1_59, %87 : index
          %89 = arith.select %84, %88, %87 : index
          %c4_60 = arith.constant 4 : index
          %90 = arith.muli %89, %c4_60 : index
          %91 = arith.addi %arg5, %90 : index
          %c1_61 = arith.constant 1 : index
          %92 = arith.addi %91, %c1_61 : index
          %93 = memref.load %alloca[] : memref<f64>
          %c-1_62 = arith.constant -1 : index
          %94 = arith.muli %92, %c-1_62 : index
          %95 = arith.addi %12, %94 : index
          %c-1_63 = arith.constant -1 : index
          %96 = arith.addi %95, %c-1_63 : index
          %97 = memref.load %arg1[%96] : memref<?xf64>
          %98 = memref.load %arg2[%92] : memref<?xf64>
          %99 = arith.mulf %97, %98 : f64
          %100 = arith.addf %93, %99 : f64
          memref.store %100, %alloca[] : memref<f64>
        }
        %c0_22 = arith.constant 0 : index
        %c32_23 = arith.constant 32 : index
        %37 = arith.muli %arg3, %c32_23 : index
        %38 = arith.addi %arg4, %37 : index
        %39 = arith.cmpi eq, %38, %c0_22 : index
        scf.if %39 {
          %c1_56 = arith.constant 1 : index
          %83 = memref.load %arg1[%c1_56] : memref<?xf64>
          %84 = memref.load %alloca[] : memref<f64>
          %85 = arith.addf %83, %84 : f64
          %86 = arith.negf %85 : f64
          %87 = memref.load %alloca_3[] : memref<f64>
          %88 = arith.divf %86, %87 : f64
          %c0_57 = arith.constant 0 : index
          memref.store %88, %alloca_1[%c0_57] : memref<1xf64>
          %c0_58 = arith.constant 0 : index
          %89 = memref.load %arg2[%c0_58] : memref<?xf64>
          %c0_59 = arith.constant 0 : index
          %90 = memref.load %alloca_1[%c0_59] : memref<1xf64>
          %c0_60 = arith.constant 0 : index
          %91 = memref.load %arg2[%c0_60] : memref<?xf64>
          %92 = arith.mulf %90, %91 : f64
          %93 = arith.addf %89, %92 : f64
          %c0_61 = arith.constant 0 : index
          memref.store %93, %alloca_2[%c0_61] : memref<40xf64>
          %c0_62 = arith.constant 0 : index
          %94 = memref.load %alloca_2[%c0_62] : memref<40xf64>
          %c0_63 = arith.constant 0 : index
          memref.store %94, %arg2[%c0_63] : memref<?xf64>
          %c0_64 = arith.constant 0 : index
          %95 = memref.load %alloca_1[%c0_64] : memref<1xf64>
          %c0_65 = arith.constant 0 : index
          memref.store %95, %alloca_5[%c0_65] : memref<1xf64>
          memref.store %95, %alloca_4[] : memref<f64>
          %c0_66 = arith.constant 0 : index
          %96 = memref.load %alloca_5[%c0_66] : memref<1xf64>
          %c1_67 = arith.constant 1 : index
          memref.store %96, %arg2[%c1_67] : memref<?xf64>
        }
        %c0_24 = arith.constant 0 : index
        %c32_25 = arith.constant 32 : index
        %40 = arith.muli %arg3, %c32_25 : index
        %41 = arith.addi %arg4, %40 : index
        %c-1_26 = arith.constant -1 : index
        %42 = arith.addi %41, %c-1_26 : index
        %43 = arith.cmpi sge, %42, %c0_24 : index
        scf.if %43 {
          %83 = memref.load %arg1[%12] : memref<?xf64>
          %84 = memref.load %alloca[] : memref<f64>
          %85 = arith.addf %83, %84 : f64
          %86 = arith.negf %85 : f64
          %87 = memref.load %alloca_3[] : memref<f64>
          %88 = arith.divf %86, %87 : f64
          %c0_56 = arith.constant 0 : index
          memref.store %88, %alloca_1[%c0_56] : memref<1xf64>
          %c0_57 = arith.constant 0 : index
          %89 = memref.load %arg2[%c0_57] : memref<?xf64>
          %c0_58 = arith.constant 0 : index
          %90 = memref.load %alloca_1[%c0_58] : memref<1xf64>
          %c-1_59 = arith.constant -1 : index
          %91 = arith.addi %12, %c-1_59 : index
          %92 = memref.load %arg2[%91] : memref<?xf64>
          %93 = arith.mulf %90, %92 : f64
          %94 = arith.addf %89, %93 : f64
          %c0_60 = arith.constant 0 : index
          memref.store %94, %alloca_2[%c0_60] : memref<40xf64>
          %c0_61 = arith.constant 0 : index
          %95 = memref.load %alloca_1[%c0_61] : memref<1xf64>
          %c0_62 = arith.constant 0 : index
          memref.store %95, %alloca_5[%c0_62] : memref<1xf64>
          memref.store %95, %alloca_4[] : memref<f64>
          %c0_63 = arith.constant 0 : index
          %96 = memref.load %alloca_5[%c0_63] : memref<1xf64>
          memref.store %96, %arg2[%12] : memref<?xf64>
        }
        %c0_27 = arith.constant 0 : index
        %c32_28 = arith.constant 32 : index
        %44 = arith.muli %arg3, %c32_28 : index
        %45 = arith.addi %arg4, %44 : index
        %c-1_29 = arith.constant -1 : index
        %46 = arith.addi %45, %c-1_29 : index
        %c4_30 = arith.constant 4 : index
        %c0_31 = arith.constant 0 : index
        %c-1_32 = arith.constant -1 : index
        %47 = arith.cmpi slt, %46, %c0_31 : index
        %48 = arith.subi %c-1_32, %46 : index
        %49 = arith.select %47, %48, %46 : index
        %50 = arith.divsi %49, %c4_30 : index
        %51 = arith.subi %c-1_32, %50 : index
        %52 = arith.select %47, %51, %50 : index
        %c1_33 = arith.constant 1 : index
        scf.parallel (%arg5) = (%c0_27) to (%52) step (%c1_33) {
          %c4_56 = arith.constant 4 : index
          %83 = arith.muli %arg5, %c4_56 : index
          %c39_57 = arith.constant 39 : index
          %84 = arith.addi %83, %c39_57 : index
          %c-38 = arith.constant -38 : index
          %85 = arith.addi %84, %c-38 : index
          %86 = memref.load %arg2[%85] : memref<?xf64>
          %c0_58 = arith.constant 0 : index
          %87 = memref.load %alloca_1[%c0_58] : memref<1xf64>
          %c-1_59 = arith.constant -1 : index
          %88 = arith.muli %84, %c-1_59 : index
          %89 = arith.addi %88, %12 : index
          %c37 = arith.constant 37 : index
          %90 = arith.addi %89, %c37 : index
          %91 = memref.load %arg2[%90] : memref<?xf64>
          %92 = arith.mulf %87, %91 : f64
          %93 = arith.addf %86, %92 : f64
          %c-38_60 = arith.constant -38 : index
          %94 = arith.addi %84, %c-38_60 : index
          memref.store %93, %alloca_2[%94] : memref<40xf64>
          %c1_61 = arith.constant 1 : index
          %95 = arith.addi %84, %c1_61 : index
          %c-38_62 = arith.constant -38 : index
          %96 = arith.addi %95, %c-38_62 : index
          %97 = memref.load %arg2[%96] : memref<?xf64>
          %c0_63 = arith.constant 0 : index
          %98 = memref.load %alloca_1[%c0_63] : memref<1xf64>
          %c-1_64 = arith.constant -1 : index
          %99 = arith.muli %95, %c-1_64 : index
          %100 = arith.addi %99, %12 : index
          %c37_65 = arith.constant 37 : index
          %101 = arith.addi %100, %c37_65 : index
          %102 = memref.load %arg2[%101] : memref<?xf64>
          %103 = arith.mulf %98, %102 : f64
          %104 = arith.addf %97, %103 : f64
          %c-38_66 = arith.constant -38 : index
          %105 = arith.addi %95, %c-38_66 : index
          memref.store %104, %alloca_2[%105] : memref<40xf64>
          %c2_67 = arith.constant 2 : index
          %106 = arith.addi %84, %c2_67 : index
          %c-38_68 = arith.constant -38 : index
          %107 = arith.addi %106, %c-38_68 : index
          %108 = memref.load %arg2[%107] : memref<?xf64>
          %c0_69 = arith.constant 0 : index
          %109 = memref.load %alloca_1[%c0_69] : memref<1xf64>
          %c-1_70 = arith.constant -1 : index
          %110 = arith.muli %106, %c-1_70 : index
          %111 = arith.addi %110, %12 : index
          %c37_71 = arith.constant 37 : index
          %112 = arith.addi %111, %c37_71 : index
          %113 = memref.load %arg2[%112] : memref<?xf64>
          %114 = arith.mulf %109, %113 : f64
          %115 = arith.addf %108, %114 : f64
          %c-38_72 = arith.constant -38 : index
          %116 = arith.addi %106, %c-38_72 : index
          memref.store %115, %alloca_2[%116] : memref<40xf64>
          %c3 = arith.constant 3 : index
          %117 = arith.addi %84, %c3 : index
          %c-38_73 = arith.constant -38 : index
          %118 = arith.addi %117, %c-38_73 : index
          %119 = memref.load %arg2[%118] : memref<?xf64>
          %c0_74 = arith.constant 0 : index
          %120 = memref.load %alloca_1[%c0_74] : memref<1xf64>
          %c-1_75 = arith.constant -1 : index
          %121 = arith.muli %117, %c-1_75 : index
          %122 = arith.addi %121, %12 : index
          %c37_76 = arith.constant 37 : index
          %123 = arith.addi %122, %c37_76 : index
          %124 = memref.load %arg2[%123] : memref<?xf64>
          %125 = arith.mulf %120, %124 : f64
          %126 = arith.addf %119, %125 : f64
          %c-38_77 = arith.constant -38 : index
          %127 = arith.addi %117, %c-38_77 : index
          memref.store %126, %alloca_2[%127] : memref<40xf64>
          scf.reduce 
        }
        %c0_34 = arith.constant 0 : index
        %c32_35 = arith.constant 32 : index
        %53 = arith.muli %arg3, %c32_35 : index
        %54 = arith.addi %arg4, %53 : index
        %c32_36 = arith.constant 32 : index
        %55 = arith.muli %arg3, %c32_36 : index
        %56 = arith.addi %arg4, %55 : index
        %c-1_37 = arith.constant -1 : index
        %57 = arith.addi %56, %c-1_37 : index
        %c4_38 = arith.constant 4 : index
        %c0_39 = arith.constant 0 : index
        %c-1_40 = arith.constant -1 : index
        %58 = arith.cmpi slt, %57, %c0_39 : index
        %59 = arith.subi %c-1_40, %57 : index
        %60 = arith.select %58, %59, %57 : index
        %61 = arith.divsi %60, %c4_38 : index
        %62 = arith.subi %c-1_40, %61 : index
        %63 = arith.select %58, %62, %61 : index
        %c-4 = arith.constant -4 : index
        %64 = arith.muli %63, %c-4 : index
        %65 = arith.addi %54, %64 : index
        %c-1_41 = arith.constant -1 : index
        %66 = arith.addi %65, %c-1_41 : index
        %c1_42 = arith.constant 1 : index
        scf.parallel (%arg5) = (%c0_34) to (%66) step (%c1_42) {
          %c-2 = arith.constant -2 : index
          %83 = arith.addi %12, %c-2 : index
          %c4_56 = arith.constant 4 : index
          %c0_57 = arith.constant 0 : index
          %c-1_58 = arith.constant -1 : index
          %84 = arith.cmpi slt, %83, %c0_57 : index
          %85 = arith.subi %c-1_58, %83 : index
          %86 = arith.select %84, %85, %83 : index
          %87 = arith.divsi %86, %c4_56 : index
          %88 = arith.subi %c-1_58, %87 : index
          %89 = arith.select %84, %88, %87 : index
          %c4_59 = arith.constant 4 : index
          %90 = arith.muli %89, %c4_59 : index
          %91 = arith.addi %90, %arg5 : index
          %c39_60 = arith.constant 39 : index
          %92 = arith.addi %91, %c39_60 : index
          %c-38 = arith.constant -38 : index
          %93 = arith.addi %92, %c-38 : index
          %94 = memref.load %arg2[%93] : memref<?xf64>
          %c0_61 = arith.constant 0 : index
          %95 = memref.load %alloca_1[%c0_61] : memref<1xf64>
          %c-1_62 = arith.constant -1 : index
          %96 = arith.muli %92, %c-1_62 : index
          %97 = arith.addi %96, %12 : index
          %c37 = arith.constant 37 : index
          %98 = arith.addi %97, %c37 : index
          %99 = memref.load %arg2[%98] : memref<?xf64>
          %100 = arith.mulf %95, %99 : f64
          %101 = arith.addf %94, %100 : f64
          %c-38_63 = arith.constant -38 : index
          %102 = arith.addi %92, %c-38_63 : index
          memref.store %101, %alloca_2[%102] : memref<40xf64>
          scf.reduce 
        }
        %c0_43 = arith.constant 0 : index
        %c32_44 = arith.constant 32 : index
        %67 = arith.muli %arg3, %c32_44 : index
        %68 = arith.addi %arg4, %67 : index
        %c-1_45 = arith.constant -1 : index
        %69 = arith.addi %68, %c-1_45 : index
        %70 = arith.cmpi sge, %69, %c0_43 : index
        scf.if %70 {
          %c-1_56 = arith.constant -1 : index
          %83 = arith.addi %12, %c-1_56 : index
          %84 = memref.load %arg2[%83] : memref<?xf64>
          %c0_57 = arith.constant 0 : index
          %85 = memref.load %alloca_1[%c0_57] : memref<1xf64>
          %c0_58 = arith.constant 0 : index
          %86 = memref.load %arg2[%c0_58] : memref<?xf64>
          %87 = arith.mulf %85, %86 : f64
          %88 = arith.addf %84, %87 : f64
          %c-1_59 = arith.constant -1 : index
          %89 = arith.addi %12, %c-1_59 : index
          memref.store %88, %alloca_2[%89] : memref<40xf64>
          %c0_60 = arith.constant 0 : index
          %90 = memref.load %alloca_2[%c0_60] : memref<40xf64>
          %c0_61 = arith.constant 0 : index
          memref.store %90, %arg2[%c0_61] : memref<?xf64>
        }
        %c0_46 = arith.constant 0 : index
        %c8_47 = arith.constant 8 : index
        %71 = arith.muli %arg3, %c8_47 : index
        %c4_48 = arith.constant 4 : index
        %c0_49 = arith.constant 0 : index
        %c-1_50 = arith.constant -1 : index
        %72 = arith.cmpi slt, %arg4, %c0_49 : index
        %73 = arith.subi %c-1_50, %arg4 : index
        %74 = arith.select %72, %73, %arg4 : index
        %75 = arith.divsi %74, %c4_48 : index
        %76 = arith.subi %c-1_50, %75 : index
        %77 = arith.select %72, %76, %75 : index
        %78 = arith.addi %71, %77 : index
        %c1_51 = arith.constant 1 : index
        scf.for %arg5 = %c0_46 to %78 step %c1_51 {
          %c4_56 = arith.constant 4 : index
          %83 = arith.muli %arg5, %c4_56 : index
          %84 = arith.addi %12, %83 : index
          %c38 = arith.constant 38 : index
          %85 = arith.addi %84, %c38 : index
          %c-1_57 = arith.constant -1 : index
          %86 = arith.muli %12, %c-1_57 : index
          %87 = arith.addi %86, %85 : index
          %c-37 = arith.constant -37 : index
          %88 = arith.addi %87, %c-37 : index
          %89 = memref.load %alloca_2[%88] : memref<40xf64>
          %c-1_58 = arith.constant -1 : index
          %90 = arith.muli %12, %c-1_58 : index
          %91 = arith.addi %90, %85 : index
          %c-37_59 = arith.constant -37 : index
          %92 = arith.addi %91, %c-37_59 : index
          memref.store %89, %arg2[%92] : memref<?xf64>
          %c1_60 = arith.constant 1 : index
          %93 = arith.addi %85, %c1_60 : index
          %c-1_61 = arith.constant -1 : index
          %94 = arith.muli %12, %c-1_61 : index
          %95 = arith.addi %94, %93 : index
          %c-37_62 = arith.constant -37 : index
          %96 = arith.addi %95, %c-37_62 : index
          %97 = memref.load %alloca_2[%96] : memref<40xf64>
          %c-1_63 = arith.constant -1 : index
          %98 = arith.muli %12, %c-1_63 : index
          %99 = arith.addi %98, %93 : index
          %c-37_64 = arith.constant -37 : index
          %100 = arith.addi %99, %c-37_64 : index
          memref.store %97, %arg2[%100] : memref<?xf64>
          %c2_65 = arith.constant 2 : index
          %101 = arith.addi %85, %c2_65 : index
          %c-1_66 = arith.constant -1 : index
          %102 = arith.muli %12, %c-1_66 : index
          %103 = arith.addi %102, %101 : index
          %c-37_67 = arith.constant -37 : index
          %104 = arith.addi %103, %c-37_67 : index
          %105 = memref.load %alloca_2[%104] : memref<40xf64>
          %c-1_68 = arith.constant -1 : index
          %106 = arith.muli %12, %c-1_68 : index
          %107 = arith.addi %106, %101 : index
          %c-37_69 = arith.constant -37 : index
          %108 = arith.addi %107, %c-37_69 : index
          memref.store %105, %arg2[%108] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %109 = arith.addi %85, %c3 : index
          %c-1_70 = arith.constant -1 : index
          %110 = arith.muli %12, %c-1_70 : index
          %111 = arith.addi %110, %109 : index
          %c-37_71 = arith.constant -37 : index
          %112 = arith.addi %111, %c-37_71 : index
          %113 = memref.load %alloca_2[%112] : memref<40xf64>
          %c-1_72 = arith.constant -1 : index
          %114 = arith.muli %12, %c-1_72 : index
          %115 = arith.addi %114, %109 : index
          %c-37_73 = arith.constant -37 : index
          %116 = arith.addi %115, %c-37_73 : index
          memref.store %113, %arg2[%116] : memref<?xf64>
        }
        %c0_52 = arith.constant 0 : index
        %c4_53 = arith.constant 4 : index
        %79 = arith.remsi %arg4, %c4_53 : index
        %c0_54 = arith.constant 0 : index
        %80 = arith.cmpi slt, %79, %c0_54 : index
        %81 = arith.addi %79, %c4_53 : index
        %82 = arith.select %80, %81, %79 : index
        %c1_55 = arith.constant 1 : index
        scf.parallel (%arg5) = (%c0_52) to (%82) step (%c1_55) {
          %c-1_56 = arith.constant -1 : index
          %83 = arith.addi %12, %c-1_56 : index
          %c4_57 = arith.constant 4 : index
          %c0_58 = arith.constant 0 : index
          %c-1_59 = arith.constant -1 : index
          %84 = arith.cmpi slt, %83, %c0_58 : index
          %85 = arith.subi %c-1_59, %83 : index
          %86 = arith.select %84, %85, %83 : index
          %87 = arith.divsi %86, %c4_57 : index
          %88 = arith.subi %c-1_59, %87 : index
          %89 = arith.select %84, %88, %87 : index
          %c4_60 = arith.constant 4 : index
          %90 = arith.muli %89, %c4_60 : index
          %91 = arith.addi %12, %90 : index
          %92 = arith.addi %91, %arg5 : index
          %c38 = arith.constant 38 : index
          %93 = arith.addi %92, %c38 : index
          %c-1_61 = arith.constant -1 : index
          %94 = arith.muli %12, %c-1_61 : index
          %95 = arith.addi %94, %93 : index
          %c-37 = arith.constant -37 : index
          %96 = arith.addi %95, %c-37 : index
          %97 = memref.load %alloca_2[%96] : memref<40xf64>
          %c-1_62 = arith.constant -1 : index
          %98 = arith.muli %12, %c-1_62 : index
          %99 = arith.addi %98, %93 : index
          %c-37_63 = arith.constant -37 : index
          %100 = arith.addi %99, %c-37_63 : index
          memref.store %97, %arg2[%100] : memref<?xf64>
          scf.reduce 
        }
      }
    }
    return
  }
}

