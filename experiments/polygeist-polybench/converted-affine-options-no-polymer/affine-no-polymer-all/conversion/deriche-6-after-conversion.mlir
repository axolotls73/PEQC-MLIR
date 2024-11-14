module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %c128 = arith.constant 128 : index
    %c63 = arith.constant 63 : index
    %c-1 = arith.constant -1 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c16 = arith.constant 16 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
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
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %27 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %28 = arith.addi %27, %arg8 : index
        memref.store %cst, %alloca_9[] : memref<f32>
        memref.store %cst, %alloca_8[] : memref<f32>
        memref.store %cst, %alloca_11[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %29 = arith.muli %arg9, %c4 : index
          %30 = memref.load %arg3[%28, %29] : memref<?x64xf32>
          %31 = arith.mulf %11, %30 : f32
          %32 = memref.load %alloca_11[] : memref<f32>
          %33 = arith.mulf %14, %32 : f32
          %34 = arith.addf %31, %33 : f32
          %35 = memref.load %alloca_9[] : memref<f32>
          %36 = arith.mulf %21, %35 : f32
          %37 = arith.addf %34, %36 : f32
          %38 = memref.load %alloca_8[] : memref<f32>
          %39 = arith.mulf %22, %38 : f32
          %40 = arith.addf %37, %39 : f32
          memref.store %40, %arg5[%28, %29] : memref<?x64xf32>
          %41 = memref.load %arg3[%28, %29] : memref<?x64xf32>
          memref.store %41, %alloca_11[] : memref<f32>
          memref.store %35, %alloca_8[] : memref<f32>
          %42 = memref.load %arg5[%28, %29] : memref<?x64xf32>
          memref.store %42, %alloca_9[] : memref<f32>
          %43 = arith.addi %29, %c1 : index
          %44 = memref.load %arg3[%28, %43] : memref<?x64xf32>
          %45 = arith.mulf %11, %44 : f32
          %46 = memref.load %alloca_11[] : memref<f32>
          %47 = arith.mulf %14, %46 : f32
          %48 = arith.addf %45, %47 : f32
          %49 = memref.load %alloca_9[] : memref<f32>
          %50 = arith.mulf %21, %49 : f32
          %51 = arith.addf %48, %50 : f32
          %52 = memref.load %alloca_8[] : memref<f32>
          %53 = arith.mulf %22, %52 : f32
          %54 = arith.addf %51, %53 : f32
          memref.store %54, %arg5[%28, %43] : memref<?x64xf32>
          %55 = memref.load %arg3[%28, %43] : memref<?x64xf32>
          memref.store %55, %alloca_11[] : memref<f32>
          memref.store %49, %alloca_8[] : memref<f32>
          %56 = memref.load %arg5[%28, %43] : memref<?x64xf32>
          memref.store %56, %alloca_9[] : memref<f32>
          %57 = arith.addi %29, %c2 : index
          %58 = memref.load %arg3[%28, %57] : memref<?x64xf32>
          %59 = arith.mulf %11, %58 : f32
          %60 = memref.load %alloca_11[] : memref<f32>
          %61 = arith.mulf %14, %60 : f32
          %62 = arith.addf %59, %61 : f32
          %63 = memref.load %alloca_9[] : memref<f32>
          %64 = arith.mulf %21, %63 : f32
          %65 = arith.addf %62, %64 : f32
          %66 = memref.load %alloca_8[] : memref<f32>
          %67 = arith.mulf %22, %66 : f32
          %68 = arith.addf %65, %67 : f32
          memref.store %68, %arg5[%28, %57] : memref<?x64xf32>
          %69 = memref.load %arg3[%28, %57] : memref<?x64xf32>
          memref.store %69, %alloca_11[] : memref<f32>
          memref.store %63, %alloca_8[] : memref<f32>
          %70 = memref.load %arg5[%28, %57] : memref<?x64xf32>
          memref.store %70, %alloca_9[] : memref<f32>
          %71 = arith.addi %29, %c3 : index
          %72 = memref.load %arg3[%28, %71] : memref<?x64xf32>
          %73 = arith.mulf %11, %72 : f32
          %74 = memref.load %alloca_11[] : memref<f32>
          %75 = arith.mulf %14, %74 : f32
          %76 = arith.addf %73, %75 : f32
          %77 = memref.load %alloca_9[] : memref<f32>
          %78 = arith.mulf %21, %77 : f32
          %79 = arith.addf %76, %78 : f32
          %80 = memref.load %alloca_8[] : memref<f32>
          %81 = arith.mulf %22, %80 : f32
          %82 = arith.addf %79, %81 : f32
          memref.store %82, %arg5[%28, %71] : memref<?x64xf32>
          %83 = memref.load %arg3[%28, %71] : memref<?x64xf32>
          memref.store %83, %alloca_11[] : memref<f32>
          memref.store %77, %alloca_8[] : memref<f32>
          %84 = memref.load %arg5[%28, %71] : memref<?x64xf32>
          memref.store %84, %alloca_9[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %27 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %28 = arith.addi %27, %arg8 : index
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_7[] : memref<f32>
        memref.store %cst, %alloca_6[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %29 = arith.muli %arg9, %c4 : index
          %30 = memref.load %alloca_7[] : memref<f32>
          %31 = arith.mulf %16, %30 : f32
          %32 = memref.load %alloca_6[] : memref<f32>
          %33 = arith.mulf %20, %32 : f32
          %34 = arith.addf %31, %33 : f32
          %35 = memref.load %alloca_3[] : memref<f32>
          %36 = arith.mulf %21, %35 : f32
          %37 = arith.addf %34, %36 : f32
          %38 = memref.load %alloca[] : memref<f32>
          %39 = arith.mulf %22, %38 : f32
          %40 = arith.addf %37, %39 : f32
          %41 = arith.muli %29, %c-1 : index
          %42 = arith.addi %41, %c63 : index
          memref.store %40, %arg6[%28, %42] : memref<?x64xf32>
          memref.store %30, %alloca_6[] : memref<f32>
          %43 = arith.muli %29, %c-1 : index
          %44 = arith.addi %43, %c63 : index
          %45 = memref.load %arg3[%28, %44] : memref<?x64xf32>
          memref.store %45, %alloca_7[] : memref<f32>
          memref.store %35, %alloca[] : memref<f32>
          %46 = arith.muli %29, %c-1 : index
          %47 = arith.addi %46, %c63 : index
          %48 = memref.load %arg6[%28, %47] : memref<?x64xf32>
          memref.store %48, %alloca_3[] : memref<f32>
          %49 = arith.addi %29, %c1 : index
          %50 = memref.load %alloca_7[] : memref<f32>
          %51 = arith.mulf %16, %50 : f32
          %52 = memref.load %alloca_6[] : memref<f32>
          %53 = arith.mulf %20, %52 : f32
          %54 = arith.addf %51, %53 : f32
          %55 = memref.load %alloca_3[] : memref<f32>
          %56 = arith.mulf %21, %55 : f32
          %57 = arith.addf %54, %56 : f32
          %58 = memref.load %alloca[] : memref<f32>
          %59 = arith.mulf %22, %58 : f32
          %60 = arith.addf %57, %59 : f32
          %61 = arith.muli %49, %c-1 : index
          %62 = arith.addi %61, %c63 : index
          memref.store %60, %arg6[%28, %62] : memref<?x64xf32>
          memref.store %50, %alloca_6[] : memref<f32>
          %63 = arith.muli %49, %c-1 : index
          %64 = arith.addi %63, %c63 : index
          %65 = memref.load %arg3[%28, %64] : memref<?x64xf32>
          memref.store %65, %alloca_7[] : memref<f32>
          memref.store %55, %alloca[] : memref<f32>
          %66 = arith.muli %49, %c-1 : index
          %67 = arith.addi %66, %c63 : index
          %68 = memref.load %arg6[%28, %67] : memref<?x64xf32>
          memref.store %68, %alloca_3[] : memref<f32>
          %69 = arith.addi %29, %c2 : index
          %70 = memref.load %alloca_7[] : memref<f32>
          %71 = arith.mulf %16, %70 : f32
          %72 = memref.load %alloca_6[] : memref<f32>
          %73 = arith.mulf %20, %72 : f32
          %74 = arith.addf %71, %73 : f32
          %75 = memref.load %alloca_3[] : memref<f32>
          %76 = arith.mulf %21, %75 : f32
          %77 = arith.addf %74, %76 : f32
          %78 = memref.load %alloca[] : memref<f32>
          %79 = arith.mulf %22, %78 : f32
          %80 = arith.addf %77, %79 : f32
          %81 = arith.muli %69, %c-1 : index
          %82 = arith.addi %81, %c63 : index
          memref.store %80, %arg6[%28, %82] : memref<?x64xf32>
          memref.store %70, %alloca_6[] : memref<f32>
          %83 = arith.muli %69, %c-1 : index
          %84 = arith.addi %83, %c63 : index
          %85 = memref.load %arg3[%28, %84] : memref<?x64xf32>
          memref.store %85, %alloca_7[] : memref<f32>
          memref.store %75, %alloca[] : memref<f32>
          %86 = arith.muli %69, %c-1 : index
          %87 = arith.addi %86, %c63 : index
          %88 = memref.load %arg6[%28, %87] : memref<?x64xf32>
          memref.store %88, %alloca_3[] : memref<f32>
          %89 = arith.addi %29, %c3 : index
          %90 = memref.load %alloca_7[] : memref<f32>
          %91 = arith.mulf %16, %90 : f32
          %92 = memref.load %alloca_6[] : memref<f32>
          %93 = arith.mulf %20, %92 : f32
          %94 = arith.addf %91, %93 : f32
          %95 = memref.load %alloca_3[] : memref<f32>
          %96 = arith.mulf %21, %95 : f32
          %97 = arith.addf %94, %96 : f32
          %98 = memref.load %alloca[] : memref<f32>
          %99 = arith.mulf %22, %98 : f32
          %100 = arith.addf %97, %99 : f32
          %101 = arith.muli %89, %c-1 : index
          %102 = arith.addi %101, %c63 : index
          memref.store %100, %arg6[%28, %102] : memref<?x64xf32>
          memref.store %90, %alloca_6[] : memref<f32>
          %103 = arith.muli %89, %c-1 : index
          %104 = arith.addi %103, %c63 : index
          %105 = memref.load %arg3[%28, %104] : memref<?x64xf32>
          memref.store %105, %alloca_7[] : memref<f32>
          memref.store %95, %alloca[] : memref<f32>
          %106 = arith.muli %89, %c-1 : index
          %107 = arith.addi %106, %c63 : index
          %108 = memref.load %arg6[%28, %107] : memref<?x64xf32>
          memref.store %108, %alloca_3[] : memref<f32>
        }
      }
    }
    %23 = async.create_group %c2 : !async.group
    %24 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %29 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %30 = arith.muli %arg9, %c128 : index
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %31 = arith.addi %29, %arg10 : index
            scf.for %arg11 = %c0 to %c16 step %c1 {
              %32 = arith.muli %arg11, %c4 : index
              %33 = arith.addi %30, %32 : index
              %34 = memref.load %arg5[%31, %33] : memref<?x64xf32>
              %35 = memref.load %arg6[%31, %33] : memref<?x64xf32>
              %36 = arith.addf %34, %35 : f32
              memref.store %36, %arg4[%31, %33] : memref<?x64xf32>
              %37 = arith.addi %33, %c1 : index
              %38 = memref.load %arg5[%31, %37] : memref<?x64xf32>
              %39 = memref.load %arg6[%31, %37] : memref<?x64xf32>
              %40 = arith.addf %38, %39 : f32
              memref.store %40, %arg4[%31, %37] : memref<?x64xf32>
              %41 = arith.addi %33, %c2 : index
              %42 = memref.load %arg5[%31, %41] : memref<?x64xf32>
              %43 = memref.load %arg6[%31, %41] : memref<?x64xf32>
              %44 = arith.addf %42, %43 : f32
              memref.store %44, %arg4[%31, %41] : memref<?x64xf32>
              %45 = arith.addi %33, %c3 : index
              %46 = memref.load %arg5[%31, %45] : memref<?x64xf32>
              %47 = memref.load %arg6[%31, %45] : memref<?x64xf32>
              %48 = arith.addf %46, %47 : f32
              memref.store %48, %arg4[%31, %45] : memref<?x64xf32>
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
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %27 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %28 = arith.addi %27, %arg8 : index
        memref.store %cst, %alloca_10[] : memref<f32>
        memref.store %cst, %alloca_9[] : memref<f32>
        memref.store %cst, %alloca_8[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %29 = arith.muli %arg9, %c4 : index
          %30 = memref.load %arg4[%29, %28] : memref<?x64xf32>
          %31 = arith.mulf %11, %30 : f32
          %32 = memref.load %alloca_10[] : memref<f32>
          %33 = arith.mulf %14, %32 : f32
          %34 = arith.addf %31, %33 : f32
          %35 = memref.load %alloca_9[] : memref<f32>
          %36 = arith.mulf %21, %35 : f32
          %37 = arith.addf %34, %36 : f32
          %38 = memref.load %alloca_8[] : memref<f32>
          %39 = arith.mulf %22, %38 : f32
          %40 = arith.addf %37, %39 : f32
          memref.store %40, %arg5[%29, %28] : memref<?x64xf32>
          %41 = memref.load %arg4[%29, %28] : memref<?x64xf32>
          memref.store %41, %alloca_10[] : memref<f32>
          memref.store %35, %alloca_8[] : memref<f32>
          %42 = memref.load %arg5[%29, %28] : memref<?x64xf32>
          memref.store %42, %alloca_9[] : memref<f32>
          %43 = arith.addi %29, %c1 : index
          %44 = memref.load %arg4[%43, %28] : memref<?x64xf32>
          %45 = arith.mulf %11, %44 : f32
          %46 = memref.load %alloca_10[] : memref<f32>
          %47 = arith.mulf %14, %46 : f32
          %48 = arith.addf %45, %47 : f32
          %49 = memref.load %alloca_9[] : memref<f32>
          %50 = arith.mulf %21, %49 : f32
          %51 = arith.addf %48, %50 : f32
          %52 = memref.load %alloca_8[] : memref<f32>
          %53 = arith.mulf %22, %52 : f32
          %54 = arith.addf %51, %53 : f32
          memref.store %54, %arg5[%43, %28] : memref<?x64xf32>
          %55 = memref.load %arg4[%43, %28] : memref<?x64xf32>
          memref.store %55, %alloca_10[] : memref<f32>
          memref.store %49, %alloca_8[] : memref<f32>
          %56 = memref.load %arg5[%43, %28] : memref<?x64xf32>
          memref.store %56, %alloca_9[] : memref<f32>
          %57 = arith.addi %29, %c2 : index
          %58 = memref.load %arg4[%57, %28] : memref<?x64xf32>
          %59 = arith.mulf %11, %58 : f32
          %60 = memref.load %alloca_10[] : memref<f32>
          %61 = arith.mulf %14, %60 : f32
          %62 = arith.addf %59, %61 : f32
          %63 = memref.load %alloca_9[] : memref<f32>
          %64 = arith.mulf %21, %63 : f32
          %65 = arith.addf %62, %64 : f32
          %66 = memref.load %alloca_8[] : memref<f32>
          %67 = arith.mulf %22, %66 : f32
          %68 = arith.addf %65, %67 : f32
          memref.store %68, %arg5[%57, %28] : memref<?x64xf32>
          %69 = memref.load %arg4[%57, %28] : memref<?x64xf32>
          memref.store %69, %alloca_10[] : memref<f32>
          memref.store %63, %alloca_8[] : memref<f32>
          %70 = memref.load %arg5[%57, %28] : memref<?x64xf32>
          memref.store %70, %alloca_9[] : memref<f32>
          %71 = arith.addi %29, %c3 : index
          %72 = memref.load %arg4[%71, %28] : memref<?x64xf32>
          %73 = arith.mulf %11, %72 : f32
          %74 = memref.load %alloca_10[] : memref<f32>
          %75 = arith.mulf %14, %74 : f32
          %76 = arith.addf %73, %75 : f32
          %77 = memref.load %alloca_9[] : memref<f32>
          %78 = arith.mulf %21, %77 : f32
          %79 = arith.addf %76, %78 : f32
          %80 = memref.load %alloca_8[] : memref<f32>
          %81 = arith.mulf %22, %80 : f32
          %82 = arith.addf %79, %81 : f32
          memref.store %82, %arg5[%71, %28] : memref<?x64xf32>
          %83 = memref.load %arg4[%71, %28] : memref<?x64xf32>
          memref.store %83, %alloca_10[] : memref<f32>
          memref.store %77, %alloca_8[] : memref<f32>
          %84 = memref.load %arg5[%71, %28] : memref<?x64xf32>
          memref.store %84, %alloca_9[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %27 = arith.muli %arg7, %c32 : index
      scf.for %arg8 = %c0 to %c32 step %c1 {
        %28 = arith.addi %27, %arg8 : index
        memref.store %cst, %alloca_5[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %29 = arith.muli %arg9, %c4 : index
          %30 = memref.load %alloca_5[] : memref<f32>
          %31 = arith.mulf %16, %30 : f32
          %32 = memref.load %alloca_4[] : memref<f32>
          %33 = arith.mulf %20, %32 : f32
          %34 = arith.addf %31, %33 : f32
          %35 = memref.load %alloca_3[] : memref<f32>
          %36 = arith.mulf %21, %35 : f32
          %37 = arith.addf %34, %36 : f32
          %38 = memref.load %alloca[] : memref<f32>
          %39 = arith.mulf %22, %38 : f32
          %40 = arith.addf %37, %39 : f32
          %41 = arith.muli %29, %c-1 : index
          %42 = arith.addi %41, %c63 : index
          memref.store %40, %arg6[%42, %28] : memref<?x64xf32>
          memref.store %30, %alloca_4[] : memref<f32>
          %43 = arith.muli %29, %c-1 : index
          %44 = arith.addi %43, %c63 : index
          %45 = memref.load %arg4[%44, %28] : memref<?x64xf32>
          memref.store %45, %alloca_5[] : memref<f32>
          memref.store %35, %alloca[] : memref<f32>
          %46 = arith.muli %29, %c-1 : index
          %47 = arith.addi %46, %c63 : index
          %48 = memref.load %arg6[%47, %28] : memref<?x64xf32>
          memref.store %48, %alloca_3[] : memref<f32>
          %49 = arith.addi %29, %c1 : index
          %50 = memref.load %alloca_5[] : memref<f32>
          %51 = arith.mulf %16, %50 : f32
          %52 = memref.load %alloca_4[] : memref<f32>
          %53 = arith.mulf %20, %52 : f32
          %54 = arith.addf %51, %53 : f32
          %55 = memref.load %alloca_3[] : memref<f32>
          %56 = arith.mulf %21, %55 : f32
          %57 = arith.addf %54, %56 : f32
          %58 = memref.load %alloca[] : memref<f32>
          %59 = arith.mulf %22, %58 : f32
          %60 = arith.addf %57, %59 : f32
          %61 = arith.muli %49, %c-1 : index
          %62 = arith.addi %61, %c63 : index
          memref.store %60, %arg6[%62, %28] : memref<?x64xf32>
          memref.store %50, %alloca_4[] : memref<f32>
          %63 = arith.muli %49, %c-1 : index
          %64 = arith.addi %63, %c63 : index
          %65 = memref.load %arg4[%64, %28] : memref<?x64xf32>
          memref.store %65, %alloca_5[] : memref<f32>
          memref.store %55, %alloca[] : memref<f32>
          %66 = arith.muli %49, %c-1 : index
          %67 = arith.addi %66, %c63 : index
          %68 = memref.load %arg6[%67, %28] : memref<?x64xf32>
          memref.store %68, %alloca_3[] : memref<f32>
          %69 = arith.addi %29, %c2 : index
          %70 = memref.load %alloca_5[] : memref<f32>
          %71 = arith.mulf %16, %70 : f32
          %72 = memref.load %alloca_4[] : memref<f32>
          %73 = arith.mulf %20, %72 : f32
          %74 = arith.addf %71, %73 : f32
          %75 = memref.load %alloca_3[] : memref<f32>
          %76 = arith.mulf %21, %75 : f32
          %77 = arith.addf %74, %76 : f32
          %78 = memref.load %alloca[] : memref<f32>
          %79 = arith.mulf %22, %78 : f32
          %80 = arith.addf %77, %79 : f32
          %81 = arith.muli %69, %c-1 : index
          %82 = arith.addi %81, %c63 : index
          memref.store %80, %arg6[%82, %28] : memref<?x64xf32>
          memref.store %70, %alloca_4[] : memref<f32>
          %83 = arith.muli %69, %c-1 : index
          %84 = arith.addi %83, %c63 : index
          %85 = memref.load %arg4[%84, %28] : memref<?x64xf32>
          memref.store %85, %alloca_5[] : memref<f32>
          memref.store %75, %alloca[] : memref<f32>
          %86 = arith.muli %69, %c-1 : index
          %87 = arith.addi %86, %c63 : index
          %88 = memref.load %arg6[%87, %28] : memref<?x64xf32>
          memref.store %88, %alloca_3[] : memref<f32>
          %89 = arith.addi %29, %c3 : index
          %90 = memref.load %alloca_5[] : memref<f32>
          %91 = arith.mulf %16, %90 : f32
          %92 = memref.load %alloca_4[] : memref<f32>
          %93 = arith.mulf %20, %92 : f32
          %94 = arith.addf %91, %93 : f32
          %95 = memref.load %alloca_3[] : memref<f32>
          %96 = arith.mulf %21, %95 : f32
          %97 = arith.addf %94, %96 : f32
          %98 = memref.load %alloca[] : memref<f32>
          %99 = arith.mulf %22, %98 : f32
          %100 = arith.addf %97, %99 : f32
          %101 = arith.muli %89, %c-1 : index
          %102 = arith.addi %101, %c63 : index
          memref.store %100, %arg6[%102, %28] : memref<?x64xf32>
          memref.store %90, %alloca_4[] : memref<f32>
          %103 = arith.muli %89, %c-1 : index
          %104 = arith.addi %103, %c63 : index
          %105 = memref.load %arg4[%104, %28] : memref<?x64xf32>
          memref.store %105, %alloca_5[] : memref<f32>
          memref.store %95, %alloca[] : memref<f32>
          %106 = arith.muli %89, %c-1 : index
          %107 = arith.addi %106, %c63 : index
          %108 = memref.load %arg6[%107, %28] : memref<?x64xf32>
          memref.store %108, %alloca_3[] : memref<f32>
        }
      }
    }
    %25 = async.create_group %c2 : !async.group
    %26 = scf.for %arg7 = %c0 to %c2 step %c1 iter_args(%arg8 = %c0) -> (index) {
      %token = async.execute {
        %29 = arith.muli %arg7, %c32 : index
        scf.for %arg9 = %c0 to %c1 step %c1 {
          %30 = arith.muli %arg9, %c128 : index
          scf.for %arg10 = %c0 to %c32 step %c1 {
            %31 = arith.addi %29, %arg10 : index
            scf.for %arg11 = %c0 to %c16 step %c1 {
              %32 = arith.muli %arg11, %c4 : index
              %33 = arith.addi %30, %32 : index
              %34 = memref.load %arg5[%31, %33] : memref<?x64xf32>
              %35 = memref.load %arg6[%31, %33] : memref<?x64xf32>
              %36 = arith.addf %34, %35 : f32
              memref.store %36, %arg4[%31, %33] : memref<?x64xf32>
              %37 = arith.addi %33, %c1 : index
              %38 = memref.load %arg5[%31, %37] : memref<?x64xf32>
              %39 = memref.load %arg6[%31, %37] : memref<?x64xf32>
              %40 = arith.addf %38, %39 : f32
              memref.store %40, %arg4[%31, %37] : memref<?x64xf32>
              %41 = arith.addi %33, %c2 : index
              %42 = memref.load %arg5[%31, %41] : memref<?x64xf32>
              %43 = memref.load %arg6[%31, %41] : memref<?x64xf32>
              %44 = arith.addf %42, %43 : f32
              memref.store %44, %arg4[%31, %41] : memref<?x64xf32>
              %45 = arith.addi %33, %c3 : index
              %46 = memref.load %arg5[%31, %45] : memref<?x64xf32>
              %47 = memref.load %arg6[%31, %45] : memref<?x64xf32>
              %48 = arith.addf %46, %47 : f32
              memref.store %48, %arg4[%31, %45] : memref<?x64xf32>
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

