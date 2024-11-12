module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %c63 = arith.constant 63 : index
    %c-1 = arith.constant -1 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c4 = arith.constant 4 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    %c64 = arith.constant 64 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant -2.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant 1.000000e+00 : f32
    %0 = llvm.mlir.undef : f32
    %alloca = memref.alloca() : memref<f32>
    memref.store %0, %alloca[] : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_3[] : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_4[] : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_5[] : memref<f32>
    %alloca_6 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_6[] : memref<f32>
    %alloca_7 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_7[] : memref<f32>
    %alloca_8 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_8[] : memref<f32>
    %alloca_9 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_9[] : memref<f32>
    %alloca_10 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_10[] : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
    memref.store %0, %alloca_11[] : memref<f32>
    %1 = arith.negf %arg2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.subf %cst_2, %2 : f32
    %4 = arith.mulf %3, %3 : f32
    %5 = arith.mulf %arg2, %2 : f32
    %6 = arith.mulf %5, %cst_1 : f32
    %7 = arith.addf %6, %cst_2 : f32
    %8 = arith.mulf %arg2, %cst_1 : f32
    %9 = math.exp %8 : f32
    %10 = arith.subf %7, %9 : f32
    %11 = arith.divf %4, %10 : f32
    %12 = arith.mulf %11, %2 : f32
    %13 = arith.subf %arg2, %cst_2 : f32
    %14 = arith.mulf %12, %13 : f32
    %15 = arith.addf %arg2, %cst_2 : f32
    %16 = arith.mulf %12, %15 : f32
    %17 = arith.negf %11 : f32
    %18 = arith.mulf %arg2, %cst_0 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    %21 = math.powf %cst_1, %1 : f32
    %22 = arith.negf %19 : f32
    scf.for %arg7 = %c0 to %c64 step %c1 {
      %27 = async.create_group %c1 : !async.group
      %28 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %31 = arith.addi %arg7, %arg8 : index
          memref.store %cst, %alloca_9[] : memref<f32>
          memref.store %cst, %alloca_8[] : memref<f32>
          memref.store %cst, %alloca_11[] : memref<f32>
          scf.for %arg10 = %c0 to %c16 step %c1 {
            %32 = arith.muli %arg10, %c4 : index
            %33 = memref.load %arg3[%31, %32] : memref<?x64xf32>
            %34 = arith.mulf %11, %33 : f32
            %35 = memref.load %alloca_11[] : memref<f32>
            %36 = arith.mulf %14, %35 : f32
            %37 = arith.addf %34, %36 : f32
            %38 = memref.load %alloca_9[] : memref<f32>
            %39 = arith.mulf %21, %38 : f32
            %40 = arith.addf %37, %39 : f32
            %41 = memref.load %alloca_8[] : memref<f32>
            %42 = arith.mulf %22, %41 : f32
            %43 = arith.addf %40, %42 : f32
            memref.store %43, %arg5[%31, %32] : memref<?x64xf32>
            %44 = memref.load %arg3[%31, %32] : memref<?x64xf32>
            memref.store %44, %alloca_11[] : memref<f32>
            memref.store %38, %alloca_8[] : memref<f32>
            %45 = memref.load %arg5[%31, %32] : memref<?x64xf32>
            memref.store %45, %alloca_9[] : memref<f32>
            %46 = arith.addi %32, %c1 : index
            %47 = memref.load %arg3[%31, %46] : memref<?x64xf32>
            %48 = arith.mulf %11, %47 : f32
            %49 = memref.load %alloca_11[] : memref<f32>
            %50 = arith.mulf %14, %49 : f32
            %51 = arith.addf %48, %50 : f32
            %52 = memref.load %alloca_9[] : memref<f32>
            %53 = arith.mulf %21, %52 : f32
            %54 = arith.addf %51, %53 : f32
            %55 = memref.load %alloca_8[] : memref<f32>
            %56 = arith.mulf %22, %55 : f32
            %57 = arith.addf %54, %56 : f32
            memref.store %57, %arg5[%31, %46] : memref<?x64xf32>
            %58 = memref.load %arg3[%31, %46] : memref<?x64xf32>
            memref.store %58, %alloca_11[] : memref<f32>
            memref.store %52, %alloca_8[] : memref<f32>
            %59 = memref.load %arg5[%31, %46] : memref<?x64xf32>
            memref.store %59, %alloca_9[] : memref<f32>
            %60 = arith.addi %32, %c2 : index
            %61 = memref.load %arg3[%31, %60] : memref<?x64xf32>
            %62 = arith.mulf %11, %61 : f32
            %63 = memref.load %alloca_11[] : memref<f32>
            %64 = arith.mulf %14, %63 : f32
            %65 = arith.addf %62, %64 : f32
            %66 = memref.load %alloca_9[] : memref<f32>
            %67 = arith.mulf %21, %66 : f32
            %68 = arith.addf %65, %67 : f32
            %69 = memref.load %alloca_8[] : memref<f32>
            %70 = arith.mulf %22, %69 : f32
            %71 = arith.addf %68, %70 : f32
            memref.store %71, %arg5[%31, %60] : memref<?x64xf32>
            %72 = memref.load %arg3[%31, %60] : memref<?x64xf32>
            memref.store %72, %alloca_11[] : memref<f32>
            memref.store %66, %alloca_8[] : memref<f32>
            %73 = memref.load %arg5[%31, %60] : memref<?x64xf32>
            memref.store %73, %alloca_9[] : memref<f32>
            %74 = arith.addi %32, %c3 : index
            %75 = memref.load %arg3[%31, %74] : memref<?x64xf32>
            %76 = arith.mulf %11, %75 : f32
            %77 = memref.load %alloca_11[] : memref<f32>
            %78 = arith.mulf %14, %77 : f32
            %79 = arith.addf %76, %78 : f32
            %80 = memref.load %alloca_9[] : memref<f32>
            %81 = arith.mulf %21, %80 : f32
            %82 = arith.addf %79, %81 : f32
            %83 = memref.load %alloca_8[] : memref<f32>
            %84 = arith.mulf %22, %83 : f32
            %85 = arith.addf %82, %84 : f32
            memref.store %85, %arg5[%31, %74] : memref<?x64xf32>
            %86 = memref.load %arg3[%31, %74] : memref<?x64xf32>
            memref.store %86, %alloca_11[] : memref<f32>
            memref.store %80, %alloca_8[] : memref<f32>
            %87 = memref.load %arg5[%31, %74] : memref<?x64xf32>
            memref.store %87, %alloca_9[] : memref<f32>
          }
          async.yield
        }
        %29 = async.add_to_group %token, %27 : !async.token
        %30 = arith.addi %arg9, %c1 : index
        scf.yield %30 : index
      }
      async.await_all %27
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      %27 = async.create_group %c1 : !async.group
      %28 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %31 = arith.addi %arg7, %arg8 : index
          memref.store %cst, %alloca_3[] : memref<f32>
          memref.store %cst, %alloca[] : memref<f32>
          memref.store %cst, %alloca_7[] : memref<f32>
          memref.store %cst, %alloca_6[] : memref<f32>
          scf.for %arg10 = %c0 to %c16 step %c1 {
            %32 = arith.muli %arg10, %c4 : index
            %33 = memref.load %alloca_7[] : memref<f32>
            %34 = arith.mulf %16, %33 : f32
            %35 = memref.load %alloca_6[] : memref<f32>
            %36 = arith.mulf %20, %35 : f32
            %37 = arith.addf %34, %36 : f32
            %38 = memref.load %alloca_3[] : memref<f32>
            %39 = arith.mulf %21, %38 : f32
            %40 = arith.addf %37, %39 : f32
            %41 = memref.load %alloca[] : memref<f32>
            %42 = arith.mulf %22, %41 : f32
            %43 = arith.addf %40, %42 : f32
            %44 = arith.muli %32, %c-1 : index
            %45 = arith.addi %44, %c63 : index
            memref.store %43, %arg6[%31, %45] : memref<?x64xf32>
            memref.store %33, %alloca_6[] : memref<f32>
            %46 = arith.muli %32, %c-1 : index
            %47 = arith.addi %46, %c63 : index
            %48 = memref.load %arg3[%31, %47] : memref<?x64xf32>
            memref.store %48, %alloca_7[] : memref<f32>
            memref.store %38, %alloca[] : memref<f32>
            %49 = arith.muli %32, %c-1 : index
            %50 = arith.addi %49, %c63 : index
            %51 = memref.load %arg6[%31, %50] : memref<?x64xf32>
            memref.store %51, %alloca_3[] : memref<f32>
            %52 = arith.addi %32, %c1 : index
            %53 = memref.load %alloca_7[] : memref<f32>
            %54 = arith.mulf %16, %53 : f32
            %55 = memref.load %alloca_6[] : memref<f32>
            %56 = arith.mulf %20, %55 : f32
            %57 = arith.addf %54, %56 : f32
            %58 = memref.load %alloca_3[] : memref<f32>
            %59 = arith.mulf %21, %58 : f32
            %60 = arith.addf %57, %59 : f32
            %61 = memref.load %alloca[] : memref<f32>
            %62 = arith.mulf %22, %61 : f32
            %63 = arith.addf %60, %62 : f32
            %64 = arith.muli %52, %c-1 : index
            %65 = arith.addi %64, %c63 : index
            memref.store %63, %arg6[%31, %65] : memref<?x64xf32>
            memref.store %53, %alloca_6[] : memref<f32>
            %66 = arith.muli %52, %c-1 : index
            %67 = arith.addi %66, %c63 : index
            %68 = memref.load %arg3[%31, %67] : memref<?x64xf32>
            memref.store %68, %alloca_7[] : memref<f32>
            memref.store %58, %alloca[] : memref<f32>
            %69 = arith.muli %52, %c-1 : index
            %70 = arith.addi %69, %c63 : index
            %71 = memref.load %arg6[%31, %70] : memref<?x64xf32>
            memref.store %71, %alloca_3[] : memref<f32>
            %72 = arith.addi %32, %c2 : index
            %73 = memref.load %alloca_7[] : memref<f32>
            %74 = arith.mulf %16, %73 : f32
            %75 = memref.load %alloca_6[] : memref<f32>
            %76 = arith.mulf %20, %75 : f32
            %77 = arith.addf %74, %76 : f32
            %78 = memref.load %alloca_3[] : memref<f32>
            %79 = arith.mulf %21, %78 : f32
            %80 = arith.addf %77, %79 : f32
            %81 = memref.load %alloca[] : memref<f32>
            %82 = arith.mulf %22, %81 : f32
            %83 = arith.addf %80, %82 : f32
            %84 = arith.muli %72, %c-1 : index
            %85 = arith.addi %84, %c63 : index
            memref.store %83, %arg6[%31, %85] : memref<?x64xf32>
            memref.store %73, %alloca_6[] : memref<f32>
            %86 = arith.muli %72, %c-1 : index
            %87 = arith.addi %86, %c63 : index
            %88 = memref.load %arg3[%31, %87] : memref<?x64xf32>
            memref.store %88, %alloca_7[] : memref<f32>
            memref.store %78, %alloca[] : memref<f32>
            %89 = arith.muli %72, %c-1 : index
            %90 = arith.addi %89, %c63 : index
            %91 = memref.load %arg6[%31, %90] : memref<?x64xf32>
            memref.store %91, %alloca_3[] : memref<f32>
            %92 = arith.addi %32, %c3 : index
            %93 = memref.load %alloca_7[] : memref<f32>
            %94 = arith.mulf %16, %93 : f32
            %95 = memref.load %alloca_6[] : memref<f32>
            %96 = arith.mulf %20, %95 : f32
            %97 = arith.addf %94, %96 : f32
            %98 = memref.load %alloca_3[] : memref<f32>
            %99 = arith.mulf %21, %98 : f32
            %100 = arith.addf %97, %99 : f32
            %101 = memref.load %alloca[] : memref<f32>
            %102 = arith.mulf %22, %101 : f32
            %103 = arith.addf %100, %102 : f32
            %104 = arith.muli %92, %c-1 : index
            %105 = arith.addi %104, %c63 : index
            memref.store %103, %arg6[%31, %105] : memref<?x64xf32>
            memref.store %93, %alloca_6[] : memref<f32>
            %106 = arith.muli %92, %c-1 : index
            %107 = arith.addi %106, %c63 : index
            %108 = memref.load %arg3[%31, %107] : memref<?x64xf32>
            memref.store %108, %alloca_7[] : memref<f32>
            memref.store %98, %alloca[] : memref<f32>
            %109 = arith.muli %92, %c-1 : index
            %110 = arith.addi %109, %c63 : index
            %111 = memref.load %arg6[%31, %110] : memref<?x64xf32>
            memref.store %111, %alloca_3[] : memref<f32>
          }
          async.yield
        }
        %29 = async.add_to_group %token, %27 : !async.token
        %30 = arith.addi %arg9, %c1 : index
        scf.yield %30 : index
      }
      async.await_all %27
    }
    %23 = async.create_group %c64 : !async.group
    %24 = scf.for %arg7 = %c0 to %c64 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %29 = arith.muli %arg9, %c4 : index
          scf.for %arg10 = %c0 to %c1 step %c1 {
            %30 = arith.addi %arg7, %arg10 : index
            scf.for %arg11 = %c0 to %c1 step %c1 {
              %31 = arith.muli %arg11, %c4 : index
              %32 = arith.addi %29, %31 : index
              %33 = memref.load %arg5[%30, %32] : memref<?x64xf32>
              %34 = memref.load %arg6[%30, %32] : memref<?x64xf32>
              %35 = arith.addf %33, %34 : f32
              memref.store %35, %arg4[%30, %32] : memref<?x64xf32>
              %36 = arith.addi %32, %c1 : index
              %37 = memref.load %arg5[%30, %36] : memref<?x64xf32>
              %38 = memref.load %arg6[%30, %36] : memref<?x64xf32>
              %39 = arith.addf %37, %38 : f32
              memref.store %39, %arg4[%30, %36] : memref<?x64xf32>
              %40 = arith.addi %32, %c2 : index
              %41 = memref.load %arg5[%30, %40] : memref<?x64xf32>
              %42 = memref.load %arg6[%30, %40] : memref<?x64xf32>
              %43 = arith.addf %41, %42 : f32
              memref.store %43, %arg4[%30, %40] : memref<?x64xf32>
              %44 = arith.addi %32, %c3 : index
              %45 = memref.load %arg5[%30, %44] : memref<?x64xf32>
              %46 = memref.load %arg6[%30, %44] : memref<?x64xf32>
              %47 = arith.addf %45, %46 : f32
              memref.store %47, %arg4[%30, %44] : memref<?x64xf32>
            }
          }
        }
        async.yield
      }
      %27 = async.add_to_group %token, %23 : !async.token
      %28 = arith.addi %arg8, %c1 : index
      scf.yield %28 : index
    }
    async.await_all %23
    scf.for %arg7 = %c0 to %c64 step %c1 {
      %27 = async.create_group %c1 : !async.group
      %28 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %31 = arith.addi %arg7, %arg8 : index
          memref.store %cst, %alloca_10[] : memref<f32>
          memref.store %cst, %alloca_9[] : memref<f32>
          memref.store %cst, %alloca_8[] : memref<f32>
          scf.for %arg10 = %c0 to %c16 step %c1 {
            %32 = arith.muli %arg10, %c4 : index
            %33 = memref.load %arg4[%32, %31] : memref<?x64xf32>
            %34 = arith.mulf %11, %33 : f32
            %35 = memref.load %alloca_10[] : memref<f32>
            %36 = arith.mulf %14, %35 : f32
            %37 = arith.addf %34, %36 : f32
            %38 = memref.load %alloca_9[] : memref<f32>
            %39 = arith.mulf %21, %38 : f32
            %40 = arith.addf %37, %39 : f32
            %41 = memref.load %alloca_8[] : memref<f32>
            %42 = arith.mulf %22, %41 : f32
            %43 = arith.addf %40, %42 : f32
            memref.store %43, %arg5[%32, %31] : memref<?x64xf32>
            %44 = memref.load %arg4[%32, %31] : memref<?x64xf32>
            memref.store %44, %alloca_10[] : memref<f32>
            memref.store %38, %alloca_8[] : memref<f32>
            %45 = memref.load %arg5[%32, %31] : memref<?x64xf32>
            memref.store %45, %alloca_9[] : memref<f32>
            %46 = arith.addi %32, %c1 : index
            %47 = memref.load %arg4[%46, %31] : memref<?x64xf32>
            %48 = arith.mulf %11, %47 : f32
            %49 = memref.load %alloca_10[] : memref<f32>
            %50 = arith.mulf %14, %49 : f32
            %51 = arith.addf %48, %50 : f32
            %52 = memref.load %alloca_9[] : memref<f32>
            %53 = arith.mulf %21, %52 : f32
            %54 = arith.addf %51, %53 : f32
            %55 = memref.load %alloca_8[] : memref<f32>
            %56 = arith.mulf %22, %55 : f32
            %57 = arith.addf %54, %56 : f32
            memref.store %57, %arg5[%46, %31] : memref<?x64xf32>
            %58 = memref.load %arg4[%46, %31] : memref<?x64xf32>
            memref.store %58, %alloca_10[] : memref<f32>
            memref.store %52, %alloca_8[] : memref<f32>
            %59 = memref.load %arg5[%46, %31] : memref<?x64xf32>
            memref.store %59, %alloca_9[] : memref<f32>
            %60 = arith.addi %32, %c2 : index
            %61 = memref.load %arg4[%60, %31] : memref<?x64xf32>
            %62 = arith.mulf %11, %61 : f32
            %63 = memref.load %alloca_10[] : memref<f32>
            %64 = arith.mulf %14, %63 : f32
            %65 = arith.addf %62, %64 : f32
            %66 = memref.load %alloca_9[] : memref<f32>
            %67 = arith.mulf %21, %66 : f32
            %68 = arith.addf %65, %67 : f32
            %69 = memref.load %alloca_8[] : memref<f32>
            %70 = arith.mulf %22, %69 : f32
            %71 = arith.addf %68, %70 : f32
            memref.store %71, %arg5[%60, %31] : memref<?x64xf32>
            %72 = memref.load %arg4[%60, %31] : memref<?x64xf32>
            memref.store %72, %alloca_10[] : memref<f32>
            memref.store %66, %alloca_8[] : memref<f32>
            %73 = memref.load %arg5[%60, %31] : memref<?x64xf32>
            memref.store %73, %alloca_9[] : memref<f32>
            %74 = arith.addi %32, %c3 : index
            %75 = memref.load %arg4[%74, %31] : memref<?x64xf32>
            %76 = arith.mulf %11, %75 : f32
            %77 = memref.load %alloca_10[] : memref<f32>
            %78 = arith.mulf %14, %77 : f32
            %79 = arith.addf %76, %78 : f32
            %80 = memref.load %alloca_9[] : memref<f32>
            %81 = arith.mulf %21, %80 : f32
            %82 = arith.addf %79, %81 : f32
            %83 = memref.load %alloca_8[] : memref<f32>
            %84 = arith.mulf %22, %83 : f32
            %85 = arith.addf %82, %84 : f32
            memref.store %85, %arg5[%74, %31] : memref<?x64xf32>
            %86 = memref.load %arg4[%74, %31] : memref<?x64xf32>
            memref.store %86, %alloca_10[] : memref<f32>
            memref.store %80, %alloca_8[] : memref<f32>
            %87 = memref.load %arg5[%74, %31] : memref<?x64xf32>
            memref.store %87, %alloca_9[] : memref<f32>
          }
          async.yield
        }
        %29 = async.add_to_group %token, %27 : !async.token
        %30 = arith.addi %arg9, %c1 : index
        scf.yield %30 : index
      }
      async.await_all %27
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      %27 = async.create_group %c1 : !async.group
      %28 = scf.for %arg8 = %c0 to %c1 step %c1 iter_args(%arg9 = %c0) -> (index) {
        %token = async.execute {
          %31 = arith.addi %arg7, %arg8 : index
          memref.store %cst, %alloca_5[] : memref<f32>
          memref.store %cst, %alloca_4[] : memref<f32>
          memref.store %cst, %alloca_3[] : memref<f32>
          memref.store %cst, %alloca[] : memref<f32>
          scf.for %arg10 = %c0 to %c16 step %c1 {
            %32 = arith.muli %arg10, %c4 : index
            %33 = memref.load %alloca_5[] : memref<f32>
            %34 = arith.mulf %16, %33 : f32
            %35 = memref.load %alloca_4[] : memref<f32>
            %36 = arith.mulf %20, %35 : f32
            %37 = arith.addf %34, %36 : f32
            %38 = memref.load %alloca_3[] : memref<f32>
            %39 = arith.mulf %21, %38 : f32
            %40 = arith.addf %37, %39 : f32
            %41 = memref.load %alloca[] : memref<f32>
            %42 = arith.mulf %22, %41 : f32
            %43 = arith.addf %40, %42 : f32
            %44 = arith.muli %32, %c-1 : index
            %45 = arith.addi %44, %c63 : index
            memref.store %43, %arg6[%45, %31] : memref<?x64xf32>
            memref.store %33, %alloca_4[] : memref<f32>
            %46 = arith.muli %32, %c-1 : index
            %47 = arith.addi %46, %c63 : index
            %48 = memref.load %arg4[%47, %31] : memref<?x64xf32>
            memref.store %48, %alloca_5[] : memref<f32>
            memref.store %38, %alloca[] : memref<f32>
            %49 = arith.muli %32, %c-1 : index
            %50 = arith.addi %49, %c63 : index
            %51 = memref.load %arg6[%50, %31] : memref<?x64xf32>
            memref.store %51, %alloca_3[] : memref<f32>
            %52 = arith.addi %32, %c1 : index
            %53 = memref.load %alloca_5[] : memref<f32>
            %54 = arith.mulf %16, %53 : f32
            %55 = memref.load %alloca_4[] : memref<f32>
            %56 = arith.mulf %20, %55 : f32
            %57 = arith.addf %54, %56 : f32
            %58 = memref.load %alloca_3[] : memref<f32>
            %59 = arith.mulf %21, %58 : f32
            %60 = arith.addf %57, %59 : f32
            %61 = memref.load %alloca[] : memref<f32>
            %62 = arith.mulf %22, %61 : f32
            %63 = arith.addf %60, %62 : f32
            %64 = arith.muli %52, %c-1 : index
            %65 = arith.addi %64, %c63 : index
            memref.store %63, %arg6[%65, %31] : memref<?x64xf32>
            memref.store %53, %alloca_4[] : memref<f32>
            %66 = arith.muli %52, %c-1 : index
            %67 = arith.addi %66, %c63 : index
            %68 = memref.load %arg4[%67, %31] : memref<?x64xf32>
            memref.store %68, %alloca_5[] : memref<f32>
            memref.store %58, %alloca[] : memref<f32>
            %69 = arith.muli %52, %c-1 : index
            %70 = arith.addi %69, %c63 : index
            %71 = memref.load %arg6[%70, %31] : memref<?x64xf32>
            memref.store %71, %alloca_3[] : memref<f32>
            %72 = arith.addi %32, %c2 : index
            %73 = memref.load %alloca_5[] : memref<f32>
            %74 = arith.mulf %16, %73 : f32
            %75 = memref.load %alloca_4[] : memref<f32>
            %76 = arith.mulf %20, %75 : f32
            %77 = arith.addf %74, %76 : f32
            %78 = memref.load %alloca_3[] : memref<f32>
            %79 = arith.mulf %21, %78 : f32
            %80 = arith.addf %77, %79 : f32
            %81 = memref.load %alloca[] : memref<f32>
            %82 = arith.mulf %22, %81 : f32
            %83 = arith.addf %80, %82 : f32
            %84 = arith.muli %72, %c-1 : index
            %85 = arith.addi %84, %c63 : index
            memref.store %83, %arg6[%85, %31] : memref<?x64xf32>
            memref.store %73, %alloca_4[] : memref<f32>
            %86 = arith.muli %72, %c-1 : index
            %87 = arith.addi %86, %c63 : index
            %88 = memref.load %arg4[%87, %31] : memref<?x64xf32>
            memref.store %88, %alloca_5[] : memref<f32>
            memref.store %78, %alloca[] : memref<f32>
            %89 = arith.muli %72, %c-1 : index
            %90 = arith.addi %89, %c63 : index
            %91 = memref.load %arg6[%90, %31] : memref<?x64xf32>
            memref.store %91, %alloca_3[] : memref<f32>
            %92 = arith.addi %32, %c3 : index
            %93 = memref.load %alloca_5[] : memref<f32>
            %94 = arith.mulf %16, %93 : f32
            %95 = memref.load %alloca_4[] : memref<f32>
            %96 = arith.mulf %20, %95 : f32
            %97 = arith.addf %94, %96 : f32
            %98 = memref.load %alloca_3[] : memref<f32>
            %99 = arith.mulf %21, %98 : f32
            %100 = arith.addf %97, %99 : f32
            %101 = memref.load %alloca[] : memref<f32>
            %102 = arith.mulf %22, %101 : f32
            %103 = arith.addf %100, %102 : f32
            %104 = arith.muli %92, %c-1 : index
            %105 = arith.addi %104, %c63 : index
            memref.store %103, %arg6[%105, %31] : memref<?x64xf32>
            memref.store %93, %alloca_4[] : memref<f32>
            %106 = arith.muli %92, %c-1 : index
            %107 = arith.addi %106, %c63 : index
            %108 = memref.load %arg4[%107, %31] : memref<?x64xf32>
            memref.store %108, %alloca_5[] : memref<f32>
            memref.store %98, %alloca[] : memref<f32>
            %109 = arith.muli %92, %c-1 : index
            %110 = arith.addi %109, %c63 : index
            %111 = memref.load %arg6[%110, %31] : memref<?x64xf32>
            memref.store %111, %alloca_3[] : memref<f32>
          }
          async.yield
        }
        %29 = async.add_to_group %token, %27 : !async.token
        %30 = arith.addi %arg9, %c1 : index
        scf.yield %30 : index
      }
      async.await_all %27
    }
    %25 = async.create_group %c64 : !async.group
    %26 = scf.for %arg7 = %c0 to %c64 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %29 = arith.muli %arg9, %c4 : index
          scf.for %arg10 = %c0 to %c1 step %c1 {
            %30 = arith.addi %arg7, %arg10 : index
            scf.for %arg11 = %c0 to %c1 step %c1 {
              %31 = arith.muli %arg11, %c4 : index
              %32 = arith.addi %29, %31 : index
              %33 = memref.load %arg5[%30, %32] : memref<?x64xf32>
              %34 = memref.load %arg6[%30, %32] : memref<?x64xf32>
              %35 = arith.addf %33, %34 : f32
              memref.store %35, %arg4[%30, %32] : memref<?x64xf32>
              %36 = arith.addi %32, %c1 : index
              %37 = memref.load %arg5[%30, %36] : memref<?x64xf32>
              %38 = memref.load %arg6[%30, %36] : memref<?x64xf32>
              %39 = arith.addf %37, %38 : f32
              memref.store %39, %arg4[%30, %36] : memref<?x64xf32>
              %40 = arith.addi %32, %c2 : index
              %41 = memref.load %arg5[%30, %40] : memref<?x64xf32>
              %42 = memref.load %arg6[%30, %40] : memref<?x64xf32>
              %43 = arith.addf %41, %42 : f32
              memref.store %43, %arg4[%30, %40] : memref<?x64xf32>
              %44 = arith.addi %32, %c3 : index
              %45 = memref.load %arg5[%30, %44] : memref<?x64xf32>
              %46 = memref.load %arg6[%30, %44] : memref<?x64xf32>
              %47 = arith.addf %45, %46 : f32
              memref.store %47, %arg4[%30, %44] : memref<?x64xf32>
            }
          }
        }
        async.yield
      }
      %27 = async.add_to_group %token, %25 : !async.token
      %28 = arith.addi %arg8, %c1 : index
      scf.yield %28 : index
    }
    async.await_all %25
    return
  }
}

