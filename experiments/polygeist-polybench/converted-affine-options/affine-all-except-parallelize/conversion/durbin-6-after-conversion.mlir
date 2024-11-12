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
    scf.for %arg3 = %c0 to %c39 step %c1 {
      %7 = arith.addi %arg3, %c1 : index
      scf.for %arg4 = %c0 to %c1 step %c1 {
        %8 = arith.addi %7, %arg4 : index
        memref.store %cst, %alloca_1[] : memref<f64>
        %9 = memref.load %alloca_1[] : memref<f64>
        %10 = arith.addi %8, %c-1 : index
        %11 = memref.load %arg1[%10] : memref<?xf64>
        %12 = memref.load %arg2[%c0] : memref<?xf64>
        %13 = arith.mulf %11, %12 : f64
        %14 = arith.addf %9, %13 : f64
        memref.store %14, %alloca_1[] : memref<f64>
        %15 = memref.load %alloca_3[] : memref<f64>
        %16 = memref.load %alloca_4[] : memref<f64>
        %17 = arith.mulf %16, %16 : f64
        %18 = arith.subf %15, %17 : f64
        %19 = memref.load %alloca_3[] : memref<f64>
        %20 = arith.mulf %18, %19 : f64
        memref.store %20, %alloca_3[] : memref<f64>
        %21 = arith.addi %arg4, %arg3 : index
        %22 = arith.cmpi slt, %21, %c0 : index
        %23 = arith.subi %c-1, %21 : index
        %24 = arith.select %22, %23, %21 : index
        %25 = arith.divsi %24, %c4 : index
        %26 = arith.subi %c-1, %25 : index
        %27 = arith.select %22, %26, %25 : index
        scf.for %arg5 = %c0 to %27 step %c1 {
          %78 = arith.muli %arg5, %c4 : index
          %79 = arith.addi %78, %c1 : index
          %80 = memref.load %alloca_1[] : memref<f64>
          %81 = arith.muli %79, %c-1 : index
          %82 = arith.addi %8, %81 : index
          %83 = arith.addi %82, %c-1 : index
          %84 = memref.load %arg1[%83] : memref<?xf64>
          %85 = memref.load %arg2[%79] : memref<?xf64>
          %86 = arith.mulf %84, %85 : f64
          %87 = arith.addf %80, %86 : f64
          memref.store %87, %alloca_1[] : memref<f64>
          %88 = arith.addi %79, %c1 : index
          %89 = memref.load %alloca_1[] : memref<f64>
          %90 = arith.muli %88, %c-1 : index
          %91 = arith.addi %8, %90 : index
          %92 = arith.addi %91, %c-1 : index
          %93 = memref.load %arg1[%92] : memref<?xf64>
          %94 = memref.load %arg2[%88] : memref<?xf64>
          %95 = arith.mulf %93, %94 : f64
          %96 = arith.addf %89, %95 : f64
          memref.store %96, %alloca_1[] : memref<f64>
          %97 = arith.addi %79, %c2 : index
          %98 = memref.load %alloca_1[] : memref<f64>
          %99 = arith.muli %97, %c-1 : index
          %100 = arith.addi %8, %99 : index
          %101 = arith.addi %100, %c-1 : index
          %102 = memref.load %arg1[%101] : memref<?xf64>
          %103 = memref.load %arg2[%97] : memref<?xf64>
          %104 = arith.mulf %102, %103 : f64
          %105 = arith.addf %98, %104 : f64
          memref.store %105, %alloca_1[] : memref<f64>
          %106 = arith.addi %79, %c3 : index
          %107 = memref.load %alloca_1[] : memref<f64>
          %108 = arith.muli %106, %c-1 : index
          %109 = arith.addi %8, %108 : index
          %110 = arith.addi %109, %c-1 : index
          %111 = memref.load %arg1[%110] : memref<?xf64>
          %112 = memref.load %arg2[%106] : memref<?xf64>
          %113 = arith.mulf %111, %112 : f64
          %114 = arith.addf %107, %113 : f64
          memref.store %114, %alloca_1[] : memref<f64>
        }
        %28 = arith.addi %arg4, %arg3 : index
        %29 = arith.remsi %28, %c4 : index
        %30 = arith.cmpi slt, %29, %c0 : index
        %31 = arith.addi %29, %c4 : index
        %32 = arith.select %30, %31, %29 : index
        scf.for %arg5 = %c0 to %32 step %c1 {
          %78 = arith.addi %8, %c-1 : index
          %79 = arith.cmpi slt, %78, %c0 : index
          %80 = arith.subi %c-1, %78 : index
          %81 = arith.select %79, %80, %78 : index
          %82 = arith.divsi %81, %c4 : index
          %83 = arith.subi %c-1, %82 : index
          %84 = arith.select %79, %83, %82 : index
          %85 = arith.muli %84, %c4 : index
          %86 = arith.addi %arg5, %85 : index
          %87 = arith.addi %86, %c1 : index
          %88 = memref.load %alloca_1[] : memref<f64>
          %89 = arith.muli %87, %c-1 : index
          %90 = arith.addi %8, %89 : index
          %91 = arith.addi %90, %c-1 : index
          %92 = memref.load %arg1[%91] : memref<?xf64>
          %93 = memref.load %arg2[%87] : memref<?xf64>
          %94 = arith.mulf %92, %93 : f64
          %95 = arith.addf %88, %94 : f64
          memref.store %95, %alloca_1[] : memref<f64>
        }
        %33 = arith.addi %arg4, %arg3 : index
        %34 = arith.cmpi eq, %33, %c0 : index
        scf.if %34 {
          %78 = memref.load %arg1[%c1] : memref<?xf64>
          %79 = memref.load %alloca_1[] : memref<f64>
          %80 = arith.addf %78, %79 : f64
          %81 = arith.negf %80 : f64
          %82 = memref.load %alloca_3[] : memref<f64>
          %83 = arith.divf %81, %82 : f64
          memref.store %83, %alloca[%c0] : memref<1xf64>
          %84 = memref.load %arg2[%c0] : memref<?xf64>
          %85 = memref.load %alloca[%c0] : memref<1xf64>
          %86 = memref.load %arg2[%c0] : memref<?xf64>
          %87 = arith.mulf %85, %86 : f64
          %88 = arith.addf %84, %87 : f64
          memref.store %88, %alloca_2[%c0] : memref<40xf64>
          %89 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %89, %arg2[%c0] : memref<?xf64>
          %90 = memref.load %alloca[%c0] : memref<1xf64>
          memref.store %90, %alloca_5[%c0] : memref<1xf64>
          memref.store %90, %alloca_4[] : memref<f64>
          %91 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %91, %arg2[%c1] : memref<?xf64>
        }
        %35 = arith.addi %arg4, %arg3 : index
        %36 = arith.addi %35, %c-1 : index
        %37 = arith.cmpi sge, %36, %c0 : index
        scf.if %37 {
          %78 = memref.load %arg1[%8] : memref<?xf64>
          %79 = memref.load %alloca_1[] : memref<f64>
          %80 = arith.addf %78, %79 : f64
          %81 = arith.negf %80 : f64
          %82 = memref.load %alloca_3[] : memref<f64>
          %83 = arith.divf %81, %82 : f64
          memref.store %83, %alloca[%c0] : memref<1xf64>
          %84 = memref.load %arg2[%c0] : memref<?xf64>
          %85 = memref.load %alloca[%c0] : memref<1xf64>
          %86 = arith.addi %8, %c-1 : index
          %87 = memref.load %arg2[%86] : memref<?xf64>
          %88 = arith.mulf %85, %87 : f64
          %89 = arith.addf %84, %88 : f64
          memref.store %89, %alloca_2[%c0] : memref<40xf64>
          %90 = memref.load %alloca[%c0] : memref<1xf64>
          memref.store %90, %alloca_5[%c0] : memref<1xf64>
          memref.store %90, %alloca_4[] : memref<f64>
          %91 = memref.load %alloca_5[%c0] : memref<1xf64>
          memref.store %91, %arg2[%8] : memref<?xf64>
        }
        %38 = memref.load %alloca[%c0] : memref<1xf64>
        %39 = memref.load %alloca[%c0] : memref<1xf64>
        %40 = memref.load %alloca[%c0] : memref<1xf64>
        %41 = memref.load %alloca[%c0] : memref<1xf64>
        %42 = arith.addi %arg4, %arg3 : index
        %43 = arith.addi %42, %c-1 : index
        %44 = arith.cmpi slt, %43, %c0 : index
        %45 = arith.subi %c-1, %43 : index
        %46 = arith.select %44, %45, %43 : index
        %47 = arith.divsi %46, %c4 : index
        %48 = arith.subi %c-1, %47 : index
        %49 = arith.select %44, %48, %47 : index
        scf.for %arg5 = %c0 to %49 step %c1 {
          %78 = arith.muli %arg5, %c4 : index
          %79 = arith.addi %78, %c39 : index
          %80 = arith.addi %79, %c-38 : index
          %81 = memref.load %arg2[%80] : memref<?xf64>
          %82 = arith.muli %79, %c-1 : index
          %83 = arith.addi %82, %8 : index
          %84 = arith.addi %83, %c37 : index
          %85 = memref.load %arg2[%84] : memref<?xf64>
          %86 = arith.mulf %38, %85 : f64
          %87 = arith.addf %81, %86 : f64
          %88 = arith.addi %79, %c-38 : index
          memref.store %87, %alloca_2[%88] : memref<40xf64>
          %89 = arith.addi %79, %c1 : index
          %90 = arith.addi %89, %c-38 : index
          %91 = memref.load %arg2[%90] : memref<?xf64>
          %92 = arith.muli %89, %c-1 : index
          %93 = arith.addi %92, %8 : index
          %94 = arith.addi %93, %c37 : index
          %95 = memref.load %arg2[%94] : memref<?xf64>
          %96 = arith.mulf %39, %95 : f64
          %97 = arith.addf %91, %96 : f64
          %98 = arith.addi %89, %c-38 : index
          memref.store %97, %alloca_2[%98] : memref<40xf64>
          %99 = arith.addi %79, %c2 : index
          %100 = arith.addi %99, %c-38 : index
          %101 = memref.load %arg2[%100] : memref<?xf64>
          %102 = arith.muli %99, %c-1 : index
          %103 = arith.addi %102, %8 : index
          %104 = arith.addi %103, %c37 : index
          %105 = memref.load %arg2[%104] : memref<?xf64>
          %106 = arith.mulf %40, %105 : f64
          %107 = arith.addf %101, %106 : f64
          %108 = arith.addi %99, %c-38 : index
          memref.store %107, %alloca_2[%108] : memref<40xf64>
          %109 = arith.addi %79, %c3 : index
          %110 = arith.addi %109, %c-38 : index
          %111 = memref.load %arg2[%110] : memref<?xf64>
          %112 = arith.muli %109, %c-1 : index
          %113 = arith.addi %112, %8 : index
          %114 = arith.addi %113, %c37 : index
          %115 = memref.load %arg2[%114] : memref<?xf64>
          %116 = arith.mulf %41, %115 : f64
          %117 = arith.addf %111, %116 : f64
          %118 = arith.addi %109, %c-38 : index
          memref.store %117, %alloca_2[%118] : memref<40xf64>
        }
        %50 = memref.load %alloca[%c0] : memref<1xf64>
        %51 = arith.addi %arg4, %arg3 : index
        %52 = arith.addi %arg4, %arg3 : index
        %53 = arith.addi %52, %c-1 : index
        %54 = arith.cmpi slt, %53, %c0 : index
        %55 = arith.subi %c-1, %53 : index
        %56 = arith.select %54, %55, %53 : index
        %57 = arith.divsi %56, %c4 : index
        %58 = arith.subi %c-1, %57 : index
        %59 = arith.select %54, %58, %57 : index
        %60 = arith.muli %59, %c-4 : index
        %61 = arith.addi %51, %60 : index
        %62 = arith.addi %61, %c-1 : index
        scf.for %arg5 = %c0 to %62 step %c1 {
          %78 = arith.addi %8, %c-2 : index
          %79 = arith.cmpi slt, %78, %c0 : index
          %80 = arith.subi %c-1, %78 : index
          %81 = arith.select %79, %80, %78 : index
          %82 = arith.divsi %81, %c4 : index
          %83 = arith.subi %c-1, %82 : index
          %84 = arith.select %79, %83, %82 : index
          %85 = arith.muli %84, %c4 : index
          %86 = arith.addi %arg5, %85 : index
          %87 = arith.addi %86, %c39 : index
          %88 = arith.addi %87, %c-38 : index
          %89 = memref.load %arg2[%88] : memref<?xf64>
          %90 = arith.muli %87, %c-1 : index
          %91 = arith.addi %90, %8 : index
          %92 = arith.addi %91, %c37 : index
          %93 = memref.load %arg2[%92] : memref<?xf64>
          %94 = arith.mulf %50, %93 : f64
          %95 = arith.addf %89, %94 : f64
          %96 = arith.addi %87, %c-38 : index
          memref.store %95, %alloca_2[%96] : memref<40xf64>
        }
        %63 = arith.addi %arg4, %arg3 : index
        %64 = arith.addi %63, %c-1 : index
        %65 = arith.cmpi sge, %64, %c0 : index
        scf.if %65 {
          %78 = arith.addi %8, %c-1 : index
          %79 = memref.load %arg2[%78] : memref<?xf64>
          %80 = memref.load %alloca[%c0] : memref<1xf64>
          %81 = memref.load %arg2[%c0] : memref<?xf64>
          %82 = arith.mulf %80, %81 : f64
          %83 = arith.addf %79, %82 : f64
          %84 = arith.addi %8, %c-1 : index
          memref.store %83, %alloca_2[%84] : memref<40xf64>
          %85 = memref.load %alloca_2[%c0] : memref<40xf64>
          memref.store %85, %arg2[%c0] : memref<?xf64>
        }
        %66 = arith.addi %arg4, %arg3 : index
        %67 = arith.cmpi slt, %66, %c0 : index
        %68 = arith.subi %c-1, %66 : index
        %69 = arith.select %67, %68, %66 : index
        %70 = arith.divsi %69, %c4 : index
        %71 = arith.subi %c-1, %70 : index
        %72 = arith.select %67, %71, %70 : index
        scf.for %arg5 = %c0 to %72 step %c1 {
          %78 = arith.muli %arg5, %c4 : index
          %79 = arith.addi %8, %78 : index
          %80 = arith.addi %79, %c38 : index
          %81 = arith.muli %8, %c-1 : index
          %82 = arith.addi %81, %80 : index
          %83 = arith.addi %82, %c-37 : index
          %84 = memref.load %alloca_2[%83] : memref<40xf64>
          %85 = arith.muli %8, %c-1 : index
          %86 = arith.addi %85, %80 : index
          %87 = arith.addi %86, %c-37 : index
          memref.store %84, %arg2[%87] : memref<?xf64>
          %88 = arith.addi %80, %c1 : index
          %89 = arith.muli %8, %c-1 : index
          %90 = arith.addi %89, %88 : index
          %91 = arith.addi %90, %c-37 : index
          %92 = memref.load %alloca_2[%91] : memref<40xf64>
          %93 = arith.muli %8, %c-1 : index
          %94 = arith.addi %93, %88 : index
          %95 = arith.addi %94, %c-37 : index
          memref.store %92, %arg2[%95] : memref<?xf64>
          %96 = arith.addi %80, %c2 : index
          %97 = arith.muli %8, %c-1 : index
          %98 = arith.addi %97, %96 : index
          %99 = arith.addi %98, %c-37 : index
          %100 = memref.load %alloca_2[%99] : memref<40xf64>
          %101 = arith.muli %8, %c-1 : index
          %102 = arith.addi %101, %96 : index
          %103 = arith.addi %102, %c-37 : index
          memref.store %100, %arg2[%103] : memref<?xf64>
          %104 = arith.addi %80, %c3 : index
          %105 = arith.muli %8, %c-1 : index
          %106 = arith.addi %105, %104 : index
          %107 = arith.addi %106, %c-37 : index
          %108 = memref.load %alloca_2[%107] : memref<40xf64>
          %109 = arith.muli %8, %c-1 : index
          %110 = arith.addi %109, %104 : index
          %111 = arith.addi %110, %c-37 : index
          memref.store %108, %arg2[%111] : memref<?xf64>
        }
        %73 = arith.addi %arg4, %arg3 : index
        %74 = arith.remsi %73, %c4 : index
        %75 = arith.cmpi slt, %74, %c0 : index
        %76 = arith.addi %74, %c4 : index
        %77 = arith.select %75, %76, %74 : index
        scf.for %arg5 = %c0 to %77 step %c1 {
          %78 = arith.addi %8, %arg5 : index
          %79 = arith.addi %8, %c-1 : index
          %80 = arith.cmpi slt, %79, %c0 : index
          %81 = arith.subi %c-1, %79 : index
          %82 = arith.select %80, %81, %79 : index
          %83 = arith.divsi %82, %c4 : index
          %84 = arith.subi %c-1, %83 : index
          %85 = arith.select %80, %84, %83 : index
          %86 = arith.muli %85, %c4 : index
          %87 = arith.addi %78, %86 : index
          %88 = arith.addi %87, %c38 : index
          %89 = arith.muli %8, %c-1 : index
          %90 = arith.addi %89, %88 : index
          %91 = arith.addi %90, %c-37 : index
          %92 = memref.load %alloca_2[%91] : memref<40xf64>
          %93 = arith.muli %8, %c-1 : index
          %94 = arith.addi %93, %88 : index
          %95 = arith.addi %94, %c-37 : index
          memref.store %92, %arg2[%95] : memref<?xf64>
        }
      }
    }
    return
  }
}

