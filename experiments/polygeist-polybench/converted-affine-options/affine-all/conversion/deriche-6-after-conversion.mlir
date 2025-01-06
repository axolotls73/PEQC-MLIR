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
    memref.store %16, %alloca_11[%c0] : memref<1xf32>
    %17 = memref.load %alloca_11[%c0] : memref<1xf32>
    memref.store %17, %alloca_24[%c0] : memref<1xf32>
    %18 = arith.negf %arg2 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    memref.store %20, %alloca_8[%c0] : memref<1xf32>
    %21 = arith.subf %arg2, %cst_0 : f32
    %22 = arith.mulf %20, %21 : f32
    memref.store %22, %alloca_18[%c0] : memref<1xf32>
    %23 = memref.load %alloca_24[%c0] : memref<1xf32>
    %24 = arith.negf %23 : f32
    %25 = arith.mulf %arg2, %cst_2 : f32
    %26 = math.exp %25 : f32
    %27 = arith.mulf %24, %26 : f32
    memref.store %27, %alloca_13[%c0] : memref<1xf32>
    %28 = memref.load %alloca_8[%c0] : memref<1xf32>
    %29 = arith.addf %arg2, %cst_0 : f32
    %30 = arith.mulf %28, %29 : f32
    memref.store %30, %alloca_12[%c0] : memref<1xf32>
    memref.store %0, %alloca_5[] : memref<f32>
    memref.store %0, %alloca_14[] : memref<f32>
    memref.store %0, %alloca_4[] : memref<f32>
    memref.store %0, %alloca_25[] : memref<f32>
    %31 = memref.load %alloca_11[%c0] : memref<1xf32>
    %32 = memref.load %alloca_18[%c0] : memref<1xf32>
    %33 = memref.load %alloca_15[%c0] : memref<1xf32>
    %34 = memref.load %alloca_6[%c0] : memref<1xf32>
    %35 = memref.load %alloca_11[%c0] : memref<1xf32>
    %36 = memref.load %alloca_18[%c0] : memref<1xf32>
    %37 = memref.load %alloca_15[%c0] : memref<1xf32>
    %38 = memref.load %alloca_6[%c0] : memref<1xf32>
    %39 = memref.load %alloca_11[%c0] : memref<1xf32>
    %40 = memref.load %alloca_18[%c0] : memref<1xf32>
    %41 = memref.load %alloca_15[%c0] : memref<1xf32>
    %42 = memref.load %alloca_6[%c0] : memref<1xf32>
    %43 = memref.load %alloca_11[%c0] : memref<1xf32>
    %44 = memref.load %alloca_18[%c0] : memref<1xf32>
    %45 = memref.load %alloca_15[%c0] : memref<1xf32>
    %46 = memref.load %alloca_6[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %99 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %100 = arith.addi %99, %arg8 : index
        memref.store %cst, %alloca_5[] : memref<f32>
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %101 = arith.muli %arg9, %c4 : index
          %102 = memref.load %arg3[%100, %101] : memref<?x64xf32>
          %103 = arith.mulf %31, %102 : f32
          %104 = memref.load %alloca_5[] : memref<f32>
          %105 = arith.mulf %32, %104 : f32
          %106 = arith.addf %103, %105 : f32
          %107 = memref.load %alloca_4[] : memref<f32>
          memref.store %107, %alloca_9[%c0] : memref<1xf32>
          %108 = arith.mulf %33, %107 : f32
          %109 = arith.addf %106, %108 : f32
          %110 = memref.load %alloca_25[] : memref<f32>
          %111 = arith.mulf %34, %110 : f32
          %112 = arith.addf %109, %111 : f32
          memref.store %112, %arg5[%100, %101] : memref<?x64xf32>
          %113 = memref.load %arg5[%100, %101] : memref<?x64xf32>
          memref.store %113, %alloca_4[] : memref<f32>
          %114 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %114, %alloca_25[] : memref<f32>
          %115 = memref.load %arg3[%100, %101] : memref<?x64xf32>
          memref.store %115, %alloca_5[] : memref<f32>
          %116 = arith.addi %101, %c1 : index
          %117 = memref.load %arg3[%100, %116] : memref<?x64xf32>
          %118 = arith.mulf %35, %117 : f32
          %119 = memref.load %alloca_5[] : memref<f32>
          %120 = arith.mulf %36, %119 : f32
          %121 = arith.addf %118, %120 : f32
          %122 = memref.load %alloca_4[] : memref<f32>
          memref.store %122, %alloca_9[%c0] : memref<1xf32>
          %123 = arith.mulf %37, %122 : f32
          %124 = arith.addf %121, %123 : f32
          %125 = memref.load %alloca_25[] : memref<f32>
          %126 = arith.mulf %38, %125 : f32
          %127 = arith.addf %124, %126 : f32
          memref.store %127, %arg5[%100, %116] : memref<?x64xf32>
          %128 = memref.load %arg5[%100, %116] : memref<?x64xf32>
          memref.store %128, %alloca_4[] : memref<f32>
          %129 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %129, %alloca_25[] : memref<f32>
          %130 = memref.load %arg3[%100, %116] : memref<?x64xf32>
          memref.store %130, %alloca_5[] : memref<f32>
          %131 = arith.addi %101, %c2 : index
          %132 = memref.load %arg3[%100, %131] : memref<?x64xf32>
          %133 = arith.mulf %39, %132 : f32
          %134 = memref.load %alloca_5[] : memref<f32>
          %135 = arith.mulf %40, %134 : f32
          %136 = arith.addf %133, %135 : f32
          %137 = memref.load %alloca_4[] : memref<f32>
          memref.store %137, %alloca_9[%c0] : memref<1xf32>
          %138 = arith.mulf %41, %137 : f32
          %139 = arith.addf %136, %138 : f32
          %140 = memref.load %alloca_25[] : memref<f32>
          %141 = arith.mulf %42, %140 : f32
          %142 = arith.addf %139, %141 : f32
          memref.store %142, %arg5[%100, %131] : memref<?x64xf32>
          %143 = memref.load %arg5[%100, %131] : memref<?x64xf32>
          memref.store %143, %alloca_4[] : memref<f32>
          %144 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %144, %alloca_25[] : memref<f32>
          %145 = memref.load %arg3[%100, %131] : memref<?x64xf32>
          memref.store %145, %alloca_5[] : memref<f32>
          %146 = arith.addi %101, %c3 : index
          %147 = memref.load %arg3[%100, %146] : memref<?x64xf32>
          %148 = arith.mulf %43, %147 : f32
          %149 = memref.load %alloca_5[] : memref<f32>
          %150 = arith.mulf %44, %149 : f32
          %151 = arith.addf %148, %150 : f32
          %152 = memref.load %alloca_4[] : memref<f32>
          memref.store %152, %alloca_9[%c0] : memref<1xf32>
          %153 = arith.mulf %45, %152 : f32
          %154 = arith.addf %151, %153 : f32
          %155 = memref.load %alloca_25[] : memref<f32>
          %156 = arith.mulf %46, %155 : f32
          %157 = arith.addf %154, %156 : f32
          memref.store %157, %arg5[%100, %146] : memref<?x64xf32>
          %158 = memref.load %arg5[%100, %146] : memref<?x64xf32>
          memref.store %158, %alloca_4[] : memref<f32>
          %159 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %159, %alloca_25[] : memref<f32>
          %160 = memref.load %arg3[%100, %146] : memref<?x64xf32>
          memref.store %160, %alloca_5[] : memref<f32>
        }
      }
    }
    memref.store %0, %alloca_3[] : memref<f32>
    memref.store %0, %alloca_21[] : memref<f32>
    memref.store %0, %alloca_10[] : memref<f32>
    memref.store %0, %alloca_23[] : memref<f32>
    memref.store %0, %alloca_22[] : memref<f32>
    memref.store %0, %alloca[] : memref<f32>
    %47 = memref.load %alloca_12[%c0] : memref<1xf32>
    %48 = memref.load %alloca_13[%c0] : memref<1xf32>
    %49 = memref.load %alloca_15[%c0] : memref<1xf32>
    %50 = memref.load %alloca_6[%c0] : memref<1xf32>
    %51 = memref.load %alloca_12[%c0] : memref<1xf32>
    %52 = memref.load %alloca_13[%c0] : memref<1xf32>
    %53 = memref.load %alloca_15[%c0] : memref<1xf32>
    %54 = memref.load %alloca_6[%c0] : memref<1xf32>
    %55 = memref.load %alloca_12[%c0] : memref<1xf32>
    %56 = memref.load %alloca_13[%c0] : memref<1xf32>
    %57 = memref.load %alloca_15[%c0] : memref<1xf32>
    %58 = memref.load %alloca_6[%c0] : memref<1xf32>
    %59 = memref.load %alloca_12[%c0] : memref<1xf32>
    %60 = memref.load %alloca_13[%c0] : memref<1xf32>
    %61 = memref.load %alloca_15[%c0] : memref<1xf32>
    %62 = memref.load %alloca_6[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %99 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %100 = arith.addi %99, %arg8 : index
        memref.store %cst, %alloca_21[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %101 = arith.muli %arg9, %c4 : index
          %102 = memref.load %alloca_3[] : memref<f32>
          memref.store %102, %alloca_7[%c0] : memref<1xf32>
          %103 = arith.mulf %47, %102 : f32
          %104 = memref.load %alloca_21[] : memref<f32>
          %105 = arith.mulf %48, %104 : f32
          %106 = arith.addf %103, %105 : f32
          %107 = memref.load %alloca_22[] : memref<f32>
          memref.store %107, %alloca_16[%c0] : memref<1xf32>
          %108 = arith.mulf %49, %107 : f32
          %109 = arith.addf %106, %108 : f32
          %110 = memref.load %alloca[] : memref<f32>
          %111 = arith.mulf %50, %110 : f32
          %112 = arith.addf %109, %111 : f32
          %113 = arith.muli %101, %c-1 : index
          %114 = arith.addi %113, %c63 : index
          memref.store %112, %arg6[%100, %114] : memref<?x64xf32>
          %115 = arith.muli %101, %c-1 : index
          %116 = arith.addi %115, %c63 : index
          %117 = memref.load %arg6[%100, %116] : memref<?x64xf32>
          memref.store %117, %alloca_22[] : memref<f32>
          %118 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %118, %alloca[] : memref<f32>
          %119 = arith.muli %101, %c-1 : index
          %120 = arith.addi %119, %c63 : index
          %121 = memref.load %arg3[%100, %120] : memref<?x64xf32>
          memref.store %121, %alloca_3[] : memref<f32>
          %122 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %122, %alloca_21[] : memref<f32>
          %123 = arith.addi %101, %c1 : index
          %124 = memref.load %alloca_3[] : memref<f32>
          memref.store %124, %alloca_7[%c0] : memref<1xf32>
          %125 = arith.mulf %51, %124 : f32
          %126 = memref.load %alloca_21[] : memref<f32>
          %127 = arith.mulf %52, %126 : f32
          %128 = arith.addf %125, %127 : f32
          %129 = memref.load %alloca_22[] : memref<f32>
          memref.store %129, %alloca_16[%c0] : memref<1xf32>
          %130 = arith.mulf %53, %129 : f32
          %131 = arith.addf %128, %130 : f32
          %132 = memref.load %alloca[] : memref<f32>
          %133 = arith.mulf %54, %132 : f32
          %134 = arith.addf %131, %133 : f32
          %135 = arith.muli %123, %c-1 : index
          %136 = arith.addi %135, %c63 : index
          memref.store %134, %arg6[%100, %136] : memref<?x64xf32>
          %137 = arith.muli %123, %c-1 : index
          %138 = arith.addi %137, %c63 : index
          %139 = memref.load %arg6[%100, %138] : memref<?x64xf32>
          memref.store %139, %alloca_22[] : memref<f32>
          %140 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %140, %alloca[] : memref<f32>
          %141 = arith.muli %123, %c-1 : index
          %142 = arith.addi %141, %c63 : index
          %143 = memref.load %arg3[%100, %142] : memref<?x64xf32>
          memref.store %143, %alloca_3[] : memref<f32>
          %144 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %144, %alloca_21[] : memref<f32>
          %145 = arith.addi %101, %c2 : index
          %146 = memref.load %alloca_3[] : memref<f32>
          memref.store %146, %alloca_7[%c0] : memref<1xf32>
          %147 = arith.mulf %55, %146 : f32
          %148 = memref.load %alloca_21[] : memref<f32>
          %149 = arith.mulf %56, %148 : f32
          %150 = arith.addf %147, %149 : f32
          %151 = memref.load %alloca_22[] : memref<f32>
          memref.store %151, %alloca_16[%c0] : memref<1xf32>
          %152 = arith.mulf %57, %151 : f32
          %153 = arith.addf %150, %152 : f32
          %154 = memref.load %alloca[] : memref<f32>
          %155 = arith.mulf %58, %154 : f32
          %156 = arith.addf %153, %155 : f32
          %157 = arith.muli %145, %c-1 : index
          %158 = arith.addi %157, %c63 : index
          memref.store %156, %arg6[%100, %158] : memref<?x64xf32>
          %159 = arith.muli %145, %c-1 : index
          %160 = arith.addi %159, %c63 : index
          %161 = memref.load %arg6[%100, %160] : memref<?x64xf32>
          memref.store %161, %alloca_22[] : memref<f32>
          %162 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %162, %alloca[] : memref<f32>
          %163 = arith.muli %145, %c-1 : index
          %164 = arith.addi %163, %c63 : index
          %165 = memref.load %arg3[%100, %164] : memref<?x64xf32>
          memref.store %165, %alloca_3[] : memref<f32>
          %166 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %166, %alloca_21[] : memref<f32>
          %167 = arith.addi %101, %c3 : index
          %168 = memref.load %alloca_3[] : memref<f32>
          memref.store %168, %alloca_7[%c0] : memref<1xf32>
          %169 = arith.mulf %59, %168 : f32
          %170 = memref.load %alloca_21[] : memref<f32>
          %171 = arith.mulf %60, %170 : f32
          %172 = arith.addf %169, %171 : f32
          %173 = memref.load %alloca_22[] : memref<f32>
          memref.store %173, %alloca_16[%c0] : memref<1xf32>
          %174 = arith.mulf %61, %173 : f32
          %175 = arith.addf %172, %174 : f32
          %176 = memref.load %alloca[] : memref<f32>
          %177 = arith.mulf %62, %176 : f32
          %178 = arith.addf %175, %177 : f32
          %179 = arith.muli %167, %c-1 : index
          %180 = arith.addi %179, %c63 : index
          memref.store %178, %arg6[%100, %180] : memref<?x64xf32>
          %181 = arith.muli %167, %c-1 : index
          %182 = arith.addi %181, %c63 : index
          %183 = memref.load %arg6[%100, %182] : memref<?x64xf32>
          memref.store %183, %alloca_22[] : memref<f32>
          %184 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %184, %alloca[] : memref<f32>
          %185 = arith.muli %167, %c-1 : index
          %186 = arith.addi %185, %c63 : index
          %187 = memref.load %arg3[%100, %186] : memref<?x64xf32>
          memref.store %187, %alloca_3[] : memref<f32>
          %188 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %188, %alloca_21[] : memref<f32>
        }
      }
    }
    %63 = async.create_group %c2 : !async.group
    %64 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c2 step %c1 {
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %101 = arith.muli %arg7, %c32 : index
            %102 = arith.addi %101, %arg10 : index
            scf.for %arg11 = %c0 to %c8 step %c1 {
              %103 = arith.muli %arg9, %c32 : index
              %104 = arith.muli %arg11, %c4 : index
              %105 = arith.addi %103, %104 : index
              %106 = memref.load %arg5[%102, %105] : memref<?x64xf32>
              %107 = memref.load %arg6[%102, %105] : memref<?x64xf32>
              %108 = arith.addf %106, %107 : f32
              memref.store %108, %arg4[%102, %105] : memref<?x64xf32>
              %109 = arith.addi %105, %c1 : index
              %110 = memref.load %arg5[%102, %109] : memref<?x64xf32>
              %111 = memref.load %arg6[%102, %109] : memref<?x64xf32>
              %112 = arith.addf %110, %111 : f32
              memref.store %112, %arg4[%102, %109] : memref<?x64xf32>
              %113 = arith.addi %105, %c2 : index
              %114 = memref.load %arg5[%102, %113] : memref<?x64xf32>
              %115 = memref.load %arg6[%102, %113] : memref<?x64xf32>
              %116 = arith.addf %114, %115 : f32
              memref.store %116, %arg4[%102, %113] : memref<?x64xf32>
              %117 = arith.addi %105, %c3 : index
              %118 = memref.load %arg5[%102, %117] : memref<?x64xf32>
              %119 = memref.load %arg6[%102, %117] : memref<?x64xf32>
              %120 = arith.addf %118, %119 : f32
              memref.store %120, %arg4[%102, %117] : memref<?x64xf32>
            }
          }
        }
        async.yield
      }
      %99 = async.add_to_group %token, %63 : !async.token
      %100 = arith.addi %arg8, %c1 : index
      scf.yield %100 : index
    }
    async.await_all %63
    %65 = memref.load %alloca_11[%c0] : memref<1xf32>
    %66 = memref.load %alloca_18[%c0] : memref<1xf32>
    %67 = memref.load %alloca_15[%c0] : memref<1xf32>
    %68 = memref.load %alloca_6[%c0] : memref<1xf32>
    %69 = memref.load %alloca_11[%c0] : memref<1xf32>
    %70 = memref.load %alloca_18[%c0] : memref<1xf32>
    %71 = memref.load %alloca_15[%c0] : memref<1xf32>
    %72 = memref.load %alloca_6[%c0] : memref<1xf32>
    %73 = memref.load %alloca_11[%c0] : memref<1xf32>
    %74 = memref.load %alloca_18[%c0] : memref<1xf32>
    %75 = memref.load %alloca_15[%c0] : memref<1xf32>
    %76 = memref.load %alloca_6[%c0] : memref<1xf32>
    %77 = memref.load %alloca_11[%c0] : memref<1xf32>
    %78 = memref.load %alloca_18[%c0] : memref<1xf32>
    %79 = memref.load %alloca_15[%c0] : memref<1xf32>
    %80 = memref.load %alloca_6[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %99 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %100 = arith.addi %99, %arg8 : index
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_14[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %101 = arith.muli %arg9, %c4 : index
          %102 = memref.load %arg4[%101, %100] : memref<?x64xf32>
          %103 = arith.mulf %65, %102 : f32
          %104 = memref.load %alloca_14[] : memref<f32>
          %105 = arith.mulf %66, %104 : f32
          %106 = arith.addf %103, %105 : f32
          %107 = memref.load %alloca_4[] : memref<f32>
          memref.store %107, %alloca_19[%c0] : memref<1xf32>
          %108 = arith.mulf %67, %107 : f32
          %109 = arith.addf %106, %108 : f32
          %110 = memref.load %alloca_25[] : memref<f32>
          %111 = arith.mulf %68, %110 : f32
          %112 = arith.addf %109, %111 : f32
          memref.store %112, %arg5[%101, %100] : memref<?x64xf32>
          %113 = memref.load %arg5[%101, %100] : memref<?x64xf32>
          memref.store %113, %alloca_4[] : memref<f32>
          %114 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %114, %alloca_25[] : memref<f32>
          %115 = memref.load %arg4[%101, %100] : memref<?x64xf32>
          memref.store %115, %alloca_14[] : memref<f32>
          %116 = arith.addi %101, %c1 : index
          %117 = memref.load %arg4[%116, %100] : memref<?x64xf32>
          %118 = arith.mulf %69, %117 : f32
          %119 = memref.load %alloca_14[] : memref<f32>
          %120 = arith.mulf %70, %119 : f32
          %121 = arith.addf %118, %120 : f32
          %122 = memref.load %alloca_4[] : memref<f32>
          memref.store %122, %alloca_19[%c0] : memref<1xf32>
          %123 = arith.mulf %71, %122 : f32
          %124 = arith.addf %121, %123 : f32
          %125 = memref.load %alloca_25[] : memref<f32>
          %126 = arith.mulf %72, %125 : f32
          %127 = arith.addf %124, %126 : f32
          memref.store %127, %arg5[%116, %100] : memref<?x64xf32>
          %128 = memref.load %arg5[%116, %100] : memref<?x64xf32>
          memref.store %128, %alloca_4[] : memref<f32>
          %129 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %129, %alloca_25[] : memref<f32>
          %130 = memref.load %arg4[%116, %100] : memref<?x64xf32>
          memref.store %130, %alloca_14[] : memref<f32>
          %131 = arith.addi %101, %c2 : index
          %132 = memref.load %arg4[%131, %100] : memref<?x64xf32>
          %133 = arith.mulf %73, %132 : f32
          %134 = memref.load %alloca_14[] : memref<f32>
          %135 = arith.mulf %74, %134 : f32
          %136 = arith.addf %133, %135 : f32
          %137 = memref.load %alloca_4[] : memref<f32>
          memref.store %137, %alloca_19[%c0] : memref<1xf32>
          %138 = arith.mulf %75, %137 : f32
          %139 = arith.addf %136, %138 : f32
          %140 = memref.load %alloca_25[] : memref<f32>
          %141 = arith.mulf %76, %140 : f32
          %142 = arith.addf %139, %141 : f32
          memref.store %142, %arg5[%131, %100] : memref<?x64xf32>
          %143 = memref.load %arg5[%131, %100] : memref<?x64xf32>
          memref.store %143, %alloca_4[] : memref<f32>
          %144 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %144, %alloca_25[] : memref<f32>
          %145 = memref.load %arg4[%131, %100] : memref<?x64xf32>
          memref.store %145, %alloca_14[] : memref<f32>
          %146 = arith.addi %101, %c3 : index
          %147 = memref.load %arg4[%146, %100] : memref<?x64xf32>
          %148 = arith.mulf %77, %147 : f32
          %149 = memref.load %alloca_14[] : memref<f32>
          %150 = arith.mulf %78, %149 : f32
          %151 = arith.addf %148, %150 : f32
          %152 = memref.load %alloca_4[] : memref<f32>
          memref.store %152, %alloca_19[%c0] : memref<1xf32>
          %153 = arith.mulf %79, %152 : f32
          %154 = arith.addf %151, %153 : f32
          %155 = memref.load %alloca_25[] : memref<f32>
          %156 = arith.mulf %80, %155 : f32
          %157 = arith.addf %154, %156 : f32
          memref.store %157, %arg5[%146, %100] : memref<?x64xf32>
          %158 = memref.load %arg5[%146, %100] : memref<?x64xf32>
          memref.store %158, %alloca_4[] : memref<f32>
          %159 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %159, %alloca_25[] : memref<f32>
          %160 = memref.load %arg4[%146, %100] : memref<?x64xf32>
          memref.store %160, %alloca_14[] : memref<f32>
        }
      }
    }
    %81 = memref.load %alloca_12[%c0] : memref<1xf32>
    %82 = memref.load %alloca_13[%c0] : memref<1xf32>
    %83 = memref.load %alloca_15[%c0] : memref<1xf32>
    %84 = memref.load %alloca_6[%c0] : memref<1xf32>
    %85 = memref.load %alloca_12[%c0] : memref<1xf32>
    %86 = memref.load %alloca_13[%c0] : memref<1xf32>
    %87 = memref.load %alloca_15[%c0] : memref<1xf32>
    %88 = memref.load %alloca_6[%c0] : memref<1xf32>
    %89 = memref.load %alloca_12[%c0] : memref<1xf32>
    %90 = memref.load %alloca_13[%c0] : memref<1xf32>
    %91 = memref.load %alloca_15[%c0] : memref<1xf32>
    %92 = memref.load %alloca_6[%c0] : memref<1xf32>
    %93 = memref.load %alloca_12[%c0] : memref<1xf32>
    %94 = memref.load %alloca_13[%c0] : memref<1xf32>
    %95 = memref.load %alloca_15[%c0] : memref<1xf32>
    %96 = memref.load %alloca_6[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %99 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %100 = arith.addi %99, %arg8 : index
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        memref.store %cst, %alloca_23[] : memref<f32>
        memref.store %cst, %alloca_10[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %101 = arith.muli %arg9, %c4 : index
          %102 = memref.load %alloca_10[] : memref<f32>
          memref.store %102, %alloca_17[%c0] : memref<1xf32>
          %103 = arith.mulf %81, %102 : f32
          %104 = memref.load %alloca_23[] : memref<f32>
          %105 = arith.mulf %82, %104 : f32
          %106 = arith.addf %103, %105 : f32
          %107 = memref.load %alloca_22[] : memref<f32>
          memref.store %107, %alloca_20[%c0] : memref<1xf32>
          %108 = arith.mulf %83, %107 : f32
          %109 = arith.addf %106, %108 : f32
          %110 = memref.load %alloca[] : memref<f32>
          %111 = arith.mulf %84, %110 : f32
          %112 = arith.addf %109, %111 : f32
          %113 = arith.muli %101, %c-1 : index
          %114 = arith.addi %113, %c63 : index
          memref.store %112, %arg6[%114, %100] : memref<?x64xf32>
          %115 = arith.muli %101, %c-1 : index
          %116 = arith.addi %115, %c63 : index
          %117 = memref.load %arg6[%116, %100] : memref<?x64xf32>
          memref.store %117, %alloca_22[] : memref<f32>
          %118 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %118, %alloca[] : memref<f32>
          %119 = arith.muli %101, %c-1 : index
          %120 = arith.addi %119, %c63 : index
          %121 = memref.load %arg4[%120, %100] : memref<?x64xf32>
          memref.store %121, %alloca_10[] : memref<f32>
          %122 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %122, %alloca_23[] : memref<f32>
          %123 = arith.addi %101, %c1 : index
          %124 = memref.load %alloca_10[] : memref<f32>
          memref.store %124, %alloca_17[%c0] : memref<1xf32>
          %125 = arith.mulf %85, %124 : f32
          %126 = memref.load %alloca_23[] : memref<f32>
          %127 = arith.mulf %86, %126 : f32
          %128 = arith.addf %125, %127 : f32
          %129 = memref.load %alloca_22[] : memref<f32>
          memref.store %129, %alloca_20[%c0] : memref<1xf32>
          %130 = arith.mulf %87, %129 : f32
          %131 = arith.addf %128, %130 : f32
          %132 = memref.load %alloca[] : memref<f32>
          %133 = arith.mulf %88, %132 : f32
          %134 = arith.addf %131, %133 : f32
          %135 = arith.muli %123, %c-1 : index
          %136 = arith.addi %135, %c63 : index
          memref.store %134, %arg6[%136, %100] : memref<?x64xf32>
          %137 = arith.muli %123, %c-1 : index
          %138 = arith.addi %137, %c63 : index
          %139 = memref.load %arg6[%138, %100] : memref<?x64xf32>
          memref.store %139, %alloca_22[] : memref<f32>
          %140 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %140, %alloca[] : memref<f32>
          %141 = arith.muli %123, %c-1 : index
          %142 = arith.addi %141, %c63 : index
          %143 = memref.load %arg4[%142, %100] : memref<?x64xf32>
          memref.store %143, %alloca_10[] : memref<f32>
          %144 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %144, %alloca_23[] : memref<f32>
          %145 = arith.addi %101, %c2 : index
          %146 = memref.load %alloca_10[] : memref<f32>
          memref.store %146, %alloca_17[%c0] : memref<1xf32>
          %147 = arith.mulf %89, %146 : f32
          %148 = memref.load %alloca_23[] : memref<f32>
          %149 = arith.mulf %90, %148 : f32
          %150 = arith.addf %147, %149 : f32
          %151 = memref.load %alloca_22[] : memref<f32>
          memref.store %151, %alloca_20[%c0] : memref<1xf32>
          %152 = arith.mulf %91, %151 : f32
          %153 = arith.addf %150, %152 : f32
          %154 = memref.load %alloca[] : memref<f32>
          %155 = arith.mulf %92, %154 : f32
          %156 = arith.addf %153, %155 : f32
          %157 = arith.muli %145, %c-1 : index
          %158 = arith.addi %157, %c63 : index
          memref.store %156, %arg6[%158, %100] : memref<?x64xf32>
          %159 = arith.muli %145, %c-1 : index
          %160 = arith.addi %159, %c63 : index
          %161 = memref.load %arg6[%160, %100] : memref<?x64xf32>
          memref.store %161, %alloca_22[] : memref<f32>
          %162 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %162, %alloca[] : memref<f32>
          %163 = arith.muli %145, %c-1 : index
          %164 = arith.addi %163, %c63 : index
          %165 = memref.load %arg4[%164, %100] : memref<?x64xf32>
          memref.store %165, %alloca_10[] : memref<f32>
          %166 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %166, %alloca_23[] : memref<f32>
          %167 = arith.addi %101, %c3 : index
          %168 = memref.load %alloca_10[] : memref<f32>
          memref.store %168, %alloca_17[%c0] : memref<1xf32>
          %169 = arith.mulf %93, %168 : f32
          %170 = memref.load %alloca_23[] : memref<f32>
          %171 = arith.mulf %94, %170 : f32
          %172 = arith.addf %169, %171 : f32
          %173 = memref.load %alloca_22[] : memref<f32>
          memref.store %173, %alloca_20[%c0] : memref<1xf32>
          %174 = arith.mulf %95, %173 : f32
          %175 = arith.addf %172, %174 : f32
          %176 = memref.load %alloca[] : memref<f32>
          %177 = arith.mulf %96, %176 : f32
          %178 = arith.addf %175, %177 : f32
          %179 = arith.muli %167, %c-1 : index
          %180 = arith.addi %179, %c63 : index
          memref.store %178, %arg6[%180, %100] : memref<?x64xf32>
          %181 = arith.muli %167, %c-1 : index
          %182 = arith.addi %181, %c63 : index
          %183 = memref.load %arg6[%182, %100] : memref<?x64xf32>
          memref.store %183, %alloca_22[] : memref<f32>
          %184 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %184, %alloca[] : memref<f32>
          %185 = arith.muli %167, %c-1 : index
          %186 = arith.addi %185, %c63 : index
          %187 = memref.load %arg4[%186, %100] : memref<?x64xf32>
          memref.store %187, %alloca_10[] : memref<f32>
          %188 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %188, %alloca_23[] : memref<f32>
        }
      }
    }
    %97 = async.create_group %c2 : !async.group
    %98 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c2 step %c1 {
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %101 = arith.muli %arg7, %c32 : index
            %102 = arith.addi %101, %arg10 : index
            scf.for %arg11 = %c0 to %c8 step %c1 {
              %103 = arith.muli %arg9, %c32 : index
              %104 = arith.muli %arg11, %c4 : index
              %105 = arith.addi %103, %104 : index
              %106 = memref.load %arg5[%102, %105] : memref<?x64xf32>
              %107 = memref.load %arg6[%102, %105] : memref<?x64xf32>
              %108 = arith.addf %106, %107 : f32
              memref.store %108, %arg4[%102, %105] : memref<?x64xf32>
              %109 = arith.addi %105, %c1 : index
              %110 = memref.load %arg5[%102, %109] : memref<?x64xf32>
              %111 = memref.load %arg6[%102, %109] : memref<?x64xf32>
              %112 = arith.addf %110, %111 : f32
              memref.store %112, %arg4[%102, %109] : memref<?x64xf32>
              %113 = arith.addi %105, %c2 : index
              %114 = memref.load %arg5[%102, %113] : memref<?x64xf32>
              %115 = memref.load %arg6[%102, %113] : memref<?x64xf32>
              %116 = arith.addf %114, %115 : f32
              memref.store %116, %arg4[%102, %113] : memref<?x64xf32>
              %117 = arith.addi %105, %c3 : index
              %118 = memref.load %arg5[%102, %117] : memref<?x64xf32>
              %119 = memref.load %arg6[%102, %117] : memref<?x64xf32>
              %120 = arith.addf %118, %119 : f32
              memref.store %120, %arg4[%102, %117] : memref<?x64xf32>
            }
          }
        }
        async.yield
      }
      %99 = async.add_to_group %token, %97 : !async.token
      %100 = arith.addi %arg8, %c1 : index
      scf.yield %100 : index
    }
    async.await_all %97
    return
  }
}

