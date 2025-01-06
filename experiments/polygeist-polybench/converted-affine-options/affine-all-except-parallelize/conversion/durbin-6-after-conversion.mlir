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
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_1 = memref.alloca() : memref<f64>
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
    memref.store %0, %alloca_1[] : memref<f64>
    scf.for %arg3 = %c0 to %c2 step %c1 {
      %5 = arith.muli %arg3, %c32 : index
      %6 = arith.addi %5, %c1 : index
      %7 = arith.muli %arg3, %c-32 : index
      %8 = arith.addi %7, %c39 : index
      %9 = arith.minsi %8, %c32 : index
      scf.for %arg4 = %c0 to %9 step %c1 {
        %10 = arith.addi %6, %arg4 : index
        memref.store %cst, %alloca_1[] : memref<f64>
        %11 = memref.load %alloca_1[] : memref<f64>
        %12 = arith.addi %10, %c-1 : index
        %13 = memref.load %arg1[%12] : memref<?xf64>
        %14 = memref.load %arg2[%c0] : memref<?xf64>
        %15 = arith.mulf %13, %14 : f64
        %16 = arith.addf %11, %15 : f64
        memref.store %16, %alloca_1[] : memref<f64>
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
          %86 = arith.muli %arg5, %c4 : index
          %87 = arith.addi %86, %c1 : index
          %88 = memref.load %alloca_1[] : memref<f64>
          %89 = arith.muli %87, %c-1 : index
          %90 = arith.addi %10, %89 : index
          %91 = arith.addi %90, %c-1 : index
          %92 = memref.load %arg1[%91] : memref<?xf64>
          %93 = memref.load %arg2[%87] : memref<?xf64>
          %94 = arith.mulf %92, %93 : f64
          %95 = arith.addf %88, %94 : f64
          memref.store %95, %alloca_1[] : memref<f64>
          %96 = arith.addi %87, %c1 : index
          %97 = memref.load %alloca_1[] : memref<f64>
          %98 = arith.muli %96, %c-1 : index
          %99 = arith.addi %10, %98 : index
          %100 = arith.addi %99, %c-1 : index
          %101 = memref.load %arg1[%100] : memref<?xf64>
          %102 = memref.load %arg2[%96] : memref<?xf64>
          %103 = arith.mulf %101, %102 : f64
          %104 = arith.addf %97, %103 : f64
          memref.store %104, %alloca_1[] : memref<f64>
          %105 = arith.addi %87, %c2 : index
          %106 = memref.load %alloca_1[] : memref<f64>
          %107 = arith.muli %105, %c-1 : index
          %108 = arith.addi %10, %107 : index
          %109 = arith.addi %108, %c-1 : index
          %110 = memref.load %arg1[%109] : memref<?xf64>
          %111 = memref.load %arg2[%105] : memref<?xf64>
          %112 = arith.mulf %110, %111 : f64
          %113 = arith.addf %106, %112 : f64
          memref.store %113, %alloca_1[] : memref<f64>
          %114 = arith.addi %87, %c3 : index
          %115 = memref.load %alloca_1[] : memref<f64>
          %116 = arith.muli %114, %c-1 : index
          %117 = arith.addi %10, %116 : index
          %118 = arith.addi %117, %c-1 : index
          %119 = memref.load %arg1[%118] : memref<?xf64>
          %120 = memref.load %arg2[%114] : memref<?xf64>
          %121 = arith.mulf %119, %120 : f64
          %122 = arith.addf %115, %121 : f64
          memref.store %122, %alloca_1[] : memref<f64>
        }
        %31 = arith.remsi %arg4, %c4 : index
        %32 = arith.cmpi slt, %31, %c0 : index
        %33 = arith.addi %31, %c4 : index
        %34 = arith.select %32, %33, %31 : index
        scf.for %arg5 = %c0 to %34 step %c1 {
          %86 = arith.addi %10, %c-1 : index
          %87 = arith.cmpi slt, %86, %c0 : index
          %88 = arith.subi %c-1, %86 : index
          %89 = arith.select %87, %88, %86 : index
          %90 = arith.divsi %89, %c4 : index
          %91 = arith.subi %c-1, %90 : index
          %92 = arith.select %87, %91, %90 : index
          %93 = arith.muli %92, %c4 : index
          %94 = arith.addi %arg5, %93 : index
          %95 = arith.addi %94, %c1 : index
          %96 = memref.load %alloca_1[] : memref<f64>
          %97 = arith.muli %95, %c-1 : index
          %98 = arith.addi %10, %97 : index
          %99 = arith.addi %98, %c-1 : index
          %100 = memref.load %arg1[%99] : memref<?xf64>
          %101 = memref.load %arg2[%95] : memref<?xf64>
          %102 = arith.mulf %100, %101 : f64
          %103 = arith.addf %96, %102 : f64
          memref.store %103, %alloca_1[] : memref<f64>
        }
        %35 = arith.muli %arg3, %c32 : index
        %36 = arith.addi %arg4, %35 : index
        %37 = arith.cmpi eq, %36, %c0 : index
        scf.if %37 {
          %86 = memref.load %arg1[%c1] : memref<?xf64>
          %87 = memref.load %alloca_1[] : memref<f64>
          %88 = arith.addf %86, %87 : f64
          %89 = arith.negf %88 : f64
          %90 = memref.load %alloca_3[] : memref<f64>
          %91 = arith.divf %89, %90 : f64
          memref.store %91, %alloca[%c0] : memref<1xf64>
          %92 = memref.load %arg2[%c0] : memref<?xf64>
          %93 = memref.load %alloca[%c0] : memref<1xf64>
          %94 = memref.load %arg2[%c0] : memref<?xf64>
          %95 = arith.mulf %93, %94 : f64
          %96 = arith.addf %92, %95 : f64
          memref.store %96, %alloca_2[%c0] : memref<40xf64>
          %97 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %97, %arg2[%c0] : memref<?xf64>
          %98 = memref.load %alloca[%c0] : memref<1xf64>
          memref.store %98, %alloca_5[%c0] : memref<1xf64>
          memref.store %98, %alloca_4[] : memref<f64>
          %99 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %99, %arg2[%c1] : memref<?xf64>
        }
        %38 = arith.muli %arg3, %c32 : index
        %39 = arith.addi %arg4, %38 : index
        %40 = arith.addi %39, %c-1 : index
        %41 = arith.cmpi sge, %40, %c0 : index
        scf.if %41 {
          %86 = memref.load %arg1[%10] : memref<?xf64>
          %87 = memref.load %alloca_1[] : memref<f64>
          %88 = arith.addf %86, %87 : f64
          %89 = arith.negf %88 : f64
          %90 = memref.load %alloca_3[] : memref<f64>
          %91 = arith.divf %89, %90 : f64
          memref.store %91, %alloca[%c0] : memref<1xf64>
          %92 = memref.load %arg2[%c0] : memref<?xf64>
          %93 = memref.load %alloca[%c0] : memref<1xf64>
          %94 = arith.addi %10, %c-1 : index
          %95 = memref.load %arg2[%94] : memref<?xf64>
          %96 = arith.mulf %93, %95 : f64
          %97 = arith.addf %92, %96 : f64
          memref.store %97, %alloca_2[%c0] : memref<40xf64>
          %98 = memref.load %alloca[%c0] : memref<1xf64>
          memref.store %98, %alloca_5[%c0] : memref<1xf64>
          memref.store %98, %alloca_4[] : memref<f64>
          %99 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %99, %arg2[%10] : memref<?xf64>
        }
        %42 = memref.load %alloca[%c0] : memref<1xf64>
        %43 = memref.load %alloca[%c0] : memref<1xf64>
        %44 = memref.load %alloca[%c0] : memref<1xf64>
        %45 = memref.load %alloca[%c0] : memref<1xf64>
        %46 = arith.muli %arg3, %c32 : index
        %47 = arith.addi %arg4, %46 : index
        %48 = arith.addi %47, %c-1 : index
        %49 = arith.cmpi slt, %48, %c0 : index
        %50 = arith.subi %c-1, %48 : index
        %51 = arith.select %49, %50, %48 : index
        %52 = arith.divsi %51, %c4 : index
        %53 = arith.subi %c-1, %52 : index
        %54 = arith.select %49, %53, %52 : index
        scf.for %arg5 = %c0 to %54 step %c1 {
          %86 = arith.muli %arg5, %c4 : index
          %87 = arith.addi %86, %c39 : index
          %88 = arith.addi %87, %c-38 : index
          %89 = memref.load %arg2[%88] : memref<?xf64>
          %90 = arith.muli %87, %c-1 : index
          %91 = arith.addi %90, %10 : index
          %92 = arith.addi %91, %c37 : index
          %93 = memref.load %arg2[%92] : memref<?xf64>
          %94 = arith.mulf %42, %93 : f64
          %95 = arith.addf %89, %94 : f64
          %96 = arith.addi %87, %c-38 : index
          memref.store %95, %alloca_2[%96] : memref<40xf64>
          %97 = arith.addi %87, %c1 : index
          %98 = arith.addi %97, %c-38 : index
          %99 = memref.load %arg2[%98] : memref<?xf64>
          %100 = arith.muli %97, %c-1 : index
          %101 = arith.addi %100, %10 : index
          %102 = arith.addi %101, %c37 : index
          %103 = memref.load %arg2[%102] : memref<?xf64>
          %104 = arith.mulf %43, %103 : f64
          %105 = arith.addf %99, %104 : f64
          %106 = arith.addi %97, %c-38 : index
          memref.store %105, %alloca_2[%106] : memref<40xf64>
          %107 = arith.addi %87, %c2 : index
          %108 = arith.addi %107, %c-38 : index
          %109 = memref.load %arg2[%108] : memref<?xf64>
          %110 = arith.muli %107, %c-1 : index
          %111 = arith.addi %110, %10 : index
          %112 = arith.addi %111, %c37 : index
          %113 = memref.load %arg2[%112] : memref<?xf64>
          %114 = arith.mulf %44, %113 : f64
          %115 = arith.addf %109, %114 : f64
          %116 = arith.addi %107, %c-38 : index
          memref.store %115, %alloca_2[%116] : memref<40xf64>
          %117 = arith.addi %87, %c3 : index
          %118 = arith.addi %117, %c-38 : index
          %119 = memref.load %arg2[%118] : memref<?xf64>
          %120 = arith.muli %117, %c-1 : index
          %121 = arith.addi %120, %10 : index
          %122 = arith.addi %121, %c37 : index
          %123 = memref.load %arg2[%122] : memref<?xf64>
          %124 = arith.mulf %45, %123 : f64
          %125 = arith.addf %119, %124 : f64
          %126 = arith.addi %117, %c-38 : index
          memref.store %125, %alloca_2[%126] : memref<40xf64>
        }
        %55 = memref.load %alloca[%c0] : memref<1xf64>
        %56 = arith.muli %arg3, %c32 : index
        %57 = arith.addi %arg4, %56 : index
        %58 = arith.muli %arg3, %c32 : index
        %59 = arith.addi %arg4, %58 : index
        %60 = arith.addi %59, %c-1 : index
        %61 = arith.cmpi slt, %60, %c0 : index
        %62 = arith.subi %c-1, %60 : index
        %63 = arith.select %61, %62, %60 : index
        %64 = arith.divsi %63, %c4 : index
        %65 = arith.subi %c-1, %64 : index
        %66 = arith.select %61, %65, %64 : index
        %67 = arith.muli %66, %c-4 : index
        %68 = arith.addi %57, %67 : index
        %69 = arith.addi %68, %c-1 : index
        scf.for %arg5 = %c0 to %69 step %c1 {
          %86 = arith.addi %10, %c-2 : index
          %87 = arith.cmpi slt, %86, %c0 : index
          %88 = arith.subi %c-1, %86 : index
          %89 = arith.select %87, %88, %86 : index
          %90 = arith.divsi %89, %c4 : index
          %91 = arith.subi %c-1, %90 : index
          %92 = arith.select %87, %91, %90 : index
          %93 = arith.muli %92, %c4 : index
          %94 = arith.addi %arg5, %93 : index
          %95 = arith.addi %94, %c39 : index
          %96 = arith.addi %95, %c-38 : index
          %97 = memref.load %arg2[%96] : memref<?xf64>
          %98 = arith.muli %95, %c-1 : index
          %99 = arith.addi %98, %10 : index
          %100 = arith.addi %99, %c37 : index
          %101 = memref.load %arg2[%100] : memref<?xf64>
          %102 = arith.mulf %55, %101 : f64
          %103 = arith.addf %97, %102 : f64
          %104 = arith.addi %95, %c-38 : index
          memref.store %103, %alloca_2[%104] : memref<40xf64>
        }
        %70 = arith.muli %arg3, %c32 : index
        %71 = arith.addi %arg4, %70 : index
        %72 = arith.addi %71, %c-1 : index
        %73 = arith.cmpi sge, %72, %c0 : index
        scf.if %73 {
          %86 = arith.addi %10, %c-1 : index
          %87 = memref.load %arg2[%86] : memref<?xf64>
          %88 = memref.load %alloca[%c0] : memref<1xf64>
          %89 = memref.load %arg2[%c0] : memref<?xf64>
          %90 = arith.mulf %88, %89 : f64
          %91 = arith.addf %87, %90 : f64
          %92 = arith.addi %10, %c-1 : index
          memref.store %91, %alloca_2[%92] : memref<40xf64>
          %93 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %93, %arg2[%c0] : memref<?xf64>
        }
        %74 = arith.muli %arg3, %c8 : index
        %75 = arith.cmpi slt, %arg4, %c0 : index
        %76 = arith.subi %c-1, %arg4 : index
        %77 = arith.select %75, %76, %arg4 : index
        %78 = arith.divsi %77, %c4 : index
        %79 = arith.subi %c-1, %78 : index
        %80 = arith.select %75, %79, %78 : index
        %81 = arith.addi %74, %80 : index
        scf.for %arg5 = %c0 to %81 step %c1 {
          %86 = arith.muli %arg5, %c4 : index
          %87 = arith.addi %10, %86 : index
          %88 = arith.addi %87, %c38 : index
          %89 = arith.muli %10, %c-1 : index
          %90 = arith.addi %89, %88 : index
          %91 = arith.addi %90, %c-37 : index
          %92 = memref.load %alloca_2[%91] : memref<40xf64>
          %93 = arith.muli %10, %c-1 : index
          %94 = arith.addi %93, %88 : index
          %95 = arith.addi %94, %c-37 : index
          memref.store %92, %arg2[%95] : memref<?xf64>
          %96 = arith.addi %88, %c1 : index
          %97 = arith.muli %10, %c-1 : index
          %98 = arith.addi %97, %96 : index
          %99 = arith.addi %98, %c-37 : index
          %100 = memref.load %alloca_2[%99] : memref<40xf64>
          %101 = arith.muli %10, %c-1 : index
          %102 = arith.addi %101, %96 : index
          %103 = arith.addi %102, %c-37 : index
          memref.store %100, %arg2[%103] : memref<?xf64>
          %104 = arith.addi %88, %c2 : index
          %105 = arith.muli %10, %c-1 : index
          %106 = arith.addi %105, %104 : index
          %107 = arith.addi %106, %c-37 : index
          %108 = memref.load %alloca_2[%107] : memref<40xf64>
          %109 = arith.muli %10, %c-1 : index
          %110 = arith.addi %109, %104 : index
          %111 = arith.addi %110, %c-37 : index
          memref.store %108, %arg2[%111] : memref<?xf64>
          %112 = arith.addi %88, %c3 : index
          %113 = arith.muli %10, %c-1 : index
          %114 = arith.addi %113, %112 : index
          %115 = arith.addi %114, %c-37 : index
          %116 = memref.load %alloca_2[%115] : memref<40xf64>
          %117 = arith.muli %10, %c-1 : index
          %118 = arith.addi %117, %112 : index
          %119 = arith.addi %118, %c-37 : index
          memref.store %116, %arg2[%119] : memref<?xf64>
        }
        %82 = arith.remsi %arg4, %c4 : index
        %83 = arith.cmpi slt, %82, %c0 : index
        %84 = arith.addi %82, %c4 : index
        %85 = arith.select %83, %84, %82 : index
        scf.for %arg5 = %c0 to %85 step %c1 {
          %86 = arith.addi %10, %arg5 : index
          %87 = arith.addi %10, %c-1 : index
          %88 = arith.cmpi slt, %87, %c0 : index
          %89 = arith.subi %c-1, %87 : index
          %90 = arith.select %88, %89, %87 : index
          %91 = arith.divsi %90, %c4 : index
          %92 = arith.subi %c-1, %91 : index
          %93 = arith.select %88, %92, %91 : index
          %94 = arith.muli %93, %c4 : index
          %95 = arith.addi %86, %94 : index
          %96 = arith.addi %95, %c38 : index
          %97 = arith.muli %10, %c-1 : index
          %98 = arith.addi %97, %96 : index
          %99 = arith.addi %98, %c-37 : index
          %100 = memref.load %alloca_2[%99] : memref<40xf64>
          %101 = arith.muli %10, %c-1 : index
          %102 = arith.addi %101, %96 : index
          %103 = arith.addi %102, %c-37 : index
          memref.store %100, %arg2[%103] : memref<?xf64>
        }
      }
    }
    return
  }
}

