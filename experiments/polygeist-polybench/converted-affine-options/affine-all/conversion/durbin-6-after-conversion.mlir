module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c-37 = arith.constant -37 : index
    %c38 = arith.constant 38 : index
    %c-2 = arith.constant -2 : index
    %c-4 = arith.constant -4 : index
    %c37 = arith.constant 37 : index
    %c-38 = arith.constant -38 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c39 = arith.constant 39 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_2 = memref.alloca() : memref<40xf64>
    %alloca_3 = memref.alloca() : memref<f64>
    %alloca_4 = memref.alloca() : memref<f64>
    %alloca_5 = memref.alloca() : memref<1xf64>
    %0 = memref.load %arg1[%c0] : memref<?xf64>
    %1 = arith.negf %0 : f64
    memref.store %1, %arg2[%c0] : memref<?xf64>
    %2 = llvm.mlir.undef : f64
    memref.store %2, %alloca_4[] : memref<f64>
    %3 = memref.load %arg1[%c0] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_4[] : memref<f64>
    %5 = llvm.mlir.undef : f64
    memref.store %5, %alloca_3[] : memref<f64>
    memref.store %cst_0, %alloca_3[] : memref<f64>
    %6 = llvm.mlir.undef : f64
    memref.store %6, %alloca[] : memref<f64>
    scf.for %arg3 = %c0 to %c39 step %c1 {
      %7 = arith.addi %arg3, %c1 : index
      %8 = async.create_group %c1 : !async.group
      %9 = scf.for %arg4 = %c0 to %c1 step %c1 iter_args(%arg5 = %c0) -> (index) {
        %token = async.execute {
          %12 = arith.addi %7, %arg4 : index
          memref.store %cst, %alloca[] : memref<f64>
          %13 = memref.load %alloca[] : memref<f64>
          %14 = arith.addi %12, %c-1 : index
          %15 = memref.load %arg1[%14] : memref<?xf64>
          %16 = memref.load %arg2[%c0] : memref<?xf64>
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
          %25 = arith.addi %arg4, %arg3 : index
          %26 = arith.cmpi slt, %25, %c0 : index
          %27 = arith.subi %c-1, %25 : index
          %28 = arith.select %26, %27, %25 : index
          %29 = arith.divsi %28, %c4 : index
          %30 = arith.subi %c-1, %29 : index
          %31 = arith.select %26, %30, %29 : index
          scf.for %arg6 = %c0 to %31 step %c1 {
            %82 = arith.muli %arg6, %c4 : index
            %83 = arith.addi %82, %c1 : index
            %84 = memref.load %alloca[] : memref<f64>
            %85 = arith.muli %83, %c-1 : index
            %86 = arith.addi %12, %85 : index
            %87 = arith.addi %86, %c-1 : index
            %88 = memref.load %arg1[%87] : memref<?xf64>
            %89 = memref.load %arg2[%83] : memref<?xf64>
            %90 = arith.mulf %88, %89 : f64
            %91 = arith.addf %84, %90 : f64
            memref.store %91, %alloca[] : memref<f64>
            %92 = arith.addi %83, %c1 : index
            %93 = memref.load %alloca[] : memref<f64>
            %94 = arith.muli %92, %c-1 : index
            %95 = arith.addi %12, %94 : index
            %96 = arith.addi %95, %c-1 : index
            %97 = memref.load %arg1[%96] : memref<?xf64>
            %98 = memref.load %arg2[%92] : memref<?xf64>
            %99 = arith.mulf %97, %98 : f64
            %100 = arith.addf %93, %99 : f64
            memref.store %100, %alloca[] : memref<f64>
            %101 = arith.addi %83, %c2 : index
            %102 = memref.load %alloca[] : memref<f64>
            %103 = arith.muli %101, %c-1 : index
            %104 = arith.addi %12, %103 : index
            %105 = arith.addi %104, %c-1 : index
            %106 = memref.load %arg1[%105] : memref<?xf64>
            %107 = memref.load %arg2[%101] : memref<?xf64>
            %108 = arith.mulf %106, %107 : f64
            %109 = arith.addf %102, %108 : f64
            memref.store %109, %alloca[] : memref<f64>
            %110 = arith.addi %83, %c3 : index
            %111 = memref.load %alloca[] : memref<f64>
            %112 = arith.muli %110, %c-1 : index
            %113 = arith.addi %12, %112 : index
            %114 = arith.addi %113, %c-1 : index
            %115 = memref.load %arg1[%114] : memref<?xf64>
            %116 = memref.load %arg2[%110] : memref<?xf64>
            %117 = arith.mulf %115, %116 : f64
            %118 = arith.addf %111, %117 : f64
            memref.store %118, %alloca[] : memref<f64>
          }
          %32 = arith.addi %arg4, %arg3 : index
          %33 = arith.remsi %32, %c4 : index
          %34 = arith.cmpi slt, %33, %c0 : index
          %35 = arith.addi %33, %c4 : index
          %36 = arith.select %34, %35, %33 : index
          scf.for %arg6 = %c0 to %36 step %c1 {
            %82 = arith.addi %12, %c-1 : index
            %83 = arith.cmpi slt, %82, %c0 : index
            %84 = arith.subi %c-1, %82 : index
            %85 = arith.select %83, %84, %82 : index
            %86 = arith.divsi %85, %c4 : index
            %87 = arith.subi %c-1, %86 : index
            %88 = arith.select %83, %87, %86 : index
            %89 = arith.muli %88, %c4 : index
            %90 = arith.addi %arg6, %89 : index
            %91 = arith.addi %90, %c1 : index
            %92 = memref.load %alloca[] : memref<f64>
            %93 = arith.muli %91, %c-1 : index
            %94 = arith.addi %12, %93 : index
            %95 = arith.addi %94, %c-1 : index
            %96 = memref.load %arg1[%95] : memref<?xf64>
            %97 = memref.load %arg2[%91] : memref<?xf64>
            %98 = arith.mulf %96, %97 : f64
            %99 = arith.addf %92, %98 : f64
            memref.store %99, %alloca[] : memref<f64>
          }
          %37 = arith.addi %arg4, %arg3 : index
          %38 = arith.cmpi eq, %37, %c0 : index
          scf.if %38 {
            %82 = memref.load %arg1[%c1] : memref<?xf64>
            %83 = memref.load %alloca[] : memref<f64>
            %84 = arith.addf %82, %83 : f64
            %85 = arith.negf %84 : f64
            %86 = memref.load %alloca_3[] : memref<f64>
            %87 = arith.divf %85, %86 : f64
            memref.store %87, %alloca_1[%c0] : memref<1xf64>
            %88 = memref.load %arg2[%c0] : memref<?xf64>
            %89 = memref.load %alloca_1[%c0] : memref<1xf64>
            %90 = memref.load %arg2[%c0] : memref<?xf64>
            %91 = arith.mulf %89, %90 : f64
            %92 = arith.addf %88, %91 : f64
            memref.store %92, %alloca_2[%c0] : memref<40xf64>
            %93 = memref.load %alloca_2[%c0] : memref<40xf64>
            memref.store %93, %arg2[%c0] : memref<?xf64>
            %94 = memref.load %alloca_1[%c0] : memref<1xf64>
            memref.store %94, %alloca_5[%c0] : memref<1xf64>
            memref.store %94, %alloca_4[] : memref<f64>
            %95 = memref.load %alloca_5[%c0] : memref<1xf64>
            memref.store %95, %arg2[%c1] : memref<?xf64>
          }
          %39 = arith.addi %arg4, %arg3 : index
          %40 = arith.addi %39, %c-1 : index
          %41 = arith.cmpi sge, %40, %c0 : index
          scf.if %41 {
            %82 = memref.load %arg1[%12] : memref<?xf64>
            %83 = memref.load %alloca[] : memref<f64>
            %84 = arith.addf %82, %83 : f64
            %85 = arith.negf %84 : f64
            %86 = memref.load %alloca_3[] : memref<f64>
            %87 = arith.divf %85, %86 : f64
            memref.store %87, %alloca_1[%c0] : memref<1xf64>
            %88 = memref.load %arg2[%c0] : memref<?xf64>
            %89 = memref.load %alloca_1[%c0] : memref<1xf64>
            %90 = arith.addi %12, %c-1 : index
            %91 = memref.load %arg2[%90] : memref<?xf64>
            %92 = arith.mulf %89, %91 : f64
            %93 = arith.addf %88, %92 : f64
            memref.store %93, %alloca_2[%c0] : memref<40xf64>
            %94 = memref.load %alloca_1[%c0] : memref<1xf64>
            memref.store %94, %alloca_5[%c0] : memref<1xf64>
            memref.store %94, %alloca_4[] : memref<f64>
            %95 = memref.load %alloca_5[%c0] : memref<1xf64>
            memref.store %95, %arg2[%12] : memref<?xf64>
          }
          %42 = memref.load %alloca_1[%c0] : memref<1xf64>
          %43 = memref.load %alloca_1[%c0] : memref<1xf64>
          %44 = memref.load %alloca_1[%c0] : memref<1xf64>
          %45 = memref.load %alloca_1[%c0] : memref<1xf64>
          %46 = arith.addi %arg4, %arg3 : index
          %47 = arith.addi %46, %c-1 : index
          %48 = arith.cmpi slt, %47, %c0 : index
          %49 = arith.subi %c-1, %47 : index
          %50 = arith.select %48, %49, %47 : index
          %51 = arith.divsi %50, %c4 : index
          %52 = arith.subi %c-1, %51 : index
          %53 = arith.select %48, %52, %51 : index
          scf.for %arg6 = %c0 to %53 step %c1 {
            %82 = arith.muli %arg6, %c4 : index
            %83 = arith.addi %82, %c39 : index
            %84 = arith.addi %83, %c-38 : index
            %85 = memref.load %arg2[%84] : memref<?xf64>
            %86 = arith.muli %83, %c-1 : index
            %87 = arith.addi %86, %12 : index
            %88 = arith.addi %87, %c37 : index
            %89 = memref.load %arg2[%88] : memref<?xf64>
            %90 = arith.mulf %42, %89 : f64
            %91 = arith.addf %85, %90 : f64
            %92 = arith.addi %83, %c-38 : index
            memref.store %91, %alloca_2[%92] : memref<40xf64>
            %93 = arith.addi %83, %c1 : index
            %94 = arith.addi %93, %c-38 : index
            %95 = memref.load %arg2[%94] : memref<?xf64>
            %96 = arith.muli %93, %c-1 : index
            %97 = arith.addi %96, %12 : index
            %98 = arith.addi %97, %c37 : index
            %99 = memref.load %arg2[%98] : memref<?xf64>
            %100 = arith.mulf %43, %99 : f64
            %101 = arith.addf %95, %100 : f64
            %102 = arith.addi %93, %c-38 : index
            memref.store %101, %alloca_2[%102] : memref<40xf64>
            %103 = arith.addi %83, %c2 : index
            %104 = arith.addi %103, %c-38 : index
            %105 = memref.load %arg2[%104] : memref<?xf64>
            %106 = arith.muli %103, %c-1 : index
            %107 = arith.addi %106, %12 : index
            %108 = arith.addi %107, %c37 : index
            %109 = memref.load %arg2[%108] : memref<?xf64>
            %110 = arith.mulf %44, %109 : f64
            %111 = arith.addf %105, %110 : f64
            %112 = arith.addi %103, %c-38 : index
            memref.store %111, %alloca_2[%112] : memref<40xf64>
            %113 = arith.addi %83, %c3 : index
            %114 = arith.addi %113, %c-38 : index
            %115 = memref.load %arg2[%114] : memref<?xf64>
            %116 = arith.muli %113, %c-1 : index
            %117 = arith.addi %116, %12 : index
            %118 = arith.addi %117, %c37 : index
            %119 = memref.load %arg2[%118] : memref<?xf64>
            %120 = arith.mulf %45, %119 : f64
            %121 = arith.addf %115, %120 : f64
            %122 = arith.addi %113, %c-38 : index
            memref.store %121, %alloca_2[%122] : memref<40xf64>
          }
          %54 = memref.load %alloca_1[%c0] : memref<1xf64>
          %55 = arith.addi %arg4, %arg3 : index
          %56 = arith.addi %arg4, %arg3 : index
          %57 = arith.addi %56, %c-1 : index
          %58 = arith.cmpi slt, %57, %c0 : index
          %59 = arith.subi %c-1, %57 : index
          %60 = arith.select %58, %59, %57 : index
          %61 = arith.divsi %60, %c4 : index
          %62 = arith.subi %c-1, %61 : index
          %63 = arith.select %58, %62, %61 : index
          %64 = arith.muli %63, %c-4 : index
          %65 = arith.addi %55, %64 : index
          %66 = arith.addi %65, %c-1 : index
          scf.for %arg6 = %c0 to %66 step %c1 {
            %82 = arith.addi %12, %c-2 : index
            %83 = arith.cmpi slt, %82, %c0 : index
            %84 = arith.subi %c-1, %82 : index
            %85 = arith.select %83, %84, %82 : index
            %86 = arith.divsi %85, %c4 : index
            %87 = arith.subi %c-1, %86 : index
            %88 = arith.select %83, %87, %86 : index
            %89 = arith.muli %88, %c4 : index
            %90 = arith.addi %arg6, %89 : index
            %91 = arith.addi %90, %c39 : index
            %92 = arith.addi %91, %c-38 : index
            %93 = memref.load %arg2[%92] : memref<?xf64>
            %94 = arith.muli %91, %c-1 : index
            %95 = arith.addi %94, %12 : index
            %96 = arith.addi %95, %c37 : index
            %97 = memref.load %arg2[%96] : memref<?xf64>
            %98 = arith.mulf %54, %97 : f64
            %99 = arith.addf %93, %98 : f64
            %100 = arith.addi %91, %c-38 : index
            memref.store %99, %alloca_2[%100] : memref<40xf64>
          }
          %67 = arith.addi %arg4, %arg3 : index
          %68 = arith.addi %67, %c-1 : index
          %69 = arith.cmpi sge, %68, %c0 : index
          scf.if %69 {
            %82 = arith.addi %12, %c-1 : index
            %83 = memref.load %arg2[%82] : memref<?xf64>
            %84 = memref.load %alloca_1[%c0] : memref<1xf64>
            %85 = memref.load %arg2[%c0] : memref<?xf64>
            %86 = arith.mulf %84, %85 : f64
            %87 = arith.addf %83, %86 : f64
            %88 = arith.addi %12, %c-1 : index
            memref.store %87, %alloca_2[%88] : memref<40xf64>
            %89 = memref.load %alloca_2[%c0] : memref<40xf64>
            memref.store %89, %arg2[%c0] : memref<?xf64>
          }
          %70 = arith.addi %arg4, %arg3 : index
          %71 = arith.cmpi slt, %70, %c0 : index
          %72 = arith.subi %c-1, %70 : index
          %73 = arith.select %71, %72, %70 : index
          %74 = arith.divsi %73, %c4 : index
          %75 = arith.subi %c-1, %74 : index
          %76 = arith.select %71, %75, %74 : index
          scf.for %arg6 = %c0 to %76 step %c1 {
            %82 = arith.muli %arg6, %c4 : index
            %83 = arith.addi %12, %82 : index
            %84 = arith.addi %83, %c38 : index
            %85 = arith.muli %12, %c-1 : index
            %86 = arith.addi %85, %84 : index
            %87 = arith.addi %86, %c-37 : index
            %88 = memref.load %alloca_2[%87] : memref<40xf64>
            %89 = arith.muli %12, %c-1 : index
            %90 = arith.addi %89, %84 : index
            %91 = arith.addi %90, %c-37 : index
            memref.store %88, %arg2[%91] : memref<?xf64>
            %92 = arith.addi %84, %c1 : index
            %93 = arith.muli %12, %c-1 : index
            %94 = arith.addi %93, %92 : index
            %95 = arith.addi %94, %c-37 : index
            %96 = memref.load %alloca_2[%95] : memref<40xf64>
            %97 = arith.muli %12, %c-1 : index
            %98 = arith.addi %97, %92 : index
            %99 = arith.addi %98, %c-37 : index
            memref.store %96, %arg2[%99] : memref<?xf64>
            %100 = arith.addi %84, %c2 : index
            %101 = arith.muli %12, %c-1 : index
            %102 = arith.addi %101, %100 : index
            %103 = arith.addi %102, %c-37 : index
            %104 = memref.load %alloca_2[%103] : memref<40xf64>
            %105 = arith.muli %12, %c-1 : index
            %106 = arith.addi %105, %100 : index
            %107 = arith.addi %106, %c-37 : index
            memref.store %104, %arg2[%107] : memref<?xf64>
            %108 = arith.addi %84, %c3 : index
            %109 = arith.muli %12, %c-1 : index
            %110 = arith.addi %109, %108 : index
            %111 = arith.addi %110, %c-37 : index
            %112 = memref.load %alloca_2[%111] : memref<40xf64>
            %113 = arith.muli %12, %c-1 : index
            %114 = arith.addi %113, %108 : index
            %115 = arith.addi %114, %c-37 : index
            memref.store %112, %arg2[%115] : memref<?xf64>
          }
          %77 = arith.addi %arg4, %arg3 : index
          %78 = arith.remsi %77, %c4 : index
          %79 = arith.cmpi slt, %78, %c0 : index
          %80 = arith.addi %78, %c4 : index
          %81 = arith.select %79, %80, %78 : index
          scf.for %arg6 = %c0 to %81 step %c1 {
            %82 = arith.addi %12, %arg6 : index
            %83 = arith.addi %12, %c-1 : index
            %84 = arith.cmpi slt, %83, %c0 : index
            %85 = arith.subi %c-1, %83 : index
            %86 = arith.select %84, %85, %83 : index
            %87 = arith.divsi %86, %c4 : index
            %88 = arith.subi %c-1, %87 : index
            %89 = arith.select %84, %88, %87 : index
            %90 = arith.muli %89, %c4 : index
            %91 = arith.addi %82, %90 : index
            %92 = arith.addi %91, %c38 : index
            %93 = arith.muli %12, %c-1 : index
            %94 = arith.addi %93, %92 : index
            %95 = arith.addi %94, %c-37 : index
            %96 = memref.load %alloca_2[%95] : memref<40xf64>
            %97 = arith.muli %12, %c-1 : index
            %98 = arith.addi %97, %92 : index
            %99 = arith.addi %98, %c-37 : index
            memref.store %96, %arg2[%99] : memref<?xf64>
          }
          async.yield
        }
        %10 = async.add_to_group %token, %8 : !async.token
        %11 = arith.addi %arg5, %c1 : index
        scf.yield %11 : index
      }
      async.await_all %8
    }
    return
  }
}

