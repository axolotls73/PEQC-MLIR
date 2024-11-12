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
    %alloca = memref.alloca() : memref<1xf32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_10 = memref.alloca() : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_13 = memref.alloca() : memref<1xf32>
    %alloca_14 = memref.alloca() {scop.scratchpad} : memref<1xf32>
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
    memref.store %15, %alloca_9[%c0] : memref<1xf32>
    %16 = memref.load %alloca_9[%c0] : memref<1xf32>
    memref.store %16, %alloca[%c0] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    memref.store %19, %alloca_7[%c0] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    memref.store %21, %alloca_18[%c0] : memref<1xf32>
    %22 = memref.load %alloca[%c0] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    memref.store %26, %alloca_14[%c0] : memref<1xf32>
    %27 = memref.load %alloca_7[%c0] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    memref.store %29, %alloca_12[%c0] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_5[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_11[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_4[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_24[] : memref<f32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      %44 = async.create_group %c1 : !async.group
      %45 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %48 = arith.addi %arg7, %arg8 : index
          memref.store %cst, %alloca_5[] : memref<f32>
          memref.store %cst, %alloca_24[] : memref<f32>
          memref.store %cst, %alloca_4[] : memref<f32>
          %49 = memref.load %alloca_9[%c0] : memref<1xf32>
          %50 = memref.load %alloca_18[%c0] : memref<1xf32>
          %51 = memref.load %alloca_15[%c0] : memref<1xf32>
          %52 = memref.load %alloca_6[%c0] : memref<1xf32>
          %53 = memref.load %alloca_9[%c0] : memref<1xf32>
          %54 = memref.load %alloca_18[%c0] : memref<1xf32>
          %55 = memref.load %alloca_15[%c0] : memref<1xf32>
          %56 = memref.load %alloca_6[%c0] : memref<1xf32>
          %57 = memref.load %alloca_9[%c0] : memref<1xf32>
          %58 = memref.load %alloca_18[%c0] : memref<1xf32>
          %59 = memref.load %alloca_15[%c0] : memref<1xf32>
          %60 = memref.load %alloca_6[%c0] : memref<1xf32>
          %61 = memref.load %alloca_9[%c0] : memref<1xf32>
          %62 = memref.load %alloca_18[%c0] : memref<1xf32>
          %63 = memref.load %alloca_15[%c0] : memref<1xf32>
          %64 = memref.load %alloca_6[%c0] : memref<1xf32>
          scf.for %arg10 = %c0 to %c16 step %c1 {
            %65 = arith.muli %arg10, %c4 : index
            %66 = memref.load %arg3[%48, %65] : memref<?x64xf32>
            %67 = arith.mulf %49, %66 : f32
            %68 = memref.load %alloca_5[] : memref<f32>
            %69 = arith.mulf %50, %68 : f32
            %70 = arith.addf %67, %69 : f32
            %71 = memref.load %alloca_4[] : memref<f32>
            memref.store %71, %alloca_8[%c0] : memref<1xf32>
            %72 = arith.mulf %51, %71 : f32
            %73 = arith.addf %70, %72 : f32
            %74 = memref.load %alloca_24[] : memref<f32>
            %75 = arith.mulf %52, %74 : f32
            %76 = arith.addf %73, %75 : f32
            memref.store %76, %arg5[%48, %65] : memref<?x64xf32>
            %77 = memref.load %arg5[%48, %65] : memref<?x64xf32>
            memref.store %77, %alloca_4[] : memref<f32>
            %78 = memref.load %alloca_8[%c0] : memref<1xf32>
            memref.store %78, %alloca_24[] : memref<f32>
            %79 = memref.load %arg3[%48, %65] : memref<?x64xf32>
            memref.store %79, %alloca_5[] : memref<f32>
            %80 = arith.addi %65, %c1 : index
            %81 = memref.load %arg3[%48, %80] : memref<?x64xf32>
            %82 = arith.mulf %53, %81 : f32
            %83 = memref.load %alloca_5[] : memref<f32>
            %84 = arith.mulf %54, %83 : f32
            %85 = arith.addf %82, %84 : f32
            %86 = memref.load %alloca_4[] : memref<f32>
            memref.store %86, %alloca_8[%c0] : memref<1xf32>
            %87 = arith.mulf %55, %86 : f32
            %88 = arith.addf %85, %87 : f32
            %89 = memref.load %alloca_24[] : memref<f32>
            %90 = arith.mulf %56, %89 : f32
            %91 = arith.addf %88, %90 : f32
            memref.store %91, %arg5[%48, %80] : memref<?x64xf32>
            %92 = memref.load %arg5[%48, %80] : memref<?x64xf32>
            memref.store %92, %alloca_4[] : memref<f32>
            %93 = memref.load %alloca_8[%c0] : memref<1xf32>
            memref.store %93, %alloca_24[] : memref<f32>
            %94 = memref.load %arg3[%48, %80] : memref<?x64xf32>
            memref.store %94, %alloca_5[] : memref<f32>
            %95 = arith.addi %65, %c2 : index
            %96 = memref.load %arg3[%48, %95] : memref<?x64xf32>
            %97 = arith.mulf %57, %96 : f32
            %98 = memref.load %alloca_5[] : memref<f32>
            %99 = arith.mulf %58, %98 : f32
            %100 = arith.addf %97, %99 : f32
            %101 = memref.load %alloca_4[] : memref<f32>
            memref.store %101, %alloca_8[%c0] : memref<1xf32>
            %102 = arith.mulf %59, %101 : f32
            %103 = arith.addf %100, %102 : f32
            %104 = memref.load %alloca_24[] : memref<f32>
            %105 = arith.mulf %60, %104 : f32
            %106 = arith.addf %103, %105 : f32
            memref.store %106, %arg5[%48, %95] : memref<?x64xf32>
            %107 = memref.load %arg5[%48, %95] : memref<?x64xf32>
            memref.store %107, %alloca_4[] : memref<f32>
            %108 = memref.load %alloca_8[%c0] : memref<1xf32>
            memref.store %108, %alloca_24[] : memref<f32>
            %109 = memref.load %arg3[%48, %95] : memref<?x64xf32>
            memref.store %109, %alloca_5[] : memref<f32>
            %110 = arith.addi %65, %c3 : index
            %111 = memref.load %arg3[%48, %110] : memref<?x64xf32>
            %112 = arith.mulf %61, %111 : f32
            %113 = memref.load %alloca_5[] : memref<f32>
            %114 = arith.mulf %62, %113 : f32
            %115 = arith.addf %112, %114 : f32
            %116 = memref.load %alloca_4[] : memref<f32>
            memref.store %116, %alloca_8[%c0] : memref<1xf32>
            %117 = arith.mulf %63, %116 : f32
            %118 = arith.addf %115, %117 : f32
            %119 = memref.load %alloca_24[] : memref<f32>
            %120 = arith.mulf %64, %119 : f32
            %121 = arith.addf %118, %120 : f32
            memref.store %121, %arg5[%48, %110] : memref<?x64xf32>
            %122 = memref.load %arg5[%48, %110] : memref<?x64xf32>
            memref.store %122, %alloca_4[] : memref<f32>
            %123 = memref.load %alloca_8[%c0] : memref<1xf32>
            memref.store %123, %alloca_24[] : memref<f32>
            %124 = memref.load %arg3[%48, %110] : memref<?x64xf32>
            memref.store %124, %alloca_5[] : memref<f32>
          }
          async.yield
        }
        %46 = async.add_to_group %token, %44 : !async.token
        %47 = arith.addi %arg9, %c1 : index
        scf.yield %47 : index
      }
      async.await_all %44
    }
    %34 = llvm.mlir.undef : f32
    memref.store %34, %alloca_3[] : memref<f32>
    %35 = llvm.mlir.undef : f32
    memref.store %35, %alloca_21[] : memref<f32>
    %36 = llvm.mlir.undef : f32
    memref.store %36, %alloca_10[] : memref<f32>
    %37 = llvm.mlir.undef : f32
    memref.store %37, %alloca_23[] : memref<f32>
    %38 = llvm.mlir.undef : f32
    memref.store %38, %alloca_22[] : memref<f32>
    %39 = llvm.mlir.undef : f32
    memref.store %39, %alloca_25[] : memref<f32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      %44 = async.create_group %c1 : !async.group
      %45 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %48 = arith.addi %arg7, %arg8 : index
          memref.store %cst, %alloca_21[] : memref<f32>
          memref.store %cst, %alloca_3[] : memref<f32>
          memref.store %cst, %alloca_25[] : memref<f32>
          memref.store %cst, %alloca_22[] : memref<f32>
          %49 = memref.load %alloca_12[%c0] : memref<1xf32>
          %50 = memref.load %alloca_14[%c0] : memref<1xf32>
          %51 = memref.load %alloca_15[%c0] : memref<1xf32>
          %52 = memref.load %alloca_6[%c0] : memref<1xf32>
          %53 = memref.load %alloca_12[%c0] : memref<1xf32>
          %54 = memref.load %alloca_14[%c0] : memref<1xf32>
          %55 = memref.load %alloca_15[%c0] : memref<1xf32>
          %56 = memref.load %alloca_6[%c0] : memref<1xf32>
          %57 = memref.load %alloca_12[%c0] : memref<1xf32>
          %58 = memref.load %alloca_14[%c0] : memref<1xf32>
          %59 = memref.load %alloca_15[%c0] : memref<1xf32>
          %60 = memref.load %alloca_6[%c0] : memref<1xf32>
          %61 = memref.load %alloca_12[%c0] : memref<1xf32>
          %62 = memref.load %alloca_14[%c0] : memref<1xf32>
          %63 = memref.load %alloca_15[%c0] : memref<1xf32>
          %64 = memref.load %alloca_6[%c0] : memref<1xf32>
          scf.for %arg10 = %c0 to %c16 step %c1 {
            %65 = arith.muli %arg10, %c4 : index
            %66 = memref.load %alloca_3[] : memref<f32>
            memref.store %66, %alloca_13[%c0] : memref<1xf32>
            %67 = arith.mulf %49, %66 : f32
            %68 = memref.load %alloca_21[] : memref<f32>
            %69 = arith.mulf %50, %68 : f32
            %70 = arith.addf %67, %69 : f32
            %71 = memref.load %alloca_22[] : memref<f32>
            memref.store %71, %alloca_16[%c0] : memref<1xf32>
            %72 = arith.mulf %51, %71 : f32
            %73 = arith.addf %70, %72 : f32
            %74 = memref.load %alloca_25[] : memref<f32>
            %75 = arith.mulf %52, %74 : f32
            %76 = arith.addf %73, %75 : f32
            %77 = arith.muli %65, %c-1 : index
            %78 = arith.addi %77, %c63 : index
            memref.store %76, %arg6[%48, %78] : memref<?x64xf32>
            %79 = arith.muli %65, %c-1 : index
            %80 = arith.addi %79, %c63 : index
            %81 = memref.load %arg6[%48, %80] : memref<?x64xf32>
            memref.store %81, %alloca_22[] : memref<f32>
            %82 = memref.load %alloca_16[%c0] : memref<1xf32>
            memref.store %82, %alloca_25[] : memref<f32>
            %83 = arith.muli %65, %c-1 : index
            %84 = arith.addi %83, %c63 : index
            %85 = memref.load %arg3[%48, %84] : memref<?x64xf32>
            memref.store %85, %alloca_3[] : memref<f32>
            %86 = memref.load %alloca_13[%c0] : memref<1xf32>
            memref.store %86, %alloca_21[] : memref<f32>
            %87 = arith.addi %65, %c1 : index
            %88 = memref.load %alloca_3[] : memref<f32>
            memref.store %88, %alloca_13[%c0] : memref<1xf32>
            %89 = arith.mulf %53, %88 : f32
            %90 = memref.load %alloca_21[] : memref<f32>
            %91 = arith.mulf %54, %90 : f32
            %92 = arith.addf %89, %91 : f32
            %93 = memref.load %alloca_22[] : memref<f32>
            memref.store %93, %alloca_16[%c0] : memref<1xf32>
            %94 = arith.mulf %55, %93 : f32
            %95 = arith.addf %92, %94 : f32
            %96 = memref.load %alloca_25[] : memref<f32>
            %97 = arith.mulf %56, %96 : f32
            %98 = arith.addf %95, %97 : f32
            %99 = arith.muli %87, %c-1 : index
            %100 = arith.addi %99, %c63 : index
            memref.store %98, %arg6[%48, %100] : memref<?x64xf32>
            %101 = arith.muli %87, %c-1 : index
            %102 = arith.addi %101, %c63 : index
            %103 = memref.load %arg6[%48, %102] : memref<?x64xf32>
            memref.store %103, %alloca_22[] : memref<f32>
            %104 = memref.load %alloca_16[%c0] : memref<1xf32>
            memref.store %104, %alloca_25[] : memref<f32>
            %105 = arith.muli %87, %c-1 : index
            %106 = arith.addi %105, %c63 : index
            %107 = memref.load %arg3[%48, %106] : memref<?x64xf32>
            memref.store %107, %alloca_3[] : memref<f32>
            %108 = memref.load %alloca_13[%c0] : memref<1xf32>
            memref.store %108, %alloca_21[] : memref<f32>
            %109 = arith.addi %65, %c2 : index
            %110 = memref.load %alloca_3[] : memref<f32>
            memref.store %110, %alloca_13[%c0] : memref<1xf32>
            %111 = arith.mulf %57, %110 : f32
            %112 = memref.load %alloca_21[] : memref<f32>
            %113 = arith.mulf %58, %112 : f32
            %114 = arith.addf %111, %113 : f32
            %115 = memref.load %alloca_22[] : memref<f32>
            memref.store %115, %alloca_16[%c0] : memref<1xf32>
            %116 = arith.mulf %59, %115 : f32
            %117 = arith.addf %114, %116 : f32
            %118 = memref.load %alloca_25[] : memref<f32>
            %119 = arith.mulf %60, %118 : f32
            %120 = arith.addf %117, %119 : f32
            %121 = arith.muli %109, %c-1 : index
            %122 = arith.addi %121, %c63 : index
            memref.store %120, %arg6[%48, %122] : memref<?x64xf32>
            %123 = arith.muli %109, %c-1 : index
            %124 = arith.addi %123, %c63 : index
            %125 = memref.load %arg6[%48, %124] : memref<?x64xf32>
            memref.store %125, %alloca_22[] : memref<f32>
            %126 = memref.load %alloca_16[%c0] : memref<1xf32>
            memref.store %126, %alloca_25[] : memref<f32>
            %127 = arith.muli %109, %c-1 : index
            %128 = arith.addi %127, %c63 : index
            %129 = memref.load %arg3[%48, %128] : memref<?x64xf32>
            memref.store %129, %alloca_3[] : memref<f32>
            %130 = memref.load %alloca_13[%c0] : memref<1xf32>
            memref.store %130, %alloca_21[] : memref<f32>
            %131 = arith.addi %65, %c3 : index
            %132 = memref.load %alloca_3[] : memref<f32>
            memref.store %132, %alloca_13[%c0] : memref<1xf32>
            %133 = arith.mulf %61, %132 : f32
            %134 = memref.load %alloca_21[] : memref<f32>
            %135 = arith.mulf %62, %134 : f32
            %136 = arith.addf %133, %135 : f32
            %137 = memref.load %alloca_22[] : memref<f32>
            memref.store %137, %alloca_16[%c0] : memref<1xf32>
            %138 = arith.mulf %63, %137 : f32
            %139 = arith.addf %136, %138 : f32
            %140 = memref.load %alloca_25[] : memref<f32>
            %141 = arith.mulf %64, %140 : f32
            %142 = arith.addf %139, %141 : f32
            %143 = arith.muli %131, %c-1 : index
            %144 = arith.addi %143, %c63 : index
            memref.store %142, %arg6[%48, %144] : memref<?x64xf32>
            %145 = arith.muli %131, %c-1 : index
            %146 = arith.addi %145, %c63 : index
            %147 = memref.load %arg6[%48, %146] : memref<?x64xf32>
            memref.store %147, %alloca_22[] : memref<f32>
            %148 = memref.load %alloca_16[%c0] : memref<1xf32>
            memref.store %148, %alloca_25[] : memref<f32>
            %149 = arith.muli %131, %c-1 : index
            %150 = arith.addi %149, %c63 : index
            %151 = memref.load %arg3[%48, %150] : memref<?x64xf32>
            memref.store %151, %alloca_3[] : memref<f32>
            %152 = memref.load %alloca_13[%c0] : memref<1xf32>
            memref.store %152, %alloca_21[] : memref<f32>
          }
          async.yield
        }
        %46 = async.add_to_group %token, %44 : !async.token
        %47 = arith.addi %arg9, %c1 : index
        scf.yield %47 : index
      }
      async.await_all %44
    }
    %40 = async.create_group %c2 : !async.group
    %41 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c2 step %c1 {
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %46 = arith.muli %arg7, %c32 : index
            %47 = arith.addi %46, %arg10 : index
            scf.for %arg11 = %c0 to %c8 step %c1 {
              %48 = arith.muli %arg9, %c32 : index
              %49 = arith.muli %arg11, %c4 : index
              %50 = arith.addi %48, %49 : index
              %51 = memref.load %arg5[%47, %50] : memref<?x64xf32>
              %52 = memref.load %arg6[%47, %50] : memref<?x64xf32>
              %53 = arith.addf %51, %52 : f32
              memref.store %53, %arg4[%47, %50] : memref<?x64xf32>
              %54 = arith.addi %50, %c1 : index
              %55 = memref.load %arg5[%47, %54] : memref<?x64xf32>
              %56 = memref.load %arg6[%47, %54] : memref<?x64xf32>
              %57 = arith.addf %55, %56 : f32
              memref.store %57, %arg4[%47, %54] : memref<?x64xf32>
              %58 = arith.addi %50, %c2 : index
              %59 = memref.load %arg5[%47, %58] : memref<?x64xf32>
              %60 = memref.load %arg6[%47, %58] : memref<?x64xf32>
              %61 = arith.addf %59, %60 : f32
              memref.store %61, %arg4[%47, %58] : memref<?x64xf32>
              %62 = arith.addi %50, %c3 : index
              %63 = memref.load %arg5[%47, %62] : memref<?x64xf32>
              %64 = memref.load %arg6[%47, %62] : memref<?x64xf32>
              %65 = arith.addf %63, %64 : f32
              memref.store %65, %arg4[%47, %62] : memref<?x64xf32>
            }
          }
        }
        async.yield
      }
      %44 = async.add_to_group %token, %40 : !async.token
      %45 = arith.addi %arg8, %c1 : index
      scf.yield %45 : index
    }
    async.await_all %40
    scf.for %arg7 = %c0 to %c64 step %c1 {
      %44 = async.create_group %c1 : !async.group
      %45 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %48 = arith.addi %arg7, %arg8 : index
          memref.store %cst, %alloca_24[] : memref<f32>
          memref.store %cst, %alloca_4[] : memref<f32>
          memref.store %cst, %alloca_11[] : memref<f32>
          %49 = memref.load %alloca_9[%c0] : memref<1xf32>
          %50 = memref.load %alloca_18[%c0] : memref<1xf32>
          %51 = memref.load %alloca_15[%c0] : memref<1xf32>
          %52 = memref.load %alloca_6[%c0] : memref<1xf32>
          %53 = memref.load %alloca_9[%c0] : memref<1xf32>
          %54 = memref.load %alloca_18[%c0] : memref<1xf32>
          %55 = memref.load %alloca_15[%c0] : memref<1xf32>
          %56 = memref.load %alloca_6[%c0] : memref<1xf32>
          %57 = memref.load %alloca_9[%c0] : memref<1xf32>
          %58 = memref.load %alloca_18[%c0] : memref<1xf32>
          %59 = memref.load %alloca_15[%c0] : memref<1xf32>
          %60 = memref.load %alloca_6[%c0] : memref<1xf32>
          %61 = memref.load %alloca_9[%c0] : memref<1xf32>
          %62 = memref.load %alloca_18[%c0] : memref<1xf32>
          %63 = memref.load %alloca_15[%c0] : memref<1xf32>
          %64 = memref.load %alloca_6[%c0] : memref<1xf32>
          scf.for %arg10 = %c0 to %c16 step %c1 {
            %65 = arith.muli %arg10, %c4 : index
            %66 = memref.load %arg4[%65, %48] : memref<?x64xf32>
            %67 = arith.mulf %49, %66 : f32
            %68 = memref.load %alloca_11[] : memref<f32>
            %69 = arith.mulf %50, %68 : f32
            %70 = arith.addf %67, %69 : f32
            %71 = memref.load %alloca_4[] : memref<f32>
            memref.store %71, %alloca_19[%c0] : memref<1xf32>
            %72 = arith.mulf %51, %71 : f32
            %73 = arith.addf %70, %72 : f32
            %74 = memref.load %alloca_24[] : memref<f32>
            %75 = arith.mulf %52, %74 : f32
            %76 = arith.addf %73, %75 : f32
            memref.store %76, %arg5[%65, %48] : memref<?x64xf32>
            %77 = memref.load %arg5[%65, %48] : memref<?x64xf32>
            memref.store %77, %alloca_4[] : memref<f32>
            %78 = memref.load %alloca_19[%c0] : memref<1xf32>
            memref.store %78, %alloca_24[] : memref<f32>
            %79 = memref.load %arg4[%65, %48] : memref<?x64xf32>
            memref.store %79, %alloca_11[] : memref<f32>
            %80 = arith.addi %65, %c1 : index
            %81 = memref.load %arg4[%80, %48] : memref<?x64xf32>
            %82 = arith.mulf %53, %81 : f32
            %83 = memref.load %alloca_11[] : memref<f32>
            %84 = arith.mulf %54, %83 : f32
            %85 = arith.addf %82, %84 : f32
            %86 = memref.load %alloca_4[] : memref<f32>
            memref.store %86, %alloca_19[%c0] : memref<1xf32>
            %87 = arith.mulf %55, %86 : f32
            %88 = arith.addf %85, %87 : f32
            %89 = memref.load %alloca_24[] : memref<f32>
            %90 = arith.mulf %56, %89 : f32
            %91 = arith.addf %88, %90 : f32
            memref.store %91, %arg5[%80, %48] : memref<?x64xf32>
            %92 = memref.load %arg5[%80, %48] : memref<?x64xf32>
            memref.store %92, %alloca_4[] : memref<f32>
            %93 = memref.load %alloca_19[%c0] : memref<1xf32>
            memref.store %93, %alloca_24[] : memref<f32>
            %94 = memref.load %arg4[%80, %48] : memref<?x64xf32>
            memref.store %94, %alloca_11[] : memref<f32>
            %95 = arith.addi %65, %c2 : index
            %96 = memref.load %arg4[%95, %48] : memref<?x64xf32>
            %97 = arith.mulf %57, %96 : f32
            %98 = memref.load %alloca_11[] : memref<f32>
            %99 = arith.mulf %58, %98 : f32
            %100 = arith.addf %97, %99 : f32
            %101 = memref.load %alloca_4[] : memref<f32>
            memref.store %101, %alloca_19[%c0] : memref<1xf32>
            %102 = arith.mulf %59, %101 : f32
            %103 = arith.addf %100, %102 : f32
            %104 = memref.load %alloca_24[] : memref<f32>
            %105 = arith.mulf %60, %104 : f32
            %106 = arith.addf %103, %105 : f32
            memref.store %106, %arg5[%95, %48] : memref<?x64xf32>
            %107 = memref.load %arg5[%95, %48] : memref<?x64xf32>
            memref.store %107, %alloca_4[] : memref<f32>
            %108 = memref.load %alloca_19[%c0] : memref<1xf32>
            memref.store %108, %alloca_24[] : memref<f32>
            %109 = memref.load %arg4[%95, %48] : memref<?x64xf32>
            memref.store %109, %alloca_11[] : memref<f32>
            %110 = arith.addi %65, %c3 : index
            %111 = memref.load %arg4[%110, %48] : memref<?x64xf32>
            %112 = arith.mulf %61, %111 : f32
            %113 = memref.load %alloca_11[] : memref<f32>
            %114 = arith.mulf %62, %113 : f32
            %115 = arith.addf %112, %114 : f32
            %116 = memref.load %alloca_4[] : memref<f32>
            memref.store %116, %alloca_19[%c0] : memref<1xf32>
            %117 = arith.mulf %63, %116 : f32
            %118 = arith.addf %115, %117 : f32
            %119 = memref.load %alloca_24[] : memref<f32>
            %120 = arith.mulf %64, %119 : f32
            %121 = arith.addf %118, %120 : f32
            memref.store %121, %arg5[%110, %48] : memref<?x64xf32>
            %122 = memref.load %arg5[%110, %48] : memref<?x64xf32>
            memref.store %122, %alloca_4[] : memref<f32>
            %123 = memref.load %alloca_19[%c0] : memref<1xf32>
            memref.store %123, %alloca_24[] : memref<f32>
            %124 = memref.load %arg4[%110, %48] : memref<?x64xf32>
            memref.store %124, %alloca_11[] : memref<f32>
          }
          async.yield
        }
        %46 = async.add_to_group %token, %44 : !async.token
        %47 = arith.addi %arg9, %c1 : index
        scf.yield %47 : index
      }
      async.await_all %44
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      %44 = async.create_group %c1 : !async.group
      %45 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %48 = arith.addi %arg7, %arg8 : index
          memref.store %cst, %alloca_25[] : memref<f32>
          memref.store %cst, %alloca_22[] : memref<f32>
          memref.store %cst, %alloca_23[] : memref<f32>
          memref.store %cst, %alloca_10[] : memref<f32>
          %49 = memref.load %alloca_12[%c0] : memref<1xf32>
          %50 = memref.load %alloca_14[%c0] : memref<1xf32>
          %51 = memref.load %alloca_15[%c0] : memref<1xf32>
          %52 = memref.load %alloca_6[%c0] : memref<1xf32>
          %53 = memref.load %alloca_12[%c0] : memref<1xf32>
          %54 = memref.load %alloca_14[%c0] : memref<1xf32>
          %55 = memref.load %alloca_15[%c0] : memref<1xf32>
          %56 = memref.load %alloca_6[%c0] : memref<1xf32>
          %57 = memref.load %alloca_12[%c0] : memref<1xf32>
          %58 = memref.load %alloca_14[%c0] : memref<1xf32>
          %59 = memref.load %alloca_15[%c0] : memref<1xf32>
          %60 = memref.load %alloca_6[%c0] : memref<1xf32>
          %61 = memref.load %alloca_12[%c0] : memref<1xf32>
          %62 = memref.load %alloca_14[%c0] : memref<1xf32>
          %63 = memref.load %alloca_15[%c0] : memref<1xf32>
          %64 = memref.load %alloca_6[%c0] : memref<1xf32>
          scf.for %arg10 = %c0 to %c16 step %c1 {
            %65 = arith.muli %arg10, %c4 : index
            %66 = memref.load %alloca_10[] : memref<f32>
            memref.store %66, %alloca_17[%c0] : memref<1xf32>
            %67 = arith.mulf %49, %66 : f32
            %68 = memref.load %alloca_23[] : memref<f32>
            %69 = arith.mulf %50, %68 : f32
            %70 = arith.addf %67, %69 : f32
            %71 = memref.load %alloca_22[] : memref<f32>
            memref.store %71, %alloca_20[%c0] : memref<1xf32>
            %72 = arith.mulf %51, %71 : f32
            %73 = arith.addf %70, %72 : f32
            %74 = memref.load %alloca_25[] : memref<f32>
            %75 = arith.mulf %52, %74 : f32
            %76 = arith.addf %73, %75 : f32
            %77 = arith.muli %65, %c-1 : index
            %78 = arith.addi %77, %c63 : index
            memref.store %76, %arg6[%78, %48] : memref<?x64xf32>
            %79 = arith.muli %65, %c-1 : index
            %80 = arith.addi %79, %c63 : index
            %81 = memref.load %arg6[%80, %48] : memref<?x64xf32>
            memref.store %81, %alloca_22[] : memref<f32>
            %82 = memref.load %alloca_20[%c0] : memref<1xf32>
            memref.store %82, %alloca_25[] : memref<f32>
            %83 = arith.muli %65, %c-1 : index
            %84 = arith.addi %83, %c63 : index
            %85 = memref.load %arg4[%84, %48] : memref<?x64xf32>
            memref.store %85, %alloca_10[] : memref<f32>
            %86 = memref.load %alloca_17[%c0] : memref<1xf32>
            memref.store %86, %alloca_23[] : memref<f32>
            %87 = arith.addi %65, %c1 : index
            %88 = memref.load %alloca_10[] : memref<f32>
            memref.store %88, %alloca_17[%c0] : memref<1xf32>
            %89 = arith.mulf %53, %88 : f32
            %90 = memref.load %alloca_23[] : memref<f32>
            %91 = arith.mulf %54, %90 : f32
            %92 = arith.addf %89, %91 : f32
            %93 = memref.load %alloca_22[] : memref<f32>
            memref.store %93, %alloca_20[%c0] : memref<1xf32>
            %94 = arith.mulf %55, %93 : f32
            %95 = arith.addf %92, %94 : f32
            %96 = memref.load %alloca_25[] : memref<f32>
            %97 = arith.mulf %56, %96 : f32
            %98 = arith.addf %95, %97 : f32
            %99 = arith.muli %87, %c-1 : index
            %100 = arith.addi %99, %c63 : index
            memref.store %98, %arg6[%100, %48] : memref<?x64xf32>
            %101 = arith.muli %87, %c-1 : index
            %102 = arith.addi %101, %c63 : index
            %103 = memref.load %arg6[%102, %48] : memref<?x64xf32>
            memref.store %103, %alloca_22[] : memref<f32>
            %104 = memref.load %alloca_20[%c0] : memref<1xf32>
            memref.store %104, %alloca_25[] : memref<f32>
            %105 = arith.muli %87, %c-1 : index
            %106 = arith.addi %105, %c63 : index
            %107 = memref.load %arg4[%106, %48] : memref<?x64xf32>
            memref.store %107, %alloca_10[] : memref<f32>
            %108 = memref.load %alloca_17[%c0] : memref<1xf32>
            memref.store %108, %alloca_23[] : memref<f32>
            %109 = arith.addi %65, %c2 : index
            %110 = memref.load %alloca_10[] : memref<f32>
            memref.store %110, %alloca_17[%c0] : memref<1xf32>
            %111 = arith.mulf %57, %110 : f32
            %112 = memref.load %alloca_23[] : memref<f32>
            %113 = arith.mulf %58, %112 : f32
            %114 = arith.addf %111, %113 : f32
            %115 = memref.load %alloca_22[] : memref<f32>
            memref.store %115, %alloca_20[%c0] : memref<1xf32>
            %116 = arith.mulf %59, %115 : f32
            %117 = arith.addf %114, %116 : f32
            %118 = memref.load %alloca_25[] : memref<f32>
            %119 = arith.mulf %60, %118 : f32
            %120 = arith.addf %117, %119 : f32
            %121 = arith.muli %109, %c-1 : index
            %122 = arith.addi %121, %c63 : index
            memref.store %120, %arg6[%122, %48] : memref<?x64xf32>
            %123 = arith.muli %109, %c-1 : index
            %124 = arith.addi %123, %c63 : index
            %125 = memref.load %arg6[%124, %48] : memref<?x64xf32>
            memref.store %125, %alloca_22[] : memref<f32>
            %126 = memref.load %alloca_20[%c0] : memref<1xf32>
            memref.store %126, %alloca_25[] : memref<f32>
            %127 = arith.muli %109, %c-1 : index
            %128 = arith.addi %127, %c63 : index
            %129 = memref.load %arg4[%128, %48] : memref<?x64xf32>
            memref.store %129, %alloca_10[] : memref<f32>
            %130 = memref.load %alloca_17[%c0] : memref<1xf32>
            memref.store %130, %alloca_23[] : memref<f32>
            %131 = arith.addi %65, %c3 : index
            %132 = memref.load %alloca_10[] : memref<f32>
            memref.store %132, %alloca_17[%c0] : memref<1xf32>
            %133 = arith.mulf %61, %132 : f32
            %134 = memref.load %alloca_23[] : memref<f32>
            %135 = arith.mulf %62, %134 : f32
            %136 = arith.addf %133, %135 : f32
            %137 = memref.load %alloca_22[] : memref<f32>
            memref.store %137, %alloca_20[%c0] : memref<1xf32>
            %138 = arith.mulf %63, %137 : f32
            %139 = arith.addf %136, %138 : f32
            %140 = memref.load %alloca_25[] : memref<f32>
            %141 = arith.mulf %64, %140 : f32
            %142 = arith.addf %139, %141 : f32
            %143 = arith.muli %131, %c-1 : index
            %144 = arith.addi %143, %c63 : index
            memref.store %142, %arg6[%144, %48] : memref<?x64xf32>
            %145 = arith.muli %131, %c-1 : index
            %146 = arith.addi %145, %c63 : index
            %147 = memref.load %arg6[%146, %48] : memref<?x64xf32>
            memref.store %147, %alloca_22[] : memref<f32>
            %148 = memref.load %alloca_20[%c0] : memref<1xf32>
            memref.store %148, %alloca_25[] : memref<f32>
            %149 = arith.muli %131, %c-1 : index
            %150 = arith.addi %149, %c63 : index
            %151 = memref.load %arg4[%150, %48] : memref<?x64xf32>
            memref.store %151, %alloca_10[] : memref<f32>
            %152 = memref.load %alloca_17[%c0] : memref<1xf32>
            memref.store %152, %alloca_23[] : memref<f32>
          }
          async.yield
        }
        %46 = async.add_to_group %token, %44 : !async.token
        %47 = arith.addi %arg9, %c1 : index
        scf.yield %47 : index
      }
      async.await_all %44
    }
    %42 = async.create_group %c2 : !async.group
    %43 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c2 step %c1 {
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %46 = arith.muli %arg7, %c32 : index
            %47 = arith.addi %46, %arg10 : index
            scf.for %arg11 = %c0 to %c8 step %c1 {
              %48 = arith.muli %arg9, %c32 : index
              %49 = arith.muli %arg11, %c4 : index
              %50 = arith.addi %48, %49 : index
              %51 = memref.load %arg5[%47, %50] : memref<?x64xf32>
              %52 = memref.load %arg6[%47, %50] : memref<?x64xf32>
              %53 = arith.addf %51, %52 : f32
              memref.store %53, %arg4[%47, %50] : memref<?x64xf32>
              %54 = arith.addi %50, %c1 : index
              %55 = memref.load %arg5[%47, %54] : memref<?x64xf32>
              %56 = memref.load %arg6[%47, %54] : memref<?x64xf32>
              %57 = arith.addf %55, %56 : f32
              memref.store %57, %arg4[%47, %54] : memref<?x64xf32>
              %58 = arith.addi %50, %c2 : index
              %59 = memref.load %arg5[%47, %58] : memref<?x64xf32>
              %60 = memref.load %arg6[%47, %58] : memref<?x64xf32>
              %61 = arith.addf %59, %60 : f32
              memref.store %61, %arg4[%47, %58] : memref<?x64xf32>
              %62 = arith.addi %50, %c3 : index
              %63 = memref.load %arg5[%47, %62] : memref<?x64xf32>
              %64 = memref.load %arg6[%47, %62] : memref<?x64xf32>
              %65 = arith.addf %63, %64 : f32
              memref.store %65, %arg4[%47, %62] : memref<?x64xf32>
            }
          }
        }
        async.yield
      }
      %44 = async.add_to_group %token, %42 : !async.token
      %45 = arith.addi %arg8, %c1 : index
      scf.yield %45 : index
    }
    async.await_all %42
    return
  }
}

