module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c42 = arith.constant 42 : index
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c39 = arith.constant 39 : index
    %c-32 = arith.constant -32 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : f64
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    memref.store %0, %alloca[] : memref<f64>
    %alloca_1 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_1[] : memref<f64>
    %alloca_2 = memref.alloca() : memref<f64>
    memref.store %0, %alloca_2[] : memref<f64>
    %alloca_3 = memref.alloca() : memref<40xf64>
    %1 = memref.load %arg1[%c0] : memref<?xf64>
    %2 = arith.negf %1 : f64
    memref.store %2, %arg2[%c0] : memref<?xf64>
    memref.store %cst_0, %alloca_1[] : memref<f64>
    %3 = memref.load %arg1[%c0] : memref<?xf64>
    %4 = arith.negf %3 : f64
    memref.store %4, %alloca_2[] : memref<f64>
    scf.for %arg3 = %c0 to %c2 step %c1 {
      %5 = arith.muli %arg3, %c32 : index
      %6 = arith.addi %5, %c1 : index
      %7 = arith.muli %arg3, %c-32 : index
      %8 = arith.addi %7, %c39 : index
      %9 = arith.minsi %8, %c32 : index
      scf.for %arg4 = %c0 to %9 step %c1 {
        %10 = arith.addi %6, %arg4 : index
        %11 = memref.load %alloca_2[] : memref<f64>
        %12 = arith.mulf %11, %11 : f64
        %13 = arith.subf %cst_0, %12 : f64
        %14 = memref.load %alloca_1[] : memref<f64>
        %15 = arith.mulf %13, %14 : f64
        memref.store %15, %alloca_1[] : memref<f64>
        memref.store %cst, %alloca[] : memref<f64>
        %16 = arith.muli %arg3, %c32 : index
        %17 = arith.addi %arg4, %16 : index
        %18 = arith.addi %17, %c1 : index
        %19 = arith.cmpi slt, %18, %c0 : index
        %20 = arith.subi %c-1, %18 : index
        %21 = arith.select %19, %20, %18 : index
        %22 = arith.divsi %21, %c4 : index
        %23 = arith.subi %c-1, %22 : index
        %24 = arith.select %19, %23, %22 : index
        scf.for %arg5 = %c0 to %24 step %c1 {
          %98 = arith.muli %arg5, %c4 : index
          %99 = arith.muli %98, %c-1 : index
          %100 = arith.addi %10, %99 : index
          %101 = arith.addi %100, %c-1 : index
          %102 = memref.load %arg1[%101] : memref<?xf64>
          %103 = memref.load %arg2[%98] : memref<?xf64>
          %104 = arith.mulf %102, %103 : f64
          %105 = memref.load %alloca[] : memref<f64>
          %106 = arith.addf %105, %104 : f64
          memref.store %106, %alloca[] : memref<f64>
          %107 = arith.addi %98, %c1 : index
          %108 = arith.muli %107, %c-1 : index
          %109 = arith.addi %10, %108 : index
          %110 = arith.addi %109, %c-1 : index
          %111 = memref.load %arg1[%110] : memref<?xf64>
          %112 = memref.load %arg2[%107] : memref<?xf64>
          %113 = arith.mulf %111, %112 : f64
          %114 = memref.load %alloca[] : memref<f64>
          %115 = arith.addf %114, %113 : f64
          memref.store %115, %alloca[] : memref<f64>
          %116 = arith.addi %98, %c2 : index
          %117 = arith.muli %116, %c-1 : index
          %118 = arith.addi %10, %117 : index
          %119 = arith.addi %118, %c-1 : index
          %120 = memref.load %arg1[%119] : memref<?xf64>
          %121 = memref.load %arg2[%116] : memref<?xf64>
          %122 = arith.mulf %120, %121 : f64
          %123 = memref.load %alloca[] : memref<f64>
          %124 = arith.addf %123, %122 : f64
          memref.store %124, %alloca[] : memref<f64>
          %125 = arith.addi %98, %c3 : index
          %126 = arith.muli %125, %c-1 : index
          %127 = arith.addi %10, %126 : index
          %128 = arith.addi %127, %c-1 : index
          %129 = memref.load %arg1[%128] : memref<?xf64>
          %130 = memref.load %arg2[%125] : memref<?xf64>
          %131 = arith.mulf %129, %130 : f64
          %132 = memref.load %alloca[] : memref<f64>
          %133 = arith.addf %132, %131 : f64
          memref.store %133, %alloca[] : memref<f64>
        }
        %25 = arith.muli %arg3, %c32 : index
        %26 = arith.addi %arg4, %25 : index
        %27 = arith.muli %arg3, %c32 : index
        %28 = arith.addi %arg4, %27 : index
        %29 = arith.addi %28, %c1 : index
        %30 = arith.cmpi slt, %29, %c0 : index
        %31 = arith.subi %c-1, %29 : index
        %32 = arith.select %30, %31, %29 : index
        %33 = arith.divsi %32, %c4 : index
        %34 = arith.subi %c-1, %33 : index
        %35 = arith.select %30, %34, %33 : index
        %36 = arith.muli %35, %c-4 : index
        %37 = arith.addi %26, %36 : index
        %38 = arith.addi %37, %c1 : index
        scf.for %arg5 = %c0 to %38 step %c1 {
          %98 = arith.cmpi slt, %10, %c0 : index
          %99 = arith.subi %c-1, %10 : index
          %100 = arith.select %98, %99, %10 : index
          %101 = arith.divsi %100, %c4 : index
          %102 = arith.subi %c-1, %101 : index
          %103 = arith.select %98, %102, %101 : index
          %104 = arith.muli %103, %c4 : index
          %105 = arith.addi %arg5, %104 : index
          %106 = arith.muli %105, %c-1 : index
          %107 = arith.addi %10, %106 : index
          %108 = arith.addi %107, %c-1 : index
          %109 = memref.load %arg1[%108] : memref<?xf64>
          %110 = memref.load %arg2[%105] : memref<?xf64>
          %111 = arith.mulf %109, %110 : f64
          %112 = memref.load %alloca[] : memref<f64>
          %113 = arith.addf %112, %111 : f64
          memref.store %113, %alloca[] : memref<f64>
        }
        %39 = memref.load %arg1[%10] : memref<?xf64>
        %40 = memref.load %alloca[] : memref<f64>
        %41 = arith.addf %39, %40 : f64
        %42 = arith.negf %41 : f64
        %43 = arith.divf %42, %15 : f64
        memref.store %43, %alloca_2[] : memref<f64>
        %44 = arith.muli %arg3, %c32 : index
        %45 = arith.addi %arg4, %44 : index
        %46 = arith.addi %45, %c1 : index
        %47 = arith.cmpi slt, %46, %c0 : index
        %48 = arith.subi %c-1, %46 : index
        %49 = arith.select %47, %48, %46 : index
        %50 = arith.divsi %49, %c4 : index
        %51 = arith.subi %c-1, %50 : index
        %52 = arith.select %47, %51, %50 : index
        %53 = async.create_group %c42 : !async.group
        %54 = scf.for %arg5 = %c0 to %52 step %c1 iter_args(%arg6 = %c0) -> (index) {
          %token = async.execute {
            %100 = arith.muli %arg5, %c4 : index
            %101 = memref.load %arg2[%100] : memref<?xf64>
            %102 = arith.muli %100, %c-1 : index
            %103 = arith.addi %10, %102 : index
            %104 = arith.addi %103, %c-1 : index
            %105 = memref.load %arg2[%104] : memref<?xf64>
            %106 = arith.mulf %43, %105 : f64
            %107 = arith.addf %101, %106 : f64
            memref.store %107, %alloca_3[%100] : memref<40xf64>
            %108 = arith.addi %100, %c1 : index
            %109 = memref.load %arg2[%108] : memref<?xf64>
            %110 = arith.muli %108, %c-1 : index
            %111 = arith.addi %10, %110 : index
            %112 = arith.addi %111, %c-1 : index
            %113 = memref.load %arg2[%112] : memref<?xf64>
            %114 = arith.mulf %43, %113 : f64
            %115 = arith.addf %109, %114 : f64
            memref.store %115, %alloca_3[%108] : memref<40xf64>
            %116 = arith.addi %100, %c2 : index
            %117 = memref.load %arg2[%116] : memref<?xf64>
            %118 = arith.muli %116, %c-1 : index
            %119 = arith.addi %10, %118 : index
            %120 = arith.addi %119, %c-1 : index
            %121 = memref.load %arg2[%120] : memref<?xf64>
            %122 = arith.mulf %43, %121 : f64
            %123 = arith.addf %117, %122 : f64
            memref.store %123, %alloca_3[%116] : memref<40xf64>
            %124 = arith.addi %100, %c3 : index
            %125 = memref.load %arg2[%124] : memref<?xf64>
            %126 = arith.muli %124, %c-1 : index
            %127 = arith.addi %10, %126 : index
            %128 = arith.addi %127, %c-1 : index
            %129 = memref.load %arg2[%128] : memref<?xf64>
            %130 = arith.mulf %43, %129 : f64
            %131 = arith.addf %125, %130 : f64
            memref.store %131, %alloca_3[%124] : memref<40xf64>
            async.yield
          }
          %98 = async.add_to_group %token, %53 : !async.token
          %99 = arith.addi %arg6, %c1 : index
          scf.yield %99 : index
        }
        async.await_all %53
        %55 = arith.muli %arg3, %c32 : index
        %56 = arith.addi %arg4, %55 : index
        %57 = arith.muli %arg3, %c32 : index
        %58 = arith.addi %arg4, %57 : index
        %59 = arith.addi %58, %c1 : index
        %60 = arith.cmpi slt, %59, %c0 : index
        %61 = arith.subi %c-1, %59 : index
        %62 = arith.select %60, %61, %59 : index
        %63 = arith.divsi %62, %c4 : index
        %64 = arith.subi %c-1, %63 : index
        %65 = arith.select %60, %64, %63 : index
        %66 = arith.muli %65, %c-4 : index
        %67 = arith.addi %56, %66 : index
        %68 = arith.addi %67, %c1 : index
        %69 = async.create_group %c42 : !async.group
        %70 = scf.for %arg5 = %c0 to %68 step %c1 iter_args(%arg6 = %c0) -> (index) {
          %token = async.execute {
            %100 = arith.cmpi slt, %10, %c0 : index
            %101 = arith.subi %c-1, %10 : index
            %102 = arith.select %100, %101, %10 : index
            %103 = arith.divsi %102, %c4 : index
            %104 = arith.subi %c-1, %103 : index
            %105 = arith.select %100, %104, %103 : index
            %106 = arith.muli %105, %c4 : index
            %107 = arith.addi %106, %arg5 : index
            %108 = memref.load %arg2[%107] : memref<?xf64>
            %109 = arith.muli %107, %c-1 : index
            %110 = arith.addi %10, %109 : index
            %111 = arith.addi %110, %c-1 : index
            %112 = memref.load %arg2[%111] : memref<?xf64>
            %113 = arith.mulf %43, %112 : f64
            %114 = arith.addf %108, %113 : f64
            memref.store %114, %alloca_3[%107] : memref<40xf64>
            async.yield
          }
          %98 = async.add_to_group %token, %69 : !async.token
          %99 = arith.addi %arg6, %c1 : index
          scf.yield %99 : index
        }
        async.await_all %69
        %71 = arith.muli %arg3, %c32 : index
        %72 = arith.addi %arg4, %71 : index
        %73 = arith.addi %72, %c1 : index
        %74 = arith.cmpi slt, %73, %c0 : index
        %75 = arith.subi %c-1, %73 : index
        %76 = arith.select %74, %75, %73 : index
        %77 = arith.divsi %76, %c4 : index
        %78 = arith.subi %c-1, %77 : index
        %79 = arith.select %74, %78, %77 : index
        %80 = async.create_group %c42 : !async.group
        %81 = scf.for %arg5 = %c0 to %79 step %c1 iter_args(%arg6 = %c0) -> (index) {
          %token = async.execute {
            %100 = arith.muli %arg5, %c4 : index
            %101 = memref.load %alloca_3[%100] : memref<40xf64>
            memref.store %101, %arg2[%100] : memref<?xf64>
            %102 = arith.addi %100, %c1 : index
            %103 = memref.load %alloca_3[%102] : memref<40xf64>
            memref.store %103, %arg2[%102] : memref<?xf64>
            %104 = arith.addi %100, %c2 : index
            %105 = memref.load %alloca_3[%104] : memref<40xf64>
            memref.store %105, %arg2[%104] : memref<?xf64>
            %106 = arith.addi %100, %c3 : index
            %107 = memref.load %alloca_3[%106] : memref<40xf64>
            memref.store %107, %arg2[%106] : memref<?xf64>
            async.yield
          }
          %98 = async.add_to_group %token, %80 : !async.token
          %99 = arith.addi %arg6, %c1 : index
          scf.yield %99 : index
        }
        async.await_all %80
        %82 = arith.muli %arg3, %c32 : index
        %83 = arith.addi %arg4, %82 : index
        %84 = arith.muli %arg3, %c32 : index
        %85 = arith.addi %arg4, %84 : index
        %86 = arith.addi %85, %c1 : index
        %87 = arith.cmpi slt, %86, %c0 : index
        %88 = arith.subi %c-1, %86 : index
        %89 = arith.select %87, %88, %86 : index
        %90 = arith.divsi %89, %c4 : index
        %91 = arith.subi %c-1, %90 : index
        %92 = arith.select %87, %91, %90 : index
        %93 = arith.muli %92, %c-4 : index
        %94 = arith.addi %83, %93 : index
        %95 = arith.addi %94, %c1 : index
        %96 = async.create_group %c42 : !async.group
        %97 = scf.for %arg5 = %c0 to %95 step %c1 iter_args(%arg6 = %c0) -> (index) {
          %token = async.execute {
            %100 = arith.cmpi slt, %10, %c0 : index
            %101 = arith.subi %c-1, %10 : index
            %102 = arith.select %100, %101, %10 : index
            %103 = arith.divsi %102, %c4 : index
            %104 = arith.subi %c-1, %103 : index
            %105 = arith.select %100, %104, %103 : index
            %106 = arith.muli %105, %c4 : index
            %107 = arith.addi %106, %arg5 : index
            %108 = memref.load %alloca_3[%107] : memref<40xf64>
            memref.store %108, %arg2[%107] : memref<?xf64>
            async.yield
          }
          %98 = async.add_to_group %token, %96 : !async.token
          %99 = arith.addi %arg6, %c1 : index
          scf.yield %99 : index
        }
        async.await_all %96
        memref.store %43, %arg2[%10] : memref<?xf64>
      }
    }
    return
  }
}

