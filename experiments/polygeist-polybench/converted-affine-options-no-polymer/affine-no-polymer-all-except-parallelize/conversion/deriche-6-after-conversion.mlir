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
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %23 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %alloca_9[] : memref<f32>
        memref.store %cst, %alloca_8[] : memref<f32>
        memref.store %cst, %alloca_11[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %24 = arith.muli %arg9, %c4 : index
          %25 = memref.load %arg3[%23, %24] : memref<?x64xf32>
          %26 = arith.mulf %11, %25 : f32
          %27 = memref.load %alloca_11[] : memref<f32>
          %28 = arith.mulf %14, %27 : f32
          %29 = arith.addf %26, %28 : f32
          %30 = memref.load %alloca_9[] : memref<f32>
          %31 = arith.mulf %21, %30 : f32
          %32 = arith.addf %29, %31 : f32
          %33 = memref.load %alloca_8[] : memref<f32>
          %34 = arith.mulf %22, %33 : f32
          %35 = arith.addf %32, %34 : f32
          memref.store %35, %arg5[%23, %24] : memref<?x64xf32>
          %36 = memref.load %arg3[%23, %24] : memref<?x64xf32>
          memref.store %36, %alloca_11[] : memref<f32>
          memref.store %30, %alloca_8[] : memref<f32>
          %37 = memref.load %arg5[%23, %24] : memref<?x64xf32>
          memref.store %37, %alloca_9[] : memref<f32>
          %38 = arith.addi %24, %c1 : index
          %39 = memref.load %arg3[%23, %38] : memref<?x64xf32>
          %40 = arith.mulf %11, %39 : f32
          %41 = memref.load %alloca_11[] : memref<f32>
          %42 = arith.mulf %14, %41 : f32
          %43 = arith.addf %40, %42 : f32
          %44 = memref.load %alloca_9[] : memref<f32>
          %45 = arith.mulf %21, %44 : f32
          %46 = arith.addf %43, %45 : f32
          %47 = memref.load %alloca_8[] : memref<f32>
          %48 = arith.mulf %22, %47 : f32
          %49 = arith.addf %46, %48 : f32
          memref.store %49, %arg5[%23, %38] : memref<?x64xf32>
          %50 = memref.load %arg3[%23, %38] : memref<?x64xf32>
          memref.store %50, %alloca_11[] : memref<f32>
          memref.store %44, %alloca_8[] : memref<f32>
          %51 = memref.load %arg5[%23, %38] : memref<?x64xf32>
          memref.store %51, %alloca_9[] : memref<f32>
          %52 = arith.addi %24, %c2 : index
          %53 = memref.load %arg3[%23, %52] : memref<?x64xf32>
          %54 = arith.mulf %11, %53 : f32
          %55 = memref.load %alloca_11[] : memref<f32>
          %56 = arith.mulf %14, %55 : f32
          %57 = arith.addf %54, %56 : f32
          %58 = memref.load %alloca_9[] : memref<f32>
          %59 = arith.mulf %21, %58 : f32
          %60 = arith.addf %57, %59 : f32
          %61 = memref.load %alloca_8[] : memref<f32>
          %62 = arith.mulf %22, %61 : f32
          %63 = arith.addf %60, %62 : f32
          memref.store %63, %arg5[%23, %52] : memref<?x64xf32>
          %64 = memref.load %arg3[%23, %52] : memref<?x64xf32>
          memref.store %64, %alloca_11[] : memref<f32>
          memref.store %58, %alloca_8[] : memref<f32>
          %65 = memref.load %arg5[%23, %52] : memref<?x64xf32>
          memref.store %65, %alloca_9[] : memref<f32>
          %66 = arith.addi %24, %c3 : index
          %67 = memref.load %arg3[%23, %66] : memref<?x64xf32>
          %68 = arith.mulf %11, %67 : f32
          %69 = memref.load %alloca_11[] : memref<f32>
          %70 = arith.mulf %14, %69 : f32
          %71 = arith.addf %68, %70 : f32
          %72 = memref.load %alloca_9[] : memref<f32>
          %73 = arith.mulf %21, %72 : f32
          %74 = arith.addf %71, %73 : f32
          %75 = memref.load %alloca_8[] : memref<f32>
          %76 = arith.mulf %22, %75 : f32
          %77 = arith.addf %74, %76 : f32
          memref.store %77, %arg5[%23, %66] : memref<?x64xf32>
          %78 = memref.load %arg3[%23, %66] : memref<?x64xf32>
          memref.store %78, %alloca_11[] : memref<f32>
          memref.store %72, %alloca_8[] : memref<f32>
          %79 = memref.load %arg5[%23, %66] : memref<?x64xf32>
          memref.store %79, %alloca_9[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %23 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_7[] : memref<f32>
        memref.store %cst, %alloca_6[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %24 = arith.muli %arg9, %c4 : index
          %25 = memref.load %alloca_7[] : memref<f32>
          %26 = arith.mulf %16, %25 : f32
          %27 = memref.load %alloca_6[] : memref<f32>
          %28 = arith.mulf %20, %27 : f32
          %29 = arith.addf %26, %28 : f32
          %30 = memref.load %alloca_3[] : memref<f32>
          %31 = arith.mulf %21, %30 : f32
          %32 = arith.addf %29, %31 : f32
          %33 = memref.load %alloca[] : memref<f32>
          %34 = arith.mulf %22, %33 : f32
          %35 = arith.addf %32, %34 : f32
          %36 = arith.muli %24, %c-1 : index
          %37 = arith.addi %36, %c63 : index
          memref.store %35, %arg6[%23, %37] : memref<?x64xf32>
          memref.store %25, %alloca_6[] : memref<f32>
          %38 = arith.muli %24, %c-1 : index
          %39 = arith.addi %38, %c63 : index
          %40 = memref.load %arg3[%23, %39] : memref<?x64xf32>
          memref.store %40, %alloca_7[] : memref<f32>
          memref.store %30, %alloca[] : memref<f32>
          %41 = arith.muli %24, %c-1 : index
          %42 = arith.addi %41, %c63 : index
          %43 = memref.load %arg6[%23, %42] : memref<?x64xf32>
          memref.store %43, %alloca_3[] : memref<f32>
          %44 = arith.addi %24, %c1 : index
          %45 = memref.load %alloca_7[] : memref<f32>
          %46 = arith.mulf %16, %45 : f32
          %47 = memref.load %alloca_6[] : memref<f32>
          %48 = arith.mulf %20, %47 : f32
          %49 = arith.addf %46, %48 : f32
          %50 = memref.load %alloca_3[] : memref<f32>
          %51 = arith.mulf %21, %50 : f32
          %52 = arith.addf %49, %51 : f32
          %53 = memref.load %alloca[] : memref<f32>
          %54 = arith.mulf %22, %53 : f32
          %55 = arith.addf %52, %54 : f32
          %56 = arith.muli %44, %c-1 : index
          %57 = arith.addi %56, %c63 : index
          memref.store %55, %arg6[%23, %57] : memref<?x64xf32>
          memref.store %45, %alloca_6[] : memref<f32>
          %58 = arith.muli %44, %c-1 : index
          %59 = arith.addi %58, %c63 : index
          %60 = memref.load %arg3[%23, %59] : memref<?x64xf32>
          memref.store %60, %alloca_7[] : memref<f32>
          memref.store %50, %alloca[] : memref<f32>
          %61 = arith.muli %44, %c-1 : index
          %62 = arith.addi %61, %c63 : index
          %63 = memref.load %arg6[%23, %62] : memref<?x64xf32>
          memref.store %63, %alloca_3[] : memref<f32>
          %64 = arith.addi %24, %c2 : index
          %65 = memref.load %alloca_7[] : memref<f32>
          %66 = arith.mulf %16, %65 : f32
          %67 = memref.load %alloca_6[] : memref<f32>
          %68 = arith.mulf %20, %67 : f32
          %69 = arith.addf %66, %68 : f32
          %70 = memref.load %alloca_3[] : memref<f32>
          %71 = arith.mulf %21, %70 : f32
          %72 = arith.addf %69, %71 : f32
          %73 = memref.load %alloca[] : memref<f32>
          %74 = arith.mulf %22, %73 : f32
          %75 = arith.addf %72, %74 : f32
          %76 = arith.muli %64, %c-1 : index
          %77 = arith.addi %76, %c63 : index
          memref.store %75, %arg6[%23, %77] : memref<?x64xf32>
          memref.store %65, %alloca_6[] : memref<f32>
          %78 = arith.muli %64, %c-1 : index
          %79 = arith.addi %78, %c63 : index
          %80 = memref.load %arg3[%23, %79] : memref<?x64xf32>
          memref.store %80, %alloca_7[] : memref<f32>
          memref.store %70, %alloca[] : memref<f32>
          %81 = arith.muli %64, %c-1 : index
          %82 = arith.addi %81, %c63 : index
          %83 = memref.load %arg6[%23, %82] : memref<?x64xf32>
          memref.store %83, %alloca_3[] : memref<f32>
          %84 = arith.addi %24, %c3 : index
          %85 = memref.load %alloca_7[] : memref<f32>
          %86 = arith.mulf %16, %85 : f32
          %87 = memref.load %alloca_6[] : memref<f32>
          %88 = arith.mulf %20, %87 : f32
          %89 = arith.addf %86, %88 : f32
          %90 = memref.load %alloca_3[] : memref<f32>
          %91 = arith.mulf %21, %90 : f32
          %92 = arith.addf %89, %91 : f32
          %93 = memref.load %alloca[] : memref<f32>
          %94 = arith.mulf %22, %93 : f32
          %95 = arith.addf %92, %94 : f32
          %96 = arith.muli %84, %c-1 : index
          %97 = arith.addi %96, %c63 : index
          memref.store %95, %arg6[%23, %97] : memref<?x64xf32>
          memref.store %85, %alloca_6[] : memref<f32>
          %98 = arith.muli %84, %c-1 : index
          %99 = arith.addi %98, %c63 : index
          %100 = memref.load %arg3[%23, %99] : memref<?x64xf32>
          memref.store %100, %alloca_7[] : memref<f32>
          memref.store %90, %alloca[] : memref<f32>
          %101 = arith.muli %84, %c-1 : index
          %102 = arith.addi %101, %c63 : index
          %103 = memref.load %arg6[%23, %102] : memref<?x64xf32>
          memref.store %103, %alloca_3[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %23 = arith.addi %arg7, %arg8 : index
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %24 = arith.muli %arg9, %c4 : index
          scf.for %arg10 = %c0 to %c1 step %c1 {
            %25 = arith.muli %arg10, %c4 : index
            %26 = arith.addi %24, %25 : index
            %27 = memref.load %arg5[%23, %26] : memref<?x64xf32>
            %28 = memref.load %arg6[%23, %26] : memref<?x64xf32>
            %29 = arith.addf %27, %28 : f32
            memref.store %29, %arg4[%23, %26] : memref<?x64xf32>
            %30 = arith.addi %26, %c1 : index
            %31 = memref.load %arg5[%23, %30] : memref<?x64xf32>
            %32 = memref.load %arg6[%23, %30] : memref<?x64xf32>
            %33 = arith.addf %31, %32 : f32
            memref.store %33, %arg4[%23, %30] : memref<?x64xf32>
            %34 = arith.addi %26, %c2 : index
            %35 = memref.load %arg5[%23, %34] : memref<?x64xf32>
            %36 = memref.load %arg6[%23, %34] : memref<?x64xf32>
            %37 = arith.addf %35, %36 : f32
            memref.store %37, %arg4[%23, %34] : memref<?x64xf32>
            %38 = arith.addi %26, %c3 : index
            %39 = memref.load %arg5[%23, %38] : memref<?x64xf32>
            %40 = memref.load %arg6[%23, %38] : memref<?x64xf32>
            %41 = arith.addf %39, %40 : f32
            memref.store %41, %arg4[%23, %38] : memref<?x64xf32>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %23 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %alloca_10[] : memref<f32>
        memref.store %cst, %alloca_9[] : memref<f32>
        memref.store %cst, %alloca_8[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %24 = arith.muli %arg9, %c4 : index
          %25 = memref.load %arg4[%24, %23] : memref<?x64xf32>
          %26 = arith.mulf %11, %25 : f32
          %27 = memref.load %alloca_10[] : memref<f32>
          %28 = arith.mulf %14, %27 : f32
          %29 = arith.addf %26, %28 : f32
          %30 = memref.load %alloca_9[] : memref<f32>
          %31 = arith.mulf %21, %30 : f32
          %32 = arith.addf %29, %31 : f32
          %33 = memref.load %alloca_8[] : memref<f32>
          %34 = arith.mulf %22, %33 : f32
          %35 = arith.addf %32, %34 : f32
          memref.store %35, %arg5[%24, %23] : memref<?x64xf32>
          %36 = memref.load %arg4[%24, %23] : memref<?x64xf32>
          memref.store %36, %alloca_10[] : memref<f32>
          memref.store %30, %alloca_8[] : memref<f32>
          %37 = memref.load %arg5[%24, %23] : memref<?x64xf32>
          memref.store %37, %alloca_9[] : memref<f32>
          %38 = arith.addi %24, %c1 : index
          %39 = memref.load %arg4[%38, %23] : memref<?x64xf32>
          %40 = arith.mulf %11, %39 : f32
          %41 = memref.load %alloca_10[] : memref<f32>
          %42 = arith.mulf %14, %41 : f32
          %43 = arith.addf %40, %42 : f32
          %44 = memref.load %alloca_9[] : memref<f32>
          %45 = arith.mulf %21, %44 : f32
          %46 = arith.addf %43, %45 : f32
          %47 = memref.load %alloca_8[] : memref<f32>
          %48 = arith.mulf %22, %47 : f32
          %49 = arith.addf %46, %48 : f32
          memref.store %49, %arg5[%38, %23] : memref<?x64xf32>
          %50 = memref.load %arg4[%38, %23] : memref<?x64xf32>
          memref.store %50, %alloca_10[] : memref<f32>
          memref.store %44, %alloca_8[] : memref<f32>
          %51 = memref.load %arg5[%38, %23] : memref<?x64xf32>
          memref.store %51, %alloca_9[] : memref<f32>
          %52 = arith.addi %24, %c2 : index
          %53 = memref.load %arg4[%52, %23] : memref<?x64xf32>
          %54 = arith.mulf %11, %53 : f32
          %55 = memref.load %alloca_10[] : memref<f32>
          %56 = arith.mulf %14, %55 : f32
          %57 = arith.addf %54, %56 : f32
          %58 = memref.load %alloca_9[] : memref<f32>
          %59 = arith.mulf %21, %58 : f32
          %60 = arith.addf %57, %59 : f32
          %61 = memref.load %alloca_8[] : memref<f32>
          %62 = arith.mulf %22, %61 : f32
          %63 = arith.addf %60, %62 : f32
          memref.store %63, %arg5[%52, %23] : memref<?x64xf32>
          %64 = memref.load %arg4[%52, %23] : memref<?x64xf32>
          memref.store %64, %alloca_10[] : memref<f32>
          memref.store %58, %alloca_8[] : memref<f32>
          %65 = memref.load %arg5[%52, %23] : memref<?x64xf32>
          memref.store %65, %alloca_9[] : memref<f32>
          %66 = arith.addi %24, %c3 : index
          %67 = memref.load %arg4[%66, %23] : memref<?x64xf32>
          %68 = arith.mulf %11, %67 : f32
          %69 = memref.load %alloca_10[] : memref<f32>
          %70 = arith.mulf %14, %69 : f32
          %71 = arith.addf %68, %70 : f32
          %72 = memref.load %alloca_9[] : memref<f32>
          %73 = arith.mulf %21, %72 : f32
          %74 = arith.addf %71, %73 : f32
          %75 = memref.load %alloca_8[] : memref<f32>
          %76 = arith.mulf %22, %75 : f32
          %77 = arith.addf %74, %76 : f32
          memref.store %77, %arg5[%66, %23] : memref<?x64xf32>
          %78 = memref.load %arg4[%66, %23] : memref<?x64xf32>
          memref.store %78, %alloca_10[] : memref<f32>
          memref.store %72, %alloca_8[] : memref<f32>
          %79 = memref.load %arg5[%66, %23] : memref<?x64xf32>
          memref.store %79, %alloca_9[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %23 = arith.addi %arg7, %arg8 : index
        memref.store %cst, %alloca_5[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %24 = arith.muli %arg9, %c4 : index
          %25 = memref.load %alloca_5[] : memref<f32>
          %26 = arith.mulf %16, %25 : f32
          %27 = memref.load %alloca_4[] : memref<f32>
          %28 = arith.mulf %20, %27 : f32
          %29 = arith.addf %26, %28 : f32
          %30 = memref.load %alloca_3[] : memref<f32>
          %31 = arith.mulf %21, %30 : f32
          %32 = arith.addf %29, %31 : f32
          %33 = memref.load %alloca[] : memref<f32>
          %34 = arith.mulf %22, %33 : f32
          %35 = arith.addf %32, %34 : f32
          %36 = arith.muli %24, %c-1 : index
          %37 = arith.addi %36, %c63 : index
          memref.store %35, %arg6[%37, %23] : memref<?x64xf32>
          memref.store %25, %alloca_4[] : memref<f32>
          %38 = arith.muli %24, %c-1 : index
          %39 = arith.addi %38, %c63 : index
          %40 = memref.load %arg4[%39, %23] : memref<?x64xf32>
          memref.store %40, %alloca_5[] : memref<f32>
          memref.store %30, %alloca[] : memref<f32>
          %41 = arith.muli %24, %c-1 : index
          %42 = arith.addi %41, %c63 : index
          %43 = memref.load %arg6[%42, %23] : memref<?x64xf32>
          memref.store %43, %alloca_3[] : memref<f32>
          %44 = arith.addi %24, %c1 : index
          %45 = memref.load %alloca_5[] : memref<f32>
          %46 = arith.mulf %16, %45 : f32
          %47 = memref.load %alloca_4[] : memref<f32>
          %48 = arith.mulf %20, %47 : f32
          %49 = arith.addf %46, %48 : f32
          %50 = memref.load %alloca_3[] : memref<f32>
          %51 = arith.mulf %21, %50 : f32
          %52 = arith.addf %49, %51 : f32
          %53 = memref.load %alloca[] : memref<f32>
          %54 = arith.mulf %22, %53 : f32
          %55 = arith.addf %52, %54 : f32
          %56 = arith.muli %44, %c-1 : index
          %57 = arith.addi %56, %c63 : index
          memref.store %55, %arg6[%57, %23] : memref<?x64xf32>
          memref.store %45, %alloca_4[] : memref<f32>
          %58 = arith.muli %44, %c-1 : index
          %59 = arith.addi %58, %c63 : index
          %60 = memref.load %arg4[%59, %23] : memref<?x64xf32>
          memref.store %60, %alloca_5[] : memref<f32>
          memref.store %50, %alloca[] : memref<f32>
          %61 = arith.muli %44, %c-1 : index
          %62 = arith.addi %61, %c63 : index
          %63 = memref.load %arg6[%62, %23] : memref<?x64xf32>
          memref.store %63, %alloca_3[] : memref<f32>
          %64 = arith.addi %24, %c2 : index
          %65 = memref.load %alloca_5[] : memref<f32>
          %66 = arith.mulf %16, %65 : f32
          %67 = memref.load %alloca_4[] : memref<f32>
          %68 = arith.mulf %20, %67 : f32
          %69 = arith.addf %66, %68 : f32
          %70 = memref.load %alloca_3[] : memref<f32>
          %71 = arith.mulf %21, %70 : f32
          %72 = arith.addf %69, %71 : f32
          %73 = memref.load %alloca[] : memref<f32>
          %74 = arith.mulf %22, %73 : f32
          %75 = arith.addf %72, %74 : f32
          %76 = arith.muli %64, %c-1 : index
          %77 = arith.addi %76, %c63 : index
          memref.store %75, %arg6[%77, %23] : memref<?x64xf32>
          memref.store %65, %alloca_4[] : memref<f32>
          %78 = arith.muli %64, %c-1 : index
          %79 = arith.addi %78, %c63 : index
          %80 = memref.load %arg4[%79, %23] : memref<?x64xf32>
          memref.store %80, %alloca_5[] : memref<f32>
          memref.store %70, %alloca[] : memref<f32>
          %81 = arith.muli %64, %c-1 : index
          %82 = arith.addi %81, %c63 : index
          %83 = memref.load %arg6[%82, %23] : memref<?x64xf32>
          memref.store %83, %alloca_3[] : memref<f32>
          %84 = arith.addi %24, %c3 : index
          %85 = memref.load %alloca_5[] : memref<f32>
          %86 = arith.mulf %16, %85 : f32
          %87 = memref.load %alloca_4[] : memref<f32>
          %88 = arith.mulf %20, %87 : f32
          %89 = arith.addf %86, %88 : f32
          %90 = memref.load %alloca_3[] : memref<f32>
          %91 = arith.mulf %21, %90 : f32
          %92 = arith.addf %89, %91 : f32
          %93 = memref.load %alloca[] : memref<f32>
          %94 = arith.mulf %22, %93 : f32
          %95 = arith.addf %92, %94 : f32
          %96 = arith.muli %84, %c-1 : index
          %97 = arith.addi %96, %c63 : index
          memref.store %95, %arg6[%97, %23] : memref<?x64xf32>
          memref.store %85, %alloca_4[] : memref<f32>
          %98 = arith.muli %84, %c-1 : index
          %99 = arith.addi %98, %c63 : index
          %100 = memref.load %arg4[%99, %23] : memref<?x64xf32>
          memref.store %100, %alloca_5[] : memref<f32>
          memref.store %90, %alloca[] : memref<f32>
          %101 = arith.muli %84, %c-1 : index
          %102 = arith.addi %101, %c63 : index
          %103 = memref.load %arg6[%102, %23] : memref<?x64xf32>
          memref.store %103, %alloca_3[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      scf.for %arg8 = %c0 to %c1 step %c1 {
        %23 = arith.addi %arg7, %arg8 : index
        scf.for %arg9 = %c0 to %c16 step %c1 {
          %24 = arith.muli %arg9, %c4 : index
          scf.for %arg10 = %c0 to %c1 step %c1 {
            %25 = arith.muli %arg10, %c4 : index
            %26 = arith.addi %24, %25 : index
            %27 = memref.load %arg5[%23, %26] : memref<?x64xf32>
            %28 = memref.load %arg6[%23, %26] : memref<?x64xf32>
            %29 = arith.addf %27, %28 : f32
            memref.store %29, %arg4[%23, %26] : memref<?x64xf32>
            %30 = arith.addi %26, %c1 : index
            %31 = memref.load %arg5[%23, %30] : memref<?x64xf32>
            %32 = memref.load %arg6[%23, %30] : memref<?x64xf32>
            %33 = arith.addf %31, %32 : f32
            memref.store %33, %arg4[%23, %30] : memref<?x64xf32>
            %34 = arith.addi %26, %c2 : index
            %35 = memref.load %arg5[%23, %34] : memref<?x64xf32>
            %36 = memref.load %arg6[%23, %34] : memref<?x64xf32>
            %37 = arith.addf %35, %36 : f32
            memref.store %37, %arg4[%23, %34] : memref<?x64xf32>
            %38 = arith.addi %26, %c3 : index
            %39 = memref.load %arg5[%23, %38] : memref<?x64xf32>
            %40 = memref.load %arg6[%23, %38] : memref<?x64xf32>
            %41 = arith.addf %39, %40 : f32
            memref.store %41, %arg4[%23, %38] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

