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
      %c-1_11 = arith.constant -1 : index
      %19 = arith.addi %arg3, %c-1_11 : index
      %c4 = arith.constant 4 : index
      %c0_12 = arith.constant 0 : index
      %c-1_13 = arith.constant -1 : index
      %20 = arith.cmpi slt, %19, %c0_12 : index
      %21 = arith.subi %c-1_13, %19 : index
      %22 = arith.select %20, %21, %19 : index
      %23 = arith.divsi %22, %c4 : index
      %24 = arith.subi %c-1_13, %23 : index
      %25 = arith.select %20, %24, %23 : index
      %c4_14 = arith.constant 4 : index
      %26 = arith.muli %25, %c4_14 : index
      %c1_15 = arith.constant 1 : index
      %27 = arith.addi %26, %c1_15 : index
      %c4_16 = arith.constant 4 : index
      scf.for %arg4 = %c1_10 to %27 step %c4_16 {
        %85 = memref.load %alloca_1[] : memref<f64>
        %c-1_58 = arith.constant -1 : index
        %86 = arith.muli %arg4, %c-1_58 : index
        %87 = arith.addi %arg3, %86 : index
        %c-1_59 = arith.constant -1 : index
        %88 = arith.addi %87, %c-1_59 : index
        %89 = memref.load %arg1[%88] : memref<?xf64>
        %90 = memref.load %arg2[%arg4] : memref<?xf64>
        %91 = arith.mulf %89, %90 : f64
        %92 = arith.addf %85, %91 : f64
        memref.store %92, %alloca_1[] : memref<f64>
        %c1_60 = arith.constant 1 : index
        %93 = arith.addi %arg4, %c1_60 : index
        %94 = memref.load %alloca_1[] : memref<f64>
        %c-1_61 = arith.constant -1 : index
        %95 = arith.muli %93, %c-1_61 : index
        %96 = arith.addi %arg3, %95 : index
        %c-1_62 = arith.constant -1 : index
        %97 = arith.addi %96, %c-1_62 : index
        %98 = memref.load %arg1[%97] : memref<?xf64>
        %99 = memref.load %arg2[%93] : memref<?xf64>
        %100 = arith.mulf %98, %99 : f64
        %101 = arith.addf %94, %100 : f64
        memref.store %101, %alloca_1[] : memref<f64>
        %c2_63 = arith.constant 2 : index
        %102 = arith.addi %arg4, %c2_63 : index
        %103 = memref.load %alloca_1[] : memref<f64>
        %c-1_64 = arith.constant -1 : index
        %104 = arith.muli %102, %c-1_64 : index
        %105 = arith.addi %arg3, %104 : index
        %c-1_65 = arith.constant -1 : index
        %106 = arith.addi %105, %c-1_65 : index
        %107 = memref.load %arg1[%106] : memref<?xf64>
        %108 = memref.load %arg2[%102] : memref<?xf64>
        %109 = arith.mulf %107, %108 : f64
        %110 = arith.addf %103, %109 : f64
        memref.store %110, %alloca_1[] : memref<f64>
        %c3 = arith.constant 3 : index
        %111 = arith.addi %arg4, %c3 : index
        %112 = memref.load %alloca_1[] : memref<f64>
        %c-1_66 = arith.constant -1 : index
        %113 = arith.muli %111, %c-1_66 : index
        %114 = arith.addi %arg3, %113 : index
        %c-1_67 = arith.constant -1 : index
        %115 = arith.addi %114, %c-1_67 : index
        %116 = memref.load %arg1[%115] : memref<?xf64>
        %117 = memref.load %arg2[%111] : memref<?xf64>
        %118 = arith.mulf %116, %117 : f64
        %119 = arith.addf %112, %118 : f64
        memref.store %119, %alloca_1[] : memref<f64>
      }
      %c-1_17 = arith.constant -1 : index
      %28 = arith.addi %arg3, %c-1_17 : index
      %c4_18 = arith.constant 4 : index
      %c0_19 = arith.constant 0 : index
      %c-1_20 = arith.constant -1 : index
      %29 = arith.cmpi slt, %28, %c0_19 : index
      %30 = arith.subi %c-1_20, %28 : index
      %31 = arith.select %29, %30, %28 : index
      %32 = arith.divsi %31, %c4_18 : index
      %33 = arith.subi %c-1_20, %32 : index
      %34 = arith.select %29, %33, %32 : index
      %c4_21 = arith.constant 4 : index
      %35 = arith.muli %34, %c4_21 : index
      %c1_22 = arith.constant 1 : index
      %36 = arith.addi %35, %c1_22 : index
      %c1_23 = arith.constant 1 : index
      scf.for %arg4 = %36 to %arg3 step %c1_23 {
        %85 = memref.load %alloca_1[] : memref<f64>
        %c-1_58 = arith.constant -1 : index
        %86 = arith.muli %arg4, %c-1_58 : index
        %87 = arith.addi %arg3, %86 : index
        %c-1_59 = arith.constant -1 : index
        %88 = arith.addi %87, %c-1_59 : index
        %89 = memref.load %arg1[%88] : memref<?xf64>
        %90 = memref.load %arg2[%arg4] : memref<?xf64>
        %91 = arith.mulf %89, %90 : f64
        %92 = arith.addf %85, %91 : f64
        memref.store %92, %alloca_1[] : memref<f64>
      }
      %c0_24 = arith.constant 0 : index
      %c-1_25 = arith.constant -1 : index
      %37 = arith.addi %arg3, %c-1_25 : index
      %38 = arith.cmpi eq, %37, %c0_24 : index
      scf.if %38 {
        %c1_58 = arith.constant 1 : index
        %85 = memref.load %arg1[%c1_58] : memref<?xf64>
        %86 = memref.load %alloca_1[] : memref<f64>
        %87 = arith.addf %85, %86 : f64
        %88 = arith.negf %87 : f64
        %89 = memref.load %alloca_3[] : memref<f64>
        %90 = arith.divf %88, %89 : f64
        %c0_59 = arith.constant 0 : index
        memref.store %90, %alloca[%c0_59] : memref<1xf64>
        %c0_60 = arith.constant 0 : index
        %91 = memref.load %arg2[%c0_60] : memref<?xf64>
        %c0_61 = arith.constant 0 : index
        %92 = memref.load %alloca[%c0_61] : memref<1xf64>
        %c0_62 = arith.constant 0 : index
        %93 = memref.load %arg2[%c0_62] : memref<?xf64>
        %94 = arith.mulf %92, %93 : f64
        %95 = arith.addf %91, %94 : f64
        %c0_63 = arith.constant 0 : index
        memref.store %95, %alloca_2[%c0_63] : memref<40xf64>
        %c0_64 = arith.constant 0 : index
        %96 = memref.load %alloca_2[%c0_64] : memref<40xf64>
        %c0_65 = arith.constant 0 : index
        memref.store %96, %arg2[%c0_65] : memref<?xf64>
        %c0_66 = arith.constant 0 : index
        %97 = memref.load %alloca[%c0_66] : memref<1xf64>
        %c0_67 = arith.constant 0 : index
        memref.store %97, %alloca_5[%c0_67] : memref<1xf64>
        memref.store %97, %alloca_4[] : memref<f64>
        %c0_68 = arith.constant 0 : index
        %98 = memref.load %alloca_5[%c0_68] : memref<1xf64>
        %c1_69 = arith.constant 1 : index
        memref.store %98, %arg2[%c1_69] : memref<?xf64>
      }
      %c0_26 = arith.constant 0 : index
      %c-2 = arith.constant -2 : index
      %39 = arith.addi %arg3, %c-2 : index
      %40 = arith.cmpi sge, %39, %c0_26 : index
      scf.if %40 {
        %85 = memref.load %arg1[%arg3] : memref<?xf64>
        %86 = memref.load %alloca_1[] : memref<f64>
        %87 = arith.addf %85, %86 : f64
        %88 = arith.negf %87 : f64
        %89 = memref.load %alloca_3[] : memref<f64>
        %90 = arith.divf %88, %89 : f64
        %c0_58 = arith.constant 0 : index
        memref.store %90, %alloca[%c0_58] : memref<1xf64>
        %c0_59 = arith.constant 0 : index
        %91 = memref.load %arg2[%c0_59] : memref<?xf64>
        %c0_60 = arith.constant 0 : index
        %92 = memref.load %alloca[%c0_60] : memref<1xf64>
        %c-1_61 = arith.constant -1 : index
        %93 = arith.addi %arg3, %c-1_61 : index
        %94 = memref.load %arg2[%93] : memref<?xf64>
        %95 = arith.mulf %92, %94 : f64
        %96 = arith.addf %91, %95 : f64
        %c0_62 = arith.constant 0 : index
        memref.store %96, %alloca_2[%c0_62] : memref<40xf64>
        %c0_63 = arith.constant 0 : index
        %97 = memref.load %alloca[%c0_63] : memref<1xf64>
        %c0_64 = arith.constant 0 : index
        memref.store %97, %alloca_5[%c0_64] : memref<1xf64>
        memref.store %97, %alloca_4[] : memref<f64>
        %c0_65 = arith.constant 0 : index
        %98 = memref.load %alloca_5[%c0_65] : memref<1xf64>
        memref.store %98, %arg2[%arg3] : memref<?xf64>
      }
      %c39 = arith.constant 39 : index
      %c-2_27 = arith.constant -2 : index
      %41 = arith.addi %arg3, %c-2_27 : index
      %c4_28 = arith.constant 4 : index
      %c0_29 = arith.constant 0 : index
      %c-1_30 = arith.constant -1 : index
      %42 = arith.cmpi slt, %41, %c0_29 : index
      %43 = arith.subi %c-1_30, %41 : index
      %44 = arith.select %42, %43, %41 : index
      %45 = arith.divsi %44, %c4_28 : index
      %46 = arith.subi %c-1_30, %45 : index
      %47 = arith.select %42, %46, %45 : index
      %c4_31 = arith.constant 4 : index
      %48 = arith.muli %47, %c4_31 : index
      %c39_32 = arith.constant 39 : index
      %49 = arith.addi %48, %c39_32 : index
      %c4_33 = arith.constant 4 : index
      scf.for %arg4 = %c39 to %49 step %c4_33 {
        %c-38 = arith.constant -38 : index
        %85 = arith.addi %arg4, %c-38 : index
        %86 = memref.load %arg2[%85] : memref<?xf64>
        %c0_58 = arith.constant 0 : index
        %87 = memref.load %alloca[%c0_58] : memref<1xf64>
        %c-1_59 = arith.constant -1 : index
        %88 = arith.muli %arg4, %c-1_59 : index
        %89 = arith.addi %88, %arg3 : index
        %c37_60 = arith.constant 37 : index
        %90 = arith.addi %89, %c37_60 : index
        %91 = memref.load %arg2[%90] : memref<?xf64>
        %92 = arith.mulf %87, %91 : f64
        %93 = arith.addf %86, %92 : f64
        %c-38_61 = arith.constant -38 : index
        %94 = arith.addi %arg4, %c-38_61 : index
        memref.store %93, %alloca_2[%94] : memref<40xf64>
        %c1_62 = arith.constant 1 : index
        %95 = arith.addi %arg4, %c1_62 : index
        %c-38_63 = arith.constant -38 : index
        %96 = arith.addi %95, %c-38_63 : index
        %97 = memref.load %arg2[%96] : memref<?xf64>
        %c0_64 = arith.constant 0 : index
        %98 = memref.load %alloca[%c0_64] : memref<1xf64>
        %c-1_65 = arith.constant -1 : index
        %99 = arith.muli %95, %c-1_65 : index
        %100 = arith.addi %99, %arg3 : index
        %c37_66 = arith.constant 37 : index
        %101 = arith.addi %100, %c37_66 : index
        %102 = memref.load %arg2[%101] : memref<?xf64>
        %103 = arith.mulf %98, %102 : f64
        %104 = arith.addf %97, %103 : f64
        %c-38_67 = arith.constant -38 : index
        %105 = arith.addi %95, %c-38_67 : index
        memref.store %104, %alloca_2[%105] : memref<40xf64>
        %c2_68 = arith.constant 2 : index
        %106 = arith.addi %arg4, %c2_68 : index
        %c-38_69 = arith.constant -38 : index
        %107 = arith.addi %106, %c-38_69 : index
        %108 = memref.load %arg2[%107] : memref<?xf64>
        %c0_70 = arith.constant 0 : index
        %109 = memref.load %alloca[%c0_70] : memref<1xf64>
        %c-1_71 = arith.constant -1 : index
        %110 = arith.muli %106, %c-1_71 : index
        %111 = arith.addi %110, %arg3 : index
        %c37_72 = arith.constant 37 : index
        %112 = arith.addi %111, %c37_72 : index
        %113 = memref.load %arg2[%112] : memref<?xf64>
        %114 = arith.mulf %109, %113 : f64
        %115 = arith.addf %108, %114 : f64
        %c-38_73 = arith.constant -38 : index
        %116 = arith.addi %106, %c-38_73 : index
        memref.store %115, %alloca_2[%116] : memref<40xf64>
        %c3 = arith.constant 3 : index
        %117 = arith.addi %arg4, %c3 : index
        %c-38_74 = arith.constant -38 : index
        %118 = arith.addi %117, %c-38_74 : index
        %119 = memref.load %arg2[%118] : memref<?xf64>
        %c0_75 = arith.constant 0 : index
        %120 = memref.load %alloca[%c0_75] : memref<1xf64>
        %c-1_76 = arith.constant -1 : index
        %121 = arith.muli %117, %c-1_76 : index
        %122 = arith.addi %121, %arg3 : index
        %c37_77 = arith.constant 37 : index
        %123 = arith.addi %122, %c37_77 : index
        %124 = memref.load %arg2[%123] : memref<?xf64>
        %125 = arith.mulf %120, %124 : f64
        %126 = arith.addf %119, %125 : f64
        %c-38_78 = arith.constant -38 : index
        %127 = arith.addi %117, %c-38_78 : index
        memref.store %126, %alloca_2[%127] : memref<40xf64>
      }
      %c-2_34 = arith.constant -2 : index
      %50 = arith.addi %arg3, %c-2_34 : index
      %c4_35 = arith.constant 4 : index
      %c0_36 = arith.constant 0 : index
      %c-1_37 = arith.constant -1 : index
      %51 = arith.cmpi slt, %50, %c0_36 : index
      %52 = arith.subi %c-1_37, %50 : index
      %53 = arith.select %51, %52, %50 : index
      %54 = arith.divsi %53, %c4_35 : index
      %55 = arith.subi %c-1_37, %54 : index
      %56 = arith.select %51, %55, %54 : index
      %c4_38 = arith.constant 4 : index
      %57 = arith.muli %56, %c4_38 : index
      %c39_39 = arith.constant 39 : index
      %58 = arith.addi %57, %c39_39 : index
      %c37 = arith.constant 37 : index
      %59 = arith.addi %arg3, %c37 : index
      %c1_40 = arith.constant 1 : index
      scf.for %arg4 = %58 to %59 step %c1_40 {
        %c-38 = arith.constant -38 : index
        %85 = arith.addi %arg4, %c-38 : index
        %86 = memref.load %arg2[%85] : memref<?xf64>
        %c0_58 = arith.constant 0 : index
        %87 = memref.load %alloca[%c0_58] : memref<1xf64>
        %c-1_59 = arith.constant -1 : index
        %88 = arith.muli %arg4, %c-1_59 : index
        %89 = arith.addi %88, %arg3 : index
        %c37_60 = arith.constant 37 : index
        %90 = arith.addi %89, %c37_60 : index
        %91 = memref.load %arg2[%90] : memref<?xf64>
        %92 = arith.mulf %87, %91 : f64
        %93 = arith.addf %86, %92 : f64
        %c-38_61 = arith.constant -38 : index
        %94 = arith.addi %arg4, %c-38_61 : index
        memref.store %93, %alloca_2[%94] : memref<40xf64>
      }
      %c0_41 = arith.constant 0 : index
      %c-2_42 = arith.constant -2 : index
      %60 = arith.addi %arg3, %c-2_42 : index
      %61 = arith.cmpi sge, %60, %c0_41 : index
      scf.if %61 {
        %c-1_58 = arith.constant -1 : index
        %85 = arith.addi %arg3, %c-1_58 : index
        %86 = memref.load %arg2[%85] : memref<?xf64>
        %c0_59 = arith.constant 0 : index
        %87 = memref.load %alloca[%c0_59] : memref<1xf64>
        %c0_60 = arith.constant 0 : index
        %88 = memref.load %arg2[%c0_60] : memref<?xf64>
        %89 = arith.mulf %87, %88 : f64
        %90 = arith.addf %86, %89 : f64
        %c-1_61 = arith.constant -1 : index
        %91 = arith.addi %arg3, %c-1_61 : index
        memref.store %90, %alloca_2[%91] : memref<40xf64>
        %c0_62 = arith.constant 0 : index
        %92 = memref.load %alloca_2[%c0_62] : memref<40xf64>
        %c0_63 = arith.constant 0 : index
        memref.store %92, %arg2[%c0_63] : memref<?xf64>
      }
      %c38 = arith.constant 38 : index
      %62 = arith.addi %arg3, %c38 : index
      %c-1_43 = arith.constant -1 : index
      %63 = arith.addi %arg3, %c-1_43 : index
      %c4_44 = arith.constant 4 : index
      %c0_45 = arith.constant 0 : index
      %c-1_46 = arith.constant -1 : index
      %64 = arith.cmpi slt, %63, %c0_45 : index
      %65 = arith.subi %c-1_46, %63 : index
      %66 = arith.select %64, %65, %63 : index
      %67 = arith.divsi %66, %c4_44 : index
      %68 = arith.subi %c-1_46, %67 : index
      %69 = arith.select %64, %68, %67 : index
      %c4_47 = arith.constant 4 : index
      %70 = arith.muli %69, %c4_47 : index
      %71 = arith.addi %arg3, %70 : index
      %c38_48 = arith.constant 38 : index
      %72 = arith.addi %71, %c38_48 : index
      %c4_49 = arith.constant 4 : index
      scf.for %arg4 = %62 to %72 step %c4_49 {
        %c-1_58 = arith.constant -1 : index
        %85 = arith.muli %arg3, %c-1_58 : index
        %86 = arith.addi %85, %arg4 : index
        %c-37 = arith.constant -37 : index
        %87 = arith.addi %86, %c-37 : index
        %88 = memref.load %alloca_2[%87] : memref<40xf64>
        %c-1_59 = arith.constant -1 : index
        %89 = arith.muli %arg3, %c-1_59 : index
        %90 = arith.addi %89, %arg4 : index
        %c-37_60 = arith.constant -37 : index
        %91 = arith.addi %90, %c-37_60 : index
        memref.store %88, %arg2[%91] : memref<?xf64>
        %c1_61 = arith.constant 1 : index
        %92 = arith.addi %arg4, %c1_61 : index
        %c-1_62 = arith.constant -1 : index
        %93 = arith.muli %arg3, %c-1_62 : index
        %94 = arith.addi %93, %92 : index
        %c-37_63 = arith.constant -37 : index
        %95 = arith.addi %94, %c-37_63 : index
        %96 = memref.load %alloca_2[%95] : memref<40xf64>
        %c-1_64 = arith.constant -1 : index
        %97 = arith.muli %arg3, %c-1_64 : index
        %98 = arith.addi %97, %92 : index
        %c-37_65 = arith.constant -37 : index
        %99 = arith.addi %98, %c-37_65 : index
        memref.store %96, %arg2[%99] : memref<?xf64>
        %c2_66 = arith.constant 2 : index
        %100 = arith.addi %arg4, %c2_66 : index
        %c-1_67 = arith.constant -1 : index
        %101 = arith.muli %arg3, %c-1_67 : index
        %102 = arith.addi %101, %100 : index
        %c-37_68 = arith.constant -37 : index
        %103 = arith.addi %102, %c-37_68 : index
        %104 = memref.load %alloca_2[%103] : memref<40xf64>
        %c-1_69 = arith.constant -1 : index
        %105 = arith.muli %arg3, %c-1_69 : index
        %106 = arith.addi %105, %100 : index
        %c-37_70 = arith.constant -37 : index
        %107 = arith.addi %106, %c-37_70 : index
        memref.store %104, %arg2[%107] : memref<?xf64>
        %c3 = arith.constant 3 : index
        %108 = arith.addi %arg4, %c3 : index
        %c-1_71 = arith.constant -1 : index
        %109 = arith.muli %arg3, %c-1_71 : index
        %110 = arith.addi %109, %108 : index
        %c-37_72 = arith.constant -37 : index
        %111 = arith.addi %110, %c-37_72 : index
        %112 = memref.load %alloca_2[%111] : memref<40xf64>
        %c-1_73 = arith.constant -1 : index
        %113 = arith.muli %arg3, %c-1_73 : index
        %114 = arith.addi %113, %108 : index
        %c-37_74 = arith.constant -37 : index
        %115 = arith.addi %114, %c-37_74 : index
        memref.store %112, %arg2[%115] : memref<?xf64>
      }
      %c-1_50 = arith.constant -1 : index
      %73 = arith.addi %arg3, %c-1_50 : index
      %c4_51 = arith.constant 4 : index
      %c0_52 = arith.constant 0 : index
      %c-1_53 = arith.constant -1 : index
      %74 = arith.cmpi slt, %73, %c0_52 : index
      %75 = arith.subi %c-1_53, %73 : index
      %76 = arith.select %74, %75, %73 : index
      %77 = arith.divsi %76, %c4_51 : index
      %78 = arith.subi %c-1_53, %77 : index
      %79 = arith.select %74, %78, %77 : index
      %c4_54 = arith.constant 4 : index
      %80 = arith.muli %79, %c4_54 : index
      %81 = arith.addi %arg3, %80 : index
      %c38_55 = arith.constant 38 : index
      %82 = arith.addi %81, %c38_55 : index
      %c2 = arith.constant 2 : index
      %83 = arith.muli %arg3, %c2 : index
      %c37_56 = arith.constant 37 : index
      %84 = arith.addi %83, %c37_56 : index
      %c1_57 = arith.constant 1 : index
      scf.for %arg4 = %82 to %84 step %c1_57 {
        %c-1_58 = arith.constant -1 : index
        %85 = arith.muli %arg3, %c-1_58 : index
        %86 = arith.addi %85, %arg4 : index
        %c-37 = arith.constant -37 : index
        %87 = arith.addi %86, %c-37 : index
        %88 = memref.load %alloca_2[%87] : memref<40xf64>
        %c-1_59 = arith.constant -1 : index
        %89 = arith.muli %arg3, %c-1_59 : index
        %90 = arith.addi %89, %arg4 : index
        %c-37_60 = arith.constant -37 : index
        %91 = arith.addi %90, %c-37_60 : index
        memref.store %88, %arg2[%91] : memref<?xf64>
      }
    }
    return
  }
}

