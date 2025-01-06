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
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<f64>
    %alloca_1 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_2 = memref.alloca() : memref<40xf64>
    %alloca_3 = memref.alloca() : memref<f64>
    %alloca_4 = memref.alloca() : memref<f64>
    %alloca_5 = memref.alloca() : memref<1xf64>
    %1 = memref.load %arg1[%c0] : memref<?xf64>
    %2 = arith.negf %1 : f64
    memref.store %2, %arg2[%c0] : memref<?xf64>
    memref.store %0, %alloca_4[] : memref<f64>
    %3 = memref.load %arg1[%c0] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_4[] : memref<f64>
    memref.store %0, %alloca_3[] : memref<f64>
    memref.store %cst_0, %alloca_3[] : memref<f64>
    memref.store %0, %alloca[] : memref<f64>
    scf.for %arg3 = %c0 to %c2 step %c1 {
      %5 = arith.muli %arg3, %c32 : index
      %6 = arith.addi %5, %c1 : index
      %7 = arith.muli %arg3, %c-32 : index
      %8 = arith.addi %7, %c39 : index
      %9 = arith.minsi %8, %c32 : index
      scf.for %arg4 = %c0 to %9 step %c1 {
        %10 = arith.addi %6, %arg4 : index
        memref.store %cst, %alloca[] : memref<f64>
        %11 = memref.load %alloca[] : memref<f64>
        %12 = arith.addi %10, %c-1 : index
        %13 = memref.load %arg1[%12] : memref<?xf64>
        %14 = memref.load %arg2[%c0] : memref<?xf64>
        %15 = arith.mulf %13, %14 : f64
        %16 = arith.addf %11, %15 : f64
        memref.store %16, %alloca[] : memref<f64>
        %17 = memref.load %alloca_3[] : memref<f64>
        %18 = memref.load %alloca_4[] : memref<f64>
        %19 = arith.mulf %18, %18 : f64
        %20 = arith.subf %17, %19 : f64
        %21 = memref.load %alloca_3[] : memref<f64>
        %22 = arith.mulf %20, %21 : f64
        memref.store %22, %alloca_3[] : memref<f64>
        %23 = arith.muli %arg3, %c8 : index
        %24 = arith.cmpi slt, %arg4, %c0 : index
        %25 = arith.subi %c-1, %arg4 : index
        %26 = arith.select %24, %25, %arg4 : index
        %27 = arith.divsi %26, %c4 : index
        %28 = arith.subi %c-1, %27 : index
        %29 = arith.select %24, %28, %27 : index
        %30 = arith.addi %23, %29 : index
        scf.for %arg5 = %c0 to %30 step %c1 {
          %87 = arith.muli %arg5, %c4 : index
          %88 = arith.addi %87, %c1 : index
          %89 = memref.load %alloca[] : memref<f64>
          %90 = arith.muli %88, %c-1 : index
          %91 = arith.addi %10, %90 : index
          %92 = arith.addi %91, %c-1 : index
          %93 = memref.load %arg1[%92] : memref<?xf64>
          %94 = memref.load %arg2[%88] : memref<?xf64>
          %95 = arith.mulf %93, %94 : f64
          %96 = arith.addf %89, %95 : f64
          memref.store %96, %alloca[] : memref<f64>
          %97 = arith.addi %88, %c1 : index
          %98 = memref.load %alloca[] : memref<f64>
          %99 = arith.muli %97, %c-1 : index
          %100 = arith.addi %10, %99 : index
          %101 = arith.addi %100, %c-1 : index
          %102 = memref.load %arg1[%101] : memref<?xf64>
          %103 = memref.load %arg2[%97] : memref<?xf64>
          %104 = arith.mulf %102, %103 : f64
          %105 = arith.addf %98, %104 : f64
          memref.store %105, %alloca[] : memref<f64>
          %106 = arith.addi %88, %c2 : index
          %107 = memref.load %alloca[] : memref<f64>
          %108 = arith.muli %106, %c-1 : index
          %109 = arith.addi %10, %108 : index
          %110 = arith.addi %109, %c-1 : index
          %111 = memref.load %arg1[%110] : memref<?xf64>
          %112 = memref.load %arg2[%106] : memref<?xf64>
          %113 = arith.mulf %111, %112 : f64
          %114 = arith.addf %107, %113 : f64
          memref.store %114, %alloca[] : memref<f64>
          %115 = arith.addi %88, %c3 : index
          %116 = memref.load %alloca[] : memref<f64>
          %117 = arith.muli %115, %c-1 : index
          %118 = arith.addi %10, %117 : index
          %119 = arith.addi %118, %c-1 : index
          %120 = memref.load %arg1[%119] : memref<?xf64>
          %121 = memref.load %arg2[%115] : memref<?xf64>
          %122 = arith.mulf %120, %121 : f64
          %123 = arith.addf %116, %122 : f64
          memref.store %123, %alloca[] : memref<f64>
        }
        %31 = arith.remsi %arg4, %c4 : index
        %32 = arith.cmpi slt, %31, %c0 : index
        %33 = arith.addi %31, %c4 : index
        %34 = arith.select %32, %33, %31 : index
        scf.for %arg5 = %c0 to %34 step %c1 {
          %87 = arith.addi %10, %c-1 : index
          %88 = arith.cmpi slt, %87, %c0 : index
          %89 = arith.subi %c-1, %87 : index
          %90 = arith.select %88, %89, %87 : index
          %91 = arith.divsi %90, %c4 : index
          %92 = arith.subi %c-1, %91 : index
          %93 = arith.select %88, %92, %91 : index
          %94 = arith.muli %93, %c4 : index
          %95 = arith.addi %arg5, %94 : index
          %96 = arith.addi %95, %c1 : index
          %97 = memref.load %alloca[] : memref<f64>
          %98 = arith.muli %96, %c-1 : index
          %99 = arith.addi %10, %98 : index
          %100 = arith.addi %99, %c-1 : index
          %101 = memref.load %arg1[%100] : memref<?xf64>
          %102 = memref.load %arg2[%96] : memref<?xf64>
          %103 = arith.mulf %101, %102 : f64
          %104 = arith.addf %97, %103 : f64
          memref.store %104, %alloca[] : memref<f64>
        }
        %35 = arith.muli %arg3, %c32 : index
        %36 = arith.addi %arg4, %35 : index
        %37 = arith.cmpi eq, %36, %c0 : index
        scf.if %37 {
          %87 = memref.load %arg1[%c1] : memref<?xf64>
          %88 = memref.load %alloca[] : memref<f64>
          %89 = arith.addf %87, %88 : f64
          %90 = arith.negf %89 : f64
          %91 = memref.load %alloca_3[] : memref<f64>
          %92 = arith.divf %90, %91 : f64
          memref.store %92, %alloca_1[%c0] : memref<1xf64>
          %93 = memref.load %arg2[%c0] : memref<?xf64>
          %94 = memref.load %alloca_1[%c0] : memref<1xf64>
          %95 = memref.load %arg2[%c0] : memref<?xf64>
          %96 = arith.mulf %94, %95 : f64
          %97 = arith.addf %93, %96 : f64
          memref.store %97, %alloca_2[%c0] : memref<40xf64>
          %98 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %98, %arg2[%c0] : memref<?xf64>
          %99 = memref.load %alloca_1[%c0] : memref<1xf64>
          memref.store %99, %alloca_5[%c0] : memref<1xf64>
          memref.store %99, %alloca_4[] : memref<f64>
          %100 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %100, %arg2[%c1] : memref<?xf64>
        }
        %38 = arith.muli %arg3, %c32 : index
        %39 = arith.addi %arg4, %38 : index
        %40 = arith.addi %39, %c-1 : index
        %41 = arith.cmpi sge, %40, %c0 : index
        scf.if %41 {
          %87 = memref.load %arg1[%10] : memref<?xf64>
          %88 = memref.load %alloca[] : memref<f64>
          %89 = arith.addf %87, %88 : f64
          %90 = arith.negf %89 : f64
          %91 = memref.load %alloca_3[] : memref<f64>
          %92 = arith.divf %90, %91 : f64
          memref.store %92, %alloca_1[%c0] : memref<1xf64>
          %93 = memref.load %arg2[%c0] : memref<?xf64>
          %94 = memref.load %alloca_1[%c0] : memref<1xf64>
          %95 = arith.addi %10, %c-1 : index
          %96 = memref.load %arg2[%95] : memref<?xf64>
          %97 = arith.mulf %94, %96 : f64
          %98 = arith.addf %93, %97 : f64
          memref.store %98, %alloca_2[%c0] : memref<40xf64>
          %99 = memref.load %alloca_1[%c0] : memref<1xf64>
          memref.store %99, %alloca_5[%c0] : memref<1xf64>
          memref.store %99, %alloca_4[] : memref<f64>
          %100 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %100, %arg2[%10] : memref<?xf64>
        }
        %42 = arith.muli %arg3, %c32 : index
        %43 = arith.addi %arg4, %42 : index
        %44 = arith.addi %43, %c-1 : index
        %45 = arith.cmpi slt, %44, %c0 : index
        %46 = arith.subi %c-1, %44 : index
        %47 = arith.select %45, %46, %44 : index
        %48 = arith.divsi %47, %c4 : index
        %49 = arith.subi %c-1, %48 : index
        %50 = arith.select %45, %49, %48 : index
        %51 = async.create_group %c42 : !async.group
        %52 = scf.for %arg5 = %c0 to %50 step %c1 iter_args(%arg6 = %c0) -> (index) {
          %token = async.execute {
            %89 = arith.muli %arg5, %c4 : index
            %90 = arith.addi %89, %c39 : index
            %91 = arith.addi %90, %c-38 : index
            %92 = memref.load %arg2[%91] : memref<?xf64>
            %93 = memref.load %alloca_1[%c0] : memref<1xf64>
            %94 = arith.muli %90, %c-1 : index
            %95 = arith.addi %94, %10 : index
            %96 = arith.addi %95, %c37 : index
            %97 = memref.load %arg2[%96] : memref<?xf64>
            %98 = arith.mulf %93, %97 : f64
            %99 = arith.addf %92, %98 : f64
            %100 = arith.addi %90, %c-38 : index
            memref.store %99, %alloca_2[%100] : memref<40xf64>
            %101 = arith.addi %90, %c1 : index
            %102 = arith.addi %101, %c-38 : index
            %103 = memref.load %arg2[%102] : memref<?xf64>
            %104 = memref.load %alloca_1[%c0] : memref<1xf64>
            %105 = arith.muli %101, %c-1 : index
            %106 = arith.addi %105, %10 : index
            %107 = arith.addi %106, %c37 : index
            %108 = memref.load %arg2[%107] : memref<?xf64>
            %109 = arith.mulf %104, %108 : f64
            %110 = arith.addf %103, %109 : f64
            %111 = arith.addi %101, %c-38 : index
            memref.store %110, %alloca_2[%111] : memref<40xf64>
            %112 = arith.addi %90, %c2 : index
            %113 = arith.addi %112, %c-38 : index
            %114 = memref.load %arg2[%113] : memref<?xf64>
            %115 = memref.load %alloca_1[%c0] : memref<1xf64>
            %116 = arith.muli %112, %c-1 : index
            %117 = arith.addi %116, %10 : index
            %118 = arith.addi %117, %c37 : index
            %119 = memref.load %arg2[%118] : memref<?xf64>
            %120 = arith.mulf %115, %119 : f64
            %121 = arith.addf %114, %120 : f64
            %122 = arith.addi %112, %c-38 : index
            memref.store %121, %alloca_2[%122] : memref<40xf64>
            %123 = arith.addi %90, %c3 : index
            %124 = arith.addi %123, %c-38 : index
            %125 = memref.load %arg2[%124] : memref<?xf64>
            %126 = memref.load %alloca_1[%c0] : memref<1xf64>
            %127 = arith.muli %123, %c-1 : index
            %128 = arith.addi %127, %10 : index
            %129 = arith.addi %128, %c37 : index
            %130 = memref.load %arg2[%129] : memref<?xf64>
            %131 = arith.mulf %126, %130 : f64
            %132 = arith.addf %125, %131 : f64
            %133 = arith.addi %123, %c-38 : index
            memref.store %132, %alloca_2[%133] : memref<40xf64>
            async.yield
          }
          %87 = async.add_to_group %token, %51 : !async.token
          %88 = arith.addi %arg6, %c1 : index
          scf.yield %88 : index
        }
        async.await_all %51
        %53 = arith.muli %arg3, %c32 : index
        %54 = arith.addi %arg4, %53 : index
        %55 = arith.muli %arg3, %c32 : index
        %56 = arith.addi %arg4, %55 : index
        %57 = arith.addi %56, %c-1 : index
        %58 = arith.cmpi slt, %57, %c0 : index
        %59 = arith.subi %c-1, %57 : index
        %60 = arith.select %58, %59, %57 : index
        %61 = arith.divsi %60, %c4 : index
        %62 = arith.subi %c-1, %61 : index
        %63 = arith.select %58, %62, %61 : index
        %64 = arith.muli %63, %c-4 : index
        %65 = arith.addi %54, %64 : index
        %66 = arith.addi %65, %c-1 : index
        %67 = async.create_group %c42 : !async.group
        %68 = scf.for %arg5 = %c0 to %66 step %c1 iter_args(%arg6 = %c0) -> (index) {
          %token = async.execute {
            %89 = arith.addi %10, %c-2 : index
            %90 = arith.cmpi slt, %89, %c0 : index
            %91 = arith.subi %c-1, %89 : index
            %92 = arith.select %90, %91, %89 : index
            %93 = arith.divsi %92, %c4 : index
            %94 = arith.subi %c-1, %93 : index
            %95 = arith.select %90, %94, %93 : index
            %96 = arith.muli %95, %c4 : index
            %97 = arith.addi %96, %arg5 : index
            %98 = arith.addi %97, %c39 : index
            %99 = arith.addi %98, %c-38 : index
            %100 = memref.load %arg2[%99] : memref<?xf64>
            %101 = memref.load %alloca_1[%c0] : memref<1xf64>
            %102 = arith.muli %98, %c-1 : index
            %103 = arith.addi %102, %10 : index
            %104 = arith.addi %103, %c37 : index
            %105 = memref.load %arg2[%104] : memref<?xf64>
            %106 = arith.mulf %101, %105 : f64
            %107 = arith.addf %100, %106 : f64
            %108 = arith.addi %98, %c-38 : index
            memref.store %107, %alloca_2[%108] : memref<40xf64>
            async.yield
          }
          %87 = async.add_to_group %token, %67 : !async.token
          %88 = arith.addi %arg6, %c1 : index
          scf.yield %88 : index
        }
        async.await_all %67
        %69 = arith.muli %arg3, %c32 : index
        %70 = arith.addi %arg4, %69 : index
        %71 = arith.addi %70, %c-1 : index
        %72 = arith.cmpi sge, %71, %c0 : index
        scf.if %72 {
          %87 = arith.addi %10, %c-1 : index
          %88 = memref.load %arg2[%87] : memref<?xf64>
          %89 = memref.load %alloca_1[%c0] : memref<1xf64>
          %90 = memref.load %arg2[%c0] : memref<?xf64>
          %91 = arith.mulf %89, %90 : f64
          %92 = arith.addf %88, %91 : f64
          %93 = arith.addi %10, %c-1 : index
          memref.store %92, %alloca_2[%93] : memref<40xf64>
          %94 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %94, %arg2[%c0] : memref<?xf64>
        }
        %73 = arith.muli %arg3, %c8 : index
        %74 = arith.cmpi slt, %arg4, %c0 : index
        %75 = arith.subi %c-1, %arg4 : index
        %76 = arith.select %74, %75, %arg4 : index
        %77 = arith.divsi %76, %c4 : index
        %78 = arith.subi %c-1, %77 : index
        %79 = arith.select %74, %78, %77 : index
        %80 = arith.addi %73, %79 : index
        scf.for %arg5 = %c0 to %80 step %c1 {
          %87 = arith.muli %arg5, %c4 : index
          %88 = arith.addi %10, %87 : index
          %89 = arith.addi %88, %c38 : index
          %90 = arith.muli %10, %c-1 : index
          %91 = arith.addi %90, %89 : index
          %92 = arith.addi %91, %c-37 : index
          %93 = memref.load %alloca_2[%92] : memref<40xf64>
          %94 = arith.muli %10, %c-1 : index
          %95 = arith.addi %94, %89 : index
          %96 = arith.addi %95, %c-37 : index
          memref.store %93, %arg2[%96] : memref<?xf64>
          %97 = arith.addi %89, %c1 : index
          %98 = arith.muli %10, %c-1 : index
          %99 = arith.addi %98, %97 : index
          %100 = arith.addi %99, %c-37 : index
          %101 = memref.load %alloca_2[%100] : memref<40xf64>
          %102 = arith.muli %10, %c-1 : index
          %103 = arith.addi %102, %97 : index
          %104 = arith.addi %103, %c-37 : index
          memref.store %101, %arg2[%104] : memref<?xf64>
          %105 = arith.addi %89, %c2 : index
          %106 = arith.muli %10, %c-1 : index
          %107 = arith.addi %106, %105 : index
          %108 = arith.addi %107, %c-37 : index
          %109 = memref.load %alloca_2[%108] : memref<40xf64>
          %110 = arith.muli %10, %c-1 : index
          %111 = arith.addi %110, %105 : index
          %112 = arith.addi %111, %c-37 : index
          memref.store %109, %arg2[%112] : memref<?xf64>
          %113 = arith.addi %89, %c3 : index
          %114 = arith.muli %10, %c-1 : index
          %115 = arith.addi %114, %113 : index
          %116 = arith.addi %115, %c-37 : index
          %117 = memref.load %alloca_2[%116] : memref<40xf64>
          %118 = arith.muli %10, %c-1 : index
          %119 = arith.addi %118, %113 : index
          %120 = arith.addi %119, %c-37 : index
          memref.store %117, %arg2[%120] : memref<?xf64>
        }
        %81 = arith.remsi %arg4, %c4 : index
        %82 = arith.cmpi slt, %81, %c0 : index
        %83 = arith.addi %81, %c4 : index
        %84 = arith.select %82, %83, %81 : index
        %85 = async.create_group %c42 : !async.group
        %86 = scf.for %arg5 = %c0 to %84 step %c1 iter_args(%arg6 = %c0) -> (index) {
          %token = async.execute {
            %89 = arith.addi %10, %c-1 : index
            %90 = arith.cmpi slt, %89, %c0 : index
            %91 = arith.subi %c-1, %89 : index
            %92 = arith.select %90, %91, %89 : index
            %93 = arith.divsi %92, %c4 : index
            %94 = arith.subi %c-1, %93 : index
            %95 = arith.select %90, %94, %93 : index
            %96 = arith.muli %95, %c4 : index
            %97 = arith.addi %10, %96 : index
            %98 = arith.addi %97, %arg5 : index
            %99 = arith.addi %98, %c38 : index
            %100 = arith.muli %10, %c-1 : index
            %101 = arith.addi %100, %99 : index
            %102 = arith.addi %101, %c-37 : index
            %103 = memref.load %alloca_2[%102] : memref<40xf64>
            %104 = arith.muli %10, %c-1 : index
            %105 = arith.addi %104, %99 : index
            %106 = arith.addi %105, %c-37 : index
            memref.store %103, %arg2[%106] : memref<?xf64>
            async.yield
          }
          %87 = async.add_to_group %token, %85 : !async.token
          %88 = arith.addi %arg6, %c1 : index
          scf.yield %88 : index
        }
        async.await_all %85
      }
    }
    return
  }
}

