module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %c8 = arith.constant 8 : index
    %c32 = arith.constant 32 : index
    %c63 = arith.constant 63 : index
    %c-1 = arith.constant -1 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %c64 = arith.constant 64 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<1xf32>
    %alloca_5 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_6 = memref.alloca() : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<f32>
    %alloca_9 = memref.alloca() : memref<1xf32>
    %alloca_10 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_13 = memref.alloca() : memref<f32>
    %alloca_14 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_15 = memref.alloca() : memref<1xf32>
    %alloca_16 = memref.alloca() : memref<1xf32>
    %alloca_17 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_18 = memref.alloca() : memref<1xf32>
    %alloca_19 = memref.alloca() : memref<1xf32>
    %alloca_20 = memref.alloca() : memref<f32>
    %alloca_21 = memref.alloca() : memref<f32>
    %alloca_22 = memref.alloca() : memref<f32>
    %alloca_23 = memref.alloca() : memref<f32>
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
    memref.store %16, %alloca_4[%c0] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    memref.store %19, %alloca_6[%c0] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    memref.store %21, %alloca_17[%c0] : memref<1xf32>
    %22 = memref.load %alloca_4[%c0] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    memref.store %26, %alloca_12[%c0] : memref<1xf32>
    %27 = memref.load %alloca_6[%c0] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    memref.store %29, %alloca_11[%c0] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_25[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_13[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_24[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_23[] : memref<f32>
    %34 = memref.load %alloca_10[%c0] : memref<1xf32>
    %35 = memref.load %alloca_17[%c0] : memref<1xf32>
    %36 = memref.load %alloca_14[%c0] : memref<1xf32>
    %37 = memref.load %alloca_5[%c0] : memref<1xf32>
    %38 = memref.load %alloca_10[%c0] : memref<1xf32>
    %39 = memref.load %alloca_17[%c0] : memref<1xf32>
    %40 = memref.load %alloca_14[%c0] : memref<1xf32>
    %41 = memref.load %alloca_5[%c0] : memref<1xf32>
    %42 = memref.load %alloca_10[%c0] : memref<1xf32>
    %43 = memref.load %alloca_17[%c0] : memref<1xf32>
    %44 = memref.load %alloca_14[%c0] : memref<1xf32>
    %45 = memref.load %alloca_5[%c0] : memref<1xf32>
    %46 = memref.load %alloca_10[%c0] : memref<1xf32>
    %47 = memref.load %alloca_17[%c0] : memref<1xf32>
    %48 = memref.load %alloca_14[%c0] : memref<1xf32>
    %49 = memref.load %alloca_5[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %104 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_23[] : memref<f32>
        memref.store %cst, %alloca_24[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %105 = arith.muli %arg9, %c4 : index
          %106 = memref.load %arg3[%104, %105] : memref<?x64xf32>
          %107 = arith.mulf %34, %106 : f32
          %108 = memref.load %alloca_25[] : memref<f32>
          %109 = arith.mulf %35, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = memref.load %alloca_24[] : memref<f32>
          memref.store %111, %alloca_7[%c0] : memref<1xf32>
          %112 = arith.mulf %36, %111 : f32
          %113 = arith.addf %110, %112 : f32
          %114 = memref.load %alloca_23[] : memref<f32>
          %115 = arith.mulf %37, %114 : f32
          %116 = arith.addf %113, %115 : f32
          memref.store %116, %arg5[%104, %105] : memref<?x64xf32>
          %117 = memref.load %arg5[%104, %105] : memref<?x64xf32>
          memref.store %117, %alloca_24[] : memref<f32>
          %118 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %118, %alloca_23[] : memref<f32>
          %119 = memref.load %arg3[%104, %105] : memref<?x64xf32>
          memref.store %119, %alloca_25[] : memref<f32>
          %120 = arith.addi %105, %c1 : index
          %121 = memref.load %arg3[%104, %120] : memref<?x64xf32>
          %122 = arith.mulf %38, %121 : f32
          %123 = memref.load %alloca_25[] : memref<f32>
          %124 = arith.mulf %39, %123 : f32
          %125 = arith.addf %122, %124 : f32
          %126 = memref.load %alloca_24[] : memref<f32>
          memref.store %126, %alloca_7[%c0] : memref<1xf32>
          %127 = arith.mulf %40, %126 : f32
          %128 = arith.addf %125, %127 : f32
          %129 = memref.load %alloca_23[] : memref<f32>
          %130 = arith.mulf %41, %129 : f32
          %131 = arith.addf %128, %130 : f32
          memref.store %131, %arg5[%104, %120] : memref<?x64xf32>
          %132 = memref.load %arg5[%104, %120] : memref<?x64xf32>
          memref.store %132, %alloca_24[] : memref<f32>
          %133 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %133, %alloca_23[] : memref<f32>
          %134 = memref.load %arg3[%104, %120] : memref<?x64xf32>
          memref.store %134, %alloca_25[] : memref<f32>
          %135 = arith.addi %105, %c2 : index
          %136 = memref.load %arg3[%104, %135] : memref<?x64xf32>
          %137 = arith.mulf %42, %136 : f32
          %138 = memref.load %alloca_25[] : memref<f32>
          %139 = arith.mulf %43, %138 : f32
          %140 = arith.addf %137, %139 : f32
          %141 = memref.load %alloca_24[] : memref<f32>
          memref.store %141, %alloca_7[%c0] : memref<1xf32>
          %142 = arith.mulf %44, %141 : f32
          %143 = arith.addf %140, %142 : f32
          %144 = memref.load %alloca_23[] : memref<f32>
          %145 = arith.mulf %45, %144 : f32
          %146 = arith.addf %143, %145 : f32
          memref.store %146, %arg5[%104, %135] : memref<?x64xf32>
          %147 = memref.load %arg5[%104, %135] : memref<?x64xf32>
          memref.store %147, %alloca_24[] : memref<f32>
          %148 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %148, %alloca_23[] : memref<f32>
          %149 = memref.load %arg3[%104, %135] : memref<?x64xf32>
          memref.store %149, %alloca_25[] : memref<f32>
          %150 = arith.addi %105, %c3 : index
          %151 = memref.load %arg3[%104, %150] : memref<?x64xf32>
          %152 = arith.mulf %46, %151 : f32
          %153 = memref.load %alloca_25[] : memref<f32>
          %154 = arith.mulf %47, %153 : f32
          %155 = arith.addf %152, %154 : f32
          %156 = memref.load %alloca_24[] : memref<f32>
          memref.store %156, %alloca_7[%c0] : memref<1xf32>
          %157 = arith.mulf %48, %156 : f32
          %158 = arith.addf %155, %157 : f32
          %159 = memref.load %alloca_23[] : memref<f32>
          %160 = arith.mulf %49, %159 : f32
          %161 = arith.addf %158, %160 : f32
          memref.store %161, %arg5[%104, %150] : memref<?x64xf32>
          %162 = memref.load %arg5[%104, %150] : memref<?x64xf32>
          memref.store %162, %alloca_24[] : memref<f32>
          %163 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %163, %alloca_23[] : memref<f32>
          %164 = memref.load %arg3[%104, %150] : memref<?x64xf32>
          memref.store %164, %alloca_25[] : memref<f32>
        }
      }
    }
    %50 = llvm.mlir.undef : f32
    memref.store %50, %alloca_3[] : memref<f32>
    %51 = llvm.mlir.undef : f32
    memref.store %51, %alloca_20[] : memref<f32>
    %52 = llvm.mlir.undef : f32
    memref.store %52, %alloca_8[] : memref<f32>
    %53 = llvm.mlir.undef : f32
    memref.store %53, %alloca_22[] : memref<f32>
    %54 = llvm.mlir.undef : f32
    memref.store %54, %alloca_21[] : memref<f32>
    %55 = llvm.mlir.undef : f32
    memref.store %55, %alloca[] : memref<f32>
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
    scf.for %arg7 = %c0 to %c64 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %104 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %alloca_20[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_21[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %105 = arith.muli %arg9, %c4 : index
          %106 = memref.load %alloca_3[] : memref<f32>
          memref.store %106, %alloca_9[%c0] : memref<1xf32>
          %107 = arith.mulf %56, %106 : f32
          %108 = memref.load %alloca_20[] : memref<f32>
          %109 = arith.mulf %57, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = memref.load %alloca_21[] : memref<f32>
          memref.store %111, %alloca_15[%c0] : memref<1xf32>
          %112 = arith.mulf %58, %111 : f32
          %113 = arith.addf %110, %112 : f32
          %114 = memref.load %alloca[] : memref<f32>
          %115 = arith.mulf %59, %114 : f32
          %116 = arith.addf %113, %115 : f32
          %117 = arith.muli %105, %c-1 : index
          %118 = arith.addi %117, %c63 : index
          memref.store %116, %arg6[%104, %118] : memref<?x64xf32>
          %119 = arith.muli %105, %c-1 : index
          %120 = arith.addi %119, %c63 : index
          %121 = memref.load %arg6[%104, %120] : memref<?x64xf32>
          memref.store %121, %alloca_21[] : memref<f32>
          %122 = memref.load %alloca_15[%c0] : memref<1xf32>
          memref.store %122, %alloca[] : memref<f32>
          %123 = arith.muli %105, %c-1 : index
          %124 = arith.addi %123, %c63 : index
          %125 = memref.load %arg3[%104, %124] : memref<?x64xf32>
          memref.store %125, %alloca_3[] : memref<f32>
          %126 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %126, %alloca_20[] : memref<f32>
          %127 = arith.addi %105, %c1 : index
          %128 = memref.load %alloca_3[] : memref<f32>
          memref.store %128, %alloca_9[%c0] : memref<1xf32>
          %129 = arith.mulf %60, %128 : f32
          %130 = memref.load %alloca_20[] : memref<f32>
          %131 = arith.mulf %61, %130 : f32
          %132 = arith.addf %129, %131 : f32
          %133 = memref.load %alloca_21[] : memref<f32>
          memref.store %133, %alloca_15[%c0] : memref<1xf32>
          %134 = arith.mulf %62, %133 : f32
          %135 = arith.addf %132, %134 : f32
          %136 = memref.load %alloca[] : memref<f32>
          %137 = arith.mulf %63, %136 : f32
          %138 = arith.addf %135, %137 : f32
          %139 = arith.muli %127, %c-1 : index
          %140 = arith.addi %139, %c63 : index
          memref.store %138, %arg6[%104, %140] : memref<?x64xf32>
          %141 = arith.muli %127, %c-1 : index
          %142 = arith.addi %141, %c63 : index
          %143 = memref.load %arg6[%104, %142] : memref<?x64xf32>
          memref.store %143, %alloca_21[] : memref<f32>
          %144 = memref.load %alloca_15[%c0] : memref<1xf32>
          memref.store %144, %alloca[] : memref<f32>
          %145 = arith.muli %127, %c-1 : index
          %146 = arith.addi %145, %c63 : index
          %147 = memref.load %arg3[%104, %146] : memref<?x64xf32>
          memref.store %147, %alloca_3[] : memref<f32>
          %148 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %148, %alloca_20[] : memref<f32>
          %149 = arith.addi %105, %c2 : index
          %150 = memref.load %alloca_3[] : memref<f32>
          memref.store %150, %alloca_9[%c0] : memref<1xf32>
          %151 = arith.mulf %64, %150 : f32
          %152 = memref.load %alloca_20[] : memref<f32>
          %153 = arith.mulf %65, %152 : f32
          %154 = arith.addf %151, %153 : f32
          %155 = memref.load %alloca_21[] : memref<f32>
          memref.store %155, %alloca_15[%c0] : memref<1xf32>
          %156 = arith.mulf %66, %155 : f32
          %157 = arith.addf %154, %156 : f32
          %158 = memref.load %alloca[] : memref<f32>
          %159 = arith.mulf %67, %158 : f32
          %160 = arith.addf %157, %159 : f32
          %161 = arith.muli %149, %c-1 : index
          %162 = arith.addi %161, %c63 : index
          memref.store %160, %arg6[%104, %162] : memref<?x64xf32>
          %163 = arith.muli %149, %c-1 : index
          %164 = arith.addi %163, %c63 : index
          %165 = memref.load %arg6[%104, %164] : memref<?x64xf32>
          memref.store %165, %alloca_21[] : memref<f32>
          %166 = memref.load %alloca_15[%c0] : memref<1xf32>
          memref.store %166, %alloca[] : memref<f32>
          %167 = arith.muli %149, %c-1 : index
          %168 = arith.addi %167, %c63 : index
          %169 = memref.load %arg3[%104, %168] : memref<?x64xf32>
          memref.store %169, %alloca_3[] : memref<f32>
          %170 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %170, %alloca_20[] : memref<f32>
          %171 = arith.addi %105, %c3 : index
          %172 = memref.load %alloca_3[] : memref<f32>
          memref.store %172, %alloca_9[%c0] : memref<1xf32>
          %173 = arith.mulf %68, %172 : f32
          %174 = memref.load %alloca_20[] : memref<f32>
          %175 = arith.mulf %69, %174 : f32
          %176 = arith.addf %173, %175 : f32
          %177 = memref.load %alloca_21[] : memref<f32>
          memref.store %177, %alloca_15[%c0] : memref<1xf32>
          %178 = arith.mulf %70, %177 : f32
          %179 = arith.addf %176, %178 : f32
          %180 = memref.load %alloca[] : memref<f32>
          %181 = arith.mulf %71, %180 : f32
          %182 = arith.addf %179, %181 : f32
          %183 = arith.muli %171, %c-1 : index
          %184 = arith.addi %183, %c63 : index
          memref.store %182, %arg6[%104, %184] : memref<?x64xf32>
          %185 = arith.muli %171, %c-1 : index
          %186 = arith.addi %185, %c63 : index
          %187 = memref.load %arg6[%104, %186] : memref<?x64xf32>
          memref.store %187, %alloca_21[] : memref<f32>
          %188 = memref.load %alloca_15[%c0] : memref<1xf32>
          memref.store %188, %alloca[] : memref<f32>
          %189 = arith.muli %171, %c-1 : index
          %190 = arith.addi %189, %c63 : index
          %191 = memref.load %arg3[%104, %190] : memref<?x64xf32>
          memref.store %191, %alloca_3[] : memref<f32>
          %192 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %192, %alloca_20[] : memref<f32>
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
    %73 = memref.load %alloca_17[%c0] : memref<1xf32>
    %74 = memref.load %alloca_14[%c0] : memref<1xf32>
    %75 = memref.load %alloca_5[%c0] : memref<1xf32>
    %76 = memref.load %alloca_10[%c0] : memref<1xf32>
    %77 = memref.load %alloca_17[%c0] : memref<1xf32>
    %78 = memref.load %alloca_14[%c0] : memref<1xf32>
    %79 = memref.load %alloca_5[%c0] : memref<1xf32>
    %80 = memref.load %alloca_10[%c0] : memref<1xf32>
    %81 = memref.load %alloca_17[%c0] : memref<1xf32>
    %82 = memref.load %alloca_14[%c0] : memref<1xf32>
    %83 = memref.load %alloca_5[%c0] : memref<1xf32>
    %84 = memref.load %alloca_10[%c0] : memref<1xf32>
    %85 = memref.load %alloca_17[%c0] : memref<1xf32>
    %86 = memref.load %alloca_14[%c0] : memref<1xf32>
    %87 = memref.load %alloca_5[%c0] : memref<1xf32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %104 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %alloca_23[] : memref<f32>
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_13[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %105 = arith.muli %arg9, %c4 : index
          %106 = memref.load %arg4[%105, %104] : memref<?x64xf32>
          %107 = arith.mulf %72, %106 : f32
          %108 = memref.load %alloca_13[] : memref<f32>
          %109 = arith.mulf %73, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = memref.load %alloca_24[] : memref<f32>
          memref.store %111, %alloca_18[%c0] : memref<1xf32>
          %112 = arith.mulf %74, %111 : f32
          %113 = arith.addf %110, %112 : f32
          %114 = memref.load %alloca_23[] : memref<f32>
          %115 = arith.mulf %75, %114 : f32
          %116 = arith.addf %113, %115 : f32
          memref.store %116, %arg5[%105, %104] : memref<?x64xf32>
          %117 = memref.load %arg5[%105, %104] : memref<?x64xf32>
          memref.store %117, %alloca_24[] : memref<f32>
          %118 = memref.load %alloca_18[%c0] : memref<1xf32>
          memref.store %118, %alloca_23[] : memref<f32>
          %119 = memref.load %arg4[%105, %104] : memref<?x64xf32>
          memref.store %119, %alloca_13[] : memref<f32>
          %120 = arith.addi %105, %c1 : index
          %121 = memref.load %arg4[%120, %104] : memref<?x64xf32>
          %122 = arith.mulf %76, %121 : f32
          %123 = memref.load %alloca_13[] : memref<f32>
          %124 = arith.mulf %77, %123 : f32
          %125 = arith.addf %122, %124 : f32
          %126 = memref.load %alloca_24[] : memref<f32>
          memref.store %126, %alloca_18[%c0] : memref<1xf32>
          %127 = arith.mulf %78, %126 : f32
          %128 = arith.addf %125, %127 : f32
          %129 = memref.load %alloca_23[] : memref<f32>
          %130 = arith.mulf %79, %129 : f32
          %131 = arith.addf %128, %130 : f32
          memref.store %131, %arg5[%120, %104] : memref<?x64xf32>
          %132 = memref.load %arg5[%120, %104] : memref<?x64xf32>
          memref.store %132, %alloca_24[] : memref<f32>
          %133 = memref.load %alloca_18[%c0] : memref<1xf32>
          memref.store %133, %alloca_23[] : memref<f32>
          %134 = memref.load %arg4[%120, %104] : memref<?x64xf32>
          memref.store %134, %alloca_13[] : memref<f32>
          %135 = arith.addi %105, %c2 : index
          %136 = memref.load %arg4[%135, %104] : memref<?x64xf32>
          %137 = arith.mulf %80, %136 : f32
          %138 = memref.load %alloca_13[] : memref<f32>
          %139 = arith.mulf %81, %138 : f32
          %140 = arith.addf %137, %139 : f32
          %141 = memref.load %alloca_24[] : memref<f32>
          memref.store %141, %alloca_18[%c0] : memref<1xf32>
          %142 = arith.mulf %82, %141 : f32
          %143 = arith.addf %140, %142 : f32
          %144 = memref.load %alloca_23[] : memref<f32>
          %145 = arith.mulf %83, %144 : f32
          %146 = arith.addf %143, %145 : f32
          memref.store %146, %arg5[%135, %104] : memref<?x64xf32>
          %147 = memref.load %arg5[%135, %104] : memref<?x64xf32>
          memref.store %147, %alloca_24[] : memref<f32>
          %148 = memref.load %alloca_18[%c0] : memref<1xf32>
          memref.store %148, %alloca_23[] : memref<f32>
          %149 = memref.load %arg4[%135, %104] : memref<?x64xf32>
          memref.store %149, %alloca_13[] : memref<f32>
          %150 = arith.addi %105, %c3 : index
          %151 = memref.load %arg4[%150, %104] : memref<?x64xf32>
          %152 = arith.mulf %84, %151 : f32
          %153 = memref.load %alloca_13[] : memref<f32>
          %154 = arith.mulf %85, %153 : f32
          %155 = arith.addf %152, %154 : f32
          %156 = memref.load %alloca_24[] : memref<f32>
          memref.store %156, %alloca_18[%c0] : memref<1xf32>
          %157 = arith.mulf %86, %156 : f32
          %158 = arith.addf %155, %157 : f32
          %159 = memref.load %alloca_23[] : memref<f32>
          %160 = arith.mulf %87, %159 : f32
          %161 = arith.addf %158, %160 : f32
          memref.store %161, %arg5[%150, %104] : memref<?x64xf32>
          %162 = memref.load %arg5[%150, %104] : memref<?x64xf32>
          memref.store %162, %alloca_24[] : memref<f32>
          %163 = memref.load %alloca_18[%c0] : memref<1xf32>
          memref.store %163, %alloca_23[] : memref<f32>
          %164 = memref.load %arg4[%150, %104] : memref<?x64xf32>
          memref.store %164, %alloca_13[] : memref<f32>
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
    scf.for %arg7 = %c0 to %c64 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %104 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_21[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        memref.store %cst, %alloca_8[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %105 = arith.muli %arg9, %c4 : index
          %106 = memref.load %alloca_8[] : memref<f32>
          memref.store %106, %alloca_16[%c0] : memref<1xf32>
          %107 = arith.mulf %88, %106 : f32
          %108 = memref.load %alloca_22[] : memref<f32>
          %109 = arith.mulf %89, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = memref.load %alloca_21[] : memref<f32>
          memref.store %111, %alloca_19[%c0] : memref<1xf32>
          %112 = arith.mulf %90, %111 : f32
          %113 = arith.addf %110, %112 : f32
          %114 = memref.load %alloca[] : memref<f32>
          %115 = arith.mulf %91, %114 : f32
          %116 = arith.addf %113, %115 : f32
          %117 = arith.muli %105, %c-1 : index
          %118 = arith.addi %117, %c63 : index
          memref.store %116, %arg6[%118, %104] : memref<?x64xf32>
          %119 = arith.muli %105, %c-1 : index
          %120 = arith.addi %119, %c63 : index
          %121 = memref.load %arg6[%120, %104] : memref<?x64xf32>
          memref.store %121, %alloca_21[] : memref<f32>
          %122 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %122, %alloca[] : memref<f32>
          %123 = arith.muli %105, %c-1 : index
          %124 = arith.addi %123, %c63 : index
          %125 = memref.load %arg4[%124, %104] : memref<?x64xf32>
          memref.store %125, %alloca_8[] : memref<f32>
          %126 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %126, %alloca_22[] : memref<f32>
          %127 = arith.addi %105, %c1 : index
          %128 = memref.load %alloca_8[] : memref<f32>
          memref.store %128, %alloca_16[%c0] : memref<1xf32>
          %129 = arith.mulf %92, %128 : f32
          %130 = memref.load %alloca_22[] : memref<f32>
          %131 = arith.mulf %93, %130 : f32
          %132 = arith.addf %129, %131 : f32
          %133 = memref.load %alloca_21[] : memref<f32>
          memref.store %133, %alloca_19[%c0] : memref<1xf32>
          %134 = arith.mulf %94, %133 : f32
          %135 = arith.addf %132, %134 : f32
          %136 = memref.load %alloca[] : memref<f32>
          %137 = arith.mulf %95, %136 : f32
          %138 = arith.addf %135, %137 : f32
          %139 = arith.muli %127, %c-1 : index
          %140 = arith.addi %139, %c63 : index
          memref.store %138, %arg6[%140, %104] : memref<?x64xf32>
          %141 = arith.muli %127, %c-1 : index
          %142 = arith.addi %141, %c63 : index
          %143 = memref.load %arg6[%142, %104] : memref<?x64xf32>
          memref.store %143, %alloca_21[] : memref<f32>
          %144 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %144, %alloca[] : memref<f32>
          %145 = arith.muli %127, %c-1 : index
          %146 = arith.addi %145, %c63 : index
          %147 = memref.load %arg4[%146, %104] : memref<?x64xf32>
          memref.store %147, %alloca_8[] : memref<f32>
          %148 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %148, %alloca_22[] : memref<f32>
          %149 = arith.addi %105, %c2 : index
          %150 = memref.load %alloca_8[] : memref<f32>
          memref.store %150, %alloca_16[%c0] : memref<1xf32>
          %151 = arith.mulf %96, %150 : f32
          %152 = memref.load %alloca_22[] : memref<f32>
          %153 = arith.mulf %97, %152 : f32
          %154 = arith.addf %151, %153 : f32
          %155 = memref.load %alloca_21[] : memref<f32>
          memref.store %155, %alloca_19[%c0] : memref<1xf32>
          %156 = arith.mulf %98, %155 : f32
          %157 = arith.addf %154, %156 : f32
          %158 = memref.load %alloca[] : memref<f32>
          %159 = arith.mulf %99, %158 : f32
          %160 = arith.addf %157, %159 : f32
          %161 = arith.muli %149, %c-1 : index
          %162 = arith.addi %161, %c63 : index
          memref.store %160, %arg6[%162, %104] : memref<?x64xf32>
          %163 = arith.muli %149, %c-1 : index
          %164 = arith.addi %163, %c63 : index
          %165 = memref.load %arg6[%164, %104] : memref<?x64xf32>
          memref.store %165, %alloca_21[] : memref<f32>
          %166 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %166, %alloca[] : memref<f32>
          %167 = arith.muli %149, %c-1 : index
          %168 = arith.addi %167, %c63 : index
          %169 = memref.load %arg4[%168, %104] : memref<?x64xf32>
          memref.store %169, %alloca_8[] : memref<f32>
          %170 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %170, %alloca_22[] : memref<f32>
          %171 = arith.addi %105, %c3 : index
          %172 = memref.load %alloca_8[] : memref<f32>
          memref.store %172, %alloca_16[%c0] : memref<1xf32>
          %173 = arith.mulf %100, %172 : f32
          %174 = memref.load %alloca_22[] : memref<f32>
          %175 = arith.mulf %101, %174 : f32
          %176 = arith.addf %173, %175 : f32
          %177 = memref.load %alloca_21[] : memref<f32>
          memref.store %177, %alloca_19[%c0] : memref<1xf32>
          %178 = arith.mulf %102, %177 : f32
          %179 = arith.addf %176, %178 : f32
          %180 = memref.load %alloca[] : memref<f32>
          %181 = arith.mulf %103, %180 : f32
          %182 = arith.addf %179, %181 : f32
          %183 = arith.muli %171, %c-1 : index
          %184 = arith.addi %183, %c63 : index
          memref.store %182, %arg6[%184, %104] : memref<?x64xf32>
          %185 = arith.muli %171, %c-1 : index
          %186 = arith.addi %185, %c63 : index
          %187 = memref.load %arg6[%186, %104] : memref<?x64xf32>
          memref.store %187, %alloca_21[] : memref<f32>
          %188 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %188, %alloca[] : memref<f32>
          %189 = arith.muli %171, %c-1 : index
          %190 = arith.addi %189, %c63 : index
          %191 = memref.load %arg4[%190, %104] : memref<?x64xf32>
          memref.store %191, %alloca_8[] : memref<f32>
          %192 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %192, %alloca_22[] : memref<f32>
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

