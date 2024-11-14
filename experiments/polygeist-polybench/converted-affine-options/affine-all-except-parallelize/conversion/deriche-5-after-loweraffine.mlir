module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_6 = memref.alloca() : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<f32>
    %alloca_10 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_13 = memref.alloca() : memref<f32>
    %alloca_14 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_15 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_16 = memref.alloca() : memref<1xf32>
    %alloca_17 = memref.alloca() : memref<1xf32>
    %alloca_18 = memref.alloca() : memref<1xf32>
    %alloca_19 = memref.alloca() : memref<1xf32>
    %alloca_20 = memref.alloca() : memref<f32>
    %alloca_21 = memref.alloca() : memref<f32>
    %alloca_22 = memref.alloca() : memref<f32>
    %alloca_23 = memref.alloca() : memref<1xf32>
    %alloca_24 = memref.alloca() : memref<f32>
    %alloca_25 = memref.alloca() : memref<f32>
    %0 = arith.mulf %arg2, %cst_2 : f32
    %1 = math.exp %0 : f32
    %2 = arith.negf %1 : f32
    %c0 = arith.constant 0 : index
    memref.store %2, %alloca_5[%c0] : memref<1xf32>
    %3 = arith.negf %arg2 : f32
    %4 = math.powf %cst_1, %3 : f32
    %c0_26 = arith.constant 0 : index
    memref.store %4, %alloca_14[%c0_26] : memref<1xf32>
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
    memref.store %15, %alloca_10[%c0_27] : memref<1xf32>
    %c0_28 = arith.constant 0 : index
    %16 = memref.load %alloca_10[%c0_28] : memref<1xf32>
    %c0_29 = arith.constant 0 : index
    memref.store %16, %alloca_23[%c0_29] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    %c0_30 = arith.constant 0 : index
    memref.store %19, %alloca_7[%c0_30] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    %c0_31 = arith.constant 0 : index
    memref.store %21, %alloca_15[%c0_31] : memref<1xf32>
    %c0_32 = arith.constant 0 : index
    %22 = memref.load %alloca_23[%c0_32] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    %c0_33 = arith.constant 0 : index
    memref.store %26, %alloca_12[%c0_33] : memref<1xf32>
    %c0_34 = arith.constant 0 : index
    %27 = memref.load %alloca_7[%c0_34] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    %c0_35 = arith.constant 0 : index
    memref.store %29, %alloca_11[%c0_35] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_4[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_13[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_3[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_24[] : memref<f32>
    %c0_36 = arith.constant 0 : index
    %34 = memref.load %alloca_10[%c0_36] : memref<1xf32>
    %c0_37 = arith.constant 0 : index
    %35 = memref.load %alloca_15[%c0_37] : memref<1xf32>
    %c0_38 = arith.constant 0 : index
    %36 = memref.load %alloca_14[%c0_38] : memref<1xf32>
    %c0_39 = arith.constant 0 : index
    %37 = memref.load %alloca_5[%c0_39] : memref<1xf32>
    %c0_40 = arith.constant 0 : index
    %38 = memref.load %alloca_10[%c0_40] : memref<1xf32>
    %c0_41 = arith.constant 0 : index
    %39 = memref.load %alloca_15[%c0_41] : memref<1xf32>
    %c0_42 = arith.constant 0 : index
    %40 = memref.load %alloca_14[%c0_42] : memref<1xf32>
    %c0_43 = arith.constant 0 : index
    %41 = memref.load %alloca_5[%c0_43] : memref<1xf32>
    %c0_44 = arith.constant 0 : index
    %42 = memref.load %alloca_10[%c0_44] : memref<1xf32>
    %c0_45 = arith.constant 0 : index
    %43 = memref.load %alloca_15[%c0_45] : memref<1xf32>
    %c0_46 = arith.constant 0 : index
    %44 = memref.load %alloca_14[%c0_46] : memref<1xf32>
    %c0_47 = arith.constant 0 : index
    %45 = memref.load %alloca_5[%c0_47] : memref<1xf32>
    %c0_48 = arith.constant 0 : index
    %46 = memref.load %alloca_10[%c0_48] : memref<1xf32>
    %c0_49 = arith.constant 0 : index
    %47 = memref.load %alloca_15[%c0_49] : memref<1xf32>
    %c0_50 = arith.constant 0 : index
    %48 = memref.load %alloca_14[%c0_50] : memref<1xf32>
    %c0_51 = arith.constant 0 : index
    %49 = memref.load %alloca_5[%c0_51] : memref<1xf32>
    %c0_52 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0_52 to %c2 step %c1 {
      %c32 = arith.constant 32 : index
      %104 = arith.muli %arg7, %c32 : index
      %c0_116 = arith.constant 0 : index
      %c32_117 = arith.constant 32 : index
      %c1_118 = arith.constant 1 : index
      scf.for %arg8 = %c0_116 to %c32_117 step %c1_118 {
        %105 = arith.addi %104, %arg8 : index
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        %c0_119 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_120 = arith.constant 1 : index
        scf.for %arg9 = %c0_119 to %c16 step %c1_120 {
          %c4 = arith.constant 4 : index
          %106 = arith.muli %arg9, %c4 : index
          %107 = memref.load %arg3[%105, %106] : memref<?x64xf32>
          %108 = arith.mulf %34, %107 : f32
          %109 = memref.load %alloca_4[] : memref<f32>
          %110 = arith.mulf %35, %109 : f32
          %111 = arith.addf %108, %110 : f32
          %112 = memref.load %alloca_3[] : memref<f32>
          %c0_121 = arith.constant 0 : index
          memref.store %112, %alloca_8[%c0_121] : memref<1xf32>
          %113 = arith.mulf %36, %112 : f32
          %114 = arith.addf %111, %113 : f32
          %115 = memref.load %alloca_24[] : memref<f32>
          %116 = arith.mulf %37, %115 : f32
          %117 = arith.addf %114, %116 : f32
          memref.store %117, %arg5[%105, %106] : memref<?x64xf32>
          %118 = memref.load %arg5[%105, %106] : memref<?x64xf32>
          memref.store %118, %alloca_3[] : memref<f32>
          %c0_122 = arith.constant 0 : index
          %119 = memref.load %alloca_8[%c0_122] : memref<1xf32>
          memref.store %119, %alloca_24[] : memref<f32>
          %120 = memref.load %arg3[%105, %106] : memref<?x64xf32>
          memref.store %120, %alloca_4[] : memref<f32>
          %c1_123 = arith.constant 1 : index
          %121 = arith.addi %106, %c1_123 : index
          %122 = memref.load %arg3[%105, %121] : memref<?x64xf32>
          %123 = arith.mulf %38, %122 : f32
          %124 = memref.load %alloca_4[] : memref<f32>
          %125 = arith.mulf %39, %124 : f32
          %126 = arith.addf %123, %125 : f32
          %127 = memref.load %alloca_3[] : memref<f32>
          %c0_124 = arith.constant 0 : index
          memref.store %127, %alloca_8[%c0_124] : memref<1xf32>
          %128 = arith.mulf %40, %127 : f32
          %129 = arith.addf %126, %128 : f32
          %130 = memref.load %alloca_24[] : memref<f32>
          %131 = arith.mulf %41, %130 : f32
          %132 = arith.addf %129, %131 : f32
          memref.store %132, %arg5[%105, %121] : memref<?x64xf32>
          %133 = memref.load %arg5[%105, %121] : memref<?x64xf32>
          memref.store %133, %alloca_3[] : memref<f32>
          %c0_125 = arith.constant 0 : index
          %134 = memref.load %alloca_8[%c0_125] : memref<1xf32>
          memref.store %134, %alloca_24[] : memref<f32>
          %135 = memref.load %arg3[%105, %121] : memref<?x64xf32>
          memref.store %135, %alloca_4[] : memref<f32>
          %c2_126 = arith.constant 2 : index
          %136 = arith.addi %106, %c2_126 : index
          %137 = memref.load %arg3[%105, %136] : memref<?x64xf32>
          %138 = arith.mulf %42, %137 : f32
          %139 = memref.load %alloca_4[] : memref<f32>
          %140 = arith.mulf %43, %139 : f32
          %141 = arith.addf %138, %140 : f32
          %142 = memref.load %alloca_3[] : memref<f32>
          %c0_127 = arith.constant 0 : index
          memref.store %142, %alloca_8[%c0_127] : memref<1xf32>
          %143 = arith.mulf %44, %142 : f32
          %144 = arith.addf %141, %143 : f32
          %145 = memref.load %alloca_24[] : memref<f32>
          %146 = arith.mulf %45, %145 : f32
          %147 = arith.addf %144, %146 : f32
          memref.store %147, %arg5[%105, %136] : memref<?x64xf32>
          %148 = memref.load %arg5[%105, %136] : memref<?x64xf32>
          memref.store %148, %alloca_3[] : memref<f32>
          %c0_128 = arith.constant 0 : index
          %149 = memref.load %alloca_8[%c0_128] : memref<1xf32>
          memref.store %149, %alloca_24[] : memref<f32>
          %150 = memref.load %arg3[%105, %136] : memref<?x64xf32>
          memref.store %150, %alloca_4[] : memref<f32>
          %c3 = arith.constant 3 : index
          %151 = arith.addi %106, %c3 : index
          %152 = memref.load %arg3[%105, %151] : memref<?x64xf32>
          %153 = arith.mulf %46, %152 : f32
          %154 = memref.load %alloca_4[] : memref<f32>
          %155 = arith.mulf %47, %154 : f32
          %156 = arith.addf %153, %155 : f32
          %157 = memref.load %alloca_3[] : memref<f32>
          %c0_129 = arith.constant 0 : index
          memref.store %157, %alloca_8[%c0_129] : memref<1xf32>
          %158 = arith.mulf %48, %157 : f32
          %159 = arith.addf %156, %158 : f32
          %160 = memref.load %alloca_24[] : memref<f32>
          %161 = arith.mulf %49, %160 : f32
          %162 = arith.addf %159, %161 : f32
          memref.store %162, %arg5[%105, %151] : memref<?x64xf32>
          %163 = memref.load %arg5[%105, %151] : memref<?x64xf32>
          memref.store %163, %alloca_3[] : memref<f32>
          %c0_130 = arith.constant 0 : index
          %164 = memref.load %alloca_8[%c0_130] : memref<1xf32>
          memref.store %164, %alloca_24[] : memref<f32>
          %165 = memref.load %arg3[%105, %151] : memref<?x64xf32>
          memref.store %165, %alloca_4[] : memref<f32>
        }
      }
    }
    %50 = llvm.mlir.undef : f32
    memref.store %50, %alloca[] : memref<f32>
    %51 = llvm.mlir.undef : f32
    memref.store %51, %alloca_20[] : memref<f32>
    %52 = llvm.mlir.undef : f32
    memref.store %52, %alloca_9[] : memref<f32>
    %53 = llvm.mlir.undef : f32
    memref.store %53, %alloca_21[] : memref<f32>
    %54 = llvm.mlir.undef : f32
    memref.store %54, %alloca_22[] : memref<f32>
    %55 = llvm.mlir.undef : f32
    memref.store %55, %alloca_25[] : memref<f32>
    %c0_53 = arith.constant 0 : index
    %56 = memref.load %alloca_11[%c0_53] : memref<1xf32>
    %c0_54 = arith.constant 0 : index
    %57 = memref.load %alloca_12[%c0_54] : memref<1xf32>
    %c0_55 = arith.constant 0 : index
    %58 = memref.load %alloca_14[%c0_55] : memref<1xf32>
    %c0_56 = arith.constant 0 : index
    %59 = memref.load %alloca_5[%c0_56] : memref<1xf32>
    %c0_57 = arith.constant 0 : index
    %60 = memref.load %alloca_11[%c0_57] : memref<1xf32>
    %c0_58 = arith.constant 0 : index
    %61 = memref.load %alloca_12[%c0_58] : memref<1xf32>
    %c0_59 = arith.constant 0 : index
    %62 = memref.load %alloca_14[%c0_59] : memref<1xf32>
    %c0_60 = arith.constant 0 : index
    %63 = memref.load %alloca_5[%c0_60] : memref<1xf32>
    %c0_61 = arith.constant 0 : index
    %64 = memref.load %alloca_11[%c0_61] : memref<1xf32>
    %c0_62 = arith.constant 0 : index
    %65 = memref.load %alloca_12[%c0_62] : memref<1xf32>
    %c0_63 = arith.constant 0 : index
    %66 = memref.load %alloca_14[%c0_63] : memref<1xf32>
    %c0_64 = arith.constant 0 : index
    %67 = memref.load %alloca_5[%c0_64] : memref<1xf32>
    %c0_65 = arith.constant 0 : index
    %68 = memref.load %alloca_11[%c0_65] : memref<1xf32>
    %c0_66 = arith.constant 0 : index
    %69 = memref.load %alloca_12[%c0_66] : memref<1xf32>
    %c0_67 = arith.constant 0 : index
    %70 = memref.load %alloca_14[%c0_67] : memref<1xf32>
    %c0_68 = arith.constant 0 : index
    %71 = memref.load %alloca_5[%c0_68] : memref<1xf32>
    %c0_69 = arith.constant 0 : index
    %c2_70 = arith.constant 2 : index
    %c1_71 = arith.constant 1 : index
    scf.for %arg7 = %c0_69 to %c2_70 step %c1_71 {
      %c32 = arith.constant 32 : index
      %104 = arith.muli %arg7, %c32 : index
      %c0_116 = arith.constant 0 : index
      %c32_117 = arith.constant 32 : index
      %c1_118 = arith.constant 1 : index
      scf.for %arg8 = %c0_116 to %c32_117 step %c1_118 {
        %105 = arith.addi %104, %arg8 : index
        memref.store %cst, %alloca_20[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        %c0_119 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_120 = arith.constant 1 : index
        scf.for %arg9 = %c0_119 to %c16 step %c1_120 {
          %c4 = arith.constant 4 : index
          %106 = arith.muli %arg9, %c4 : index
          %107 = memref.load %alloca[] : memref<f32>
          %c0_121 = arith.constant 0 : index
          memref.store %107, %alloca_6[%c0_121] : memref<1xf32>
          %108 = arith.mulf %56, %107 : f32
          %109 = memref.load %alloca_20[] : memref<f32>
          %110 = arith.mulf %57, %109 : f32
          %111 = arith.addf %108, %110 : f32
          %112 = memref.load %alloca_22[] : memref<f32>
          %c0_122 = arith.constant 0 : index
          memref.store %112, %alloca_17[%c0_122] : memref<1xf32>
          %113 = arith.mulf %58, %112 : f32
          %114 = arith.addf %111, %113 : f32
          %115 = memref.load %alloca_25[] : memref<f32>
          %116 = arith.mulf %59, %115 : f32
          %117 = arith.addf %114, %116 : f32
          %c-1 = arith.constant -1 : index
          %118 = arith.muli %106, %c-1 : index
          %c63 = arith.constant 63 : index
          %119 = arith.addi %118, %c63 : index
          memref.store %117, %arg6[%105, %119] : memref<?x64xf32>
          %c-1_123 = arith.constant -1 : index
          %120 = arith.muli %106, %c-1_123 : index
          %c63_124 = arith.constant 63 : index
          %121 = arith.addi %120, %c63_124 : index
          %122 = memref.load %arg6[%105, %121] : memref<?x64xf32>
          memref.store %122, %alloca_22[] : memref<f32>
          %c0_125 = arith.constant 0 : index
          %123 = memref.load %alloca_17[%c0_125] : memref<1xf32>
          memref.store %123, %alloca_25[] : memref<f32>
          %c-1_126 = arith.constant -1 : index
          %124 = arith.muli %106, %c-1_126 : index
          %c63_127 = arith.constant 63 : index
          %125 = arith.addi %124, %c63_127 : index
          %126 = memref.load %arg3[%105, %125] : memref<?x64xf32>
          memref.store %126, %alloca[] : memref<f32>
          %c0_128 = arith.constant 0 : index
          %127 = memref.load %alloca_6[%c0_128] : memref<1xf32>
          memref.store %127, %alloca_20[] : memref<f32>
          %c1_129 = arith.constant 1 : index
          %128 = arith.addi %106, %c1_129 : index
          %129 = memref.load %alloca[] : memref<f32>
          %c0_130 = arith.constant 0 : index
          memref.store %129, %alloca_6[%c0_130] : memref<1xf32>
          %130 = arith.mulf %60, %129 : f32
          %131 = memref.load %alloca_20[] : memref<f32>
          %132 = arith.mulf %61, %131 : f32
          %133 = arith.addf %130, %132 : f32
          %134 = memref.load %alloca_22[] : memref<f32>
          %c0_131 = arith.constant 0 : index
          memref.store %134, %alloca_17[%c0_131] : memref<1xf32>
          %135 = arith.mulf %62, %134 : f32
          %136 = arith.addf %133, %135 : f32
          %137 = memref.load %alloca_25[] : memref<f32>
          %138 = arith.mulf %63, %137 : f32
          %139 = arith.addf %136, %138 : f32
          %c-1_132 = arith.constant -1 : index
          %140 = arith.muli %128, %c-1_132 : index
          %c63_133 = arith.constant 63 : index
          %141 = arith.addi %140, %c63_133 : index
          memref.store %139, %arg6[%105, %141] : memref<?x64xf32>
          %c-1_134 = arith.constant -1 : index
          %142 = arith.muli %128, %c-1_134 : index
          %c63_135 = arith.constant 63 : index
          %143 = arith.addi %142, %c63_135 : index
          %144 = memref.load %arg6[%105, %143] : memref<?x64xf32>
          memref.store %144, %alloca_22[] : memref<f32>
          %c0_136 = arith.constant 0 : index
          %145 = memref.load %alloca_17[%c0_136] : memref<1xf32>
          memref.store %145, %alloca_25[] : memref<f32>
          %c-1_137 = arith.constant -1 : index
          %146 = arith.muli %128, %c-1_137 : index
          %c63_138 = arith.constant 63 : index
          %147 = arith.addi %146, %c63_138 : index
          %148 = memref.load %arg3[%105, %147] : memref<?x64xf32>
          memref.store %148, %alloca[] : memref<f32>
          %c0_139 = arith.constant 0 : index
          %149 = memref.load %alloca_6[%c0_139] : memref<1xf32>
          memref.store %149, %alloca_20[] : memref<f32>
          %c2_140 = arith.constant 2 : index
          %150 = arith.addi %106, %c2_140 : index
          %151 = memref.load %alloca[] : memref<f32>
          %c0_141 = arith.constant 0 : index
          memref.store %151, %alloca_6[%c0_141] : memref<1xf32>
          %152 = arith.mulf %64, %151 : f32
          %153 = memref.load %alloca_20[] : memref<f32>
          %154 = arith.mulf %65, %153 : f32
          %155 = arith.addf %152, %154 : f32
          %156 = memref.load %alloca_22[] : memref<f32>
          %c0_142 = arith.constant 0 : index
          memref.store %156, %alloca_17[%c0_142] : memref<1xf32>
          %157 = arith.mulf %66, %156 : f32
          %158 = arith.addf %155, %157 : f32
          %159 = memref.load %alloca_25[] : memref<f32>
          %160 = arith.mulf %67, %159 : f32
          %161 = arith.addf %158, %160 : f32
          %c-1_143 = arith.constant -1 : index
          %162 = arith.muli %150, %c-1_143 : index
          %c63_144 = arith.constant 63 : index
          %163 = arith.addi %162, %c63_144 : index
          memref.store %161, %arg6[%105, %163] : memref<?x64xf32>
          %c-1_145 = arith.constant -1 : index
          %164 = arith.muli %150, %c-1_145 : index
          %c63_146 = arith.constant 63 : index
          %165 = arith.addi %164, %c63_146 : index
          %166 = memref.load %arg6[%105, %165] : memref<?x64xf32>
          memref.store %166, %alloca_22[] : memref<f32>
          %c0_147 = arith.constant 0 : index
          %167 = memref.load %alloca_17[%c0_147] : memref<1xf32>
          memref.store %167, %alloca_25[] : memref<f32>
          %c-1_148 = arith.constant -1 : index
          %168 = arith.muli %150, %c-1_148 : index
          %c63_149 = arith.constant 63 : index
          %169 = arith.addi %168, %c63_149 : index
          %170 = memref.load %arg3[%105, %169] : memref<?x64xf32>
          memref.store %170, %alloca[] : memref<f32>
          %c0_150 = arith.constant 0 : index
          %171 = memref.load %alloca_6[%c0_150] : memref<1xf32>
          memref.store %171, %alloca_20[] : memref<f32>
          %c3 = arith.constant 3 : index
          %172 = arith.addi %106, %c3 : index
          %173 = memref.load %alloca[] : memref<f32>
          %c0_151 = arith.constant 0 : index
          memref.store %173, %alloca_6[%c0_151] : memref<1xf32>
          %174 = arith.mulf %68, %173 : f32
          %175 = memref.load %alloca_20[] : memref<f32>
          %176 = arith.mulf %69, %175 : f32
          %177 = arith.addf %174, %176 : f32
          %178 = memref.load %alloca_22[] : memref<f32>
          %c0_152 = arith.constant 0 : index
          memref.store %178, %alloca_17[%c0_152] : memref<1xf32>
          %179 = arith.mulf %70, %178 : f32
          %180 = arith.addf %177, %179 : f32
          %181 = memref.load %alloca_25[] : memref<f32>
          %182 = arith.mulf %71, %181 : f32
          %183 = arith.addf %180, %182 : f32
          %c-1_153 = arith.constant -1 : index
          %184 = arith.muli %172, %c-1_153 : index
          %c63_154 = arith.constant 63 : index
          %185 = arith.addi %184, %c63_154 : index
          memref.store %183, %arg6[%105, %185] : memref<?x64xf32>
          %c-1_155 = arith.constant -1 : index
          %186 = arith.muli %172, %c-1_155 : index
          %c63_156 = arith.constant 63 : index
          %187 = arith.addi %186, %c63_156 : index
          %188 = memref.load %arg6[%105, %187] : memref<?x64xf32>
          memref.store %188, %alloca_22[] : memref<f32>
          %c0_157 = arith.constant 0 : index
          %189 = memref.load %alloca_17[%c0_157] : memref<1xf32>
          memref.store %189, %alloca_25[] : memref<f32>
          %c-1_158 = arith.constant -1 : index
          %190 = arith.muli %172, %c-1_158 : index
          %c63_159 = arith.constant 63 : index
          %191 = arith.addi %190, %c63_159 : index
          %192 = memref.load %arg3[%105, %191] : memref<?x64xf32>
          memref.store %192, %alloca[] : memref<f32>
          %c0_160 = arith.constant 0 : index
          %193 = memref.load %alloca_6[%c0_160] : memref<1xf32>
          memref.store %193, %alloca_20[] : memref<f32>
        }
      }
    }
    %c0_72 = arith.constant 0 : index
    %c2_73 = arith.constant 2 : index
    %c1_74 = arith.constant 1 : index
    scf.for %arg7 = %c0_72 to %c2_73 step %c1_74 {
      %c0_116 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_117 = arith.constant 1 : index
      scf.for %arg8 = %c0_116 to %c32 step %c1_117 {
        %c32_118 = arith.constant 32 : index
        %104 = arith.muli %arg7, %c32_118 : index
        %105 = arith.addi %104, %arg8 : index
        %c0_119 = arith.constant 0 : index
        %c2_120 = arith.constant 2 : index
        %c1_121 = arith.constant 1 : index
        scf.for %arg9 = %c0_119 to %c2_120 step %c1_121 {
          %c0_122 = arith.constant 0 : index
          %c8 = arith.constant 8 : index
          %c1_123 = arith.constant 1 : index
          scf.for %arg10 = %c0_122 to %c8 step %c1_123 {
            %c32_124 = arith.constant 32 : index
            %106 = arith.muli %arg9, %c32_124 : index
            %c4 = arith.constant 4 : index
            %107 = arith.muli %arg10, %c4 : index
            %108 = arith.addi %106, %107 : index
            %109 = memref.load %arg5[%105, %108] : memref<?x64xf32>
            %110 = memref.load %arg6[%105, %108] : memref<?x64xf32>
            %111 = arith.addf %109, %110 : f32
            memref.store %111, %arg4[%105, %108] : memref<?x64xf32>
            %c1_125 = arith.constant 1 : index
            %112 = arith.addi %108, %c1_125 : index
            %113 = memref.load %arg5[%105, %112] : memref<?x64xf32>
            %114 = memref.load %arg6[%105, %112] : memref<?x64xf32>
            %115 = arith.addf %113, %114 : f32
            memref.store %115, %arg4[%105, %112] : memref<?x64xf32>
            %c2_126 = arith.constant 2 : index
            %116 = arith.addi %108, %c2_126 : index
            %117 = memref.load %arg5[%105, %116] : memref<?x64xf32>
            %118 = memref.load %arg6[%105, %116] : memref<?x64xf32>
            %119 = arith.addf %117, %118 : f32
            memref.store %119, %arg4[%105, %116] : memref<?x64xf32>
            %c3 = arith.constant 3 : index
            %120 = arith.addi %108, %c3 : index
            %121 = memref.load %arg5[%105, %120] : memref<?x64xf32>
            %122 = memref.load %arg6[%105, %120] : memref<?x64xf32>
            %123 = arith.addf %121, %122 : f32
            memref.store %123, %arg4[%105, %120] : memref<?x64xf32>
          }
        }
      }
    }
    %c0_75 = arith.constant 0 : index
    %72 = memref.load %alloca_10[%c0_75] : memref<1xf32>
    %c0_76 = arith.constant 0 : index
    %73 = memref.load %alloca_15[%c0_76] : memref<1xf32>
    %c0_77 = arith.constant 0 : index
    %74 = memref.load %alloca_14[%c0_77] : memref<1xf32>
    %c0_78 = arith.constant 0 : index
    %75 = memref.load %alloca_5[%c0_78] : memref<1xf32>
    %c0_79 = arith.constant 0 : index
    %76 = memref.load %alloca_10[%c0_79] : memref<1xf32>
    %c0_80 = arith.constant 0 : index
    %77 = memref.load %alloca_15[%c0_80] : memref<1xf32>
    %c0_81 = arith.constant 0 : index
    %78 = memref.load %alloca_14[%c0_81] : memref<1xf32>
    %c0_82 = arith.constant 0 : index
    %79 = memref.load %alloca_5[%c0_82] : memref<1xf32>
    %c0_83 = arith.constant 0 : index
    %80 = memref.load %alloca_10[%c0_83] : memref<1xf32>
    %c0_84 = arith.constant 0 : index
    %81 = memref.load %alloca_15[%c0_84] : memref<1xf32>
    %c0_85 = arith.constant 0 : index
    %82 = memref.load %alloca_14[%c0_85] : memref<1xf32>
    %c0_86 = arith.constant 0 : index
    %83 = memref.load %alloca_5[%c0_86] : memref<1xf32>
    %c0_87 = arith.constant 0 : index
    %84 = memref.load %alloca_10[%c0_87] : memref<1xf32>
    %c0_88 = arith.constant 0 : index
    %85 = memref.load %alloca_15[%c0_88] : memref<1xf32>
    %c0_89 = arith.constant 0 : index
    %86 = memref.load %alloca_14[%c0_89] : memref<1xf32>
    %c0_90 = arith.constant 0 : index
    %87 = memref.load %alloca_5[%c0_90] : memref<1xf32>
    %c0_91 = arith.constant 0 : index
    %c2_92 = arith.constant 2 : index
    %c1_93 = arith.constant 1 : index
    scf.for %arg7 = %c0_91 to %c2_92 step %c1_93 {
      %c32 = arith.constant 32 : index
      %104 = arith.muli %arg7, %c32 : index
      %c0_116 = arith.constant 0 : index
      %c32_117 = arith.constant 32 : index
      %c1_118 = arith.constant 1 : index
      scf.for %arg8 = %c0_116 to %c32_117 step %c1_118 {
        %105 = arith.addi %104, %arg8 : index
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca_13[] : memref<f32>
        %c0_119 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_120 = arith.constant 1 : index
        scf.for %arg9 = %c0_119 to %c16 step %c1_120 {
          %c4 = arith.constant 4 : index
          %106 = arith.muli %arg9, %c4 : index
          %107 = memref.load %arg4[%106, %105] : memref<?x64xf32>
          %108 = arith.mulf %72, %107 : f32
          %109 = memref.load %alloca_13[] : memref<f32>
          %110 = arith.mulf %73, %109 : f32
          %111 = arith.addf %108, %110 : f32
          %112 = memref.load %alloca_3[] : memref<f32>
          %c0_121 = arith.constant 0 : index
          memref.store %112, %alloca_18[%c0_121] : memref<1xf32>
          %113 = arith.mulf %74, %112 : f32
          %114 = arith.addf %111, %113 : f32
          %115 = memref.load %alloca_24[] : memref<f32>
          %116 = arith.mulf %75, %115 : f32
          %117 = arith.addf %114, %116 : f32
          memref.store %117, %arg5[%106, %105] : memref<?x64xf32>
          %118 = memref.load %arg5[%106, %105] : memref<?x64xf32>
          memref.store %118, %alloca_3[] : memref<f32>
          %c0_122 = arith.constant 0 : index
          %119 = memref.load %alloca_18[%c0_122] : memref<1xf32>
          memref.store %119, %alloca_24[] : memref<f32>
          %120 = memref.load %arg4[%106, %105] : memref<?x64xf32>
          memref.store %120, %alloca_13[] : memref<f32>
          %c1_123 = arith.constant 1 : index
          %121 = arith.addi %106, %c1_123 : index
          %122 = memref.load %arg4[%121, %105] : memref<?x64xf32>
          %123 = arith.mulf %76, %122 : f32
          %124 = memref.load %alloca_13[] : memref<f32>
          %125 = arith.mulf %77, %124 : f32
          %126 = arith.addf %123, %125 : f32
          %127 = memref.load %alloca_3[] : memref<f32>
          %c0_124 = arith.constant 0 : index
          memref.store %127, %alloca_18[%c0_124] : memref<1xf32>
          %128 = arith.mulf %78, %127 : f32
          %129 = arith.addf %126, %128 : f32
          %130 = memref.load %alloca_24[] : memref<f32>
          %131 = arith.mulf %79, %130 : f32
          %132 = arith.addf %129, %131 : f32
          memref.store %132, %arg5[%121, %105] : memref<?x64xf32>
          %133 = memref.load %arg5[%121, %105] : memref<?x64xf32>
          memref.store %133, %alloca_3[] : memref<f32>
          %c0_125 = arith.constant 0 : index
          %134 = memref.load %alloca_18[%c0_125] : memref<1xf32>
          memref.store %134, %alloca_24[] : memref<f32>
          %135 = memref.load %arg4[%121, %105] : memref<?x64xf32>
          memref.store %135, %alloca_13[] : memref<f32>
          %c2_126 = arith.constant 2 : index
          %136 = arith.addi %106, %c2_126 : index
          %137 = memref.load %arg4[%136, %105] : memref<?x64xf32>
          %138 = arith.mulf %80, %137 : f32
          %139 = memref.load %alloca_13[] : memref<f32>
          %140 = arith.mulf %81, %139 : f32
          %141 = arith.addf %138, %140 : f32
          %142 = memref.load %alloca_3[] : memref<f32>
          %c0_127 = arith.constant 0 : index
          memref.store %142, %alloca_18[%c0_127] : memref<1xf32>
          %143 = arith.mulf %82, %142 : f32
          %144 = arith.addf %141, %143 : f32
          %145 = memref.load %alloca_24[] : memref<f32>
          %146 = arith.mulf %83, %145 : f32
          %147 = arith.addf %144, %146 : f32
          memref.store %147, %arg5[%136, %105] : memref<?x64xf32>
          %148 = memref.load %arg5[%136, %105] : memref<?x64xf32>
          memref.store %148, %alloca_3[] : memref<f32>
          %c0_128 = arith.constant 0 : index
          %149 = memref.load %alloca_18[%c0_128] : memref<1xf32>
          memref.store %149, %alloca_24[] : memref<f32>
          %150 = memref.load %arg4[%136, %105] : memref<?x64xf32>
          memref.store %150, %alloca_13[] : memref<f32>
          %c3 = arith.constant 3 : index
          %151 = arith.addi %106, %c3 : index
          %152 = memref.load %arg4[%151, %105] : memref<?x64xf32>
          %153 = arith.mulf %84, %152 : f32
          %154 = memref.load %alloca_13[] : memref<f32>
          %155 = arith.mulf %85, %154 : f32
          %156 = arith.addf %153, %155 : f32
          %157 = memref.load %alloca_3[] : memref<f32>
          %c0_129 = arith.constant 0 : index
          memref.store %157, %alloca_18[%c0_129] : memref<1xf32>
          %158 = arith.mulf %86, %157 : f32
          %159 = arith.addf %156, %158 : f32
          %160 = memref.load %alloca_24[] : memref<f32>
          %161 = arith.mulf %87, %160 : f32
          %162 = arith.addf %159, %161 : f32
          memref.store %162, %arg5[%151, %105] : memref<?x64xf32>
          %163 = memref.load %arg5[%151, %105] : memref<?x64xf32>
          memref.store %163, %alloca_3[] : memref<f32>
          %c0_130 = arith.constant 0 : index
          %164 = memref.load %alloca_18[%c0_130] : memref<1xf32>
          memref.store %164, %alloca_24[] : memref<f32>
          %165 = memref.load %arg4[%151, %105] : memref<?x64xf32>
          memref.store %165, %alloca_13[] : memref<f32>
        }
      }
    }
    %c0_94 = arith.constant 0 : index
    %88 = memref.load %alloca_11[%c0_94] : memref<1xf32>
    %c0_95 = arith.constant 0 : index
    %89 = memref.load %alloca_12[%c0_95] : memref<1xf32>
    %c0_96 = arith.constant 0 : index
    %90 = memref.load %alloca_14[%c0_96] : memref<1xf32>
    %c0_97 = arith.constant 0 : index
    %91 = memref.load %alloca_5[%c0_97] : memref<1xf32>
    %c0_98 = arith.constant 0 : index
    %92 = memref.load %alloca_11[%c0_98] : memref<1xf32>
    %c0_99 = arith.constant 0 : index
    %93 = memref.load %alloca_12[%c0_99] : memref<1xf32>
    %c0_100 = arith.constant 0 : index
    %94 = memref.load %alloca_14[%c0_100] : memref<1xf32>
    %c0_101 = arith.constant 0 : index
    %95 = memref.load %alloca_5[%c0_101] : memref<1xf32>
    %c0_102 = arith.constant 0 : index
    %96 = memref.load %alloca_11[%c0_102] : memref<1xf32>
    %c0_103 = arith.constant 0 : index
    %97 = memref.load %alloca_12[%c0_103] : memref<1xf32>
    %c0_104 = arith.constant 0 : index
    %98 = memref.load %alloca_14[%c0_104] : memref<1xf32>
    %c0_105 = arith.constant 0 : index
    %99 = memref.load %alloca_5[%c0_105] : memref<1xf32>
    %c0_106 = arith.constant 0 : index
    %100 = memref.load %alloca_11[%c0_106] : memref<1xf32>
    %c0_107 = arith.constant 0 : index
    %101 = memref.load %alloca_12[%c0_107] : memref<1xf32>
    %c0_108 = arith.constant 0 : index
    %102 = memref.load %alloca_14[%c0_108] : memref<1xf32>
    %c0_109 = arith.constant 0 : index
    %103 = memref.load %alloca_5[%c0_109] : memref<1xf32>
    %c0_110 = arith.constant 0 : index
    %c2_111 = arith.constant 2 : index
    %c1_112 = arith.constant 1 : index
    scf.for %arg7 = %c0_110 to %c2_111 step %c1_112 {
      %c32 = arith.constant 32 : index
      %104 = arith.muli %arg7, %c32 : index
      %c0_116 = arith.constant 0 : index
      %c32_117 = arith.constant 32 : index
      %c1_118 = arith.constant 1 : index
      scf.for %arg8 = %c0_116 to %c32_117 step %c1_118 {
        %105 = arith.addi %104, %arg8 : index
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        memref.store %cst, %alloca_21[] : memref<f32>
        memref.store %cst, %alloca_9[] : memref<f32>
        %c0_119 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_120 = arith.constant 1 : index
        scf.for %arg9 = %c0_119 to %c16 step %c1_120 {
          %c4 = arith.constant 4 : index
          %106 = arith.muli %arg9, %c4 : index
          %107 = memref.load %alloca_9[] : memref<f32>
          %c0_121 = arith.constant 0 : index
          memref.store %107, %alloca_16[%c0_121] : memref<1xf32>
          %108 = arith.mulf %88, %107 : f32
          %109 = memref.load %alloca_21[] : memref<f32>
          %110 = arith.mulf %89, %109 : f32
          %111 = arith.addf %108, %110 : f32
          %112 = memref.load %alloca_22[] : memref<f32>
          %c0_122 = arith.constant 0 : index
          memref.store %112, %alloca_19[%c0_122] : memref<1xf32>
          %113 = arith.mulf %90, %112 : f32
          %114 = arith.addf %111, %113 : f32
          %115 = memref.load %alloca_25[] : memref<f32>
          %116 = arith.mulf %91, %115 : f32
          %117 = arith.addf %114, %116 : f32
          %c-1 = arith.constant -1 : index
          %118 = arith.muli %106, %c-1 : index
          %c63 = arith.constant 63 : index
          %119 = arith.addi %118, %c63 : index
          memref.store %117, %arg6[%119, %105] : memref<?x64xf32>
          %c-1_123 = arith.constant -1 : index
          %120 = arith.muli %106, %c-1_123 : index
          %c63_124 = arith.constant 63 : index
          %121 = arith.addi %120, %c63_124 : index
          %122 = memref.load %arg6[%121, %105] : memref<?x64xf32>
          memref.store %122, %alloca_22[] : memref<f32>
          %c0_125 = arith.constant 0 : index
          %123 = memref.load %alloca_19[%c0_125] : memref<1xf32>
          memref.store %123, %alloca_25[] : memref<f32>
          %c-1_126 = arith.constant -1 : index
          %124 = arith.muli %106, %c-1_126 : index
          %c63_127 = arith.constant 63 : index
          %125 = arith.addi %124, %c63_127 : index
          %126 = memref.load %arg4[%125, %105] : memref<?x64xf32>
          memref.store %126, %alloca_9[] : memref<f32>
          %c0_128 = arith.constant 0 : index
          %127 = memref.load %alloca_16[%c0_128] : memref<1xf32>
          memref.store %127, %alloca_21[] : memref<f32>
          %c1_129 = arith.constant 1 : index
          %128 = arith.addi %106, %c1_129 : index
          %129 = memref.load %alloca_9[] : memref<f32>
          %c0_130 = arith.constant 0 : index
          memref.store %129, %alloca_16[%c0_130] : memref<1xf32>
          %130 = arith.mulf %92, %129 : f32
          %131 = memref.load %alloca_21[] : memref<f32>
          %132 = arith.mulf %93, %131 : f32
          %133 = arith.addf %130, %132 : f32
          %134 = memref.load %alloca_22[] : memref<f32>
          %c0_131 = arith.constant 0 : index
          memref.store %134, %alloca_19[%c0_131] : memref<1xf32>
          %135 = arith.mulf %94, %134 : f32
          %136 = arith.addf %133, %135 : f32
          %137 = memref.load %alloca_25[] : memref<f32>
          %138 = arith.mulf %95, %137 : f32
          %139 = arith.addf %136, %138 : f32
          %c-1_132 = arith.constant -1 : index
          %140 = arith.muli %128, %c-1_132 : index
          %c63_133 = arith.constant 63 : index
          %141 = arith.addi %140, %c63_133 : index
          memref.store %139, %arg6[%141, %105] : memref<?x64xf32>
          %c-1_134 = arith.constant -1 : index
          %142 = arith.muli %128, %c-1_134 : index
          %c63_135 = arith.constant 63 : index
          %143 = arith.addi %142, %c63_135 : index
          %144 = memref.load %arg6[%143, %105] : memref<?x64xf32>
          memref.store %144, %alloca_22[] : memref<f32>
          %c0_136 = arith.constant 0 : index
          %145 = memref.load %alloca_19[%c0_136] : memref<1xf32>
          memref.store %145, %alloca_25[] : memref<f32>
          %c-1_137 = arith.constant -1 : index
          %146 = arith.muli %128, %c-1_137 : index
          %c63_138 = arith.constant 63 : index
          %147 = arith.addi %146, %c63_138 : index
          %148 = memref.load %arg4[%147, %105] : memref<?x64xf32>
          memref.store %148, %alloca_9[] : memref<f32>
          %c0_139 = arith.constant 0 : index
          %149 = memref.load %alloca_16[%c0_139] : memref<1xf32>
          memref.store %149, %alloca_21[] : memref<f32>
          %c2_140 = arith.constant 2 : index
          %150 = arith.addi %106, %c2_140 : index
          %151 = memref.load %alloca_9[] : memref<f32>
          %c0_141 = arith.constant 0 : index
          memref.store %151, %alloca_16[%c0_141] : memref<1xf32>
          %152 = arith.mulf %96, %151 : f32
          %153 = memref.load %alloca_21[] : memref<f32>
          %154 = arith.mulf %97, %153 : f32
          %155 = arith.addf %152, %154 : f32
          %156 = memref.load %alloca_22[] : memref<f32>
          %c0_142 = arith.constant 0 : index
          memref.store %156, %alloca_19[%c0_142] : memref<1xf32>
          %157 = arith.mulf %98, %156 : f32
          %158 = arith.addf %155, %157 : f32
          %159 = memref.load %alloca_25[] : memref<f32>
          %160 = arith.mulf %99, %159 : f32
          %161 = arith.addf %158, %160 : f32
          %c-1_143 = arith.constant -1 : index
          %162 = arith.muli %150, %c-1_143 : index
          %c63_144 = arith.constant 63 : index
          %163 = arith.addi %162, %c63_144 : index
          memref.store %161, %arg6[%163, %105] : memref<?x64xf32>
          %c-1_145 = arith.constant -1 : index
          %164 = arith.muli %150, %c-1_145 : index
          %c63_146 = arith.constant 63 : index
          %165 = arith.addi %164, %c63_146 : index
          %166 = memref.load %arg6[%165, %105] : memref<?x64xf32>
          memref.store %166, %alloca_22[] : memref<f32>
          %c0_147 = arith.constant 0 : index
          %167 = memref.load %alloca_19[%c0_147] : memref<1xf32>
          memref.store %167, %alloca_25[] : memref<f32>
          %c-1_148 = arith.constant -1 : index
          %168 = arith.muli %150, %c-1_148 : index
          %c63_149 = arith.constant 63 : index
          %169 = arith.addi %168, %c63_149 : index
          %170 = memref.load %arg4[%169, %105] : memref<?x64xf32>
          memref.store %170, %alloca_9[] : memref<f32>
          %c0_150 = arith.constant 0 : index
          %171 = memref.load %alloca_16[%c0_150] : memref<1xf32>
          memref.store %171, %alloca_21[] : memref<f32>
          %c3 = arith.constant 3 : index
          %172 = arith.addi %106, %c3 : index
          %173 = memref.load %alloca_9[] : memref<f32>
          %c0_151 = arith.constant 0 : index
          memref.store %173, %alloca_16[%c0_151] : memref<1xf32>
          %174 = arith.mulf %100, %173 : f32
          %175 = memref.load %alloca_21[] : memref<f32>
          %176 = arith.mulf %101, %175 : f32
          %177 = arith.addf %174, %176 : f32
          %178 = memref.load %alloca_22[] : memref<f32>
          %c0_152 = arith.constant 0 : index
          memref.store %178, %alloca_19[%c0_152] : memref<1xf32>
          %179 = arith.mulf %102, %178 : f32
          %180 = arith.addf %177, %179 : f32
          %181 = memref.load %alloca_25[] : memref<f32>
          %182 = arith.mulf %103, %181 : f32
          %183 = arith.addf %180, %182 : f32
          %c-1_153 = arith.constant -1 : index
          %184 = arith.muli %172, %c-1_153 : index
          %c63_154 = arith.constant 63 : index
          %185 = arith.addi %184, %c63_154 : index
          memref.store %183, %arg6[%185, %105] : memref<?x64xf32>
          %c-1_155 = arith.constant -1 : index
          %186 = arith.muli %172, %c-1_155 : index
          %c63_156 = arith.constant 63 : index
          %187 = arith.addi %186, %c63_156 : index
          %188 = memref.load %arg6[%187, %105] : memref<?x64xf32>
          memref.store %188, %alloca_22[] : memref<f32>
          %c0_157 = arith.constant 0 : index
          %189 = memref.load %alloca_19[%c0_157] : memref<1xf32>
          memref.store %189, %alloca_25[] : memref<f32>
          %c-1_158 = arith.constant -1 : index
          %190 = arith.muli %172, %c-1_158 : index
          %c63_159 = arith.constant 63 : index
          %191 = arith.addi %190, %c63_159 : index
          %192 = memref.load %arg4[%191, %105] : memref<?x64xf32>
          memref.store %192, %alloca_9[] : memref<f32>
          %c0_160 = arith.constant 0 : index
          %193 = memref.load %alloca_16[%c0_160] : memref<1xf32>
          memref.store %193, %alloca_21[] : memref<f32>
        }
      }
    }
    %c0_113 = arith.constant 0 : index
    %c2_114 = arith.constant 2 : index
    %c1_115 = arith.constant 1 : index
    scf.for %arg7 = %c0_113 to %c2_114 step %c1_115 {
      %c0_116 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_117 = arith.constant 1 : index
      scf.for %arg8 = %c0_116 to %c32 step %c1_117 {
        %c32_118 = arith.constant 32 : index
        %104 = arith.muli %arg7, %c32_118 : index
        %105 = arith.addi %104, %arg8 : index
        %c0_119 = arith.constant 0 : index
        %c2_120 = arith.constant 2 : index
        %c1_121 = arith.constant 1 : index
        scf.for %arg9 = %c0_119 to %c2_120 step %c1_121 {
          %c0_122 = arith.constant 0 : index
          %c8 = arith.constant 8 : index
          %c1_123 = arith.constant 1 : index
          scf.for %arg10 = %c0_122 to %c8 step %c1_123 {
            %c32_124 = arith.constant 32 : index
            %106 = arith.muli %arg9, %c32_124 : index
            %c4 = arith.constant 4 : index
            %107 = arith.muli %arg10, %c4 : index
            %108 = arith.addi %106, %107 : index
            %109 = memref.load %arg5[%105, %108] : memref<?x64xf32>
            %110 = memref.load %arg6[%105, %108] : memref<?x64xf32>
            %111 = arith.addf %109, %110 : f32
            memref.store %111, %arg4[%105, %108] : memref<?x64xf32>
            %c1_125 = arith.constant 1 : index
            %112 = arith.addi %108, %c1_125 : index
            %113 = memref.load %arg5[%105, %112] : memref<?x64xf32>
            %114 = memref.load %arg6[%105, %112] : memref<?x64xf32>
            %115 = arith.addf %113, %114 : f32
            memref.store %115, %arg4[%105, %112] : memref<?x64xf32>
            %c2_126 = arith.constant 2 : index
            %116 = arith.addi %108, %c2_126 : index
            %117 = memref.load %arg5[%105, %116] : memref<?x64xf32>
            %118 = memref.load %arg6[%105, %116] : memref<?x64xf32>
            %119 = arith.addf %117, %118 : f32
            memref.store %119, %arg4[%105, %116] : memref<?x64xf32>
            %c3 = arith.constant 3 : index
            %120 = arith.addi %108, %c3 : index
            %121 = memref.load %arg5[%105, %120] : memref<?x64xf32>
            %122 = memref.load %arg6[%105, %120] : memref<?x64xf32>
            %123 = arith.addf %121, %122 : f32
            memref.store %123, %arg4[%105, %120] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

