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
    %alloca_5 = memref.alloca() : memref<1xf32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<1xf32>
    %alloca_10 = memref.alloca() : memref<f32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
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
    %alloca_24 = memref.alloca() : memref<f32>
    %alloca_25 = memref.alloca() : memref<f32>
    %0 = arith.mulf %arg2, %cst_2 : f32
    %1 = math.exp %0 : f32
    %2 = arith.negf %1 : f32
    memref.store %2, %alloca_6[%c0] : memref<1xf32>
    %3 = arith.negf %arg2 : f32
    %4 = math.powf %cst_1, %3 : f32
    memref.store %4, %alloca_15[%c0] : memref<1xf32>
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
    memref.store %15, %alloca_11[%c0] : memref<1xf32>
    %16 = memref.load %alloca_11[%c0] : memref<1xf32>
    memref.store %16, %alloca_5[%c0] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    memref.store %19, %alloca_8[%c0] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    memref.store %21, %alloca_18[%c0] : memref<1xf32>
    %22 = memref.load %alloca_5[%c0] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    memref.store %26, %alloca_13[%c0] : memref<1xf32>
    %27 = memref.load %alloca_8[%c0] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    memref.store %29, %alloca_12[%c0] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_4[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_14[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_25[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_24[] : memref<f32>
    %34 = memref.load %alloca_11[%c0] : memref<1xf32>
    %35 = memref.load %alloca_18[%c0] : memref<1xf32>
    %36 = memref.load %alloca_15[%c0] : memref<1xf32>
    %37 = memref.load %alloca_6[%c0] : memref<1xf32>
    %38 = memref.load %alloca_11[%c0] : memref<1xf32>
    %39 = memref.load %alloca_18[%c0] : memref<1xf32>
    %40 = memref.load %alloca_15[%c0] : memref<1xf32>
    %41 = memref.load %alloca_6[%c0] : memref<1xf32>
    %42 = memref.load %alloca_11[%c0] : memref<1xf32>
    %43 = memref.load %alloca_18[%c0] : memref<1xf32>
    %44 = memref.load %alloca_15[%c0] : memref<1xf32>
    %45 = memref.load %alloca_6[%c0] : memref<1xf32>
    %46 = memref.load %alloca_11[%c0] : memref<1xf32>
    %47 = memref.load %alloca_18[%c0] : memref<1xf32>
    %48 = memref.load %alloca_15[%c0] : memref<1xf32>
    %49 = memref.load %alloca_6[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %108 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %109 = arith.addi %108, %arg8 : index
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_25[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %110 = arith.muli %arg9, %c4 : index
          %111 = memref.load %arg3[%109, %110] : memref<?x64xf32>
          %112 = arith.mulf %34, %111 : f32
          %113 = memref.load %alloca_4[] : memref<f32>
          %114 = arith.mulf %35, %113 : f32
          %115 = arith.addf %112, %114 : f32
          %116 = memref.load %alloca_25[] : memref<f32>
          memref.store %116, %alloca_9[%c0] : memref<1xf32>
          %117 = arith.mulf %36, %116 : f32
          %118 = arith.addf %115, %117 : f32
          %119 = memref.load %alloca_24[] : memref<f32>
          %120 = arith.mulf %37, %119 : f32
          %121 = arith.addf %118, %120 : f32
          memref.store %121, %arg5[%109, %110] : memref<?x64xf32>
          %122 = memref.load %arg5[%109, %110] : memref<?x64xf32>
          memref.store %122, %alloca_25[] : memref<f32>
          %123 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %123, %alloca_24[] : memref<f32>
          %124 = memref.load %arg3[%109, %110] : memref<?x64xf32>
          memref.store %124, %alloca_4[] : memref<f32>
          %125 = arith.addi %110, %c1 : index
          %126 = memref.load %arg3[%109, %125] : memref<?x64xf32>
          %127 = arith.mulf %38, %126 : f32
          %128 = memref.load %alloca_4[] : memref<f32>
          %129 = arith.mulf %39, %128 : f32
          %130 = arith.addf %127, %129 : f32
          %131 = memref.load %alloca_25[] : memref<f32>
          memref.store %131, %alloca_9[%c0] : memref<1xf32>
          %132 = arith.mulf %40, %131 : f32
          %133 = arith.addf %130, %132 : f32
          %134 = memref.load %alloca_24[] : memref<f32>
          %135 = arith.mulf %41, %134 : f32
          %136 = arith.addf %133, %135 : f32
          memref.store %136, %arg5[%109, %125] : memref<?x64xf32>
          %137 = memref.load %arg5[%109, %125] : memref<?x64xf32>
          memref.store %137, %alloca_25[] : memref<f32>
          %138 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %138, %alloca_24[] : memref<f32>
          %139 = memref.load %arg3[%109, %125] : memref<?x64xf32>
          memref.store %139, %alloca_4[] : memref<f32>
          %140 = arith.addi %110, %c2 : index
          %141 = memref.load %arg3[%109, %140] : memref<?x64xf32>
          %142 = arith.mulf %42, %141 : f32
          %143 = memref.load %alloca_4[] : memref<f32>
          %144 = arith.mulf %43, %143 : f32
          %145 = arith.addf %142, %144 : f32
          %146 = memref.load %alloca_25[] : memref<f32>
          memref.store %146, %alloca_9[%c0] : memref<1xf32>
          %147 = arith.mulf %44, %146 : f32
          %148 = arith.addf %145, %147 : f32
          %149 = memref.load %alloca_24[] : memref<f32>
          %150 = arith.mulf %45, %149 : f32
          %151 = arith.addf %148, %150 : f32
          memref.store %151, %arg5[%109, %140] : memref<?x64xf32>
          %152 = memref.load %arg5[%109, %140] : memref<?x64xf32>
          memref.store %152, %alloca_25[] : memref<f32>
          %153 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %153, %alloca_24[] : memref<f32>
          %154 = memref.load %arg3[%109, %140] : memref<?x64xf32>
          memref.store %154, %alloca_4[] : memref<f32>
          %155 = arith.addi %110, %c3 : index
          %156 = memref.load %arg3[%109, %155] : memref<?x64xf32>
          %157 = arith.mulf %46, %156 : f32
          %158 = memref.load %alloca_4[] : memref<f32>
          %159 = arith.mulf %47, %158 : f32
          %160 = arith.addf %157, %159 : f32
          %161 = memref.load %alloca_25[] : memref<f32>
          memref.store %161, %alloca_9[%c0] : memref<1xf32>
          %162 = arith.mulf %48, %161 : f32
          %163 = arith.addf %160, %162 : f32
          %164 = memref.load %alloca_24[] : memref<f32>
          %165 = arith.mulf %49, %164 : f32
          %166 = arith.addf %163, %165 : f32
          memref.store %166, %arg5[%109, %155] : memref<?x64xf32>
          %167 = memref.load %arg5[%109, %155] : memref<?x64xf32>
          memref.store %167, %alloca_25[] : memref<f32>
          %168 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %168, %alloca_24[] : memref<f32>
          %169 = memref.load %arg3[%109, %155] : memref<?x64xf32>
          memref.store %169, %alloca_4[] : memref<f32>
        }
      }
    }
    %50 = llvm.mlir.undef : f32
    memref.store %50, %alloca_3[] : memref<f32>
    %51 = llvm.mlir.undef : f32
    memref.store %51, %alloca_21[] : memref<f32>
    %52 = llvm.mlir.undef : f32
    memref.store %52, %alloca_10[] : memref<f32>
    %53 = llvm.mlir.undef : f32
    memref.store %53, %alloca_22[] : memref<f32>
    %54 = llvm.mlir.undef : f32
    memref.store %54, %alloca_23[] : memref<f32>
    %55 = llvm.mlir.undef : f32
    memref.store %55, %alloca[] : memref<f32>
    %56 = memref.load %alloca_12[%c0] : memref<1xf32>
    %57 = memref.load %alloca_13[%c0] : memref<1xf32>
    %58 = memref.load %alloca_15[%c0] : memref<1xf32>
    %59 = memref.load %alloca_6[%c0] : memref<1xf32>
    %60 = memref.load %alloca_12[%c0] : memref<1xf32>
    %61 = memref.load %alloca_13[%c0] : memref<1xf32>
    %62 = memref.load %alloca_15[%c0] : memref<1xf32>
    %63 = memref.load %alloca_6[%c0] : memref<1xf32>
    %64 = memref.load %alloca_12[%c0] : memref<1xf32>
    %65 = memref.load %alloca_13[%c0] : memref<1xf32>
    %66 = memref.load %alloca_15[%c0] : memref<1xf32>
    %67 = memref.load %alloca_6[%c0] : memref<1xf32>
    %68 = memref.load %alloca_12[%c0] : memref<1xf32>
    %69 = memref.load %alloca_13[%c0] : memref<1xf32>
    %70 = memref.load %alloca_15[%c0] : memref<1xf32>
    %71 = memref.load %alloca_6[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %108 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %109 = arith.addi %108, %arg8 : index
        memref.store %cst, %alloca_21[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_23[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %110 = arith.muli %arg9, %c4 : index
          %111 = memref.load %alloca_3[] : memref<f32>
          memref.store %111, %alloca_7[%c0] : memref<1xf32>
          %112 = arith.mulf %56, %111 : f32
          %113 = memref.load %alloca_21[] : memref<f32>
          %114 = arith.mulf %57, %113 : f32
          %115 = arith.addf %112, %114 : f32
          %116 = memref.load %alloca_23[] : memref<f32>
          memref.store %116, %alloca_17[%c0] : memref<1xf32>
          %117 = arith.mulf %58, %116 : f32
          %118 = arith.addf %115, %117 : f32
          %119 = memref.load %alloca[] : memref<f32>
          %120 = arith.mulf %59, %119 : f32
          %121 = arith.addf %118, %120 : f32
          %122 = arith.muli %110, %c-1 : index
          %123 = arith.addi %122, %c63 : index
          memref.store %121, %arg6[%109, %123] : memref<?x64xf32>
          %124 = arith.muli %110, %c-1 : index
          %125 = arith.addi %124, %c63 : index
          %126 = memref.load %arg6[%109, %125] : memref<?x64xf32>
          memref.store %126, %alloca_23[] : memref<f32>
          %127 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %127, %alloca[] : memref<f32>
          %128 = arith.muli %110, %c-1 : index
          %129 = arith.addi %128, %c63 : index
          %130 = memref.load %arg3[%109, %129] : memref<?x64xf32>
          memref.store %130, %alloca_3[] : memref<f32>
          %131 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %131, %alloca_21[] : memref<f32>
          %132 = arith.addi %110, %c1 : index
          %133 = memref.load %alloca_3[] : memref<f32>
          memref.store %133, %alloca_7[%c0] : memref<1xf32>
          %134 = arith.mulf %60, %133 : f32
          %135 = memref.load %alloca_21[] : memref<f32>
          %136 = arith.mulf %61, %135 : f32
          %137 = arith.addf %134, %136 : f32
          %138 = memref.load %alloca_23[] : memref<f32>
          memref.store %138, %alloca_17[%c0] : memref<1xf32>
          %139 = arith.mulf %62, %138 : f32
          %140 = arith.addf %137, %139 : f32
          %141 = memref.load %alloca[] : memref<f32>
          %142 = arith.mulf %63, %141 : f32
          %143 = arith.addf %140, %142 : f32
          %144 = arith.muli %132, %c-1 : index
          %145 = arith.addi %144, %c63 : index
          memref.store %143, %arg6[%109, %145] : memref<?x64xf32>
          %146 = arith.muli %132, %c-1 : index
          %147 = arith.addi %146, %c63 : index
          %148 = memref.load %arg6[%109, %147] : memref<?x64xf32>
          memref.store %148, %alloca_23[] : memref<f32>
          %149 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %149, %alloca[] : memref<f32>
          %150 = arith.muli %132, %c-1 : index
          %151 = arith.addi %150, %c63 : index
          %152 = memref.load %arg3[%109, %151] : memref<?x64xf32>
          memref.store %152, %alloca_3[] : memref<f32>
          %153 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %153, %alloca_21[] : memref<f32>
          %154 = arith.addi %110, %c2 : index
          %155 = memref.load %alloca_3[] : memref<f32>
          memref.store %155, %alloca_7[%c0] : memref<1xf32>
          %156 = arith.mulf %64, %155 : f32
          %157 = memref.load %alloca_21[] : memref<f32>
          %158 = arith.mulf %65, %157 : f32
          %159 = arith.addf %156, %158 : f32
          %160 = memref.load %alloca_23[] : memref<f32>
          memref.store %160, %alloca_17[%c0] : memref<1xf32>
          %161 = arith.mulf %66, %160 : f32
          %162 = arith.addf %159, %161 : f32
          %163 = memref.load %alloca[] : memref<f32>
          %164 = arith.mulf %67, %163 : f32
          %165 = arith.addf %162, %164 : f32
          %166 = arith.muli %154, %c-1 : index
          %167 = arith.addi %166, %c63 : index
          memref.store %165, %arg6[%109, %167] : memref<?x64xf32>
          %168 = arith.muli %154, %c-1 : index
          %169 = arith.addi %168, %c63 : index
          %170 = memref.load %arg6[%109, %169] : memref<?x64xf32>
          memref.store %170, %alloca_23[] : memref<f32>
          %171 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %171, %alloca[] : memref<f32>
          %172 = arith.muli %154, %c-1 : index
          %173 = arith.addi %172, %c63 : index
          %174 = memref.load %arg3[%109, %173] : memref<?x64xf32>
          memref.store %174, %alloca_3[] : memref<f32>
          %175 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %175, %alloca_21[] : memref<f32>
          %176 = arith.addi %110, %c3 : index
          %177 = memref.load %alloca_3[] : memref<f32>
          memref.store %177, %alloca_7[%c0] : memref<1xf32>
          %178 = arith.mulf %68, %177 : f32
          %179 = memref.load %alloca_21[] : memref<f32>
          %180 = arith.mulf %69, %179 : f32
          %181 = arith.addf %178, %180 : f32
          %182 = memref.load %alloca_23[] : memref<f32>
          memref.store %182, %alloca_17[%c0] : memref<1xf32>
          %183 = arith.mulf %70, %182 : f32
          %184 = arith.addf %181, %183 : f32
          %185 = memref.load %alloca[] : memref<f32>
          %186 = arith.mulf %71, %185 : f32
          %187 = arith.addf %184, %186 : f32
          %188 = arith.muli %176, %c-1 : index
          %189 = arith.addi %188, %c63 : index
          memref.store %187, %arg6[%109, %189] : memref<?x64xf32>
          %190 = arith.muli %176, %c-1 : index
          %191 = arith.addi %190, %c63 : index
          %192 = memref.load %arg6[%109, %191] : memref<?x64xf32>
          memref.store %192, %alloca_23[] : memref<f32>
          %193 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %193, %alloca[] : memref<f32>
          %194 = arith.muli %176, %c-1 : index
          %195 = arith.addi %194, %c63 : index
          %196 = memref.load %arg3[%109, %195] : memref<?x64xf32>
          memref.store %196, %alloca_3[] : memref<f32>
          %197 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %197, %alloca_21[] : memref<f32>
        }
      }
    }
    %72 = async.create_group %c2 : !async.group
    %73 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c2 step %c1 {
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %110 = arith.muli %arg7, %c32 : index
            %111 = arith.addi %110, %arg10 : index
            scf.for %arg11 = %c0 to %c8 step %c1 {
              %112 = arith.muli %arg9, %c32 : index
              %113 = arith.muli %arg11, %c4 : index
              %114 = arith.addi %112, %113 : index
              %115 = memref.load %arg5[%111, %114] : memref<?x64xf32>
              %116 = memref.load %arg6[%111, %114] : memref<?x64xf32>
              %117 = arith.addf %115, %116 : f32
              memref.store %117, %arg4[%111, %114] : memref<?x64xf32>
              %118 = arith.addi %114, %c1 : index
              %119 = memref.load %arg5[%111, %118] : memref<?x64xf32>
              %120 = memref.load %arg6[%111, %118] : memref<?x64xf32>
              %121 = arith.addf %119, %120 : f32
              memref.store %121, %arg4[%111, %118] : memref<?x64xf32>
              %122 = arith.addi %114, %c2 : index
              %123 = memref.load %arg5[%111, %122] : memref<?x64xf32>
              %124 = memref.load %arg6[%111, %122] : memref<?x64xf32>
              %125 = arith.addf %123, %124 : f32
              memref.store %125, %arg4[%111, %122] : memref<?x64xf32>
              %126 = arith.addi %114, %c3 : index
              %127 = memref.load %arg5[%111, %126] : memref<?x64xf32>
              %128 = memref.load %arg6[%111, %126] : memref<?x64xf32>
              %129 = arith.addf %127, %128 : f32
              memref.store %129, %arg4[%111, %126] : memref<?x64xf32>
            }
          }
        }
        async.yield
      }
      %108 = async.add_to_group %token, %72 : !async.token
      %109 = arith.addi %arg8, %c1 : index
      scf.yield %109 : index
    }
    async.await_all %72
    %74 = memref.load %alloca_11[%c0] : memref<1xf32>
    %75 = memref.load %alloca_18[%c0] : memref<1xf32>
    %76 = memref.load %alloca_15[%c0] : memref<1xf32>
    %77 = memref.load %alloca_6[%c0] : memref<1xf32>
    %78 = memref.load %alloca_11[%c0] : memref<1xf32>
    %79 = memref.load %alloca_18[%c0] : memref<1xf32>
    %80 = memref.load %alloca_15[%c0] : memref<1xf32>
    %81 = memref.load %alloca_6[%c0] : memref<1xf32>
    %82 = memref.load %alloca_11[%c0] : memref<1xf32>
    %83 = memref.load %alloca_18[%c0] : memref<1xf32>
    %84 = memref.load %alloca_15[%c0] : memref<1xf32>
    %85 = memref.load %alloca_6[%c0] : memref<1xf32>
    %86 = memref.load %alloca_11[%c0] : memref<1xf32>
    %87 = memref.load %alloca_18[%c0] : memref<1xf32>
    %88 = memref.load %alloca_15[%c0] : memref<1xf32>
    %89 = memref.load %alloca_6[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %108 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %109 = arith.addi %108, %arg8 : index
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_14[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %110 = arith.muli %arg9, %c4 : index
          %111 = memref.load %arg4[%110, %109] : memref<?x64xf32>
          %112 = arith.mulf %74, %111 : f32
          %113 = memref.load %alloca_14[] : memref<f32>
          %114 = arith.mulf %75, %113 : f32
          %115 = arith.addf %112, %114 : f32
          %116 = memref.load %alloca_25[] : memref<f32>
          memref.store %116, %alloca_19[%c0] : memref<1xf32>
          %117 = arith.mulf %76, %116 : f32
          %118 = arith.addf %115, %117 : f32
          %119 = memref.load %alloca_24[] : memref<f32>
          %120 = arith.mulf %77, %119 : f32
          %121 = arith.addf %118, %120 : f32
          memref.store %121, %arg5[%110, %109] : memref<?x64xf32>
          %122 = memref.load %arg5[%110, %109] : memref<?x64xf32>
          memref.store %122, %alloca_25[] : memref<f32>
          %123 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %123, %alloca_24[] : memref<f32>
          %124 = memref.load %arg4[%110, %109] : memref<?x64xf32>
          memref.store %124, %alloca_14[] : memref<f32>
          %125 = arith.addi %110, %c1 : index
          %126 = memref.load %arg4[%125, %109] : memref<?x64xf32>
          %127 = arith.mulf %78, %126 : f32
          %128 = memref.load %alloca_14[] : memref<f32>
          %129 = arith.mulf %79, %128 : f32
          %130 = arith.addf %127, %129 : f32
          %131 = memref.load %alloca_25[] : memref<f32>
          memref.store %131, %alloca_19[%c0] : memref<1xf32>
          %132 = arith.mulf %80, %131 : f32
          %133 = arith.addf %130, %132 : f32
          %134 = memref.load %alloca_24[] : memref<f32>
          %135 = arith.mulf %81, %134 : f32
          %136 = arith.addf %133, %135 : f32
          memref.store %136, %arg5[%125, %109] : memref<?x64xf32>
          %137 = memref.load %arg5[%125, %109] : memref<?x64xf32>
          memref.store %137, %alloca_25[] : memref<f32>
          %138 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %138, %alloca_24[] : memref<f32>
          %139 = memref.load %arg4[%125, %109] : memref<?x64xf32>
          memref.store %139, %alloca_14[] : memref<f32>
          %140 = arith.addi %110, %c2 : index
          %141 = memref.load %arg4[%140, %109] : memref<?x64xf32>
          %142 = arith.mulf %82, %141 : f32
          %143 = memref.load %alloca_14[] : memref<f32>
          %144 = arith.mulf %83, %143 : f32
          %145 = arith.addf %142, %144 : f32
          %146 = memref.load %alloca_25[] : memref<f32>
          memref.store %146, %alloca_19[%c0] : memref<1xf32>
          %147 = arith.mulf %84, %146 : f32
          %148 = arith.addf %145, %147 : f32
          %149 = memref.load %alloca_24[] : memref<f32>
          %150 = arith.mulf %85, %149 : f32
          %151 = arith.addf %148, %150 : f32
          memref.store %151, %arg5[%140, %109] : memref<?x64xf32>
          %152 = memref.load %arg5[%140, %109] : memref<?x64xf32>
          memref.store %152, %alloca_25[] : memref<f32>
          %153 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %153, %alloca_24[] : memref<f32>
          %154 = memref.load %arg4[%140, %109] : memref<?x64xf32>
          memref.store %154, %alloca_14[] : memref<f32>
          %155 = arith.addi %110, %c3 : index
          %156 = memref.load %arg4[%155, %109] : memref<?x64xf32>
          %157 = arith.mulf %86, %156 : f32
          %158 = memref.load %alloca_14[] : memref<f32>
          %159 = arith.mulf %87, %158 : f32
          %160 = arith.addf %157, %159 : f32
          %161 = memref.load %alloca_25[] : memref<f32>
          memref.store %161, %alloca_19[%c0] : memref<1xf32>
          %162 = arith.mulf %88, %161 : f32
          %163 = arith.addf %160, %162 : f32
          %164 = memref.load %alloca_24[] : memref<f32>
          %165 = arith.mulf %89, %164 : f32
          %166 = arith.addf %163, %165 : f32
          memref.store %166, %arg5[%155, %109] : memref<?x64xf32>
          %167 = memref.load %arg5[%155, %109] : memref<?x64xf32>
          memref.store %167, %alloca_25[] : memref<f32>
          %168 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %168, %alloca_24[] : memref<f32>
          %169 = memref.load %arg4[%155, %109] : memref<?x64xf32>
          memref.store %169, %alloca_14[] : memref<f32>
        }
      }
    }
    %90 = memref.load %alloca_12[%c0] : memref<1xf32>
    %91 = memref.load %alloca_13[%c0] : memref<1xf32>
    %92 = memref.load %alloca_15[%c0] : memref<1xf32>
    %93 = memref.load %alloca_6[%c0] : memref<1xf32>
    %94 = memref.load %alloca_12[%c0] : memref<1xf32>
    %95 = memref.load %alloca_13[%c0] : memref<1xf32>
    %96 = memref.load %alloca_15[%c0] : memref<1xf32>
    %97 = memref.load %alloca_6[%c0] : memref<1xf32>
    %98 = memref.load %alloca_12[%c0] : memref<1xf32>
    %99 = memref.load %alloca_13[%c0] : memref<1xf32>
    %100 = memref.load %alloca_15[%c0] : memref<1xf32>
    %101 = memref.load %alloca_6[%c0] : memref<1xf32>
    %102 = memref.load %alloca_12[%c0] : memref<1xf32>
    %103 = memref.load %alloca_13[%c0] : memref<1xf32>
    %104 = memref.load %alloca_15[%c0] : memref<1xf32>
    %105 = memref.load %alloca_6[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %108 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %109 = arith.addi %108, %arg8 : index
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_23[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        memref.store %cst, %alloca_10[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %110 = arith.muli %arg9, %c4 : index
          %111 = memref.load %alloca_10[] : memref<f32>
          memref.store %111, %alloca_16[%c0] : memref<1xf32>
          %112 = arith.mulf %90, %111 : f32
          %113 = memref.load %alloca_22[] : memref<f32>
          %114 = arith.mulf %91, %113 : f32
          %115 = arith.addf %112, %114 : f32
          %116 = memref.load %alloca_23[] : memref<f32>
          memref.store %116, %alloca_20[%c0] : memref<1xf32>
          %117 = arith.mulf %92, %116 : f32
          %118 = arith.addf %115, %117 : f32
          %119 = memref.load %alloca[] : memref<f32>
          %120 = arith.mulf %93, %119 : f32
          %121 = arith.addf %118, %120 : f32
          %122 = arith.muli %110, %c-1 : index
          %123 = arith.addi %122, %c63 : index
          memref.store %121, %arg6[%123, %109] : memref<?x64xf32>
          %124 = arith.muli %110, %c-1 : index
          %125 = arith.addi %124, %c63 : index
          %126 = memref.load %arg6[%125, %109] : memref<?x64xf32>
          memref.store %126, %alloca_23[] : memref<f32>
          %127 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %127, %alloca[] : memref<f32>
          %128 = arith.muli %110, %c-1 : index
          %129 = arith.addi %128, %c63 : index
          %130 = memref.load %arg4[%129, %109] : memref<?x64xf32>
          memref.store %130, %alloca_10[] : memref<f32>
          %131 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %131, %alloca_22[] : memref<f32>
          %132 = arith.addi %110, %c1 : index
          %133 = memref.load %alloca_10[] : memref<f32>
          memref.store %133, %alloca_16[%c0] : memref<1xf32>
          %134 = arith.mulf %94, %133 : f32
          %135 = memref.load %alloca_22[] : memref<f32>
          %136 = arith.mulf %95, %135 : f32
          %137 = arith.addf %134, %136 : f32
          %138 = memref.load %alloca_23[] : memref<f32>
          memref.store %138, %alloca_20[%c0] : memref<1xf32>
          %139 = arith.mulf %96, %138 : f32
          %140 = arith.addf %137, %139 : f32
          %141 = memref.load %alloca[] : memref<f32>
          %142 = arith.mulf %97, %141 : f32
          %143 = arith.addf %140, %142 : f32
          %144 = arith.muli %132, %c-1 : index
          %145 = arith.addi %144, %c63 : index
          memref.store %143, %arg6[%145, %109] : memref<?x64xf32>
          %146 = arith.muli %132, %c-1 : index
          %147 = arith.addi %146, %c63 : index
          %148 = memref.load %arg6[%147, %109] : memref<?x64xf32>
          memref.store %148, %alloca_23[] : memref<f32>
          %149 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %149, %alloca[] : memref<f32>
          %150 = arith.muli %132, %c-1 : index
          %151 = arith.addi %150, %c63 : index
          %152 = memref.load %arg4[%151, %109] : memref<?x64xf32>
          memref.store %152, %alloca_10[] : memref<f32>
          %153 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %153, %alloca_22[] : memref<f32>
          %154 = arith.addi %110, %c2 : index
          %155 = memref.load %alloca_10[] : memref<f32>
          memref.store %155, %alloca_16[%c0] : memref<1xf32>
          %156 = arith.mulf %98, %155 : f32
          %157 = memref.load %alloca_22[] : memref<f32>
          %158 = arith.mulf %99, %157 : f32
          %159 = arith.addf %156, %158 : f32
          %160 = memref.load %alloca_23[] : memref<f32>
          memref.store %160, %alloca_20[%c0] : memref<1xf32>
          %161 = arith.mulf %100, %160 : f32
          %162 = arith.addf %159, %161 : f32
          %163 = memref.load %alloca[] : memref<f32>
          %164 = arith.mulf %101, %163 : f32
          %165 = arith.addf %162, %164 : f32
          %166 = arith.muli %154, %c-1 : index
          %167 = arith.addi %166, %c63 : index
          memref.store %165, %arg6[%167, %109] : memref<?x64xf32>
          %168 = arith.muli %154, %c-1 : index
          %169 = arith.addi %168, %c63 : index
          %170 = memref.load %arg6[%169, %109] : memref<?x64xf32>
          memref.store %170, %alloca_23[] : memref<f32>
          %171 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %171, %alloca[] : memref<f32>
          %172 = arith.muli %154, %c-1 : index
          %173 = arith.addi %172, %c63 : index
          %174 = memref.load %arg4[%173, %109] : memref<?x64xf32>
          memref.store %174, %alloca_10[] : memref<f32>
          %175 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %175, %alloca_22[] : memref<f32>
          %176 = arith.addi %110, %c3 : index
          %177 = memref.load %alloca_10[] : memref<f32>
          memref.store %177, %alloca_16[%c0] : memref<1xf32>
          %178 = arith.mulf %102, %177 : f32
          %179 = memref.load %alloca_22[] : memref<f32>
          %180 = arith.mulf %103, %179 : f32
          %181 = arith.addf %178, %180 : f32
          %182 = memref.load %alloca_23[] : memref<f32>
          memref.store %182, %alloca_20[%c0] : memref<1xf32>
          %183 = arith.mulf %104, %182 : f32
          %184 = arith.addf %181, %183 : f32
          %185 = memref.load %alloca[] : memref<f32>
          %186 = arith.mulf %105, %185 : f32
          %187 = arith.addf %184, %186 : f32
          %188 = arith.muli %176, %c-1 : index
          %189 = arith.addi %188, %c63 : index
          memref.store %187, %arg6[%189, %109] : memref<?x64xf32>
          %190 = arith.muli %176, %c-1 : index
          %191 = arith.addi %190, %c63 : index
          %192 = memref.load %arg6[%191, %109] : memref<?x64xf32>
          memref.store %192, %alloca_23[] : memref<f32>
          %193 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %193, %alloca[] : memref<f32>
          %194 = arith.muli %176, %c-1 : index
          %195 = arith.addi %194, %c63 : index
          %196 = memref.load %arg4[%195, %109] : memref<?x64xf32>
          memref.store %196, %alloca_10[] : memref<f32>
          %197 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %197, %alloca_22[] : memref<f32>
        }
      }
    }
    %106 = async.create_group %c2 : !async.group
    %107 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c2 step %c1 {
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %110 = arith.muli %arg7, %c32 : index
            %111 = arith.addi %110, %arg10 : index
            scf.for %arg11 = %c0 to %c8 step %c1 {
              %112 = arith.muli %arg9, %c32 : index
              %113 = arith.muli %arg11, %c4 : index
              %114 = arith.addi %112, %113 : index
              %115 = memref.load %arg5[%111, %114] : memref<?x64xf32>
              %116 = memref.load %arg6[%111, %114] : memref<?x64xf32>
              %117 = arith.addf %115, %116 : f32
              memref.store %117, %arg4[%111, %114] : memref<?x64xf32>
              %118 = arith.addi %114, %c1 : index
              %119 = memref.load %arg5[%111, %118] : memref<?x64xf32>
              %120 = memref.load %arg6[%111, %118] : memref<?x64xf32>
              %121 = arith.addf %119, %120 : f32
              memref.store %121, %arg4[%111, %118] : memref<?x64xf32>
              %122 = arith.addi %114, %c2 : index
              %123 = memref.load %arg5[%111, %122] : memref<?x64xf32>
              %124 = memref.load %arg6[%111, %122] : memref<?x64xf32>
              %125 = arith.addf %123, %124 : f32
              memref.store %125, %arg4[%111, %122] : memref<?x64xf32>
              %126 = arith.addi %114, %c3 : index
              %127 = memref.load %arg5[%111, %126] : memref<?x64xf32>
              %128 = memref.load %arg6[%111, %126] : memref<?x64xf32>
              %129 = arith.addf %127, %128 : f32
              memref.store %129, %arg4[%111, %126] : memref<?x64xf32>
            }
          }
        }
        async.yield
      }
      %108 = async.add_to_group %token, %106 : !async.token
      %109 = arith.addi %arg8, %c1 : index
      scf.yield %109 : index
    }
    async.await_all %106
    return
  }
}

