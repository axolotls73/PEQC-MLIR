module {
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c-4 = arith.constant -4 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c-1 = arith.constant -1 : index
    %c4 = arith.constant 4 : index
    %c1 = arith.constant 1 : index
    %c39 = arith.constant 39 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
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
    scf.for %arg3 = %c0 to %c39 step %c1 {
      %5 = arith.addi %arg3, %c1 : index
      %6 = async.create_group %c1 : !async.group
      %7 = scf.for %arg4 = %c0 to %c1 step %c1 iter_args(%arg5 = %c0) -> (index) {
        %token = async.execute {
          %10 = arith.addi %5, %arg4 : index
          %11 = memref.load %alloca_2[] : memref<f64>
          %12 = arith.mulf %11, %11 : f64
          %13 = arith.subf %cst_0, %12 : f64
          %14 = memref.load %alloca_1[] : memref<f64>
          %15 = arith.mulf %13, %14 : f64
          memref.store %15, %alloca_1[] : memref<f64>
          memref.store %cst, %alloca[] : memref<f64>
          %16 = arith.addi %arg4, %arg3 : index
          %17 = arith.addi %16, %c1 : index
          %18 = arith.cmpi slt, %17, %c0 : index
          %19 = arith.subi %c-1, %17 : index
          %20 = arith.select %18, %19, %17 : index
          %21 = arith.divsi %20, %c4 : index
          %22 = arith.subi %c-1, %21 : index
          %23 = arith.select %18, %22, %21 : index
          scf.for %arg6 = %c0 to %23 step %c1 {
            %81 = arith.muli %arg6, %c4 : index
            %82 = arith.muli %81, %c-1 : index
            %83 = arith.addi %10, %82 : index
            %84 = arith.addi %83, %c-1 : index
            %85 = memref.load %arg1[%84] : memref<?xf64>
            %86 = memref.load %arg2[%81] : memref<?xf64>
            %87 = arith.mulf %85, %86 : f64
            %88 = memref.load %alloca[] : memref<f64>
            %89 = arith.addf %88, %87 : f64
            memref.store %89, %alloca[] : memref<f64>
            %90 = arith.addi %81, %c1 : index
            %91 = arith.muli %90, %c-1 : index
            %92 = arith.addi %10, %91 : index
            %93 = arith.addi %92, %c-1 : index
            %94 = memref.load %arg1[%93] : memref<?xf64>
            %95 = memref.load %arg2[%90] : memref<?xf64>
            %96 = arith.mulf %94, %95 : f64
            %97 = memref.load %alloca[] : memref<f64>
            %98 = arith.addf %97, %96 : f64
            memref.store %98, %alloca[] : memref<f64>
            %99 = arith.addi %81, %c2 : index
            %100 = arith.muli %99, %c-1 : index
            %101 = arith.addi %10, %100 : index
            %102 = arith.addi %101, %c-1 : index
            %103 = memref.load %arg1[%102] : memref<?xf64>
            %104 = memref.load %arg2[%99] : memref<?xf64>
            %105 = arith.mulf %103, %104 : f64
            %106 = memref.load %alloca[] : memref<f64>
            %107 = arith.addf %106, %105 : f64
            memref.store %107, %alloca[] : memref<f64>
            %108 = arith.addi %81, %c3 : index
            %109 = arith.muli %108, %c-1 : index
            %110 = arith.addi %10, %109 : index
            %111 = arith.addi %110, %c-1 : index
            %112 = memref.load %arg1[%111] : memref<?xf64>
            %113 = memref.load %arg2[%108] : memref<?xf64>
            %114 = arith.mulf %112, %113 : f64
            %115 = memref.load %alloca[] : memref<f64>
            %116 = arith.addf %115, %114 : f64
            memref.store %116, %alloca[] : memref<f64>
          }
          %24 = arith.addi %arg4, %arg3 : index
          %25 = arith.addi %arg4, %arg3 : index
          %26 = arith.addi %25, %c1 : index
          %27 = arith.cmpi slt, %26, %c0 : index
          %28 = arith.subi %c-1, %26 : index
          %29 = arith.select %27, %28, %26 : index
          %30 = arith.divsi %29, %c4 : index
          %31 = arith.subi %c-1, %30 : index
          %32 = arith.select %27, %31, %30 : index
          %33 = arith.muli %32, %c-4 : index
          %34 = arith.addi %24, %33 : index
          %35 = arith.addi %34, %c1 : index
          scf.for %arg6 = %c0 to %35 step %c1 {
            %81 = arith.cmpi slt, %10, %c0 : index
            %82 = arith.subi %c-1, %10 : index
            %83 = arith.select %81, %82, %10 : index
            %84 = arith.divsi %83, %c4 : index
            %85 = arith.subi %c-1, %84 : index
            %86 = arith.select %81, %85, %84 : index
            %87 = arith.muli %86, %c4 : index
            %88 = arith.addi %arg6, %87 : index
            %89 = arith.muli %88, %c-1 : index
            %90 = arith.addi %10, %89 : index
            %91 = arith.addi %90, %c-1 : index
            %92 = memref.load %arg1[%91] : memref<?xf64>
            %93 = memref.load %arg2[%88] : memref<?xf64>
            %94 = arith.mulf %92, %93 : f64
            %95 = memref.load %alloca[] : memref<f64>
            %96 = arith.addf %95, %94 : f64
            memref.store %96, %alloca[] : memref<f64>
          }
          %36 = memref.load %arg1[%10] : memref<?xf64>
          %37 = memref.load %alloca[] : memref<f64>
          %38 = arith.addf %36, %37 : f64
          %39 = arith.negf %38 : f64
          %40 = arith.divf %39, %15 : f64
          memref.store %40, %alloca_2[] : memref<f64>
          %41 = arith.addi %arg4, %arg3 : index
          %42 = arith.addi %41, %c1 : index
          %43 = arith.cmpi slt, %42, %c0 : index
          %44 = arith.subi %c-1, %42 : index
          %45 = arith.select %43, %44, %42 : index
          %46 = arith.divsi %45, %c4 : index
          %47 = arith.subi %c-1, %46 : index
          %48 = arith.select %43, %47, %46 : index
          scf.for %arg6 = %c0 to %48 step %c1 {
            %81 = arith.muli %arg6, %c4 : index
            %82 = memref.load %arg2[%81] : memref<?xf64>
            %83 = arith.muli %81, %c-1 : index
            %84 = arith.addi %10, %83 : index
            %85 = arith.addi %84, %c-1 : index
            %86 = memref.load %arg2[%85] : memref<?xf64>
            %87 = arith.mulf %40, %86 : f64
            %88 = arith.addf %82, %87 : f64
            memref.store %88, %alloca_3[%81] : memref<40xf64>
            %89 = arith.addi %81, %c1 : index
            %90 = memref.load %arg2[%89] : memref<?xf64>
            %91 = arith.muli %89, %c-1 : index
            %92 = arith.addi %10, %91 : index
            %93 = arith.addi %92, %c-1 : index
            %94 = memref.load %arg2[%93] : memref<?xf64>
            %95 = arith.mulf %40, %94 : f64
            %96 = arith.addf %90, %95 : f64
            memref.store %96, %alloca_3[%89] : memref<40xf64>
            %97 = arith.addi %81, %c2 : index
            %98 = memref.load %arg2[%97] : memref<?xf64>
            %99 = arith.muli %97, %c-1 : index
            %100 = arith.addi %10, %99 : index
            %101 = arith.addi %100, %c-1 : index
            %102 = memref.load %arg2[%101] : memref<?xf64>
            %103 = arith.mulf %40, %102 : f64
            %104 = arith.addf %98, %103 : f64
            memref.store %104, %alloca_3[%97] : memref<40xf64>
            %105 = arith.addi %81, %c3 : index
            %106 = memref.load %arg2[%105] : memref<?xf64>
            %107 = arith.muli %105, %c-1 : index
            %108 = arith.addi %10, %107 : index
            %109 = arith.addi %108, %c-1 : index
            %110 = memref.load %arg2[%109] : memref<?xf64>
            %111 = arith.mulf %40, %110 : f64
            %112 = arith.addf %106, %111 : f64
            memref.store %112, %alloca_3[%105] : memref<40xf64>
          }
          %49 = arith.addi %arg4, %arg3 : index
          %50 = arith.addi %arg4, %arg3 : index
          %51 = arith.addi %50, %c1 : index
          %52 = arith.cmpi slt, %51, %c0 : index
          %53 = arith.subi %c-1, %51 : index
          %54 = arith.select %52, %53, %51 : index
          %55 = arith.divsi %54, %c4 : index
          %56 = arith.subi %c-1, %55 : index
          %57 = arith.select %52, %56, %55 : index
          %58 = arith.muli %57, %c-4 : index
          %59 = arith.addi %49, %58 : index
          %60 = arith.addi %59, %c1 : index
          scf.for %arg6 = %c0 to %60 step %c1 {
            %81 = arith.cmpi slt, %10, %c0 : index
            %82 = arith.subi %c-1, %10 : index
            %83 = arith.select %81, %82, %10 : index
            %84 = arith.divsi %83, %c4 : index
            %85 = arith.subi %c-1, %84 : index
            %86 = arith.select %81, %85, %84 : index
            %87 = arith.muli %86, %c4 : index
            %88 = arith.addi %arg6, %87 : index
            %89 = memref.load %arg2[%88] : memref<?xf64>
            %90 = arith.muli %88, %c-1 : index
            %91 = arith.addi %10, %90 : index
            %92 = arith.addi %91, %c-1 : index
            %93 = memref.load %arg2[%92] : memref<?xf64>
            %94 = arith.mulf %40, %93 : f64
            %95 = arith.addf %89, %94 : f64
            memref.store %95, %alloca_3[%88] : memref<40xf64>
          }
          %61 = arith.addi %arg4, %arg3 : index
          %62 = arith.addi %61, %c1 : index
          %63 = arith.cmpi slt, %62, %c0 : index
          %64 = arith.subi %c-1, %62 : index
          %65 = arith.select %63, %64, %62 : index
          %66 = arith.divsi %65, %c4 : index
          %67 = arith.subi %c-1, %66 : index
          %68 = arith.select %63, %67, %66 : index
          scf.for %arg6 = %c0 to %68 step %c1 {
            %81 = arith.muli %arg6, %c4 : index
            %82 = memref.load %alloca_3[%81] : memref<40xf64>
            memref.store %82, %arg2[%81] : memref<?xf64>
            %83 = arith.addi %81, %c1 : index
            %84 = memref.load %alloca_3[%83] : memref<40xf64>
            memref.store %84, %arg2[%83] : memref<?xf64>
            %85 = arith.addi %81, %c2 : index
            %86 = memref.load %alloca_3[%85] : memref<40xf64>
            memref.store %86, %arg2[%85] : memref<?xf64>
            %87 = arith.addi %81, %c3 : index
            %88 = memref.load %alloca_3[%87] : memref<40xf64>
            memref.store %88, %arg2[%87] : memref<?xf64>
          }
          %69 = arith.addi %arg4, %arg3 : index
          %70 = arith.addi %arg4, %arg3 : index
          %71 = arith.addi %70, %c1 : index
          %72 = arith.cmpi slt, %71, %c0 : index
          %73 = arith.subi %c-1, %71 : index
          %74 = arith.select %72, %73, %71 : index
          %75 = arith.divsi %74, %c4 : index
          %76 = arith.subi %c-1, %75 : index
          %77 = arith.select %72, %76, %75 : index
          %78 = arith.muli %77, %c-4 : index
          %79 = arith.addi %69, %78 : index
          %80 = arith.addi %79, %c1 : index
          scf.for %arg6 = %c0 to %80 step %c1 {
            %81 = arith.cmpi slt, %10, %c0 : index
            %82 = arith.subi %c-1, %10 : index
            %83 = arith.select %81, %82, %10 : index
            %84 = arith.divsi %83, %c4 : index
            %85 = arith.subi %c-1, %84 : index
            %86 = arith.select %81, %85, %84 : index
            %87 = arith.muli %86, %c4 : index
            %88 = arith.addi %arg6, %87 : index
            %89 = memref.load %alloca_3[%88] : memref<40xf64>
            memref.store %89, %arg2[%88] : memref<?xf64>
          }
          memref.store %40, %arg2[%10] : memref<?xf64>
          async.yield
        }
        %8 = async.add_to_group %token, %6 : !async.token
        %9 = arith.addi %arg5, %c1 : index
        scf.yield %9 : index
      }
      async.await_all %6
    }
    return
  }
}

