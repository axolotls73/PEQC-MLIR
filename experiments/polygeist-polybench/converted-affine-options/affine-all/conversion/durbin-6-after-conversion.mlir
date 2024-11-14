module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c-37 = arith.constant -37 : index
    %c38 = arith.constant 38 : index
    %c-2 = arith.constant -2 : index
    %c-4 = arith.constant -4 : index
    %c37 = arith.constant 37 : index
    %c-38 = arith.constant -38 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c-1 = arith.constant -1 : index
    %c39 = arith.constant 39 : index
    %c-32 = arith.constant -32 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
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
    scf.for %arg3 = %c0 to %c2 step %c1 {
      %7 = arith.muli %arg3, %c32 : index
      %8 = arith.addi %7, %c1 : index
      %9 = arith.muli %arg3, %c-32 : index
      %10 = arith.addi %9, %c39 : index
      %11 = arith.minsi %10, %c32 : index
      scf.for %arg4 = %c0 to %11 step %c1 {
        %12 = arith.addi %8, %arg4 : index
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
        %25 = arith.muli %arg3, %c8 : index
        %26 = arith.cmpi slt, %arg4, %c0 : index
        %27 = arith.subi %c-1, %arg4 : index
        %28 = arith.select %26, %27, %arg4 : index
        %29 = arith.divsi %28, %c4 : index
        %30 = arith.subi %c-1, %29 : index
        %31 = arith.select %26, %30, %29 : index
        %32 = arith.addi %25, %31 : index
        scf.for %arg5 = %c0 to %32 step %c1 {
          %89 = arith.muli %arg5, %c4 : index
          %90 = arith.addi %89, %c1 : index
          %91 = memref.load %alloca[] : memref<f64>
          %92 = arith.muli %90, %c-1 : index
          %93 = arith.addi %12, %92 : index
          %94 = arith.addi %93, %c-1 : index
          %95 = memref.load %arg1[%94] : memref<?xf64>
          %96 = memref.load %arg2[%90] : memref<?xf64>
          %97 = arith.mulf %95, %96 : f64
          %98 = arith.addf %91, %97 : f64
          memref.store %98, %alloca[] : memref<f64>
          %99 = arith.addi %90, %c1 : index
          %100 = memref.load %alloca[] : memref<f64>
          %101 = arith.muli %99, %c-1 : index
          %102 = arith.addi %12, %101 : index
          %103 = arith.addi %102, %c-1 : index
          %104 = memref.load %arg1[%103] : memref<?xf64>
          %105 = memref.load %arg2[%99] : memref<?xf64>
          %106 = arith.mulf %104, %105 : f64
          %107 = arith.addf %100, %106 : f64
          memref.store %107, %alloca[] : memref<f64>
          %108 = arith.addi %90, %c2 : index
          %109 = memref.load %alloca[] : memref<f64>
          %110 = arith.muli %108, %c-1 : index
          %111 = arith.addi %12, %110 : index
          %112 = arith.addi %111, %c-1 : index
          %113 = memref.load %arg1[%112] : memref<?xf64>
          %114 = memref.load %arg2[%108] : memref<?xf64>
          %115 = arith.mulf %113, %114 : f64
          %116 = arith.addf %109, %115 : f64
          memref.store %116, %alloca[] : memref<f64>
          %117 = arith.addi %90, %c3 : index
          %118 = memref.load %alloca[] : memref<f64>
          %119 = arith.muli %117, %c-1 : index
          %120 = arith.addi %12, %119 : index
          %121 = arith.addi %120, %c-1 : index
          %122 = memref.load %arg1[%121] : memref<?xf64>
          %123 = memref.load %arg2[%117] : memref<?xf64>
          %124 = arith.mulf %122, %123 : f64
          %125 = arith.addf %118, %124 : f64
          memref.store %125, %alloca[] : memref<f64>
        }
        %33 = arith.remsi %arg4, %c4 : index
        %34 = arith.cmpi slt, %33, %c0 : index
        %35 = arith.addi %33, %c4 : index
        %36 = arith.select %34, %35, %33 : index
        scf.for %arg5 = %c0 to %36 step %c1 {
          %89 = arith.addi %12, %c-1 : index
          %90 = arith.cmpi slt, %89, %c0 : index
          %91 = arith.subi %c-1, %89 : index
          %92 = arith.select %90, %91, %89 : index
          %93 = arith.divsi %92, %c4 : index
          %94 = arith.subi %c-1, %93 : index
          %95 = arith.select %90, %94, %93 : index
          %96 = arith.muli %95, %c4 : index
          %97 = arith.addi %arg5, %96 : index
          %98 = arith.addi %97, %c1 : index
          %99 = memref.load %alloca[] : memref<f64>
          %100 = arith.muli %98, %c-1 : index
          %101 = arith.addi %12, %100 : index
          %102 = arith.addi %101, %c-1 : index
          %103 = memref.load %arg1[%102] : memref<?xf64>
          %104 = memref.load %arg2[%98] : memref<?xf64>
          %105 = arith.mulf %103, %104 : f64
          %106 = arith.addf %99, %105 : f64
          memref.store %106, %alloca[] : memref<f64>
        }
        %37 = arith.muli %arg3, %c32 : index
        %38 = arith.addi %arg4, %37 : index
        %39 = arith.cmpi eq, %38, %c0 : index
        scf.if %39 {
          %89 = memref.load %arg1[%c1] : memref<?xf64>
          %90 = memref.load %alloca[] : memref<f64>
          %91 = arith.addf %89, %90 : f64
          %92 = arith.negf %91 : f64
          %93 = memref.load %alloca_3[] : memref<f64>
          %94 = arith.divf %92, %93 : f64
          memref.store %94, %alloca_1[%c0] : memref<1xf64>
          %95 = memref.load %arg2[%c0] : memref<?xf64>
          %96 = memref.load %alloca_1[%c0] : memref<1xf64>
          %97 = memref.load %arg2[%c0] : memref<?xf64>
          %98 = arith.mulf %96, %97 : f64
          %99 = arith.addf %95, %98 : f64
          memref.store %99, %alloca_2[%c0] : memref<40xf64>
          %100 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %100, %arg2[%c0] : memref<?xf64>
          %101 = memref.load %alloca_1[%c0] : memref<1xf64>
          memref.store %101, %alloca_5[%c0] : memref<1xf64>
          memref.store %101, %alloca_4[] : memref<f64>
          %102 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %102, %arg2[%c1] : memref<?xf64>
        }
        %40 = arith.muli %arg3, %c32 : index
        %41 = arith.addi %arg4, %40 : index
        %42 = arith.addi %41, %c-1 : index
        %43 = arith.cmpi sge, %42, %c0 : index
        scf.if %43 {
          %89 = memref.load %arg1[%12] : memref<?xf64>
          %90 = memref.load %alloca[] : memref<f64>
          %91 = arith.addf %89, %90 : f64
          %92 = arith.negf %91 : f64
          %93 = memref.load %alloca_3[] : memref<f64>
          %94 = arith.divf %92, %93 : f64
          memref.store %94, %alloca_1[%c0] : memref<1xf64>
          %95 = memref.load %arg2[%c0] : memref<?xf64>
          %96 = memref.load %alloca_1[%c0] : memref<1xf64>
          %97 = arith.addi %12, %c-1 : index
          %98 = memref.load %arg2[%97] : memref<?xf64>
          %99 = arith.mulf %96, %98 : f64
          %100 = arith.addf %95, %99 : f64
          memref.store %100, %alloca_2[%c0] : memref<40xf64>
          %101 = memref.load %alloca_1[%c0] : memref<1xf64>
          memref.store %101, %alloca_5[%c0] : memref<1xf64>
          memref.store %101, %alloca_4[] : memref<f64>
          %102 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %102, %arg2[%12] : memref<?xf64>
        }
        %44 = arith.muli %arg3, %c32 : index
        %45 = arith.addi %arg4, %44 : index
        %46 = arith.addi %45, %c-1 : index
        %47 = arith.cmpi slt, %46, %c0 : index
        %48 = arith.subi %c-1, %46 : index
        %49 = arith.select %47, %48, %46 : index
        %50 = arith.divsi %49, %c4 : index
        %51 = arith.subi %c-1, %50 : index
        %52 = arith.select %47, %51, %50 : index
        %53 = async.create_group %c42 : !async.group
        %54 = scf.for %arg5 = %c0 to %52 step %c1 iter_args(%arg6 = %c0) -> (index) {
          %token = async.execute {
            %91 = arith.muli %arg5, %c4 : index
            %92 = arith.addi %91, %c39 : index
            %93 = arith.addi %92, %c-38 : index
            %94 = memref.load %arg2[%93] : memref<?xf64>
            %95 = memref.load %alloca_1[%c0] : memref<1xf64>
            %96 = arith.muli %92, %c-1 : index
            %97 = arith.addi %96, %12 : index
            %98 = arith.addi %97, %c37 : index
            %99 = memref.load %arg2[%98] : memref<?xf64>
            %100 = arith.mulf %95, %99 : f64
            %101 = arith.addf %94, %100 : f64
            %102 = arith.addi %92, %c-38 : index
            memref.store %101, %alloca_2[%102] : memref<40xf64>
            %103 = arith.addi %92, %c1 : index
            %104 = arith.addi %103, %c-38 : index
            %105 = memref.load %arg2[%104] : memref<?xf64>
            %106 = memref.load %alloca_1[%c0] : memref<1xf64>
            %107 = arith.muli %103, %c-1 : index
            %108 = arith.addi %107, %12 : index
            %109 = arith.addi %108, %c37 : index
            %110 = memref.load %arg2[%109] : memref<?xf64>
            %111 = arith.mulf %106, %110 : f64
            %112 = arith.addf %105, %111 : f64
            %113 = arith.addi %103, %c-38 : index
            memref.store %112, %alloca_2[%113] : memref<40xf64>
            %114 = arith.addi %92, %c2 : index
            %115 = arith.addi %114, %c-38 : index
            %116 = memref.load %arg2[%115] : memref<?xf64>
            %117 = memref.load %alloca_1[%c0] : memref<1xf64>
            %118 = arith.muli %114, %c-1 : index
            %119 = arith.addi %118, %12 : index
            %120 = arith.addi %119, %c37 : index
            %121 = memref.load %arg2[%120] : memref<?xf64>
            %122 = arith.mulf %117, %121 : f64
            %123 = arith.addf %116, %122 : f64
            %124 = arith.addi %114, %c-38 : index
            memref.store %123, %alloca_2[%124] : memref<40xf64>
            %125 = arith.addi %92, %c3 : index
            %126 = arith.addi %125, %c-38 : index
            %127 = memref.load %arg2[%126] : memref<?xf64>
            %128 = memref.load %alloca_1[%c0] : memref<1xf64>
            %129 = arith.muli %125, %c-1 : index
            %130 = arith.addi %129, %12 : index
            %131 = arith.addi %130, %c37 : index
            %132 = memref.load %arg2[%131] : memref<?xf64>
            %133 = arith.mulf %128, %132 : f64
            %134 = arith.addf %127, %133 : f64
            %135 = arith.addi %125, %c-38 : index
            memref.store %134, %alloca_2[%135] : memref<40xf64>
            async.yield
          }
          %89 = async.add_to_group %token, %53 : !async.token
          %90 = arith.addi %arg6, %c1 : index
          scf.yield %90 : index
        }
        async.await_all %53
        %55 = arith.muli %arg3, %c32 : index
        %56 = arith.addi %arg4, %55 : index
        %57 = arith.muli %arg3, %c32 : index
        %58 = arith.addi %arg4, %57 : index
        %59 = arith.addi %58, %c-1 : index
        %60 = arith.cmpi slt, %59, %c0 : index
        %61 = arith.subi %c-1, %59 : index
        %62 = arith.select %60, %61, %59 : index
        %63 = arith.divsi %62, %c4 : index
        %64 = arith.subi %c-1, %63 : index
        %65 = arith.select %60, %64, %63 : index
        %66 = arith.muli %65, %c-4 : index
        %67 = arith.addi %56, %66 : index
        %68 = arith.addi %67, %c-1 : index
        %69 = async.create_group %c42 : !async.group
        %70 = scf.for %arg5 = %c0 to %68 step %c1 iter_args(%arg6 = %c0) -> (index) {
          %token = async.execute {
            %91 = arith.addi %12, %c-2 : index
            %92 = arith.cmpi slt, %91, %c0 : index
            %93 = arith.subi %c-1, %91 : index
            %94 = arith.select %92, %93, %91 : index
            %95 = arith.divsi %94, %c4 : index
            %96 = arith.subi %c-1, %95 : index
            %97 = arith.select %92, %96, %95 : index
            %98 = arith.muli %97, %c4 : index
            %99 = arith.addi %98, %arg5 : index
            %100 = arith.addi %99, %c39 : index
            %101 = arith.addi %100, %c-38 : index
            %102 = memref.load %arg2[%101] : memref<?xf64>
            %103 = memref.load %alloca_1[%c0] : memref<1xf64>
            %104 = arith.muli %100, %c-1 : index
            %105 = arith.addi %104, %12 : index
            %106 = arith.addi %105, %c37 : index
            %107 = memref.load %arg2[%106] : memref<?xf64>
            %108 = arith.mulf %103, %107 : f64
            %109 = arith.addf %102, %108 : f64
            %110 = arith.addi %100, %c-38 : index
            memref.store %109, %alloca_2[%110] : memref<40xf64>
            async.yield
          }
          %89 = async.add_to_group %token, %69 : !async.token
          %90 = arith.addi %arg6, %c1 : index
          scf.yield %90 : index
        }
        async.await_all %69
        %71 = arith.muli %arg3, %c32 : index
        %72 = arith.addi %arg4, %71 : index
        %73 = arith.addi %72, %c-1 : index
        %74 = arith.cmpi sge, %73, %c0 : index
        scf.if %74 {
          %89 = arith.addi %12, %c-1 : index
          %90 = memref.load %arg2[%89] : memref<?xf64>
          %91 = memref.load %alloca_1[%c0] : memref<1xf64>
          %92 = memref.load %arg2[%c0] : memref<?xf64>
          %93 = arith.mulf %91, %92 : f64
          %94 = arith.addf %90, %93 : f64
          %95 = arith.addi %12, %c-1 : index
          memref.store %94, %alloca_2[%95] : memref<40xf64>
          %96 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %96, %arg2[%c0] : memref<?xf64>
        }
        %75 = arith.muli %arg3, %c8 : index
        %76 = arith.cmpi slt, %arg4, %c0 : index
        %77 = arith.subi %c-1, %arg4 : index
        %78 = arith.select %76, %77, %arg4 : index
        %79 = arith.divsi %78, %c4 : index
        %80 = arith.subi %c-1, %79 : index
        %81 = arith.select %76, %80, %79 : index
        %82 = arith.addi %75, %81 : index
        scf.for %arg5 = %c0 to %82 step %c1 {
          %89 = arith.muli %arg5, %c4 : index
          %90 = arith.addi %12, %89 : index
          %91 = arith.addi %90, %c38 : index
          %92 = arith.muli %12, %c-1 : index
          %93 = arith.addi %92, %91 : index
          %94 = arith.addi %93, %c-37 : index
          %95 = memref.load %alloca_2[%94] : memref<40xf64>
          %96 = arith.muli %12, %c-1 : index
          %97 = arith.addi %96, %91 : index
          %98 = arith.addi %97, %c-37 : index
          memref.store %95, %arg2[%98] : memref<?xf64>
          %99 = arith.addi %91, %c1 : index
          %100 = arith.muli %12, %c-1 : index
          %101 = arith.addi %100, %99 : index
          %102 = arith.addi %101, %c-37 : index
          %103 = memref.load %alloca_2[%102] : memref<40xf64>
          %104 = arith.muli %12, %c-1 : index
          %105 = arith.addi %104, %99 : index
          %106 = arith.addi %105, %c-37 : index
          memref.store %103, %arg2[%106] : memref<?xf64>
          %107 = arith.addi %91, %c2 : index
          %108 = arith.muli %12, %c-1 : index
          %109 = arith.addi %108, %107 : index
          %110 = arith.addi %109, %c-37 : index
          %111 = memref.load %alloca_2[%110] : memref<40xf64>
          %112 = arith.muli %12, %c-1 : index
          %113 = arith.addi %112, %107 : index
          %114 = arith.addi %113, %c-37 : index
          memref.store %111, %arg2[%114] : memref<?xf64>
          %115 = arith.addi %91, %c3 : index
          %116 = arith.muli %12, %c-1 : index
          %117 = arith.addi %116, %115 : index
          %118 = arith.addi %117, %c-37 : index
          %119 = memref.load %alloca_2[%118] : memref<40xf64>
          %120 = arith.muli %12, %c-1 : index
          %121 = arith.addi %120, %115 : index
          %122 = arith.addi %121, %c-37 : index
          memref.store %119, %arg2[%122] : memref<?xf64>
        }
        %83 = arith.remsi %arg4, %c4 : index
        %84 = arith.cmpi slt, %83, %c0 : index
        %85 = arith.addi %83, %c4 : index
        %86 = arith.select %84, %85, %83 : index
        %87 = async.create_group %c42 : !async.group
        %88 = scf.for %arg5 = %c0 to %86 step %c1 iter_args(%arg6 = %c0) -> (index) {
          %token = async.execute {
            %91 = arith.addi %12, %c-1 : index
            %92 = arith.cmpi slt, %91, %c0 : index
            %93 = arith.subi %c-1, %91 : index
            %94 = arith.select %92, %93, %91 : index
            %95 = arith.divsi %94, %c4 : index
            %96 = arith.subi %c-1, %95 : index
            %97 = arith.select %92, %96, %95 : index
            %98 = arith.muli %97, %c4 : index
            %99 = arith.addi %12, %98 : index
            %100 = arith.addi %99, %arg5 : index
            %101 = arith.addi %100, %c38 : index
            %102 = arith.muli %12, %c-1 : index
            %103 = arith.addi %102, %101 : index
            %104 = arith.addi %103, %c-37 : index
            %105 = memref.load %alloca_2[%104] : memref<40xf64>
            %106 = arith.muli %12, %c-1 : index
            %107 = arith.addi %106, %101 : index
            %108 = arith.addi %107, %c-37 : index
            memref.store %105, %arg2[%108] : memref<?xf64>
            async.yield
          }
          %89 = async.add_to_group %token, %87 : !async.token
          %90 = arith.addi %arg6, %c1 : index
          scf.yield %90 : index
        }
        async.await_all %87
      }
    }
    return
  }
}

