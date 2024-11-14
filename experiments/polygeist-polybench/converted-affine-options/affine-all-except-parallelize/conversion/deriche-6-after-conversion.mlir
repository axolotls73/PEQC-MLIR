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
    memref.store %2, %alloca_5[%c0] : memref<1xf32>
    %3 = arith.negf %arg2 : f32
    %4 = math.powf %cst_1, %3 : f32
    memref.store %4, %alloca_14[%c0] : memref<1xf32>
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
    memref.store %15, %alloca_10[%c0] : memref<1xf32>
    %16 = memref.load %alloca_10[%c0] : memref<1xf32>
    memref.store %16, %alloca_23[%c0] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    memref.store %19, %alloca_7[%c0] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    memref.store %21, %alloca_15[%c0] : memref<1xf32>
    %22 = memref.load %alloca_23[%c0] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    memref.store %26, %alloca_12[%c0] : memref<1xf32>
    %27 = memref.load %alloca_7[%c0] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    memref.store %29, %alloca_11[%c0] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_4[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_13[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_3[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_24[] : memref<f32>
    %34 = memref.load %alloca_10[%c0] : memref<1xf32>
    %35 = memref.load %alloca_15[%c0] : memref<1xf32>
    %36 = memref.load %alloca_14[%c0] : memref<1xf32>
    %37 = memref.load %alloca_5[%c0] : memref<1xf32>
    %38 = memref.load %alloca_10[%c0] : memref<1xf32>
    %39 = memref.load %alloca_15[%c0] : memref<1xf32>
    %40 = memref.load %alloca_14[%c0] : memref<1xf32>
    %41 = memref.load %alloca_5[%c0] : memref<1xf32>
    %42 = memref.load %alloca_10[%c0] : memref<1xf32>
    %43 = memref.load %alloca_15[%c0] : memref<1xf32>
    %44 = memref.load %alloca_14[%c0] : memref<1xf32>
    %45 = memref.load %alloca_5[%c0] : memref<1xf32>
    %46 = memref.load %alloca_10[%c0] : memref<1xf32>
    %47 = memref.load %alloca_15[%c0] : memref<1xf32>
    %48 = memref.load %alloca_14[%c0] : memref<1xf32>
    %49 = memref.load %alloca_5[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %104 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %105 = arith.addi %104, %arg8 : index
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %106 = arith.muli %arg9, %c4 : index
          %107 = memref.load %arg3[%105, %106] : memref<?x64xf32>
          %108 = arith.mulf %34, %107 : f32
          %109 = memref.load %alloca_4[] : memref<f32>
          %110 = arith.mulf %35, %109 : f32
          %111 = arith.addf %108, %110 : f32
          %112 = memref.load %alloca_3[] : memref<f32>
          memref.store %112, %alloca_8[%c0] : memref<1xf32>
          %113 = arith.mulf %36, %112 : f32
          %114 = arith.addf %111, %113 : f32
          %115 = memref.load %alloca_24[] : memref<f32>
          %116 = arith.mulf %37, %115 : f32
          %117 = arith.addf %114, %116 : f32
          memref.store %117, %arg5[%105, %106] : memref<?x64xf32>
          %118 = memref.load %arg5[%105, %106] : memref<?x64xf32>
          memref.store %118, %alloca_3[] : memref<f32>
          %119 = memref.load %alloca_8[%c0] : memref<1xf32>
          memref.store %119, %alloca_24[] : memref<f32>
          %120 = memref.load %arg3[%105, %106] : memref<?x64xf32>
          memref.store %120, %alloca_4[] : memref<f32>
          %121 = arith.addi %106, %c1 : index
          %122 = memref.load %arg3[%105, %121] : memref<?x64xf32>
          %123 = arith.mulf %38, %122 : f32
          %124 = memref.load %alloca_4[] : memref<f32>
          %125 = arith.mulf %39, %124 : f32
          %126 = arith.addf %123, %125 : f32
          %127 = memref.load %alloca_3[] : memref<f32>
          memref.store %127, %alloca_8[%c0] : memref<1xf32>
          %128 = arith.mulf %40, %127 : f32
          %129 = arith.addf %126, %128 : f32
          %130 = memref.load %alloca_24[] : memref<f32>
          %131 = arith.mulf %41, %130 : f32
          %132 = arith.addf %129, %131 : f32
          memref.store %132, %arg5[%105, %121] : memref<?x64xf32>
          %133 = memref.load %arg5[%105, %121] : memref<?x64xf32>
          memref.store %133, %alloca_3[] : memref<f32>
          %134 = memref.load %alloca_8[%c0] : memref<1xf32>
          memref.store %134, %alloca_24[] : memref<f32>
          %135 = memref.load %arg3[%105, %121] : memref<?x64xf32>
          memref.store %135, %alloca_4[] : memref<f32>
          %136 = arith.addi %106, %c2 : index
          %137 = memref.load %arg3[%105, %136] : memref<?x64xf32>
          %138 = arith.mulf %42, %137 : f32
          %139 = memref.load %alloca_4[] : memref<f32>
          %140 = arith.mulf %43, %139 : f32
          %141 = arith.addf %138, %140 : f32
          %142 = memref.load %alloca_3[] : memref<f32>
          memref.store %142, %alloca_8[%c0] : memref<1xf32>
          %143 = arith.mulf %44, %142 : f32
          %144 = arith.addf %141, %143 : f32
          %145 = memref.load %alloca_24[] : memref<f32>
          %146 = arith.mulf %45, %145 : f32
          %147 = arith.addf %144, %146 : f32
          memref.store %147, %arg5[%105, %136] : memref<?x64xf32>
          %148 = memref.load %arg5[%105, %136] : memref<?x64xf32>
          memref.store %148, %alloca_3[] : memref<f32>
          %149 = memref.load %alloca_8[%c0] : memref<1xf32>
          memref.store %149, %alloca_24[] : memref<f32>
          %150 = memref.load %arg3[%105, %136] : memref<?x64xf32>
          memref.store %150, %alloca_4[] : memref<f32>
          %151 = arith.addi %106, %c3 : index
          %152 = memref.load %arg3[%105, %151] : memref<?x64xf32>
          %153 = arith.mulf %46, %152 : f32
          %154 = memref.load %alloca_4[] : memref<f32>
          %155 = arith.mulf %47, %154 : f32
          %156 = arith.addf %153, %155 : f32
          %157 = memref.load %alloca_3[] : memref<f32>
          memref.store %157, %alloca_8[%c0] : memref<1xf32>
          %158 = arith.mulf %48, %157 : f32
          %159 = arith.addf %156, %158 : f32
          %160 = memref.load %alloca_24[] : memref<f32>
          %161 = arith.mulf %49, %160 : f32
          %162 = arith.addf %159, %161 : f32
          memref.store %162, %arg5[%105, %151] : memref<?x64xf32>
          %163 = memref.load %arg5[%105, %151] : memref<?x64xf32>
          memref.store %163, %alloca_3[] : memref<f32>
          %164 = memref.load %alloca_8[%c0] : memref<1xf32>
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
    %56 = memref.load %alloca_11[%c0] : memref<1xf32>
    %57 = memref.load %alloca_12[%c0] : memref<1xf32>
    %58 = memref.load %alloca_14[%c0] : memref<1xf32>
    %59 = memref.load %alloca_5[%c0] : memref<1xf32>
    %60 = memref.load %alloca_11[%c0] : memref<1xf32>
    %61 = memref.load %alloca_12[%c0] : memref<1xf32>
    %62 = memref.load %alloca_14[%c0] : memref<1xf32>
    %63 = memref.load %alloca_5[%c0] : memref<1xf32>
    %64 = memref.load %alloca_11[%c0] : memref<1xf32>
    %65 = memref.load %alloca_12[%c0] : memref<1xf32>
    %66 = memref.load %alloca_14[%c0] : memref<1xf32>
    %67 = memref.load %alloca_5[%c0] : memref<1xf32>
    %68 = memref.load %alloca_11[%c0] : memref<1xf32>
    %69 = memref.load %alloca_12[%c0] : memref<1xf32>
    %70 = memref.load %alloca_14[%c0] : memref<1xf32>
    %71 = memref.load %alloca_5[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %104 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %105 = arith.addi %104, %arg8 : index
        memref.store %cst, %alloca_20[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %106 = arith.muli %arg9, %c4 : index
          %107 = memref.load %alloca[] : memref<f32>
          memref.store %107, %alloca_6[%c0] : memref<1xf32>
          %108 = arith.mulf %56, %107 : f32
          %109 = memref.load %alloca_20[] : memref<f32>
          %110 = arith.mulf %57, %109 : f32
          %111 = arith.addf %108, %110 : f32
          %112 = memref.load %alloca_22[] : memref<f32>
          memref.store %112, %alloca_17[%c0] : memref<1xf32>
          %113 = arith.mulf %58, %112 : f32
          %114 = arith.addf %111, %113 : f32
          %115 = memref.load %alloca_25[] : memref<f32>
          %116 = arith.mulf %59, %115 : f32
          %117 = arith.addf %114, %116 : f32
          %118 = arith.muli %106, %c-1 : index
          %119 = arith.addi %118, %c63 : index
          memref.store %117, %arg6[%105, %119] : memref<?x64xf32>
          %120 = arith.muli %106, %c-1 : index
          %121 = arith.addi %120, %c63 : index
          %122 = memref.load %arg6[%105, %121] : memref<?x64xf32>
          memref.store %122, %alloca_22[] : memref<f32>
          %123 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %123, %alloca_25[] : memref<f32>
          %124 = arith.muli %106, %c-1 : index
          %125 = arith.addi %124, %c63 : index
          %126 = memref.load %arg3[%105, %125] : memref<?x64xf32>
          memref.store %126, %alloca[] : memref<f32>
          %127 = memref.load %alloca_6[%c0] : memref<1xf32>
          memref.store %127, %alloca_20[] : memref<f32>
          %128 = arith.addi %106, %c1 : index
          %129 = memref.load %alloca[] : memref<f32>
          memref.store %129, %alloca_6[%c0] : memref<1xf32>
          %130 = arith.mulf %60, %129 : f32
          %131 = memref.load %alloca_20[] : memref<f32>
          %132 = arith.mulf %61, %131 : f32
          %133 = arith.addf %130, %132 : f32
          %134 = memref.load %alloca_22[] : memref<f32>
          memref.store %134, %alloca_17[%c0] : memref<1xf32>
          %135 = arith.mulf %62, %134 : f32
          %136 = arith.addf %133, %135 : f32
          %137 = memref.load %alloca_25[] : memref<f32>
          %138 = arith.mulf %63, %137 : f32
          %139 = arith.addf %136, %138 : f32
          %140 = arith.muli %128, %c-1 : index
          %141 = arith.addi %140, %c63 : index
          memref.store %139, %arg6[%105, %141] : memref<?x64xf32>
          %142 = arith.muli %128, %c-1 : index
          %143 = arith.addi %142, %c63 : index
          %144 = memref.load %arg6[%105, %143] : memref<?x64xf32>
          memref.store %144, %alloca_22[] : memref<f32>
          %145 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %145, %alloca_25[] : memref<f32>
          %146 = arith.muli %128, %c-1 : index
          %147 = arith.addi %146, %c63 : index
          %148 = memref.load %arg3[%105, %147] : memref<?x64xf32>
          memref.store %148, %alloca[] : memref<f32>
          %149 = memref.load %alloca_6[%c0] : memref<1xf32>
          memref.store %149, %alloca_20[] : memref<f32>
          %150 = arith.addi %106, %c2 : index
          %151 = memref.load %alloca[] : memref<f32>
          memref.store %151, %alloca_6[%c0] : memref<1xf32>
          %152 = arith.mulf %64, %151 : f32
          %153 = memref.load %alloca_20[] : memref<f32>
          %154 = arith.mulf %65, %153 : f32
          %155 = arith.addf %152, %154 : f32
          %156 = memref.load %alloca_22[] : memref<f32>
          memref.store %156, %alloca_17[%c0] : memref<1xf32>
          %157 = arith.mulf %66, %156 : f32
          %158 = arith.addf %155, %157 : f32
          %159 = memref.load %alloca_25[] : memref<f32>
          %160 = arith.mulf %67, %159 : f32
          %161 = arith.addf %158, %160 : f32
          %162 = arith.muli %150, %c-1 : index
          %163 = arith.addi %162, %c63 : index
          memref.store %161, %arg6[%105, %163] : memref<?x64xf32>
          %164 = arith.muli %150, %c-1 : index
          %165 = arith.addi %164, %c63 : index
          %166 = memref.load %arg6[%105, %165] : memref<?x64xf32>
          memref.store %166, %alloca_22[] : memref<f32>
          %167 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %167, %alloca_25[] : memref<f32>
          %168 = arith.muli %150, %c-1 : index
          %169 = arith.addi %168, %c63 : index
          %170 = memref.load %arg3[%105, %169] : memref<?x64xf32>
          memref.store %170, %alloca[] : memref<f32>
          %171 = memref.load %alloca_6[%c0] : memref<1xf32>
          memref.store %171, %alloca_20[] : memref<f32>
          %172 = arith.addi %106, %c3 : index
          %173 = memref.load %alloca[] : memref<f32>
          memref.store %173, %alloca_6[%c0] : memref<1xf32>
          %174 = arith.mulf %68, %173 : f32
          %175 = memref.load %alloca_20[] : memref<f32>
          %176 = arith.mulf %69, %175 : f32
          %177 = arith.addf %174, %176 : f32
          %178 = memref.load %alloca_22[] : memref<f32>
          memref.store %178, %alloca_17[%c0] : memref<1xf32>
          %179 = arith.mulf %70, %178 : f32
          %180 = arith.addf %177, %179 : f32
          %181 = memref.load %alloca_25[] : memref<f32>
          %182 = arith.mulf %71, %181 : f32
          %183 = arith.addf %180, %182 : f32
          %184 = arith.muli %172, %c-1 : index
          %185 = arith.addi %184, %c63 : index
          memref.store %183, %arg6[%105, %185] : memref<?x64xf32>
          %186 = arith.muli %172, %c-1 : index
          %187 = arith.addi %186, %c63 : index
          %188 = memref.load %arg6[%105, %187] : memref<?x64xf32>
          memref.store %188, %alloca_22[] : memref<f32>
          %189 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %189, %alloca_25[] : memref<f32>
          %190 = arith.muli %172, %c-1 : index
          %191 = arith.addi %190, %c63 : index
          %192 = memref.load %arg3[%105, %191] : memref<?x64xf32>
          memref.store %192, %alloca[] : memref<f32>
          %193 = memref.load %alloca_6[%c0] : memref<1xf32>
          memref.store %193, %alloca_20[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %104 = arith.muli %arg7, %c32 : index
        %105 = arith.addi %104, %arg8 : index
        scf.for %arg9 = %c0 to %c2 step %c1 {
          scf.for %arg10 = %c0 to %c8 step %c1 {
            %106 = arith.muli %arg9, %c32 : index
            %107 = arith.muli %arg10, %c4 : index
            %108 = arith.addi %106, %107 : index
            %109 = memref.load %arg5[%105, %108] : memref<?x64xf32>
            %110 = memref.load %arg6[%105, %108] : memref<?x64xf32>
            %111 = arith.addf %109, %110 : f32
            memref.store %111, %arg4[%105, %108] : memref<?x64xf32>
            %112 = arith.addi %108, %c1 : index
            %113 = memref.load %arg5[%105, %112] : memref<?x64xf32>
            %114 = memref.load %arg6[%105, %112] : memref<?x64xf32>
            %115 = arith.addf %113, %114 : f32
            memref.store %115, %arg4[%105, %112] : memref<?x64xf32>
            %116 = arith.addi %108, %c2 : index
            %117 = memref.load %arg5[%105, %116] : memref<?x64xf32>
            %118 = memref.load %arg6[%105, %116] : memref<?x64xf32>
            %119 = arith.addf %117, %118 : f32
            memref.store %119, %arg4[%105, %116] : memref<?x64xf32>
            %120 = arith.addi %108, %c3 : index
            %121 = memref.load %arg5[%105, %120] : memref<?x64xf32>
            %122 = memref.load %arg6[%105, %120] : memref<?x64xf32>
            %123 = arith.addf %121, %122 : f32
            memref.store %123, %arg4[%105, %120] : memref<?x64xf32>
          }
        }
      }
    }
    %72 = memref.load %alloca_10[%c0] : memref<1xf32>
    %73 = memref.load %alloca_15[%c0] : memref<1xf32>
    %74 = memref.load %alloca_14[%c0] : memref<1xf32>
    %75 = memref.load %alloca_5[%c0] : memref<1xf32>
    %76 = memref.load %alloca_10[%c0] : memref<1xf32>
    %77 = memref.load %alloca_15[%c0] : memref<1xf32>
    %78 = memref.load %alloca_14[%c0] : memref<1xf32>
    %79 = memref.load %alloca_5[%c0] : memref<1xf32>
    %80 = memref.load %alloca_10[%c0] : memref<1xf32>
    %81 = memref.load %alloca_15[%c0] : memref<1xf32>
    %82 = memref.load %alloca_14[%c0] : memref<1xf32>
    %83 = memref.load %alloca_5[%c0] : memref<1xf32>
    %84 = memref.load %alloca_10[%c0] : memref<1xf32>
    %85 = memref.load %alloca_15[%c0] : memref<1xf32>
    %86 = memref.load %alloca_14[%c0] : memref<1xf32>
    %87 = memref.load %alloca_5[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %104 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %105 = arith.addi %104, %arg8 : index
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca_13[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %106 = arith.muli %arg9, %c4 : index
          %107 = memref.load %arg4[%106, %105] : memref<?x64xf32>
          %108 = arith.mulf %72, %107 : f32
          %109 = memref.load %alloca_13[] : memref<f32>
          %110 = arith.mulf %73, %109 : f32
          %111 = arith.addf %108, %110 : f32
          %112 = memref.load %alloca_3[] : memref<f32>
          memref.store %112, %alloca_18[%c0] : memref<1xf32>
          %113 = arith.mulf %74, %112 : f32
          %114 = arith.addf %111, %113 : f32
          %115 = memref.load %alloca_24[] : memref<f32>
          %116 = arith.mulf %75, %115 : f32
          %117 = arith.addf %114, %116 : f32
          memref.store %117, %arg5[%106, %105] : memref<?x64xf32>
          %118 = memref.load %arg5[%106, %105] : memref<?x64xf32>
          memref.store %118, %alloca_3[] : memref<f32>
          %119 = memref.load %alloca_18[%c0] : memref<1xf32>
          memref.store %119, %alloca_24[] : memref<f32>
          %120 = memref.load %arg4[%106, %105] : memref<?x64xf32>
          memref.store %120, %alloca_13[] : memref<f32>
          %121 = arith.addi %106, %c1 : index
          %122 = memref.load %arg4[%121, %105] : memref<?x64xf32>
          %123 = arith.mulf %76, %122 : f32
          %124 = memref.load %alloca_13[] : memref<f32>
          %125 = arith.mulf %77, %124 : f32
          %126 = arith.addf %123, %125 : f32
          %127 = memref.load %alloca_3[] : memref<f32>
          memref.store %127, %alloca_18[%c0] : memref<1xf32>
          %128 = arith.mulf %78, %127 : f32
          %129 = arith.addf %126, %128 : f32
          %130 = memref.load %alloca_24[] : memref<f32>
          %131 = arith.mulf %79, %130 : f32
          %132 = arith.addf %129, %131 : f32
          memref.store %132, %arg5[%121, %105] : memref<?x64xf32>
          %133 = memref.load %arg5[%121, %105] : memref<?x64xf32>
          memref.store %133, %alloca_3[] : memref<f32>
          %134 = memref.load %alloca_18[%c0] : memref<1xf32>
          memref.store %134, %alloca_24[] : memref<f32>
          %135 = memref.load %arg4[%121, %105] : memref<?x64xf32>
          memref.store %135, %alloca_13[] : memref<f32>
          %136 = arith.addi %106, %c2 : index
          %137 = memref.load %arg4[%136, %105] : memref<?x64xf32>
          %138 = arith.mulf %80, %137 : f32
          %139 = memref.load %alloca_13[] : memref<f32>
          %140 = arith.mulf %81, %139 : f32
          %141 = arith.addf %138, %140 : f32
          %142 = memref.load %alloca_3[] : memref<f32>
          memref.store %142, %alloca_18[%c0] : memref<1xf32>
          %143 = arith.mulf %82, %142 : f32
          %144 = arith.addf %141, %143 : f32
          %145 = memref.load %alloca_24[] : memref<f32>
          %146 = arith.mulf %83, %145 : f32
          %147 = arith.addf %144, %146 : f32
          memref.store %147, %arg5[%136, %105] : memref<?x64xf32>
          %148 = memref.load %arg5[%136, %105] : memref<?x64xf32>
          memref.store %148, %alloca_3[] : memref<f32>
          %149 = memref.load %alloca_18[%c0] : memref<1xf32>
          memref.store %149, %alloca_24[] : memref<f32>
          %150 = memref.load %arg4[%136, %105] : memref<?x64xf32>
          memref.store %150, %alloca_13[] : memref<f32>
          %151 = arith.addi %106, %c3 : index
          %152 = memref.load %arg4[%151, %105] : memref<?x64xf32>
          %153 = arith.mulf %84, %152 : f32
          %154 = memref.load %alloca_13[] : memref<f32>
          %155 = arith.mulf %85, %154 : f32
          %156 = arith.addf %153, %155 : f32
          %157 = memref.load %alloca_3[] : memref<f32>
          memref.store %157, %alloca_18[%c0] : memref<1xf32>
          %158 = arith.mulf %86, %157 : f32
          %159 = arith.addf %156, %158 : f32
          %160 = memref.load %alloca_24[] : memref<f32>
          %161 = arith.mulf %87, %160 : f32
          %162 = arith.addf %159, %161 : f32
          memref.store %162, %arg5[%151, %105] : memref<?x64xf32>
          %163 = memref.load %arg5[%151, %105] : memref<?x64xf32>
          memref.store %163, %alloca_3[] : memref<f32>
          %164 = memref.load %alloca_18[%c0] : memref<1xf32>
          memref.store %164, %alloca_24[] : memref<f32>
          %165 = memref.load %arg4[%151, %105] : memref<?x64xf32>
          memref.store %165, %alloca_13[] : memref<f32>
        }
      }
    }
    %88 = memref.load %alloca_11[%c0] : memref<1xf32>
    %89 = memref.load %alloca_12[%c0] : memref<1xf32>
    %90 = memref.load %alloca_14[%c0] : memref<1xf32>
    %91 = memref.load %alloca_5[%c0] : memref<1xf32>
    %92 = memref.load %alloca_11[%c0] : memref<1xf32>
    %93 = memref.load %alloca_12[%c0] : memref<1xf32>
    %94 = memref.load %alloca_14[%c0] : memref<1xf32>
    %95 = memref.load %alloca_5[%c0] : memref<1xf32>
    %96 = memref.load %alloca_11[%c0] : memref<1xf32>
    %97 = memref.load %alloca_12[%c0] : memref<1xf32>
    %98 = memref.load %alloca_14[%c0] : memref<1xf32>
    %99 = memref.load %alloca_5[%c0] : memref<1xf32>
    %100 = memref.load %alloca_11[%c0] : memref<1xf32>
    %101 = memref.load %alloca_12[%c0] : memref<1xf32>
    %102 = memref.load %alloca_14[%c0] : memref<1xf32>
    %103 = memref.load %alloca_5[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %104 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %105 = arith.addi %104, %arg8 : index
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        memref.store %cst, %alloca_21[] : memref<f32>
        memref.store %cst, %alloca_9[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %106 = arith.muli %arg9, %c4 : index
          %107 = memref.load %alloca_9[] : memref<f32>
          memref.store %107, %alloca_16[%c0] : memref<1xf32>
          %108 = arith.mulf %88, %107 : f32
          %109 = memref.load %alloca_21[] : memref<f32>
          %110 = arith.mulf %89, %109 : f32
          %111 = arith.addf %108, %110 : f32
          %112 = memref.load %alloca_22[] : memref<f32>
          memref.store %112, %alloca_19[%c0] : memref<1xf32>
          %113 = arith.mulf %90, %112 : f32
          %114 = arith.addf %111, %113 : f32
          %115 = memref.load %alloca_25[] : memref<f32>
          %116 = arith.mulf %91, %115 : f32
          %117 = arith.addf %114, %116 : f32
          %118 = arith.muli %106, %c-1 : index
          %119 = arith.addi %118, %c63 : index
          memref.store %117, %arg6[%119, %105] : memref<?x64xf32>
          %120 = arith.muli %106, %c-1 : index
          %121 = arith.addi %120, %c63 : index
          %122 = memref.load %arg6[%121, %105] : memref<?x64xf32>
          memref.store %122, %alloca_22[] : memref<f32>
          %123 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %123, %alloca_25[] : memref<f32>
          %124 = arith.muli %106, %c-1 : index
          %125 = arith.addi %124, %c63 : index
          %126 = memref.load %arg4[%125, %105] : memref<?x64xf32>
          memref.store %126, %alloca_9[] : memref<f32>
          %127 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %127, %alloca_21[] : memref<f32>
          %128 = arith.addi %106, %c1 : index
          %129 = memref.load %alloca_9[] : memref<f32>
          memref.store %129, %alloca_16[%c0] : memref<1xf32>
          %130 = arith.mulf %92, %129 : f32
          %131 = memref.load %alloca_21[] : memref<f32>
          %132 = arith.mulf %93, %131 : f32
          %133 = arith.addf %130, %132 : f32
          %134 = memref.load %alloca_22[] : memref<f32>
          memref.store %134, %alloca_19[%c0] : memref<1xf32>
          %135 = arith.mulf %94, %134 : f32
          %136 = arith.addf %133, %135 : f32
          %137 = memref.load %alloca_25[] : memref<f32>
          %138 = arith.mulf %95, %137 : f32
          %139 = arith.addf %136, %138 : f32
          %140 = arith.muli %128, %c-1 : index
          %141 = arith.addi %140, %c63 : index
          memref.store %139, %arg6[%141, %105] : memref<?x64xf32>
          %142 = arith.muli %128, %c-1 : index
          %143 = arith.addi %142, %c63 : index
          %144 = memref.load %arg6[%143, %105] : memref<?x64xf32>
          memref.store %144, %alloca_22[] : memref<f32>
          %145 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %145, %alloca_25[] : memref<f32>
          %146 = arith.muli %128, %c-1 : index
          %147 = arith.addi %146, %c63 : index
          %148 = memref.load %arg4[%147, %105] : memref<?x64xf32>
          memref.store %148, %alloca_9[] : memref<f32>
          %149 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %149, %alloca_21[] : memref<f32>
          %150 = arith.addi %106, %c2 : index
          %151 = memref.load %alloca_9[] : memref<f32>
          memref.store %151, %alloca_16[%c0] : memref<1xf32>
          %152 = arith.mulf %96, %151 : f32
          %153 = memref.load %alloca_21[] : memref<f32>
          %154 = arith.mulf %97, %153 : f32
          %155 = arith.addf %152, %154 : f32
          %156 = memref.load %alloca_22[] : memref<f32>
          memref.store %156, %alloca_19[%c0] : memref<1xf32>
          %157 = arith.mulf %98, %156 : f32
          %158 = arith.addf %155, %157 : f32
          %159 = memref.load %alloca_25[] : memref<f32>
          %160 = arith.mulf %99, %159 : f32
          %161 = arith.addf %158, %160 : f32
          %162 = arith.muli %150, %c-1 : index
          %163 = arith.addi %162, %c63 : index
          memref.store %161, %arg6[%163, %105] : memref<?x64xf32>
          %164 = arith.muli %150, %c-1 : index
          %165 = arith.addi %164, %c63 : index
          %166 = memref.load %arg6[%165, %105] : memref<?x64xf32>
          memref.store %166, %alloca_22[] : memref<f32>
          %167 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %167, %alloca_25[] : memref<f32>
          %168 = arith.muli %150, %c-1 : index
          %169 = arith.addi %168, %c63 : index
          %170 = memref.load %arg4[%169, %105] : memref<?x64xf32>
          memref.store %170, %alloca_9[] : memref<f32>
          %171 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %171, %alloca_21[] : memref<f32>
          %172 = arith.addi %106, %c3 : index
          %173 = memref.load %alloca_9[] : memref<f32>
          memref.store %173, %alloca_16[%c0] : memref<1xf32>
          %174 = arith.mulf %100, %173 : f32
          %175 = memref.load %alloca_21[] : memref<f32>
          %176 = arith.mulf %101, %175 : f32
          %177 = arith.addf %174, %176 : f32
          %178 = memref.load %alloca_22[] : memref<f32>
          memref.store %178, %alloca_19[%c0] : memref<1xf32>
          %179 = arith.mulf %102, %178 : f32
          %180 = arith.addf %177, %179 : f32
          %181 = memref.load %alloca_25[] : memref<f32>
          %182 = arith.mulf %103, %181 : f32
          %183 = arith.addf %180, %182 : f32
          %184 = arith.muli %172, %c-1 : index
          %185 = arith.addi %184, %c63 : index
          memref.store %183, %arg6[%185, %105] : memref<?x64xf32>
          %186 = arith.muli %172, %c-1 : index
          %187 = arith.addi %186, %c63 : index
          %188 = memref.load %arg6[%187, %105] : memref<?x64xf32>
          memref.store %188, %alloca_22[] : memref<f32>
          %189 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %189, %alloca_25[] : memref<f32>
          %190 = arith.muli %172, %c-1 : index
          %191 = arith.addi %190, %c63 : index
          %192 = memref.load %arg4[%191, %105] : memref<?x64xf32>
          memref.store %192, %alloca_9[] : memref<f32>
          %193 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %193, %alloca_21[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %104 = arith.muli %arg7, %c32 : index
        %105 = arith.addi %104, %arg8 : index
        scf.for %arg9 = %c0 to %c2 step %c1 {
          scf.for %arg10 = %c0 to %c8 step %c1 {
            %106 = arith.muli %arg9, %c32 : index
            %107 = arith.muli %arg10, %c4 : index
            %108 = arith.addi %106, %107 : index
            %109 = memref.load %arg5[%105, %108] : memref<?x64xf32>
            %110 = memref.load %arg6[%105, %108] : memref<?x64xf32>
            %111 = arith.addf %109, %110 : f32
            memref.store %111, %arg4[%105, %108] : memref<?x64xf32>
            %112 = arith.addi %108, %c1 : index
            %113 = memref.load %arg5[%105, %112] : memref<?x64xf32>
            %114 = memref.load %arg6[%105, %112] : memref<?x64xf32>
            %115 = arith.addf %113, %114 : f32
            memref.store %115, %arg4[%105, %112] : memref<?x64xf32>
            %116 = arith.addi %108, %c2 : index
            %117 = memref.load %arg5[%105, %116] : memref<?x64xf32>
            %118 = memref.load %arg6[%105, %116] : memref<?x64xf32>
            %119 = arith.addf %117, %118 : f32
            memref.store %119, %arg4[%105, %116] : memref<?x64xf32>
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

