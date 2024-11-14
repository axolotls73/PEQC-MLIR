module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
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
          %88 = arith.muli %arg5, %c4 : index
          %89 = arith.addi %88, %c1 : index
          %90 = memref.load %alloca[] : memref<f64>
          %91 = arith.muli %89, %c-1 : index
          %92 = arith.addi %12, %91 : index
          %93 = arith.addi %92, %c-1 : index
          %94 = memref.load %arg1[%93] : memref<?xf64>
          %95 = memref.load %arg2[%89] : memref<?xf64>
          %96 = arith.mulf %94, %95 : f64
          %97 = arith.addf %90, %96 : f64
          memref.store %97, %alloca[] : memref<f64>
          %98 = arith.addi %89, %c1 : index
          %99 = memref.load %alloca[] : memref<f64>
          %100 = arith.muli %98, %c-1 : index
          %101 = arith.addi %12, %100 : index
          %102 = arith.addi %101, %c-1 : index
          %103 = memref.load %arg1[%102] : memref<?xf64>
          %104 = memref.load %arg2[%98] : memref<?xf64>
          %105 = arith.mulf %103, %104 : f64
          %106 = arith.addf %99, %105 : f64
          memref.store %106, %alloca[] : memref<f64>
          %107 = arith.addi %89, %c2 : index
          %108 = memref.load %alloca[] : memref<f64>
          %109 = arith.muli %107, %c-1 : index
          %110 = arith.addi %12, %109 : index
          %111 = arith.addi %110, %c-1 : index
          %112 = memref.load %arg1[%111] : memref<?xf64>
          %113 = memref.load %arg2[%107] : memref<?xf64>
          %114 = arith.mulf %112, %113 : f64
          %115 = arith.addf %108, %114 : f64
          memref.store %115, %alloca[] : memref<f64>
          %116 = arith.addi %89, %c3 : index
          %117 = memref.load %alloca[] : memref<f64>
          %118 = arith.muli %116, %c-1 : index
          %119 = arith.addi %12, %118 : index
          %120 = arith.addi %119, %c-1 : index
          %121 = memref.load %arg1[%120] : memref<?xf64>
          %122 = memref.load %arg2[%116] : memref<?xf64>
          %123 = arith.mulf %121, %122 : f64
          %124 = arith.addf %117, %123 : f64
          memref.store %124, %alloca[] : memref<f64>
        }
        %33 = arith.remsi %arg4, %c4 : index
        %34 = arith.cmpi slt, %33, %c0 : index
        %35 = arith.addi %33, %c4 : index
        %36 = arith.select %34, %35, %33 : index
        scf.for %arg5 = %c0 to %36 step %c1 {
          %88 = arith.addi %12, %c-1 : index
          %89 = arith.cmpi slt, %88, %c0 : index
          %90 = arith.subi %c-1, %88 : index
          %91 = arith.select %89, %90, %88 : index
          %92 = arith.divsi %91, %c4 : index
          %93 = arith.subi %c-1, %92 : index
          %94 = arith.select %89, %93, %92 : index
          %95 = arith.muli %94, %c4 : index
          %96 = arith.addi %arg5, %95 : index
          %97 = arith.addi %96, %c1 : index
          %98 = memref.load %alloca[] : memref<f64>
          %99 = arith.muli %97, %c-1 : index
          %100 = arith.addi %12, %99 : index
          %101 = arith.addi %100, %c-1 : index
          %102 = memref.load %arg1[%101] : memref<?xf64>
          %103 = memref.load %arg2[%97] : memref<?xf64>
          %104 = arith.mulf %102, %103 : f64
          %105 = arith.addf %98, %104 : f64
          memref.store %105, %alloca[] : memref<f64>
        }
        %37 = arith.muli %arg3, %c32 : index
        %38 = arith.addi %arg4, %37 : index
        %39 = arith.cmpi eq, %38, %c0 : index
        scf.if %39 {
          %88 = memref.load %arg1[%c1] : memref<?xf64>
          %89 = memref.load %alloca[] : memref<f64>
          %90 = arith.addf %88, %89 : f64
          %91 = arith.negf %90 : f64
          %92 = memref.load %alloca_3[] : memref<f64>
          %93 = arith.divf %91, %92 : f64
          memref.store %93, %alloca_1[%c0] : memref<1xf64>
          %94 = memref.load %arg2[%c0] : memref<?xf64>
          %95 = memref.load %alloca_1[%c0] : memref<1xf64>
          %96 = memref.load %arg2[%c0] : memref<?xf64>
          %97 = arith.mulf %95, %96 : f64
          %98 = arith.addf %94, %97 : f64
          memref.store %98, %alloca_2[%c0] : memref<40xf64>
          %99 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %99, %arg2[%c0] : memref<?xf64>
          %100 = memref.load %alloca_1[%c0] : memref<1xf64>
          memref.store %100, %alloca_5[%c0] : memref<1xf64>
          memref.store %100, %alloca_4[] : memref<f64>
          %101 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %101, %arg2[%c1] : memref<?xf64>
        }
        %40 = arith.muli %arg3, %c32 : index
        %41 = arith.addi %arg4, %40 : index
        %42 = arith.addi %41, %c-1 : index
        %43 = arith.cmpi sge, %42, %c0 : index
        scf.if %43 {
          %88 = memref.load %arg1[%12] : memref<?xf64>
          %89 = memref.load %alloca[] : memref<f64>
          %90 = arith.addf %88, %89 : f64
          %91 = arith.negf %90 : f64
          %92 = memref.load %alloca_3[] : memref<f64>
          %93 = arith.divf %91, %92 : f64
          memref.store %93, %alloca_1[%c0] : memref<1xf64>
          %94 = memref.load %arg2[%c0] : memref<?xf64>
          %95 = memref.load %alloca_1[%c0] : memref<1xf64>
          %96 = arith.addi %12, %c-1 : index
          %97 = memref.load %arg2[%96] : memref<?xf64>
          %98 = arith.mulf %95, %97 : f64
          %99 = arith.addf %94, %98 : f64
          memref.store %99, %alloca_2[%c0] : memref<40xf64>
          %100 = memref.load %alloca_1[%c0] : memref<1xf64>
          memref.store %100, %alloca_5[%c0] : memref<1xf64>
          memref.store %100, %alloca_4[] : memref<f64>
          %101 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %101, %arg2[%12] : memref<?xf64>
        }
        %44 = memref.load %alloca_1[%c0] : memref<1xf64>
        %45 = memref.load %alloca_1[%c0] : memref<1xf64>
        %46 = memref.load %alloca_1[%c0] : memref<1xf64>
        %47 = memref.load %alloca_1[%c0] : memref<1xf64>
        %48 = arith.muli %arg3, %c32 : index
        %49 = arith.addi %arg4, %48 : index
        %50 = arith.addi %49, %c-1 : index
        %51 = arith.cmpi slt, %50, %c0 : index
        %52 = arith.subi %c-1, %50 : index
        %53 = arith.select %51, %52, %50 : index
        %54 = arith.divsi %53, %c4 : index
        %55 = arith.subi %c-1, %54 : index
        %56 = arith.select %51, %55, %54 : index
        scf.for %arg5 = %c0 to %56 step %c1 {
          %88 = arith.muli %arg5, %c4 : index
          %89 = arith.addi %88, %c39 : index
          %90 = arith.addi %89, %c-38 : index
          %91 = memref.load %arg2[%90] : memref<?xf64>
          %92 = arith.muli %89, %c-1 : index
          %93 = arith.addi %92, %12 : index
          %94 = arith.addi %93, %c37 : index
          %95 = memref.load %arg2[%94] : memref<?xf64>
          %96 = arith.mulf %44, %95 : f64
          %97 = arith.addf %91, %96 : f64
          %98 = arith.addi %89, %c-38 : index
          memref.store %97, %alloca_2[%98] : memref<40xf64>
          %99 = arith.addi %89, %c1 : index
          %100 = arith.addi %99, %c-38 : index
          %101 = memref.load %arg2[%100] : memref<?xf64>
          %102 = arith.muli %99, %c-1 : index
          %103 = arith.addi %102, %12 : index
          %104 = arith.addi %103, %c37 : index
          %105 = memref.load %arg2[%104] : memref<?xf64>
          %106 = arith.mulf %45, %105 : f64
          %107 = arith.addf %101, %106 : f64
          %108 = arith.addi %99, %c-38 : index
          memref.store %107, %alloca_2[%108] : memref<40xf64>
          %109 = arith.addi %89, %c2 : index
          %110 = arith.addi %109, %c-38 : index
          %111 = memref.load %arg2[%110] : memref<?xf64>
          %112 = arith.muli %109, %c-1 : index
          %113 = arith.addi %112, %12 : index
          %114 = arith.addi %113, %c37 : index
          %115 = memref.load %arg2[%114] : memref<?xf64>
          %116 = arith.mulf %46, %115 : f64
          %117 = arith.addf %111, %116 : f64
          %118 = arith.addi %109, %c-38 : index
          memref.store %117, %alloca_2[%118] : memref<40xf64>
          %119 = arith.addi %89, %c3 : index
          %120 = arith.addi %119, %c-38 : index
          %121 = memref.load %arg2[%120] : memref<?xf64>
          %122 = arith.muli %119, %c-1 : index
          %123 = arith.addi %122, %12 : index
          %124 = arith.addi %123, %c37 : index
          %125 = memref.load %arg2[%124] : memref<?xf64>
          %126 = arith.mulf %47, %125 : f64
          %127 = arith.addf %121, %126 : f64
          %128 = arith.addi %119, %c-38 : index
          memref.store %127, %alloca_2[%128] : memref<40xf64>
        }
        %57 = memref.load %alloca_1[%c0] : memref<1xf64>
        %58 = arith.muli %arg3, %c32 : index
        %59 = arith.addi %arg4, %58 : index
        %60 = arith.muli %arg3, %c32 : index
        %61 = arith.addi %arg4, %60 : index
        %62 = arith.addi %61, %c-1 : index
        %63 = arith.cmpi slt, %62, %c0 : index
        %64 = arith.subi %c-1, %62 : index
        %65 = arith.select %63, %64, %62 : index
        %66 = arith.divsi %65, %c4 : index
        %67 = arith.subi %c-1, %66 : index
        %68 = arith.select %63, %67, %66 : index
        %69 = arith.muli %68, %c-4 : index
        %70 = arith.addi %59, %69 : index
        %71 = arith.addi %70, %c-1 : index
        scf.for %arg5 = %c0 to %71 step %c1 {
          %88 = arith.addi %12, %c-2 : index
          %89 = arith.cmpi slt, %88, %c0 : index
          %90 = arith.subi %c-1, %88 : index
          %91 = arith.select %89, %90, %88 : index
          %92 = arith.divsi %91, %c4 : index
          %93 = arith.subi %c-1, %92 : index
          %94 = arith.select %89, %93, %92 : index
          %95 = arith.muli %94, %c4 : index
          %96 = arith.addi %arg5, %95 : index
          %97 = arith.addi %96, %c39 : index
          %98 = arith.addi %97, %c-38 : index
          %99 = memref.load %arg2[%98] : memref<?xf64>
          %100 = arith.muli %97, %c-1 : index
          %101 = arith.addi %100, %12 : index
          %102 = arith.addi %101, %c37 : index
          %103 = memref.load %arg2[%102] : memref<?xf64>
          %104 = arith.mulf %57, %103 : f64
          %105 = arith.addf %99, %104 : f64
          %106 = arith.addi %97, %c-38 : index
          memref.store %105, %alloca_2[%106] : memref<40xf64>
        }
        %72 = arith.muli %arg3, %c32 : index
        %73 = arith.addi %arg4, %72 : index
        %74 = arith.addi %73, %c-1 : index
        %75 = arith.cmpi sge, %74, %c0 : index
        scf.if %75 {
          %88 = arith.addi %12, %c-1 : index
          %89 = memref.load %arg2[%88] : memref<?xf64>
          %90 = memref.load %alloca_1[%c0] : memref<1xf64>
          %91 = memref.load %arg2[%c0] : memref<?xf64>
          %92 = arith.mulf %90, %91 : f64
          %93 = arith.addf %89, %92 : f64
          %94 = arith.addi %12, %c-1 : index
          memref.store %93, %alloca_2[%94] : memref<40xf64>
          %95 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %95, %arg2[%c0] : memref<?xf64>
        }
        %76 = arith.muli %arg3, %c8 : index
        %77 = arith.cmpi slt, %arg4, %c0 : index
        %78 = arith.subi %c-1, %arg4 : index
        %79 = arith.select %77, %78, %arg4 : index
        %80 = arith.divsi %79, %c4 : index
        %81 = arith.subi %c-1, %80 : index
        %82 = arith.select %77, %81, %80 : index
        %83 = arith.addi %76, %82 : index
        scf.for %arg5 = %c0 to %83 step %c1 {
          %88 = arith.muli %arg5, %c4 : index
          %89 = arith.addi %12, %88 : index
          %90 = arith.addi %89, %c38 : index
          %91 = arith.muli %12, %c-1 : index
          %92 = arith.addi %91, %90 : index
          %93 = arith.addi %92, %c-37 : index
          %94 = memref.load %alloca_2[%93] : memref<40xf64>
          %95 = arith.muli %12, %c-1 : index
          %96 = arith.addi %95, %90 : index
          %97 = arith.addi %96, %c-37 : index
          memref.store %94, %arg2[%97] : memref<?xf64>
          %98 = arith.addi %90, %c1 : index
          %99 = arith.muli %12, %c-1 : index
          %100 = arith.addi %99, %98 : index
          %101 = arith.addi %100, %c-37 : index
          %102 = memref.load %alloca_2[%101] : memref<40xf64>
          %103 = arith.muli %12, %c-1 : index
          %104 = arith.addi %103, %98 : index
          %105 = arith.addi %104, %c-37 : index
          memref.store %102, %arg2[%105] : memref<?xf64>
          %106 = arith.addi %90, %c2 : index
          %107 = arith.muli %12, %c-1 : index
          %108 = arith.addi %107, %106 : index
          %109 = arith.addi %108, %c-37 : index
          %110 = memref.load %alloca_2[%109] : memref<40xf64>
          %111 = arith.muli %12, %c-1 : index
          %112 = arith.addi %111, %106 : index
          %113 = arith.addi %112, %c-37 : index
          memref.store %110, %arg2[%113] : memref<?xf64>
          %114 = arith.addi %90, %c3 : index
          %115 = arith.muli %12, %c-1 : index
          %116 = arith.addi %115, %114 : index
          %117 = arith.addi %116, %c-37 : index
          %118 = memref.load %alloca_2[%117] : memref<40xf64>
          %119 = arith.muli %12, %c-1 : index
          %120 = arith.addi %119, %114 : index
          %121 = arith.addi %120, %c-37 : index
          memref.store %118, %arg2[%121] : memref<?xf64>
        }
        %84 = arith.remsi %arg4, %c4 : index
        %85 = arith.cmpi slt, %84, %c0 : index
        %86 = arith.addi %84, %c4 : index
        %87 = arith.select %85, %86, %84 : index
        scf.for %arg5 = %c0 to %87 step %c1 {
          %88 = arith.addi %12, %arg5 : index
          %89 = arith.addi %12, %c-1 : index
          %90 = arith.cmpi slt, %89, %c0 : index
          %91 = arith.subi %c-1, %89 : index
          %92 = arith.select %90, %91, %89 : index
          %93 = arith.divsi %92, %c4 : index
          %94 = arith.subi %c-1, %93 : index
          %95 = arith.select %90, %94, %93 : index
          %96 = arith.muli %95, %c4 : index
          %97 = arith.addi %88, %96 : index
          %98 = arith.addi %97, %c38 : index
          %99 = arith.muli %12, %c-1 : index
          %100 = arith.addi %99, %98 : index
          %101 = arith.addi %100, %c-37 : index
          %102 = memref.load %alloca_2[%101] : memref<40xf64>
          %103 = arith.muli %12, %c-1 : index
          %104 = arith.addi %103, %98 : index
          %105 = arith.addi %104, %c-37 : index
          memref.store %102, %arg2[%105] : memref<?xf64>
        }
      }
    }
    return
  }
}

