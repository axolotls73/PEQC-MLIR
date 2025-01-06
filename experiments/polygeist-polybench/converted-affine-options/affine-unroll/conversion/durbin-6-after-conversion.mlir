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
    scf.for %arg3 = %c1 to %c40 step %c1 {
      memref.store %cst, %alloca_1[] : memref<f64>
      %5 = memref.load %alloca_1[] : memref<f64>
      %6 = arith.addi %arg3, %c-1 : index
      %7 = memref.load %arg1[%6] : memref<?xf64>
      %8 = memref.load %arg2[%c0] : memref<?xf64>
      %9 = arith.mulf %7, %8 : f64
      %10 = arith.addf %5, %9 : f64
      memref.store %10, %alloca_1[] : memref<f64>
      %11 = memref.load %alloca_3[] : memref<f64>
      %12 = memref.load %alloca_4[] : memref<f64>
      %13 = arith.mulf %12, %12 : f64
      %14 = arith.subf %11, %13 : f64
      %15 = memref.load %alloca_3[] : memref<f64>
      %16 = arith.mulf %14, %15 : f64
      memref.store %16, %alloca_3[] : memref<f64>
      %17 = arith.addi %arg3, %c-1 : index
      %18 = arith.cmpi slt, %17, %c0 : index
      %19 = arith.subi %c-1, %17 : index
      %20 = arith.select %18, %19, %17 : index
      %21 = arith.divsi %20, %c4 : index
      %22 = arith.subi %c-1, %21 : index
      %23 = arith.select %18, %22, %21 : index
      %24 = arith.muli %23, %c4 : index
      %25 = arith.addi %24, %c1 : index
      scf.for %arg4 = %c1 to %25 step %c4 {
        %83 = memref.load %alloca_1[] : memref<f64>
        %84 = arith.muli %arg4, %c-1 : index
        %85 = arith.addi %arg3, %84 : index
        %86 = arith.addi %85, %c-1 : index
        %87 = memref.load %arg1[%86] : memref<?xf64>
        %88 = memref.load %arg2[%arg4] : memref<?xf64>
        %89 = arith.mulf %87, %88 : f64
        %90 = arith.addf %83, %89 : f64
        memref.store %90, %alloca_1[] : memref<f64>
        %91 = arith.addi %arg4, %c1 : index
        %92 = memref.load %alloca_1[] : memref<f64>
        %93 = arith.muli %91, %c-1 : index
        %94 = arith.addi %arg3, %93 : index
        %95 = arith.addi %94, %c-1 : index
        %96 = memref.load %arg1[%95] : memref<?xf64>
        %97 = memref.load %arg2[%91] : memref<?xf64>
        %98 = arith.mulf %96, %97 : f64
        %99 = arith.addf %92, %98 : f64
        memref.store %99, %alloca_1[] : memref<f64>
        %100 = arith.addi %arg4, %c2 : index
        %101 = memref.load %alloca_1[] : memref<f64>
        %102 = arith.muli %100, %c-1 : index
        %103 = arith.addi %arg3, %102 : index
        %104 = arith.addi %103, %c-1 : index
        %105 = memref.load %arg1[%104] : memref<?xf64>
        %106 = memref.load %arg2[%100] : memref<?xf64>
        %107 = arith.mulf %105, %106 : f64
        %108 = arith.addf %101, %107 : f64
        memref.store %108, %alloca_1[] : memref<f64>
        %109 = arith.addi %arg4, %c3 : index
        %110 = memref.load %alloca_1[] : memref<f64>
        %111 = arith.muli %109, %c-1 : index
        %112 = arith.addi %arg3, %111 : index
        %113 = arith.addi %112, %c-1 : index
        %114 = memref.load %arg1[%113] : memref<?xf64>
        %115 = memref.load %arg2[%109] : memref<?xf64>
        %116 = arith.mulf %114, %115 : f64
        %117 = arith.addf %110, %116 : f64
        memref.store %117, %alloca_1[] : memref<f64>
      }
      %26 = arith.addi %arg3, %c-1 : index
      %27 = arith.cmpi slt, %26, %c0 : index
      %28 = arith.subi %c-1, %26 : index
      %29 = arith.select %27, %28, %26 : index
      %30 = arith.divsi %29, %c4 : index
      %31 = arith.subi %c-1, %30 : index
      %32 = arith.select %27, %31, %30 : index
      %33 = arith.muli %32, %c4 : index
      %34 = arith.addi %33, %c1 : index
      scf.for %arg4 = %34 to %arg3 step %c1 {
        %83 = memref.load %alloca_1[] : memref<f64>
        %84 = arith.muli %arg4, %c-1 : index
        %85 = arith.addi %arg3, %84 : index
        %86 = arith.addi %85, %c-1 : index
        %87 = memref.load %arg1[%86] : memref<?xf64>
        %88 = memref.load %arg2[%arg4] : memref<?xf64>
        %89 = arith.mulf %87, %88 : f64
        %90 = arith.addf %83, %89 : f64
        memref.store %90, %alloca_1[] : memref<f64>
      }
      %35 = arith.addi %arg3, %c-1 : index
      %36 = arith.cmpi eq, %35, %c0 : index
      scf.if %36 {
        %83 = memref.load %arg1[%c1] : memref<?xf64>
        %84 = memref.load %alloca_1[] : memref<f64>
        %85 = arith.addf %83, %84 : f64
        %86 = arith.negf %85 : f64
        %87 = memref.load %alloca_3[] : memref<f64>
        %88 = arith.divf %86, %87 : f64
        memref.store %88, %alloca[%c0] : memref<1xf64>
        %89 = memref.load %arg2[%c0] : memref<?xf64>
        %90 = memref.load %alloca[%c0] : memref<1xf64>
        %91 = memref.load %arg2[%c0] : memref<?xf64>
        %92 = arith.mulf %90, %91 : f64
        %93 = arith.addf %89, %92 : f64
        memref.store %93, %alloca_2[%c0] : memref<40xf64>
        %94 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %94, %arg2[%c0] : memref<?xf64>
        %95 = memref.load %alloca[%c0] : memref<1xf64>
        memref.store %95, %alloca_5[%c0] : memref<1xf64>
        memref.store %95, %alloca_4[] : memref<f64>
        %96 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %96, %arg2[%c1] : memref<?xf64>
      }
      %37 = arith.addi %arg3, %c-2 : index
      %38 = arith.cmpi sge, %37, %c0 : index
      scf.if %38 {
        %83 = memref.load %arg1[%arg3] : memref<?xf64>
        %84 = memref.load %alloca_1[] : memref<f64>
        %85 = arith.addf %83, %84 : f64
        %86 = arith.negf %85 : f64
        %87 = memref.load %alloca_3[] : memref<f64>
        %88 = arith.divf %86, %87 : f64
        memref.store %88, %alloca[%c0] : memref<1xf64>
        %89 = memref.load %arg2[%c0] : memref<?xf64>
        %90 = memref.load %alloca[%c0] : memref<1xf64>
        %91 = arith.addi %arg3, %c-1 : index
        %92 = memref.load %arg2[%91] : memref<?xf64>
        %93 = arith.mulf %90, %92 : f64
        %94 = arith.addf %89, %93 : f64
        memref.store %94, %alloca_2[%c0] : memref<40xf64>
        %95 = memref.load %alloca[%c0] : memref<1xf64>
        memref.store %95, %alloca_5[%c0] : memref<1xf64>
        memref.store %95, %alloca_4[] : memref<f64>
        %96 = memref.load %alloca_5[%c0] : memref<1xf64>
        memref.store %96, %arg2[%arg3] : memref<?xf64>
      }
      %39 = arith.addi %arg3, %c-2 : index
      %40 = arith.cmpi slt, %39, %c0 : index
      %41 = arith.subi %c-1, %39 : index
      %42 = arith.select %40, %41, %39 : index
      %43 = arith.divsi %42, %c4 : index
      %44 = arith.subi %c-1, %43 : index
      %45 = arith.select %40, %44, %43 : index
      %46 = arith.muli %45, %c4 : index
      %47 = arith.addi %46, %c39 : index
      scf.for %arg4 = %c39 to %47 step %c4 {
        %83 = arith.addi %arg4, %c-38 : index
        %84 = memref.load %arg2[%83] : memref<?xf64>
        %85 = memref.load %alloca[%c0] : memref<1xf64>
        %86 = arith.muli %arg4, %c-1 : index
        %87 = arith.addi %86, %arg3 : index
        %88 = arith.addi %87, %c37 : index
        %89 = memref.load %arg2[%88] : memref<?xf64>
        %90 = arith.mulf %85, %89 : f64
        %91 = arith.addf %84, %90 : f64
        %92 = arith.addi %arg4, %c-38 : index
        memref.store %91, %alloca_2[%92] : memref<40xf64>
        %93 = arith.addi %arg4, %c1 : index
        %94 = arith.addi %93, %c-38 : index
        %95 = memref.load %arg2[%94] : memref<?xf64>
        %96 = memref.load %alloca[%c0] : memref<1xf64>
        %97 = arith.muli %93, %c-1 : index
        %98 = arith.addi %97, %arg3 : index
        %99 = arith.addi %98, %c37 : index
        %100 = memref.load %arg2[%99] : memref<?xf64>
        %101 = arith.mulf %96, %100 : f64
        %102 = arith.addf %95, %101 : f64
        %103 = arith.addi %93, %c-38 : index
        memref.store %102, %alloca_2[%103] : memref<40xf64>
        %104 = arith.addi %arg4, %c2 : index
        %105 = arith.addi %104, %c-38 : index
        %106 = memref.load %arg2[%105] : memref<?xf64>
        %107 = memref.load %alloca[%c0] : memref<1xf64>
        %108 = arith.muli %104, %c-1 : index
        %109 = arith.addi %108, %arg3 : index
        %110 = arith.addi %109, %c37 : index
        %111 = memref.load %arg2[%110] : memref<?xf64>
        %112 = arith.mulf %107, %111 : f64
        %113 = arith.addf %106, %112 : f64
        %114 = arith.addi %104, %c-38 : index
        memref.store %113, %alloca_2[%114] : memref<40xf64>
        %115 = arith.addi %arg4, %c3 : index
        %116 = arith.addi %115, %c-38 : index
        %117 = memref.load %arg2[%116] : memref<?xf64>
        %118 = memref.load %alloca[%c0] : memref<1xf64>
        %119 = arith.muli %115, %c-1 : index
        %120 = arith.addi %119, %arg3 : index
        %121 = arith.addi %120, %c37 : index
        %122 = memref.load %arg2[%121] : memref<?xf64>
        %123 = arith.mulf %118, %122 : f64
        %124 = arith.addf %117, %123 : f64
        %125 = arith.addi %115, %c-38 : index
        memref.store %124, %alloca_2[%125] : memref<40xf64>
      }
      %48 = arith.addi %arg3, %c-2 : index
      %49 = arith.cmpi slt, %48, %c0 : index
      %50 = arith.subi %c-1, %48 : index
      %51 = arith.select %49, %50, %48 : index
      %52 = arith.divsi %51, %c4 : index
      %53 = arith.subi %c-1, %52 : index
      %54 = arith.select %49, %53, %52 : index
      %55 = arith.muli %54, %c4 : index
      %56 = arith.addi %55, %c39 : index
      %57 = arith.addi %arg3, %c37 : index
      scf.for %arg4 = %56 to %57 step %c1 {
        %83 = arith.addi %arg4, %c-38 : index
        %84 = memref.load %arg2[%83] : memref<?xf64>
        %85 = memref.load %alloca[%c0] : memref<1xf64>
        %86 = arith.muli %arg4, %c-1 : index
        %87 = arith.addi %86, %arg3 : index
        %88 = arith.addi %87, %c37 : index
        %89 = memref.load %arg2[%88] : memref<?xf64>
        %90 = arith.mulf %85, %89 : f64
        %91 = arith.addf %84, %90 : f64
        %92 = arith.addi %arg4, %c-38 : index
        memref.store %91, %alloca_2[%92] : memref<40xf64>
      }
      %58 = arith.addi %arg3, %c-2 : index
      %59 = arith.cmpi sge, %58, %c0 : index
      scf.if %59 {
        %83 = arith.addi %arg3, %c-1 : index
        %84 = memref.load %arg2[%83] : memref<?xf64>
        %85 = memref.load %alloca[%c0] : memref<1xf64>
        %86 = memref.load %arg2[%c0] : memref<?xf64>
        %87 = arith.mulf %85, %86 : f64
        %88 = arith.addf %84, %87 : f64
        %89 = arith.addi %arg3, %c-1 : index
        memref.store %88, %alloca_2[%89] : memref<40xf64>
        %90 = memref.load %alloca_2[%c0] : memref<40xf64>
        memref.store %90, %arg2[%c0] : memref<?xf64>
      }
      %60 = arith.addi %arg3, %c38 : index
      %61 = arith.addi %arg3, %c-1 : index
      %62 = arith.cmpi slt, %61, %c0 : index
      %63 = arith.subi %c-1, %61 : index
      %64 = arith.select %62, %63, %61 : index
      %65 = arith.divsi %64, %c4 : index
      %66 = arith.subi %c-1, %65 : index
      %67 = arith.select %62, %66, %65 : index
      %68 = arith.muli %67, %c4 : index
      %69 = arith.addi %arg3, %68 : index
      %70 = arith.addi %69, %c38 : index
      scf.for %arg4 = %60 to %70 step %c4 {
        %83 = arith.muli %arg3, %c-1 : index
        %84 = arith.addi %83, %arg4 : index
        %85 = arith.addi %84, %c-37 : index
        %86 = memref.load %alloca_2[%85] : memref<40xf64>
        %87 = arith.muli %arg3, %c-1 : index
        %88 = arith.addi %87, %arg4 : index
        %89 = arith.addi %88, %c-37 : index
        memref.store %86, %arg2[%89] : memref<?xf64>
        %90 = arith.addi %arg4, %c1 : index
        %91 = arith.muli %arg3, %c-1 : index
        %92 = arith.addi %91, %90 : index
        %93 = arith.addi %92, %c-37 : index
        %94 = memref.load %alloca_2[%93] : memref<40xf64>
        %95 = arith.muli %arg3, %c-1 : index
        %96 = arith.addi %95, %90 : index
        %97 = arith.addi %96, %c-37 : index
        memref.store %94, %arg2[%97] : memref<?xf64>
        %98 = arith.addi %arg4, %c2 : index
        %99 = arith.muli %arg3, %c-1 : index
        %100 = arith.addi %99, %98 : index
        %101 = arith.addi %100, %c-37 : index
        %102 = memref.load %alloca_2[%101] : memref<40xf64>
        %103 = arith.muli %arg3, %c-1 : index
        %104 = arith.addi %103, %98 : index
        %105 = arith.addi %104, %c-37 : index
        memref.store %102, %arg2[%105] : memref<?xf64>
        %106 = arith.addi %arg4, %c3 : index
        %107 = arith.muli %arg3, %c-1 : index
        %108 = arith.addi %107, %106 : index
        %109 = arith.addi %108, %c-37 : index
        %110 = memref.load %alloca_2[%109] : memref<40xf64>
        %111 = arith.muli %arg3, %c-1 : index
        %112 = arith.addi %111, %106 : index
        %113 = arith.addi %112, %c-37 : index
        memref.store %110, %arg2[%113] : memref<?xf64>
      }
      %71 = arith.addi %arg3, %c-1 : index
      %72 = arith.cmpi slt, %71, %c0 : index
      %73 = arith.subi %c-1, %71 : index
      %74 = arith.select %72, %73, %71 : index
      %75 = arith.divsi %74, %c4 : index
      %76 = arith.subi %c-1, %75 : index
      %77 = arith.select %72, %76, %75 : index
      %78 = arith.muli %77, %c4 : index
      %79 = arith.addi %arg3, %78 : index
      %80 = arith.addi %79, %c38 : index
      %81 = arith.muli %arg3, %c2 : index
      %82 = arith.addi %81, %c37 : index
      scf.for %arg4 = %80 to %82 step %c1 {
        %83 = arith.muli %arg3, %c-1 : index
        %84 = arith.addi %83, %arg4 : index
        %85 = arith.addi %84, %c-37 : index
        %86 = memref.load %alloca_2[%85] : memref<40xf64>
        %87 = arith.muli %arg3, %c-1 : index
        %88 = arith.addi %87, %arg4 : index
        %89 = arith.addi %88, %c-37 : index
        memref.store %86, %arg2[%89] : memref<?xf64>
      }
    }
    return
  }
}

