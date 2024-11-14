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
          %c4_61 = arith.constant 4 : index
          %88 = arith.muli %arg5, %c4_61 : index
          %c1_62 = arith.constant 1 : index
          %89 = arith.addi %88, %c1_62 : index
          %90 = memref.load %alloca[] : memref<f64>
          %c-1_63 = arith.constant -1 : index
          %91 = arith.muli %89, %c-1_63 : index
          %92 = arith.addi %12, %91 : index
          %c-1_64 = arith.constant -1 : index
          %93 = arith.addi %92, %c-1_64 : index
          %94 = memref.load %arg1[%93] : memref<?xf64>
          %95 = memref.load %arg2[%89] : memref<?xf64>
          %96 = arith.mulf %94, %95 : f64
          %97 = arith.addf %90, %96 : f64
          memref.store %97, %alloca[] : memref<f64>
          %c1_65 = arith.constant 1 : index
          %98 = arith.addi %89, %c1_65 : index
          %99 = memref.load %alloca[] : memref<f64>
          %c-1_66 = arith.constant -1 : index
          %100 = arith.muli %98, %c-1_66 : index
          %101 = arith.addi %12, %100 : index
          %c-1_67 = arith.constant -1 : index
          %102 = arith.addi %101, %c-1_67 : index
          %103 = memref.load %arg1[%102] : memref<?xf64>
          %104 = memref.load %arg2[%98] : memref<?xf64>
          %105 = arith.mulf %103, %104 : f64
          %106 = arith.addf %99, %105 : f64
          memref.store %106, %alloca[] : memref<f64>
          %c2_68 = arith.constant 2 : index
          %107 = arith.addi %89, %c2_68 : index
          %108 = memref.load %alloca[] : memref<f64>
          %c-1_69 = arith.constant -1 : index
          %109 = arith.muli %107, %c-1_69 : index
          %110 = arith.addi %12, %109 : index
          %c-1_70 = arith.constant -1 : index
          %111 = arith.addi %110, %c-1_70 : index
          %112 = memref.load %arg1[%111] : memref<?xf64>
          %113 = memref.load %arg2[%107] : memref<?xf64>
          %114 = arith.mulf %112, %113 : f64
          %115 = arith.addf %108, %114 : f64
          memref.store %115, %alloca[] : memref<f64>
          %c3 = arith.constant 3 : index
          %116 = arith.addi %89, %c3 : index
          %117 = memref.load %alloca[] : memref<f64>
          %c-1_71 = arith.constant -1 : index
          %118 = arith.muli %116, %c-1_71 : index
          %119 = arith.addi %12, %118 : index
          %c-1_72 = arith.constant -1 : index
          %120 = arith.addi %119, %c-1_72 : index
          %121 = memref.load %arg1[%120] : memref<?xf64>
          %122 = memref.load %arg2[%116] : memref<?xf64>
          %123 = arith.mulf %121, %122 : f64
          %124 = arith.addf %117, %123 : f64
          memref.store %124, %alloca[] : memref<f64>
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
          %c-1_61 = arith.constant -1 : index
          %88 = arith.addi %12, %c-1_61 : index
          %c4_62 = arith.constant 4 : index
          %c0_63 = arith.constant 0 : index
          %c-1_64 = arith.constant -1 : index
          %89 = arith.cmpi slt, %88, %c0_63 : index
          %90 = arith.subi %c-1_64, %88 : index
          %91 = arith.select %89, %90, %88 : index
          %92 = arith.divsi %91, %c4_62 : index
          %93 = arith.subi %c-1_64, %92 : index
          %94 = arith.select %89, %93, %92 : index
          %c4_65 = arith.constant 4 : index
          %95 = arith.muli %94, %c4_65 : index
          %96 = arith.addi %arg5, %95 : index
          %c1_66 = arith.constant 1 : index
          %97 = arith.addi %96, %c1_66 : index
          %98 = memref.load %alloca[] : memref<f64>
          %c-1_67 = arith.constant -1 : index
          %99 = arith.muli %97, %c-1_67 : index
          %100 = arith.addi %12, %99 : index
          %c-1_68 = arith.constant -1 : index
          %101 = arith.addi %100, %c-1_68 : index
          %102 = memref.load %arg1[%101] : memref<?xf64>
          %103 = memref.load %arg2[%97] : memref<?xf64>
          %104 = arith.mulf %102, %103 : f64
          %105 = arith.addf %98, %104 : f64
          memref.store %105, %alloca[] : memref<f64>
        }
        %c0_22 = arith.constant 0 : index
        %c32_23 = arith.constant 32 : index
        %37 = arith.muli %arg3, %c32_23 : index
        %38 = arith.addi %arg4, %37 : index
        %39 = arith.cmpi eq, %38, %c0_22 : index
        scf.if %39 {
          %c1_61 = arith.constant 1 : index
          %88 = memref.load %arg1[%c1_61] : memref<?xf64>
          %89 = memref.load %alloca[] : memref<f64>
          %90 = arith.addf %88, %89 : f64
          %91 = arith.negf %90 : f64
          %92 = memref.load %alloca_3[] : memref<f64>
          %93 = arith.divf %91, %92 : f64
          %c0_62 = arith.constant 0 : index
          memref.store %93, %alloca_1[%c0_62] : memref<1xf64>
          %c0_63 = arith.constant 0 : index
          %94 = memref.load %arg2[%c0_63] : memref<?xf64>
          %c0_64 = arith.constant 0 : index
          %95 = memref.load %alloca_1[%c0_64] : memref<1xf64>
          %c0_65 = arith.constant 0 : index
          %96 = memref.load %arg2[%c0_65] : memref<?xf64>
          %97 = arith.mulf %95, %96 : f64
          %98 = arith.addf %94, %97 : f64
          %c0_66 = arith.constant 0 : index
          memref.store %98, %alloca_2[%c0_66] : memref<40xf64>
          %c0_67 = arith.constant 0 : index
          %99 = memref.load %alloca_2[%c0_67] : memref<40xf64>
          %c0_68 = arith.constant 0 : index
          memref.store %99, %arg2[%c0_68] : memref<?xf64>
          %c0_69 = arith.constant 0 : index
          %100 = memref.load %alloca_1[%c0_69] : memref<1xf64>
          %c0_70 = arith.constant 0 : index
          memref.store %100, %alloca_5[%c0_70] : memref<1xf64>
          memref.store %100, %alloca_4[] : memref<f64>
          %c0_71 = arith.constant 0 : index
          %101 = memref.load %alloca_5[%c0_71] : memref<1xf64>
          %c1_72 = arith.constant 1 : index
          memref.store %101, %arg2[%c1_72] : memref<?xf64>
        }
        %c0_24 = arith.constant 0 : index
        %c32_25 = arith.constant 32 : index
        %40 = arith.muli %arg3, %c32_25 : index
        %41 = arith.addi %arg4, %40 : index
        %c-1_26 = arith.constant -1 : index
        %42 = arith.addi %41, %c-1_26 : index
        %43 = arith.cmpi sge, %42, %c0_24 : index
        scf.if %43 {
          %88 = memref.load %arg1[%12] : memref<?xf64>
          %89 = memref.load %alloca[] : memref<f64>
          %90 = arith.addf %88, %89 : f64
          %91 = arith.negf %90 : f64
          %92 = memref.load %alloca_3[] : memref<f64>
          %93 = arith.divf %91, %92 : f64
          %c0_61 = arith.constant 0 : index
          memref.store %93, %alloca_1[%c0_61] : memref<1xf64>
          %c0_62 = arith.constant 0 : index
          %94 = memref.load %arg2[%c0_62] : memref<?xf64>
          %c0_63 = arith.constant 0 : index
          %95 = memref.load %alloca_1[%c0_63] : memref<1xf64>
          %c-1_64 = arith.constant -1 : index
          %96 = arith.addi %12, %c-1_64 : index
          %97 = memref.load %arg2[%96] : memref<?xf64>
          %98 = arith.mulf %95, %97 : f64
          %99 = arith.addf %94, %98 : f64
          %c0_65 = arith.constant 0 : index
          memref.store %99, %alloca_2[%c0_65] : memref<40xf64>
          %c0_66 = arith.constant 0 : index
          %100 = memref.load %alloca_1[%c0_66] : memref<1xf64>
          %c0_67 = arith.constant 0 : index
          memref.store %100, %alloca_5[%c0_67] : memref<1xf64>
          memref.store %100, %alloca_4[] : memref<f64>
          %c0_68 = arith.constant 0 : index
          %101 = memref.load %alloca_5[%c0_68] : memref<1xf64>
          memref.store %101, %arg2[%12] : memref<?xf64>
        }
        %c0_27 = arith.constant 0 : index
        %44 = memref.load %alloca_1[%c0_27] : memref<1xf64>
        %c0_28 = arith.constant 0 : index
        %45 = memref.load %alloca_1[%c0_28] : memref<1xf64>
        %c0_29 = arith.constant 0 : index
        %46 = memref.load %alloca_1[%c0_29] : memref<1xf64>
        %c0_30 = arith.constant 0 : index
        %47 = memref.load %alloca_1[%c0_30] : memref<1xf64>
        %c0_31 = arith.constant 0 : index
        %c32_32 = arith.constant 32 : index
        %48 = arith.muli %arg3, %c32_32 : index
        %49 = arith.addi %arg4, %48 : index
        %c-1_33 = arith.constant -1 : index
        %50 = arith.addi %49, %c-1_33 : index
        %c4_34 = arith.constant 4 : index
        %c0_35 = arith.constant 0 : index
        %c-1_36 = arith.constant -1 : index
        %51 = arith.cmpi slt, %50, %c0_35 : index
        %52 = arith.subi %c-1_36, %50 : index
        %53 = arith.select %51, %52, %50 : index
        %54 = arith.divsi %53, %c4_34 : index
        %55 = arith.subi %c-1_36, %54 : index
        %56 = arith.select %51, %55, %54 : index
        %c1_37 = arith.constant 1 : index
        scf.for %arg5 = %c0_31 to %56 step %c1_37 {
          %c4_61 = arith.constant 4 : index
          %88 = arith.muli %arg5, %c4_61 : index
          %c39_62 = arith.constant 39 : index
          %89 = arith.addi %88, %c39_62 : index
          %c-38 = arith.constant -38 : index
          %90 = arith.addi %89, %c-38 : index
          %91 = memref.load %arg2[%90] : memref<?xf64>
          %c-1_63 = arith.constant -1 : index
          %92 = arith.muli %89, %c-1_63 : index
          %93 = arith.addi %92, %12 : index
          %c37 = arith.constant 37 : index
          %94 = arith.addi %93, %c37 : index
          %95 = memref.load %arg2[%94] : memref<?xf64>
          %96 = arith.mulf %44, %95 : f64
          %97 = arith.addf %91, %96 : f64
          %c-38_64 = arith.constant -38 : index
          %98 = arith.addi %89, %c-38_64 : index
          memref.store %97, %alloca_2[%98] : memref<40xf64>
          %c1_65 = arith.constant 1 : index
          %99 = arith.addi %89, %c1_65 : index
          %c-38_66 = arith.constant -38 : index
          %100 = arith.addi %99, %c-38_66 : index
          %101 = memref.load %arg2[%100] : memref<?xf64>
          %c-1_67 = arith.constant -1 : index
          %102 = arith.muli %99, %c-1_67 : index
          %103 = arith.addi %102, %12 : index
          %c37_68 = arith.constant 37 : index
          %104 = arith.addi %103, %c37_68 : index
          %105 = memref.load %arg2[%104] : memref<?xf64>
          %106 = arith.mulf %45, %105 : f64
          %107 = arith.addf %101, %106 : f64
          %c-38_69 = arith.constant -38 : index
          %108 = arith.addi %99, %c-38_69 : index
          memref.store %107, %alloca_2[%108] : memref<40xf64>
          %c2_70 = arith.constant 2 : index
          %109 = arith.addi %89, %c2_70 : index
          %c-38_71 = arith.constant -38 : index
          %110 = arith.addi %109, %c-38_71 : index
          %111 = memref.load %arg2[%110] : memref<?xf64>
          %c-1_72 = arith.constant -1 : index
          %112 = arith.muli %109, %c-1_72 : index
          %113 = arith.addi %112, %12 : index
          %c37_73 = arith.constant 37 : index
          %114 = arith.addi %113, %c37_73 : index
          %115 = memref.load %arg2[%114] : memref<?xf64>
          %116 = arith.mulf %46, %115 : f64
          %117 = arith.addf %111, %116 : f64
          %c-38_74 = arith.constant -38 : index
          %118 = arith.addi %109, %c-38_74 : index
          memref.store %117, %alloca_2[%118] : memref<40xf64>
          %c3 = arith.constant 3 : index
          %119 = arith.addi %89, %c3 : index
          %c-38_75 = arith.constant -38 : index
          %120 = arith.addi %119, %c-38_75 : index
          %121 = memref.load %arg2[%120] : memref<?xf64>
          %c-1_76 = arith.constant -1 : index
          %122 = arith.muli %119, %c-1_76 : index
          %123 = arith.addi %122, %12 : index
          %c37_77 = arith.constant 37 : index
          %124 = arith.addi %123, %c37_77 : index
          %125 = memref.load %arg2[%124] : memref<?xf64>
          %126 = arith.mulf %47, %125 : f64
          %127 = arith.addf %121, %126 : f64
          %c-38_78 = arith.constant -38 : index
          %128 = arith.addi %119, %c-38_78 : index
          memref.store %127, %alloca_2[%128] : memref<40xf64>
        }
        %c0_38 = arith.constant 0 : index
        %57 = memref.load %alloca_1[%c0_38] : memref<1xf64>
        %c0_39 = arith.constant 0 : index
        %c32_40 = arith.constant 32 : index
        %58 = arith.muli %arg3, %c32_40 : index
        %59 = arith.addi %arg4, %58 : index
        %c32_41 = arith.constant 32 : index
        %60 = arith.muli %arg3, %c32_41 : index
        %61 = arith.addi %arg4, %60 : index
        %c-1_42 = arith.constant -1 : index
        %62 = arith.addi %61, %c-1_42 : index
        %c4_43 = arith.constant 4 : index
        %c0_44 = arith.constant 0 : index
        %c-1_45 = arith.constant -1 : index
        %63 = arith.cmpi slt, %62, %c0_44 : index
        %64 = arith.subi %c-1_45, %62 : index
        %65 = arith.select %63, %64, %62 : index
        %66 = arith.divsi %65, %c4_43 : index
        %67 = arith.subi %c-1_45, %66 : index
        %68 = arith.select %63, %67, %66 : index
        %c-4 = arith.constant -4 : index
        %69 = arith.muli %68, %c-4 : index
        %70 = arith.addi %59, %69 : index
        %c-1_46 = arith.constant -1 : index
        %71 = arith.addi %70, %c-1_46 : index
        %c1_47 = arith.constant 1 : index
        scf.for %arg5 = %c0_39 to %71 step %c1_47 {
          %c-2 = arith.constant -2 : index
          %88 = arith.addi %12, %c-2 : index
          %c4_61 = arith.constant 4 : index
          %c0_62 = arith.constant 0 : index
          %c-1_63 = arith.constant -1 : index
          %89 = arith.cmpi slt, %88, %c0_62 : index
          %90 = arith.subi %c-1_63, %88 : index
          %91 = arith.select %89, %90, %88 : index
          %92 = arith.divsi %91, %c4_61 : index
          %93 = arith.subi %c-1_63, %92 : index
          %94 = arith.select %89, %93, %92 : index
          %c4_64 = arith.constant 4 : index
          %95 = arith.muli %94, %c4_64 : index
          %96 = arith.addi %arg5, %95 : index
          %c39_65 = arith.constant 39 : index
          %97 = arith.addi %96, %c39_65 : index
          %c-38 = arith.constant -38 : index
          %98 = arith.addi %97, %c-38 : index
          %99 = memref.load %arg2[%98] : memref<?xf64>
          %c-1_66 = arith.constant -1 : index
          %100 = arith.muli %97, %c-1_66 : index
          %101 = arith.addi %100, %12 : index
          %c37 = arith.constant 37 : index
          %102 = arith.addi %101, %c37 : index
          %103 = memref.load %arg2[%102] : memref<?xf64>
          %104 = arith.mulf %57, %103 : f64
          %105 = arith.addf %99, %104 : f64
          %c-38_67 = arith.constant -38 : index
          %106 = arith.addi %97, %c-38_67 : index
          memref.store %105, %alloca_2[%106] : memref<40xf64>
        }
        %c0_48 = arith.constant 0 : index
        %c32_49 = arith.constant 32 : index
        %72 = arith.muli %arg3, %c32_49 : index
        %73 = arith.addi %arg4, %72 : index
        %c-1_50 = arith.constant -1 : index
        %74 = arith.addi %73, %c-1_50 : index
        %75 = arith.cmpi sge, %74, %c0_48 : index
        scf.if %75 {
          %c-1_61 = arith.constant -1 : index
          %88 = arith.addi %12, %c-1_61 : index
          %89 = memref.load %arg2[%88] : memref<?xf64>
          %c0_62 = arith.constant 0 : index
          %90 = memref.load %alloca_1[%c0_62] : memref<1xf64>
          %c0_63 = arith.constant 0 : index
          %91 = memref.load %arg2[%c0_63] : memref<?xf64>
          %92 = arith.mulf %90, %91 : f64
          %93 = arith.addf %89, %92 : f64
          %c-1_64 = arith.constant -1 : index
          %94 = arith.addi %12, %c-1_64 : index
          memref.store %93, %alloca_2[%94] : memref<40xf64>
          %c0_65 = arith.constant 0 : index
          %95 = memref.load %alloca_2[%c0_65] : memref<40xf64>
          %c0_66 = arith.constant 0 : index
          memref.store %95, %arg2[%c0_66] : memref<?xf64>
        }
        %c0_51 = arith.constant 0 : index
        %c8_52 = arith.constant 8 : index
        %76 = arith.muli %arg3, %c8_52 : index
        %c4_53 = arith.constant 4 : index
        %c0_54 = arith.constant 0 : index
        %c-1_55 = arith.constant -1 : index
        %77 = arith.cmpi slt, %arg4, %c0_54 : index
        %78 = arith.subi %c-1_55, %arg4 : index
        %79 = arith.select %77, %78, %arg4 : index
        %80 = arith.divsi %79, %c4_53 : index
        %81 = arith.subi %c-1_55, %80 : index
        %82 = arith.select %77, %81, %80 : index
        %83 = arith.addi %76, %82 : index
        %c1_56 = arith.constant 1 : index
        scf.for %arg5 = %c0_51 to %83 step %c1_56 {
          %c4_61 = arith.constant 4 : index
          %88 = arith.muli %arg5, %c4_61 : index
          %89 = arith.addi %12, %88 : index
          %c38 = arith.constant 38 : index
          %90 = arith.addi %89, %c38 : index
          %c-1_62 = arith.constant -1 : index
          %91 = arith.muli %12, %c-1_62 : index
          %92 = arith.addi %91, %90 : index
          %c-37 = arith.constant -37 : index
          %93 = arith.addi %92, %c-37 : index
          %94 = memref.load %alloca_2[%93] : memref<40xf64>
          %c-1_63 = arith.constant -1 : index
          %95 = arith.muli %12, %c-1_63 : index
          %96 = arith.addi %95, %90 : index
          %c-37_64 = arith.constant -37 : index
          %97 = arith.addi %96, %c-37_64 : index
          memref.store %94, %arg2[%97] : memref<?xf64>
          %c1_65 = arith.constant 1 : index
          %98 = arith.addi %90, %c1_65 : index
          %c-1_66 = arith.constant -1 : index
          %99 = arith.muli %12, %c-1_66 : index
          %100 = arith.addi %99, %98 : index
          %c-37_67 = arith.constant -37 : index
          %101 = arith.addi %100, %c-37_67 : index
          %102 = memref.load %alloca_2[%101] : memref<40xf64>
          %c-1_68 = arith.constant -1 : index
          %103 = arith.muli %12, %c-1_68 : index
          %104 = arith.addi %103, %98 : index
          %c-37_69 = arith.constant -37 : index
          %105 = arith.addi %104, %c-37_69 : index
          memref.store %102, %arg2[%105] : memref<?xf64>
          %c2_70 = arith.constant 2 : index
          %106 = arith.addi %90, %c2_70 : index
          %c-1_71 = arith.constant -1 : index
          %107 = arith.muli %12, %c-1_71 : index
          %108 = arith.addi %107, %106 : index
          %c-37_72 = arith.constant -37 : index
          %109 = arith.addi %108, %c-37_72 : index
          %110 = memref.load %alloca_2[%109] : memref<40xf64>
          %c-1_73 = arith.constant -1 : index
          %111 = arith.muli %12, %c-1_73 : index
          %112 = arith.addi %111, %106 : index
          %c-37_74 = arith.constant -37 : index
          %113 = arith.addi %112, %c-37_74 : index
          memref.store %110, %arg2[%113] : memref<?xf64>
          %c3 = arith.constant 3 : index
          %114 = arith.addi %90, %c3 : index
          %c-1_75 = arith.constant -1 : index
          %115 = arith.muli %12, %c-1_75 : index
          %116 = arith.addi %115, %114 : index
          %c-37_76 = arith.constant -37 : index
          %117 = arith.addi %116, %c-37_76 : index
          %118 = memref.load %alloca_2[%117] : memref<40xf64>
          %c-1_77 = arith.constant -1 : index
          %119 = arith.muli %12, %c-1_77 : index
          %120 = arith.addi %119, %114 : index
          %c-37_78 = arith.constant -37 : index
          %121 = arith.addi %120, %c-37_78 : index
          memref.store %118, %arg2[%121] : memref<?xf64>
        }
        %c0_57 = arith.constant 0 : index
        %c4_58 = arith.constant 4 : index
        %84 = arith.remsi %arg4, %c4_58 : index
        %c0_59 = arith.constant 0 : index
        %85 = arith.cmpi slt, %84, %c0_59 : index
        %86 = arith.addi %84, %c4_58 : index
        %87 = arith.select %85, %86, %84 : index
        %c1_60 = arith.constant 1 : index
        scf.for %arg5 = %c0_57 to %87 step %c1_60 {
          %88 = arith.addi %12, %arg5 : index
          %c-1_61 = arith.constant -1 : index
          %89 = arith.addi %12, %c-1_61 : index
          %c4_62 = arith.constant 4 : index
          %c0_63 = arith.constant 0 : index
          %c-1_64 = arith.constant -1 : index
          %90 = arith.cmpi slt, %89, %c0_63 : index
          %91 = arith.subi %c-1_64, %89 : index
          %92 = arith.select %90, %91, %89 : index
          %93 = arith.divsi %92, %c4_62 : index
          %94 = arith.subi %c-1_64, %93 : index
          %95 = arith.select %90, %94, %93 : index
          %c4_65 = arith.constant 4 : index
          %96 = arith.muli %95, %c4_65 : index
          %97 = arith.addi %88, %96 : index
          %c38 = arith.constant 38 : index
          %98 = arith.addi %97, %c38 : index
          %c-1_66 = arith.constant -1 : index
          %99 = arith.muli %12, %c-1_66 : index
          %100 = arith.addi %99, %98 : index
          %c-37 = arith.constant -37 : index
          %101 = arith.addi %100, %c-37 : index
          %102 = memref.load %alloca_2[%101] : memref<40xf64>
          %c-1_67 = arith.constant -1 : index
          %103 = arith.muli %12, %c-1_67 : index
          %104 = arith.addi %103, %98 : index
          %c-37_68 = arith.constant -37 : index
          %105 = arith.addi %104, %c-37_68 : index
          memref.store %102, %arg2[%105] : memref<?xf64>
        }
      }
    }
    return
  }
}

