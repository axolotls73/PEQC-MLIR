module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c-37 = arith.constant -37 : index
    %c38 = arith.constant 38 : index
    %c37 = arith.constant 37 : index
    %c-38 = arith.constant -38 : index
    %c39 = arith.constant 39 : index
    %c-2 = arith.constant -2 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c-1 = arith.constant -1 : index
    %c40 = arith.constant 40 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_1 = memref.alloca() : memref<f64>
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
    memref.store %6, %alloca_1[] : memref<f64>
    scf.for %arg3 = %c1 to %c40 step %c1 {
      memref.store %cst, %alloca_1[] : memref<f64>
      %7 = memref.load %alloca_1[] : memref<f64>
      %8 = arith.addi %arg3, %c-1 : index
      %9 = memref.load %arg1[%8] : memref<?xf64>
      %10 = memref.load %arg2[%c0] : memref<?xf64>
      %11 = arith.mulf %9, %10 : f64
      %12 = arith.addf %7, %11 : f64
      memref.store %12, %alloca_1[] : memref<f64>
      %13 = memref.load %alloca_3[] : memref<f64>
      %14 = memref.load %alloca_4[] : memref<f64>
      %15 = arith.mulf %14, %14 : f64
      %16 = arith.subf %13, %15 : f64
      %17 = memref.load %alloca_3[] : memref<f64>
      %18 = arith.mulf %16, %17 : f64
      memref.store %18, %alloca_3[] : memref<f64>
      %19 = arith.addi %arg3, %c-1 : index
      %20 = arith.cmpi slt, %19, %c0 : index
      %21 = arith.subi %c-1, %19 : index
      %22 = arith.select %20, %21, %19 : index
      %23 = arith.divsi %22, %c4 : index
      %24 = arith.subi %c-1, %23 : index
      %25 = arith.select %20, %24, %23 : index
      %26 = arith.muli %25, %c4 : index
      %27 = arith.addi %26, %c1 : index
      scf.for %arg4 = %c1 to %27 step %c4 {
        %85 = memref.load %alloca_1[] : memref<f64>
        %86 = arith.muli %arg4, %c-1 : index
        %87 = arith.addi %arg3, %86 : index
        %88 = arith.addi %87, %c-1 : index
        %89 = memref.load %arg1[%88] : memref<?xf64>
        %90 = memref.load %arg2[%arg4] : memref<?xf64>
        %91 = arith.mulf %89, %90 : f64
        %92 = arith.addf %85, %91 : f64
        memref.store %92, %alloca_1[] : memref<f64>
        %93 = arith.addi %arg4, %c1 : index
        %94 = memref.load %alloca_1[] : memref<f64>
        %95 = arith.muli %93, %c-1 : index
        %96 = arith.addi %arg3, %95 : index
        %97 = arith.addi %96, %c-1 : index
        %98 = memref.load %arg1[%97] : memref<?xf64>
        %99 = memref.load %arg2[%93] : memref<?xf64>
        %100 = arith.mulf %98, %99 : f64
        %101 = arith.addf %94, %100 : f64
        memref.store %101, %alloca_1[] : memref<f64>
        %102 = arith.addi %arg4, %c2 : index
        %103 = memref.load %alloca_1[] : memref<f64>
        %104 = arith.muli %102, %c-1 : index
        %105 = arith.addi %arg3, %104 : index
        %106 = arith.addi %105, %c-1 : index
        %107 = memref.load %arg1[%106] : memref<?xf64>
        %108 = memref.load %arg2[%102] : memref<?xf64>
        %109 = arith.mulf %107, %108 : f64
        %110 = arith.addf %103, %109 : f64
        memref.store %110, %alloca_1[] : memref<f64>
        %111 = arith.addi %arg4, %c3 : index
        %112 = memref.load %alloca_1[] : memref<f64>
        %113 = arith.muli %111, %c-1 : index
        %114 = arith.addi %arg3, %113 : index
        %115 = arith.addi %114, %c-1 : index
        %116 = memref.load %arg1[%115] : memref<?xf64>
        %117 = memref.load %arg2[%111] : memref<?xf64>
        %118 = arith.mulf %116, %117 : f64
        %119 = arith.addf %112, %118 : f64
        memref.store %119, %alloca_1[] : memref<f64>
      }
      %28 = arith.addi %arg3, %c-1 : index
      %29 = arith.cmpi slt, %28, %c0 : index
      %30 = arith.subi %c-1, %28 : index
      %31 = arith.select %29, %30, %28 : index
      %32 = arith.divsi %31, %c4 : index
      %33 = arith.subi %c-1, %32 : index
      %34 = arith.select %29, %33, %32 : index
      %35 = arith.muli %34, %c4 : index
      %36 = arith.addi %35, %c1 : index
      scf.for %arg4 = %36 to %arg3 step %c1 {
        %85 = memref.load %alloca_1[] : memref<f64>
        %86 = arith.muli %arg4, %c-1 : index
        %87 = arith.addi %arg3, %86 : index
        %88 = arith.addi %87, %c-1 : index
        %89 = memref.load %arg1[%88] : memref<?xf64>
        %90 = memref.load %arg2[%arg4] : memref<?xf64>
        %91 = arith.mulf %89, %90 : f64
        %92 = arith.addf %85, %91 : f64
        memref.store %92, %alloca_1[] : memref<f64>
      }
      %37 = arith.addi %arg3, %c-1 : index
      %38 = arith.cmpi eq, %37, %c0 : index
      scf.if %38 {
        %85 = memref.load %arg1[%c1] : memref<?xf64>
        %86 = memref.load %alloca_1[] : memref<f64>
        %87 = arith.addf %85, %86 : f64
        %88 = arith.negf %87 : f64
        %89 = memref.load %alloca_3[] : memref<f64>
        %90 = arith.divf %88, %89 : f64
        memref.store %90, %alloca[%c0] : memref<1xf64>
        %91 = memref.load %arg2[%c0] : memref<?xf64>
        %92 = memref.load %alloca[%c0] : memref<1xf64>
        %93 = memref.load %arg2[%c0] : memref<?xf64>
        %94 = arith.mulf %92, %93 : f64
        %95 = arith.addf %91, %94 : f64
        memref.store %95, %alloca_2[%c0] : memref<40xf64>
        %96 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %96, %arg2[%c0] : memref<?xf64>
        %97 = memref.load %alloca[%c0] : memref<1xf64>
        memref.store %97, %alloca_5[%c0] : memref<1xf64>
        memref.store %97, %alloca_4[] : memref<f64>
        %98 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %98, %arg2[%c1] : memref<?xf64>
      }
      %39 = arith.addi %arg3, %c-2 : index
      %40 = arith.cmpi sge, %39, %c0 : index
      scf.if %40 {
        %85 = memref.load %arg1[%arg3] : memref<?xf64>
        %86 = memref.load %alloca_1[] : memref<f64>
        %87 = arith.addf %85, %86 : f64
        %88 = arith.negf %87 : f64
        %89 = memref.load %alloca_3[] : memref<f64>
        %90 = arith.divf %88, %89 : f64
        memref.store %90, %alloca[%c0] : memref<1xf64>
        %91 = memref.load %arg2[%c0] : memref<?xf64>
        %92 = memref.load %alloca[%c0] : memref<1xf64>
        %93 = arith.addi %arg3, %c-1 : index
        %94 = memref.load %arg2[%93] : memref<?xf64>
        %95 = arith.mulf %92, %94 : f64
        %96 = arith.addf %91, %95 : f64
        memref.store %96, %alloca_2[%c0] : memref<40xf64>
        %97 = memref.load %alloca[%c0] : memref<1xf64>
        memref.store %97, %alloca_5[%c0] : memref<1xf64>
        memref.store %97, %alloca_4[] : memref<f64>
        %98 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %98, %arg2[%arg3] : memref<?xf64>
      }
      %41 = arith.addi %arg3, %c-2 : index
      %42 = arith.cmpi slt, %41, %c0 : index
      %43 = arith.subi %c-1, %41 : index
      %44 = arith.select %42, %43, %41 : index
      %45 = arith.divsi %44, %c4 : index
      %46 = arith.subi %c-1, %45 : index
      %47 = arith.select %42, %46, %45 : index
      %48 = arith.muli %47, %c4 : index
      %49 = arith.addi %48, %c39 : index
      scf.for %arg4 = %c39 to %49 step %c4 {
        %85 = arith.addi %arg4, %c-38 : index
        %86 = memref.load %arg2[%85] : memref<?xf64>
        %87 = memref.load %alloca[%c0] : memref<1xf64>
        %88 = arith.muli %arg4, %c-1 : index
        %89 = arith.addi %88, %arg3 : index
        %90 = arith.addi %89, %c37 : index
        %91 = memref.load %arg2[%90] : memref<?xf64>
        %92 = arith.mulf %87, %91 : f64
        %93 = arith.addf %86, %92 : f64
        %94 = arith.addi %arg4, %c-38 : index
        memref.store %93, %alloca_2[%94] : memref<40xf64>
        %95 = arith.addi %arg4, %c1 : index
        %96 = arith.addi %95, %c-38 : index
        %97 = memref.load %arg2[%96] : memref<?xf64>
        %98 = memref.load %alloca[%c0] : memref<1xf64>
        %99 = arith.muli %95, %c-1 : index
        %100 = arith.addi %99, %arg3 : index
        %101 = arith.addi %100, %c37 : index
        %102 = memref.load %arg2[%101] : memref<?xf64>
        %103 = arith.mulf %98, %102 : f64
        %104 = arith.addf %97, %103 : f64
        %105 = arith.addi %95, %c-38 : index
        memref.store %104, %alloca_2[%105] : memref<40xf64>
        %106 = arith.addi %arg4, %c2 : index
        %107 = arith.addi %106, %c-38 : index
        %108 = memref.load %arg2[%107] : memref<?xf64>
        %109 = memref.load %alloca[%c0] : memref<1xf64>
        %110 = arith.muli %106, %c-1 : index
        %111 = arith.addi %110, %arg3 : index
        %112 = arith.addi %111, %c37 : index
        %113 = memref.load %arg2[%112] : memref<?xf64>
        %114 = arith.mulf %109, %113 : f64
        %115 = arith.addf %108, %114 : f64
        %116 = arith.addi %106, %c-38 : index
        memref.store %115, %alloca_2[%116] : memref<40xf64>
        %117 = arith.addi %arg4, %c3 : index
        %118 = arith.addi %117, %c-38 : index
        %119 = memref.load %arg2[%118] : memref<?xf64>
        %120 = memref.load %alloca[%c0] : memref<1xf64>
        %121 = arith.muli %117, %c-1 : index
        %122 = arith.addi %121, %arg3 : index
        %123 = arith.addi %122, %c37 : index
        %124 = memref.load %arg2[%123] : memref<?xf64>
        %125 = arith.mulf %120, %124 : f64
        %126 = arith.addf %119, %125 : f64
        %127 = arith.addi %117, %c-38 : index
        memref.store %126, %alloca_2[%127] : memref<40xf64>
      }
      %50 = arith.addi %arg3, %c-2 : index
      %51 = arith.cmpi slt, %50, %c0 : index
      %52 = arith.subi %c-1, %50 : index
      %53 = arith.select %51, %52, %50 : index
      %54 = arith.divsi %53, %c4 : index
      %55 = arith.subi %c-1, %54 : index
      %56 = arith.select %51, %55, %54 : index
      %57 = arith.muli %56, %c4 : index
      %58 = arith.addi %57, %c39 : index
      %59 = arith.addi %arg3, %c37 : index
      scf.for %arg4 = %58 to %59 step %c1 {
        %85 = arith.addi %arg4, %c-38 : index
        %86 = memref.load %arg2[%85] : memref<?xf64>
        %87 = memref.load %alloca[%c0] : memref<1xf64>
        %88 = arith.muli %arg4, %c-1 : index
        %89 = arith.addi %88, %arg3 : index
        %90 = arith.addi %89, %c37 : index
        %91 = memref.load %arg2[%90] : memref<?xf64>
        %92 = arith.mulf %87, %91 : f64
        %93 = arith.addf %86, %92 : f64
        %94 = arith.addi %arg4, %c-38 : index
        memref.store %93, %alloca_2[%94] : memref<40xf64>
      }
      %60 = arith.addi %arg3, %c-2 : index
      %61 = arith.cmpi sge, %60, %c0 : index
      scf.if %61 {
        %85 = arith.addi %arg3, %c-1 : index
        %86 = memref.load %arg2[%85] : memref<?xf64>
        %87 = memref.load %alloca[%c0] : memref<1xf64>
        %88 = memref.load %arg2[%c0] : memref<?xf64>
        %89 = arith.mulf %87, %88 : f64
        %90 = arith.addf %86, %89 : f64
        %91 = arith.addi %arg3, %c-1 : index
        memref.store %90, %alloca_2[%91] : memref<40xf64>
        %92 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %92, %arg2[%c0] : memref<?xf64>
      }
      %62 = arith.addi %arg3, %c38 : index
      %63 = arith.addi %arg3, %c-1 : index
      %64 = arith.cmpi slt, %63, %c0 : index
      %65 = arith.subi %c-1, %63 : index
      %66 = arith.select %64, %65, %63 : index
      %67 = arith.divsi %66, %c4 : index
      %68 = arith.subi %c-1, %67 : index
      %69 = arith.select %64, %68, %67 : index
      %70 = arith.muli %69, %c4 : index
      %71 = arith.addi %arg3, %70 : index
      %72 = arith.addi %71, %c38 : index
      scf.for %arg4 = %62 to %72 step %c4 {
        %85 = arith.muli %arg3, %c-1 : index
        %86 = arith.addi %85, %arg4 : index
        %87 = arith.addi %86, %c-37 : index
        %88 = memref.load %alloca_2[%87] : memref<40xf64>
        %89 = arith.muli %arg3, %c-1 : index
        %90 = arith.addi %89, %arg4 : index
        %91 = arith.addi %90, %c-37 : index
        memref.store %88, %arg2[%91] : memref<?xf64>
        %92 = arith.addi %arg4, %c1 : index
        %93 = arith.muli %arg3, %c-1 : index
        %94 = arith.addi %93, %92 : index
        %95 = arith.addi %94, %c-37 : index
        %96 = memref.load %alloca_2[%95] : memref<40xf64>
        %97 = arith.muli %arg3, %c-1 : index
        %98 = arith.addi %97, %92 : index
        %99 = arith.addi %98, %c-37 : index
        memref.store %96, %arg2[%99] : memref<?xf64>
        %100 = arith.addi %arg4, %c2 : index
        %101 = arith.muli %arg3, %c-1 : index
        %102 = arith.addi %101, %100 : index
        %103 = arith.addi %102, %c-37 : index
        %104 = memref.load %alloca_2[%103] : memref<40xf64>
        %105 = arith.muli %arg3, %c-1 : index
        %106 = arith.addi %105, %100 : index
        %107 = arith.addi %106, %c-37 : index
        memref.store %104, %arg2[%107] : memref<?xf64>
        %108 = arith.addi %arg4, %c3 : index
        %109 = arith.muli %arg3, %c-1 : index
        %110 = arith.addi %109, %108 : index
        %111 = arith.addi %110, %c-37 : index
        %112 = memref.load %alloca_2[%111] : memref<40xf64>
        %113 = arith.muli %arg3, %c-1 : index
        %114 = arith.addi %113, %108 : index
        %115 = arith.addi %114, %c-37 : index
        memref.store %112, %arg2[%115] : memref<?xf64>
      }
      %73 = arith.addi %arg3, %c-1 : index
      %74 = arith.cmpi slt, %73, %c0 : index
      %75 = arith.subi %c-1, %73 : index
      %76 = arith.select %74, %75, %73 : index
      %77 = arith.divsi %76, %c4 : index
      %78 = arith.subi %c-1, %77 : index
      %79 = arith.select %74, %78, %77 : index
      %80 = arith.muli %79, %c4 : index
      %81 = arith.addi %arg3, %80 : index
      %82 = arith.addi %81, %c38 : index
      %83 = arith.muli %arg3, %c2 : index
      %84 = arith.addi %83, %c37 : index
      scf.for %arg4 = %82 to %84 step %c1 {
        %85 = arith.muli %arg3, %c-1 : index
        %86 = arith.addi %85, %arg4 : index
        %87 = arith.addi %86, %c-37 : index
        %88 = memref.load %alloca_2[%87] : memref<40xf64>
        %89 = arith.muli %arg3, %c-1 : index
        %90 = arith.addi %89, %arg4 : index
        %91 = arith.addi %90, %c-37 : index
        memref.store %88, %arg2[%91] : memref<?xf64>
      }
    }
    return
  }
}

