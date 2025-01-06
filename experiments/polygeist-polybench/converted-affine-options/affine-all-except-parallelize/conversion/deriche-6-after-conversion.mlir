module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %c8 = arith.constant 8 : index
    %c63 = arith.constant 63 : index
    %c-1 = arith.constant -1 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = llvm.mlir.undef : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<f32>
    %alloca_10 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() : memref<1xf32>
    %alloca_13 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_14 = memref.alloca() : memref<f32>
    %alloca_15 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_16 = memref.alloca() : memref<1xf32>
    %alloca_17 = memref.alloca() : memref<1xf32>
    %alloca_18 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_19 = memref.alloca() : memref<1xf32>
    %alloca_20 = memref.alloca() : memref<1xf32>
    %alloca_21 = memref.alloca() : memref<f32>
    %alloca_22 = memref.alloca() : memref<f32>
    %alloca_23 = memref.alloca() : memref<f32>
    %alloca_24 = memref.alloca() : memref<1xf32>
    %alloca_25 = memref.alloca() : memref<f32>
    %1 = arith.mulf %arg2, %cst_2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.negf %2 : f32
    memref.store %3, %alloca_6[%c0] : memref<1xf32>
    %4 = arith.negf %arg2 : f32
    %5 = math.powf %cst_1, %4 : f32
    memref.store %5, %alloca_15[%c0] : memref<1xf32>
    %6 = arith.negf %arg2 : f32
    %7 = math.exp %6 : f32
    %8 = arith.mulf %arg2, %7 : f32
    %9 = arith.subf %cst_0, %7 : f32
    %10 = arith.mulf %9, %9 : f32
    %11 = arith.mulf %8, %cst_1 : f32
    %12 = arith.addf %11, %cst_0 : f32
    %13 = arith.mulf %arg2, %cst_1 : f32
    %14 = math.exp %13 : f32
    %15 = arith.subf %12, %14 : f32
    %16 = arith.divf %10, %15 : f32
    memref.store %16, %alloca_10[%c0] : memref<1xf32>
    %17 = memref.load %alloca_10[%c0] : memref<1xf32>
    memref.store %17, %alloca_24[%c0] : memref<1xf32>
    %18 = arith.negf %arg2 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    memref.store %20, %alloca_7[%c0] : memref<1xf32>
    %21 = arith.subf %arg2, %cst_0 : f32
    %22 = arith.mulf %20, %21 : f32
    memref.store %22, %alloca_18[%c0] : memref<1xf32>
    %23 = memref.load %alloca_24[%c0] : memref<1xf32>
    %24 = arith.negf %23 : f32
    %25 = arith.mulf %arg2, %cst_2 : f32
    %26 = math.exp %25 : f32
    %27 = arith.mulf %24, %26 : f32
    memref.store %27, %alloca_13[%c0] : memref<1xf32>
    %28 = memref.load %alloca_7[%c0] : memref<1xf32>
    %29 = arith.addf %arg2, %cst_0 : f32
    %30 = arith.mulf %28, %29 : f32
    memref.store %30, %alloca_11[%c0] : memref<1xf32>
    memref.store %0, %alloca_5[] : memref<f32>
    memref.store %0, %alloca_14[] : memref<f32>
    memref.store %0, %alloca_4[] : memref<f32>
    memref.store %0, %alloca_25[] : memref<f32>
    %31 = memref.load %alloca_10[%c0] : memref<1xf32>
    %32 = memref.load %alloca_18[%c0] : memref<1xf32>
    %33 = memref.load %alloca_15[%c0] : memref<1xf32>
    %34 = memref.load %alloca_6[%c0] : memref<1xf32>
    %35 = memref.load %alloca_10[%c0] : memref<1xf32>
    %36 = memref.load %alloca_18[%c0] : memref<1xf32>
    %37 = memref.load %alloca_15[%c0] : memref<1xf32>
    %38 = memref.load %alloca_6[%c0] : memref<1xf32>
    %39 = memref.load %alloca_10[%c0] : memref<1xf32>
    %40 = memref.load %alloca_18[%c0] : memref<1xf32>
    %41 = memref.load %alloca_15[%c0] : memref<1xf32>
    %42 = memref.load %alloca_6[%c0] : memref<1xf32>
    %43 = memref.load %alloca_10[%c0] : memref<1xf32>
    %44 = memref.load %alloca_18[%c0] : memref<1xf32>
    %45 = memref.load %alloca_15[%c0] : memref<1xf32>
    %46 = memref.load %alloca_6[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %95 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %96 = arith.addi %95, %arg8 : index
        memref.store %cst, %alloca_5[] : memref<f32>
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %97 = arith.muli %arg9, %c4 : index
          %98 = memref.load %arg3[%96, %97] : memref<?x64xf32>
          %99 = arith.mulf %31, %98 : f32
          %100 = memref.load %alloca_5[] : memref<f32>
          %101 = arith.mulf %32, %100 : f32
          %102 = arith.addf %99, %101 : f32
          %103 = memref.load %alloca_4[] : memref<f32>
          memref.store %103, %alloca_8[%c0] : memref<1xf32>
          %104 = arith.mulf %33, %103 : f32
          %105 = arith.addf %102, %104 : f32
          %106 = memref.load %alloca_25[] : memref<f32>
          %107 = arith.mulf %34, %106 : f32
          %108 = arith.addf %105, %107 : f32
          memref.store %108, %arg5[%96, %97] : memref<?x64xf32>
          %109 = memref.load %arg5[%96, %97] : memref<?x64xf32>
          memref.store %109, %alloca_4[] : memref<f32>
          %110 = memref.load %alloca_8[%c0] : memref<1xf32>
          memref.store %110, %alloca_25[] : memref<f32>
          %111 = memref.load %arg3[%96, %97] : memref<?x64xf32>
          memref.store %111, %alloca_5[] : memref<f32>
          %112 = arith.addi %97, %c1 : index
          %113 = memref.load %arg3[%96, %112] : memref<?x64xf32>
          %114 = arith.mulf %35, %113 : f32
          %115 = memref.load %alloca_5[] : memref<f32>
          %116 = arith.mulf %36, %115 : f32
          %117 = arith.addf %114, %116 : f32
          %118 = memref.load %alloca_4[] : memref<f32>
          memref.store %118, %alloca_8[%c0] : memref<1xf32>
          %119 = arith.mulf %37, %118 : f32
          %120 = arith.addf %117, %119 : f32
          %121 = memref.load %alloca_25[] : memref<f32>
          %122 = arith.mulf %38, %121 : f32
          %123 = arith.addf %120, %122 : f32
          memref.store %123, %arg5[%96, %112] : memref<?x64xf32>
          %124 = memref.load %arg5[%96, %112] : memref<?x64xf32>
          memref.store %124, %alloca_4[] : memref<f32>
          %125 = memref.load %alloca_8[%c0] : memref<1xf32>
          memref.store %125, %alloca_25[] : memref<f32>
          %126 = memref.load %arg3[%96, %112] : memref<?x64xf32>
          memref.store %126, %alloca_5[] : memref<f32>
          %127 = arith.addi %97, %c2 : index
          %128 = memref.load %arg3[%96, %127] : memref<?x64xf32>
          %129 = arith.mulf %39, %128 : f32
          %130 = memref.load %alloca_5[] : memref<f32>
          %131 = arith.mulf %40, %130 : f32
          %132 = arith.addf %129, %131 : f32
          %133 = memref.load %alloca_4[] : memref<f32>
          memref.store %133, %alloca_8[%c0] : memref<1xf32>
          %134 = arith.mulf %41, %133 : f32
          %135 = arith.addf %132, %134 : f32
          %136 = memref.load %alloca_25[] : memref<f32>
          %137 = arith.mulf %42, %136 : f32
          %138 = arith.addf %135, %137 : f32
          memref.store %138, %arg5[%96, %127] : memref<?x64xf32>
          %139 = memref.load %arg5[%96, %127] : memref<?x64xf32>
          memref.store %139, %alloca_4[] : memref<f32>
          %140 = memref.load %alloca_8[%c0] : memref<1xf32>
          memref.store %140, %alloca_25[] : memref<f32>
          %141 = memref.load %arg3[%96, %127] : memref<?x64xf32>
          memref.store %141, %alloca_5[] : memref<f32>
          %142 = arith.addi %97, %c3 : index
          %143 = memref.load %arg3[%96, %142] : memref<?x64xf32>
          %144 = arith.mulf %43, %143 : f32
          %145 = memref.load %alloca_5[] : memref<f32>
          %146 = arith.mulf %44, %145 : f32
          %147 = arith.addf %144, %146 : f32
          %148 = memref.load %alloca_4[] : memref<f32>
          memref.store %148, %alloca_8[%c0] : memref<1xf32>
          %149 = arith.mulf %45, %148 : f32
          %150 = arith.addf %147, %149 : f32
          %151 = memref.load %alloca_25[] : memref<f32>
          %152 = arith.mulf %46, %151 : f32
          %153 = arith.addf %150, %152 : f32
          memref.store %153, %arg5[%96, %142] : memref<?x64xf32>
          %154 = memref.load %arg5[%96, %142] : memref<?x64xf32>
          memref.store %154, %alloca_4[] : memref<f32>
          %155 = memref.load %alloca_8[%c0] : memref<1xf32>
          memref.store %155, %alloca_25[] : memref<f32>
          %156 = memref.load %arg3[%96, %142] : memref<?x64xf32>
          memref.store %156, %alloca_5[] : memref<f32>
        }
      }
    }
    memref.store %0, %alloca_3[] : memref<f32>
    memref.store %0, %alloca_21[] : memref<f32>
    memref.store %0, %alloca_9[] : memref<f32>
    memref.store %0, %alloca_23[] : memref<f32>
    memref.store %0, %alloca_22[] : memref<f32>
    memref.store %0, %alloca[] : memref<f32>
    %47 = memref.load %alloca_11[%c0] : memref<1xf32>
    %48 = memref.load %alloca_13[%c0] : memref<1xf32>
    %49 = memref.load %alloca_15[%c0] : memref<1xf32>
    %50 = memref.load %alloca_6[%c0] : memref<1xf32>
    %51 = memref.load %alloca_11[%c0] : memref<1xf32>
    %52 = memref.load %alloca_13[%c0] : memref<1xf32>
    %53 = memref.load %alloca_15[%c0] : memref<1xf32>
    %54 = memref.load %alloca_6[%c0] : memref<1xf32>
    %55 = memref.load %alloca_11[%c0] : memref<1xf32>
    %56 = memref.load %alloca_13[%c0] : memref<1xf32>
    %57 = memref.load %alloca_15[%c0] : memref<1xf32>
    %58 = memref.load %alloca_6[%c0] : memref<1xf32>
    %59 = memref.load %alloca_11[%c0] : memref<1xf32>
    %60 = memref.load %alloca_13[%c0] : memref<1xf32>
    %61 = memref.load %alloca_15[%c0] : memref<1xf32>
    %62 = memref.load %alloca_6[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %95 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %96 = arith.addi %95, %arg8 : index
        memref.store %cst, %alloca_21[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %97 = arith.muli %arg9, %c4 : index
          %98 = memref.load %alloca_3[] : memref<f32>
          memref.store %98, %alloca_12[%c0] : memref<1xf32>
          %99 = arith.mulf %47, %98 : f32
          %100 = memref.load %alloca_21[] : memref<f32>
          %101 = arith.mulf %48, %100 : f32
          %102 = arith.addf %99, %101 : f32
          %103 = memref.load %alloca_22[] : memref<f32>
          memref.store %103, %alloca_16[%c0] : memref<1xf32>
          %104 = arith.mulf %49, %103 : f32
          %105 = arith.addf %102, %104 : f32
          %106 = memref.load %alloca[] : memref<f32>
          %107 = arith.mulf %50, %106 : f32
          %108 = arith.addf %105, %107 : f32
          %109 = arith.muli %97, %c-1 : index
          %110 = arith.addi %109, %c63 : index
          memref.store %108, %arg6[%96, %110] : memref<?x64xf32>
          %111 = arith.muli %97, %c-1 : index
          %112 = arith.addi %111, %c63 : index
          %113 = memref.load %arg6[%96, %112] : memref<?x64xf32>
          memref.store %113, %alloca_22[] : memref<f32>
          %114 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %114, %alloca[] : memref<f32>
          %115 = arith.muli %97, %c-1 : index
          %116 = arith.addi %115, %c63 : index
          %117 = memref.load %arg3[%96, %116] : memref<?x64xf32>
          memref.store %117, %alloca_3[] : memref<f32>
          %118 = memref.load %alloca_12[%c0] : memref<1xf32>
          memref.store %118, %alloca_21[] : memref<f32>
          %119 = arith.addi %97, %c1 : index
          %120 = memref.load %alloca_3[] : memref<f32>
          memref.store %120, %alloca_12[%c0] : memref<1xf32>
          %121 = arith.mulf %51, %120 : f32
          %122 = memref.load %alloca_21[] : memref<f32>
          %123 = arith.mulf %52, %122 : f32
          %124 = arith.addf %121, %123 : f32
          %125 = memref.load %alloca_22[] : memref<f32>
          memref.store %125, %alloca_16[%c0] : memref<1xf32>
          %126 = arith.mulf %53, %125 : f32
          %127 = arith.addf %124, %126 : f32
          %128 = memref.load %alloca[] : memref<f32>
          %129 = arith.mulf %54, %128 : f32
          %130 = arith.addf %127, %129 : f32
          %131 = arith.muli %119, %c-1 : index
          %132 = arith.addi %131, %c63 : index
          memref.store %130, %arg6[%96, %132] : memref<?x64xf32>
          %133 = arith.muli %119, %c-1 : index
          %134 = arith.addi %133, %c63 : index
          %135 = memref.load %arg6[%96, %134] : memref<?x64xf32>
          memref.store %135, %alloca_22[] : memref<f32>
          %136 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %136, %alloca[] : memref<f32>
          %137 = arith.muli %119, %c-1 : index
          %138 = arith.addi %137, %c63 : index
          %139 = memref.load %arg3[%96, %138] : memref<?x64xf32>
          memref.store %139, %alloca_3[] : memref<f32>
          %140 = memref.load %alloca_12[%c0] : memref<1xf32>
          memref.store %140, %alloca_21[] : memref<f32>
          %141 = arith.addi %97, %c2 : index
          %142 = memref.load %alloca_3[] : memref<f32>
          memref.store %142, %alloca_12[%c0] : memref<1xf32>
          %143 = arith.mulf %55, %142 : f32
          %144 = memref.load %alloca_21[] : memref<f32>
          %145 = arith.mulf %56, %144 : f32
          %146 = arith.addf %143, %145 : f32
          %147 = memref.load %alloca_22[] : memref<f32>
          memref.store %147, %alloca_16[%c0] : memref<1xf32>
          %148 = arith.mulf %57, %147 : f32
          %149 = arith.addf %146, %148 : f32
          %150 = memref.load %alloca[] : memref<f32>
          %151 = arith.mulf %58, %150 : f32
          %152 = arith.addf %149, %151 : f32
          %153 = arith.muli %141, %c-1 : index
          %154 = arith.addi %153, %c63 : index
          memref.store %152, %arg6[%96, %154] : memref<?x64xf32>
          %155 = arith.muli %141, %c-1 : index
          %156 = arith.addi %155, %c63 : index
          %157 = memref.load %arg6[%96, %156] : memref<?x64xf32>
          memref.store %157, %alloca_22[] : memref<f32>
          %158 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %158, %alloca[] : memref<f32>
          %159 = arith.muli %141, %c-1 : index
          %160 = arith.addi %159, %c63 : index
          %161 = memref.load %arg3[%96, %160] : memref<?x64xf32>
          memref.store %161, %alloca_3[] : memref<f32>
          %162 = memref.load %alloca_12[%c0] : memref<1xf32>
          memref.store %162, %alloca_21[] : memref<f32>
          %163 = arith.addi %97, %c3 : index
          %164 = memref.load %alloca_3[] : memref<f32>
          memref.store %164, %alloca_12[%c0] : memref<1xf32>
          %165 = arith.mulf %59, %164 : f32
          %166 = memref.load %alloca_21[] : memref<f32>
          %167 = arith.mulf %60, %166 : f32
          %168 = arith.addf %165, %167 : f32
          %169 = memref.load %alloca_22[] : memref<f32>
          memref.store %169, %alloca_16[%c0] : memref<1xf32>
          %170 = arith.mulf %61, %169 : f32
          %171 = arith.addf %168, %170 : f32
          %172 = memref.load %alloca[] : memref<f32>
          %173 = arith.mulf %62, %172 : f32
          %174 = arith.addf %171, %173 : f32
          %175 = arith.muli %163, %c-1 : index
          %176 = arith.addi %175, %c63 : index
          memref.store %174, %arg6[%96, %176] : memref<?x64xf32>
          %177 = arith.muli %163, %c-1 : index
          %178 = arith.addi %177, %c63 : index
          %179 = memref.load %arg6[%96, %178] : memref<?x64xf32>
          memref.store %179, %alloca_22[] : memref<f32>
          %180 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %180, %alloca[] : memref<f32>
          %181 = arith.muli %163, %c-1 : index
          %182 = arith.addi %181, %c63 : index
          %183 = memref.load %arg3[%96, %182] : memref<?x64xf32>
          memref.store %183, %alloca_3[] : memref<f32>
          %184 = memref.load %alloca_12[%c0] : memref<1xf32>
          memref.store %184, %alloca_21[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %95 = arith.muli %arg7, %c32 : index
        %96 = arith.addi %95, %arg8 : index
        scf.for %arg9 = %c0 to %c2 step %c1 {
          scf.for %arg10 = %c0 to %c8 step %c1 {
            %97 = arith.muli %arg9, %c32 : index
            %98 = arith.muli %arg10, %c4 : index
            %99 = arith.addi %97, %98 : index
            %100 = memref.load %arg5[%96, %99] : memref<?x64xf32>
            %101 = memref.load %arg6[%96, %99] : memref<?x64xf32>
            %102 = arith.addf %100, %101 : f32
            memref.store %102, %arg4[%96, %99] : memref<?x64xf32>
            %103 = arith.addi %99, %c1 : index
            %104 = memref.load %arg5[%96, %103] : memref<?x64xf32>
            %105 = memref.load %arg6[%96, %103] : memref<?x64xf32>
            %106 = arith.addf %104, %105 : f32
            memref.store %106, %arg4[%96, %103] : memref<?x64xf32>
            %107 = arith.addi %99, %c2 : index
            %108 = memref.load %arg5[%96, %107] : memref<?x64xf32>
            %109 = memref.load %arg6[%96, %107] : memref<?x64xf32>
            %110 = arith.addf %108, %109 : f32
            memref.store %110, %arg4[%96, %107] : memref<?x64xf32>
            %111 = arith.addi %99, %c3 : index
            %112 = memref.load %arg5[%96, %111] : memref<?x64xf32>
            %113 = memref.load %arg6[%96, %111] : memref<?x64xf32>
            %114 = arith.addf %112, %113 : f32
            memref.store %114, %arg4[%96, %111] : memref<?x64xf32>
          }
        }
      }
    }
    %63 = memref.load %alloca_10[%c0] : memref<1xf32>
    %64 = memref.load %alloca_18[%c0] : memref<1xf32>
    %65 = memref.load %alloca_15[%c0] : memref<1xf32>
    %66 = memref.load %alloca_6[%c0] : memref<1xf32>
    %67 = memref.load %alloca_10[%c0] : memref<1xf32>
    %68 = memref.load %alloca_18[%c0] : memref<1xf32>
    %69 = memref.load %alloca_15[%c0] : memref<1xf32>
    %70 = memref.load %alloca_6[%c0] : memref<1xf32>
    %71 = memref.load %alloca_10[%c0] : memref<1xf32>
    %72 = memref.load %alloca_18[%c0] : memref<1xf32>
    %73 = memref.load %alloca_15[%c0] : memref<1xf32>
    %74 = memref.load %alloca_6[%c0] : memref<1xf32>
    %75 = memref.load %alloca_10[%c0] : memref<1xf32>
    %76 = memref.load %alloca_18[%c0] : memref<1xf32>
    %77 = memref.load %alloca_15[%c0] : memref<1xf32>
    %78 = memref.load %alloca_6[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %95 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %96 = arith.addi %95, %arg8 : index
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_14[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %97 = arith.muli %arg9, %c4 : index
          %98 = memref.load %arg4[%97, %96] : memref<?x64xf32>
          %99 = arith.mulf %63, %98 : f32
          %100 = memref.load %alloca_14[] : memref<f32>
          %101 = arith.mulf %64, %100 : f32
          %102 = arith.addf %99, %101 : f32
          %103 = memref.load %alloca_4[] : memref<f32>
          memref.store %103, %alloca_19[%c0] : memref<1xf32>
          %104 = arith.mulf %65, %103 : f32
          %105 = arith.addf %102, %104 : f32
          %106 = memref.load %alloca_25[] : memref<f32>
          %107 = arith.mulf %66, %106 : f32
          %108 = arith.addf %105, %107 : f32
          memref.store %108, %arg5[%97, %96] : memref<?x64xf32>
          %109 = memref.load %arg5[%97, %96] : memref<?x64xf32>
          memref.store %109, %alloca_4[] : memref<f32>
          %110 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %110, %alloca_25[] : memref<f32>
          %111 = memref.load %arg4[%97, %96] : memref<?x64xf32>
          memref.store %111, %alloca_14[] : memref<f32>
          %112 = arith.addi %97, %c1 : index
          %113 = memref.load %arg4[%112, %96] : memref<?x64xf32>
          %114 = arith.mulf %67, %113 : f32
          %115 = memref.load %alloca_14[] : memref<f32>
          %116 = arith.mulf %68, %115 : f32
          %117 = arith.addf %114, %116 : f32
          %118 = memref.load %alloca_4[] : memref<f32>
          memref.store %118, %alloca_19[%c0] : memref<1xf32>
          %119 = arith.mulf %69, %118 : f32
          %120 = arith.addf %117, %119 : f32
          %121 = memref.load %alloca_25[] : memref<f32>
          %122 = arith.mulf %70, %121 : f32
          %123 = arith.addf %120, %122 : f32
          memref.store %123, %arg5[%112, %96] : memref<?x64xf32>
          %124 = memref.load %arg5[%112, %96] : memref<?x64xf32>
          memref.store %124, %alloca_4[] : memref<f32>
          %125 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %125, %alloca_25[] : memref<f32>
          %126 = memref.load %arg4[%112, %96] : memref<?x64xf32>
          memref.store %126, %alloca_14[] : memref<f32>
          %127 = arith.addi %97, %c2 : index
          %128 = memref.load %arg4[%127, %96] : memref<?x64xf32>
          %129 = arith.mulf %71, %128 : f32
          %130 = memref.load %alloca_14[] : memref<f32>
          %131 = arith.mulf %72, %130 : f32
          %132 = arith.addf %129, %131 : f32
          %133 = memref.load %alloca_4[] : memref<f32>
          memref.store %133, %alloca_19[%c0] : memref<1xf32>
          %134 = arith.mulf %73, %133 : f32
          %135 = arith.addf %132, %134 : f32
          %136 = memref.load %alloca_25[] : memref<f32>
          %137 = arith.mulf %74, %136 : f32
          %138 = arith.addf %135, %137 : f32
          memref.store %138, %arg5[%127, %96] : memref<?x64xf32>
          %139 = memref.load %arg5[%127, %96] : memref<?x64xf32>
          memref.store %139, %alloca_4[] : memref<f32>
          %140 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %140, %alloca_25[] : memref<f32>
          %141 = memref.load %arg4[%127, %96] : memref<?x64xf32>
          memref.store %141, %alloca_14[] : memref<f32>
          %142 = arith.addi %97, %c3 : index
          %143 = memref.load %arg4[%142, %96] : memref<?x64xf32>
          %144 = arith.mulf %75, %143 : f32
          %145 = memref.load %alloca_14[] : memref<f32>
          %146 = arith.mulf %76, %145 : f32
          %147 = arith.addf %144, %146 : f32
          %148 = memref.load %alloca_4[] : memref<f32>
          memref.store %148, %alloca_19[%c0] : memref<1xf32>
          %149 = arith.mulf %77, %148 : f32
          %150 = arith.addf %147, %149 : f32
          %151 = memref.load %alloca_25[] : memref<f32>
          %152 = arith.mulf %78, %151 : f32
          %153 = arith.addf %150, %152 : f32
          memref.store %153, %arg5[%142, %96] : memref<?x64xf32>
          %154 = memref.load %arg5[%142, %96] : memref<?x64xf32>
          memref.store %154, %alloca_4[] : memref<f32>
          %155 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %155, %alloca_25[] : memref<f32>
          %156 = memref.load %arg4[%142, %96] : memref<?x64xf32>
          memref.store %156, %alloca_14[] : memref<f32>
        }
      }
    }
    %79 = memref.load %alloca_11[%c0] : memref<1xf32>
    %80 = memref.load %alloca_13[%c0] : memref<1xf32>
    %81 = memref.load %alloca_15[%c0] : memref<1xf32>
    %82 = memref.load %alloca_6[%c0] : memref<1xf32>
    %83 = memref.load %alloca_11[%c0] : memref<1xf32>
    %84 = memref.load %alloca_13[%c0] : memref<1xf32>
    %85 = memref.load %alloca_15[%c0] : memref<1xf32>
    %86 = memref.load %alloca_6[%c0] : memref<1xf32>
    %87 = memref.load %alloca_11[%c0] : memref<1xf32>
    %88 = memref.load %alloca_13[%c0] : memref<1xf32>
    %89 = memref.load %alloca_15[%c0] : memref<1xf32>
    %90 = memref.load %alloca_6[%c0] : memref<1xf32>
    %91 = memref.load %alloca_11[%c0] : memref<1xf32>
    %92 = memref.load %alloca_13[%c0] : memref<1xf32>
    %93 = memref.load %alloca_15[%c0] : memref<1xf32>
    %94 = memref.load %alloca_6[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %95 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %96 = arith.addi %95, %arg8 : index
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        memref.store %cst, %alloca_23[] : memref<f32>
        memref.store %cst, %alloca_9[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %97 = arith.muli %arg9, %c4 : index
          %98 = memref.load %alloca_9[] : memref<f32>
          memref.store %98, %alloca_17[%c0] : memref<1xf32>
          %99 = arith.mulf %79, %98 : f32
          %100 = memref.load %alloca_23[] : memref<f32>
          %101 = arith.mulf %80, %100 : f32
          %102 = arith.addf %99, %101 : f32
          %103 = memref.load %alloca_22[] : memref<f32>
          memref.store %103, %alloca_20[%c0] : memref<1xf32>
          %104 = arith.mulf %81, %103 : f32
          %105 = arith.addf %102, %104 : f32
          %106 = memref.load %alloca[] : memref<f32>
          %107 = arith.mulf %82, %106 : f32
          %108 = arith.addf %105, %107 : f32
          %109 = arith.muli %97, %c-1 : index
          %110 = arith.addi %109, %c63 : index
          memref.store %108, %arg6[%110, %96] : memref<?x64xf32>
          %111 = arith.muli %97, %c-1 : index
          %112 = arith.addi %111, %c63 : index
          %113 = memref.load %arg6[%112, %96] : memref<?x64xf32>
          memref.store %113, %alloca_22[] : memref<f32>
          %114 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %114, %alloca[] : memref<f32>
          %115 = arith.muli %97, %c-1 : index
          %116 = arith.addi %115, %c63 : index
          %117 = memref.load %arg4[%116, %96] : memref<?x64xf32>
          memref.store %117, %alloca_9[] : memref<f32>
          %118 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %118, %alloca_23[] : memref<f32>
          %119 = arith.addi %97, %c1 : index
          %120 = memref.load %alloca_9[] : memref<f32>
          memref.store %120, %alloca_17[%c0] : memref<1xf32>
          %121 = arith.mulf %83, %120 : f32
          %122 = memref.load %alloca_23[] : memref<f32>
          %123 = arith.mulf %84, %122 : f32
          %124 = arith.addf %121, %123 : f32
          %125 = memref.load %alloca_22[] : memref<f32>
          memref.store %125, %alloca_20[%c0] : memref<1xf32>
          %126 = arith.mulf %85, %125 : f32
          %127 = arith.addf %124, %126 : f32
          %128 = memref.load %alloca[] : memref<f32>
          %129 = arith.mulf %86, %128 : f32
          %130 = arith.addf %127, %129 : f32
          %131 = arith.muli %119, %c-1 : index
          %132 = arith.addi %131, %c63 : index
          memref.store %130, %arg6[%132, %96] : memref<?x64xf32>
          %133 = arith.muli %119, %c-1 : index
          %134 = arith.addi %133, %c63 : index
          %135 = memref.load %arg6[%134, %96] : memref<?x64xf32>
          memref.store %135, %alloca_22[] : memref<f32>
          %136 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %136, %alloca[] : memref<f32>
          %137 = arith.muli %119, %c-1 : index
          %138 = arith.addi %137, %c63 : index
          %139 = memref.load %arg4[%138, %96] : memref<?x64xf32>
          memref.store %139, %alloca_9[] : memref<f32>
          %140 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %140, %alloca_23[] : memref<f32>
          %141 = arith.addi %97, %c2 : index
          %142 = memref.load %alloca_9[] : memref<f32>
          memref.store %142, %alloca_17[%c0] : memref<1xf32>
          %143 = arith.mulf %87, %142 : f32
          %144 = memref.load %alloca_23[] : memref<f32>
          %145 = arith.mulf %88, %144 : f32
          %146 = arith.addf %143, %145 : f32
          %147 = memref.load %alloca_22[] : memref<f32>
          memref.store %147, %alloca_20[%c0] : memref<1xf32>
          %148 = arith.mulf %89, %147 : f32
          %149 = arith.addf %146, %148 : f32
          %150 = memref.load %alloca[] : memref<f32>
          %151 = arith.mulf %90, %150 : f32
          %152 = arith.addf %149, %151 : f32
          %153 = arith.muli %141, %c-1 : index
          %154 = arith.addi %153, %c63 : index
          memref.store %152, %arg6[%154, %96] : memref<?x64xf32>
          %155 = arith.muli %141, %c-1 : index
          %156 = arith.addi %155, %c63 : index
          %157 = memref.load %arg6[%156, %96] : memref<?x64xf32>
          memref.store %157, %alloca_22[] : memref<f32>
          %158 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %158, %alloca[] : memref<f32>
          %159 = arith.muli %141, %c-1 : index
          %160 = arith.addi %159, %c63 : index
          %161 = memref.load %arg4[%160, %96] : memref<?x64xf32>
          memref.store %161, %alloca_9[] : memref<f32>
          %162 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %162, %alloca_23[] : memref<f32>
          %163 = arith.addi %97, %c3 : index
          %164 = memref.load %alloca_9[] : memref<f32>
          memref.store %164, %alloca_17[%c0] : memref<1xf32>
          %165 = arith.mulf %91, %164 : f32
          %166 = memref.load %alloca_23[] : memref<f32>
          %167 = arith.mulf %92, %166 : f32
          %168 = arith.addf %165, %167 : f32
          %169 = memref.load %alloca_22[] : memref<f32>
          memref.store %169, %alloca_20[%c0] : memref<1xf32>
          %170 = arith.mulf %93, %169 : f32
          %171 = arith.addf %168, %170 : f32
          %172 = memref.load %alloca[] : memref<f32>
          %173 = arith.mulf %94, %172 : f32
          %174 = arith.addf %171, %173 : f32
          %175 = arith.muli %163, %c-1 : index
          %176 = arith.addi %175, %c63 : index
          memref.store %174, %arg6[%176, %96] : memref<?x64xf32>
          %177 = arith.muli %163, %c-1 : index
          %178 = arith.addi %177, %c63 : index
          %179 = memref.load %arg6[%178, %96] : memref<?x64xf32>
          memref.store %179, %alloca_22[] : memref<f32>
          %180 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %180, %alloca[] : memref<f32>
          %181 = arith.muli %163, %c-1 : index
          %182 = arith.addi %181, %c63 : index
          %183 = memref.load %arg4[%182, %96] : memref<?x64xf32>
          memref.store %183, %alloca_9[] : memref<f32>
          %184 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %184, %alloca_23[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %95 = arith.muli %arg7, %c32 : index
        %96 = arith.addi %95, %arg8 : index
        scf.for %arg9 = %c0 to %c2 step %c1 {
          scf.for %arg10 = %c0 to %c8 step %c1 {
            %97 = arith.muli %arg9, %c32 : index
            %98 = arith.muli %arg10, %c4 : index
            %99 = arith.addi %97, %98 : index
            %100 = memref.load %arg5[%96, %99] : memref<?x64xf32>
            %101 = memref.load %arg6[%96, %99] : memref<?x64xf32>
            %102 = arith.addf %100, %101 : f32
            memref.store %102, %arg4[%96, %99] : memref<?x64xf32>
            %103 = arith.addi %99, %c1 : index
            %104 = memref.load %arg5[%96, %103] : memref<?x64xf32>
            %105 = memref.load %arg6[%96, %103] : memref<?x64xf32>
            %106 = arith.addf %104, %105 : f32
            memref.store %106, %arg4[%96, %103] : memref<?x64xf32>
            %107 = arith.addi %99, %c2 : index
            %108 = memref.load %arg5[%96, %107] : memref<?x64xf32>
            %109 = memref.load %arg6[%96, %107] : memref<?x64xf32>
            %110 = arith.addf %108, %109 : f32
            memref.store %110, %arg4[%96, %107] : memref<?x64xf32>
            %111 = arith.addi %99, %c3 : index
            %112 = memref.load %arg5[%96, %111] : memref<?x64xf32>
            %113 = memref.load %arg6[%96, %111] : memref<?x64xf32>
            %114 = arith.addf %112, %113 : f32
            memref.store %114, %arg4[%96, %111] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

