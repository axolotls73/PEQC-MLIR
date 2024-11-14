module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
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
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %c2 step %c1 {
      %c32 = arith.constant 32 : index
      %23 = arith.muli %arg7, %c32 : index
      %c0_27 = arith.constant 0 : index
      %c32_28 = arith.constant 32 : index
      %c1_29 = arith.constant 1 : index
      scf.for %arg8 = %c0_27 to %c32_28 step %c1_29 {
        %24 = arith.addi %23, %arg8 : index
        memref.store %cst, %alloca_9[] : memref<f32>
        memref.store %cst, %alloca_8[] : memref<f32>
        memref.store %cst, %alloca_11[] : memref<f32>
        %c0_30 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_31 = arith.constant 1 : index
        scf.for %arg9 = %c0_30 to %c16 step %c1_31 {
          %c4 = arith.constant 4 : index
          %25 = arith.muli %arg9, %c4 : index
          %26 = memref.load %arg3[%24, %25] : memref<?x64xf32>
          %27 = arith.mulf %11, %26 : f32
          %28 = memref.load %alloca_11[] : memref<f32>
          %29 = arith.mulf %14, %28 : f32
          %30 = arith.addf %27, %29 : f32
          %31 = memref.load %alloca_9[] : memref<f32>
          %32 = arith.mulf %21, %31 : f32
          %33 = arith.addf %30, %32 : f32
          %34 = memref.load %alloca_8[] : memref<f32>
          %35 = arith.mulf %22, %34 : f32
          %36 = arith.addf %33, %35 : f32
          memref.store %36, %arg5[%24, %25] : memref<?x64xf32>
          %37 = memref.load %arg3[%24, %25] : memref<?x64xf32>
          memref.store %37, %alloca_11[] : memref<f32>
          memref.store %31, %alloca_8[] : memref<f32>
          %38 = memref.load %arg5[%24, %25] : memref<?x64xf32>
          memref.store %38, %alloca_9[] : memref<f32>
          %c1_32 = arith.constant 1 : index
          %39 = arith.addi %25, %c1_32 : index
          %40 = memref.load %arg3[%24, %39] : memref<?x64xf32>
          %41 = arith.mulf %11, %40 : f32
          %42 = memref.load %alloca_11[] : memref<f32>
          %43 = arith.mulf %14, %42 : f32
          %44 = arith.addf %41, %43 : f32
          %45 = memref.load %alloca_9[] : memref<f32>
          %46 = arith.mulf %21, %45 : f32
          %47 = arith.addf %44, %46 : f32
          %48 = memref.load %alloca_8[] : memref<f32>
          %49 = arith.mulf %22, %48 : f32
          %50 = arith.addf %47, %49 : f32
          memref.store %50, %arg5[%24, %39] : memref<?x64xf32>
          %51 = memref.load %arg3[%24, %39] : memref<?x64xf32>
          memref.store %51, %alloca_11[] : memref<f32>
          memref.store %45, %alloca_8[] : memref<f32>
          %52 = memref.load %arg5[%24, %39] : memref<?x64xf32>
          memref.store %52, %alloca_9[] : memref<f32>
          %c2_33 = arith.constant 2 : index
          %53 = arith.addi %25, %c2_33 : index
          %54 = memref.load %arg3[%24, %53] : memref<?x64xf32>
          %55 = arith.mulf %11, %54 : f32
          %56 = memref.load %alloca_11[] : memref<f32>
          %57 = arith.mulf %14, %56 : f32
          %58 = arith.addf %55, %57 : f32
          %59 = memref.load %alloca_9[] : memref<f32>
          %60 = arith.mulf %21, %59 : f32
          %61 = arith.addf %58, %60 : f32
          %62 = memref.load %alloca_8[] : memref<f32>
          %63 = arith.mulf %22, %62 : f32
          %64 = arith.addf %61, %63 : f32
          memref.store %64, %arg5[%24, %53] : memref<?x64xf32>
          %65 = memref.load %arg3[%24, %53] : memref<?x64xf32>
          memref.store %65, %alloca_11[] : memref<f32>
          memref.store %59, %alloca_8[] : memref<f32>
          %66 = memref.load %arg5[%24, %53] : memref<?x64xf32>
          memref.store %66, %alloca_9[] : memref<f32>
          %c3 = arith.constant 3 : index
          %67 = arith.addi %25, %c3 : index
          %68 = memref.load %arg3[%24, %67] : memref<?x64xf32>
          %69 = arith.mulf %11, %68 : f32
          %70 = memref.load %alloca_11[] : memref<f32>
          %71 = arith.mulf %14, %70 : f32
          %72 = arith.addf %69, %71 : f32
          %73 = memref.load %alloca_9[] : memref<f32>
          %74 = arith.mulf %21, %73 : f32
          %75 = arith.addf %72, %74 : f32
          %76 = memref.load %alloca_8[] : memref<f32>
          %77 = arith.mulf %22, %76 : f32
          %78 = arith.addf %75, %77 : f32
          memref.store %78, %arg5[%24, %67] : memref<?x64xf32>
          %79 = memref.load %arg3[%24, %67] : memref<?x64xf32>
          memref.store %79, %alloca_11[] : memref<f32>
          memref.store %73, %alloca_8[] : memref<f32>
          %80 = memref.load %arg5[%24, %67] : memref<?x64xf32>
          memref.store %80, %alloca_9[] : memref<f32>
        }
      }
    }
    %c0_12 = arith.constant 0 : index
    %c2_13 = arith.constant 2 : index
    %c1_14 = arith.constant 1 : index
    scf.for %arg7 = %c0_12 to %c2_13 step %c1_14 {
      %c32 = arith.constant 32 : index
      %23 = arith.muli %arg7, %c32 : index
      %c0_27 = arith.constant 0 : index
      %c32_28 = arith.constant 32 : index
      %c1_29 = arith.constant 1 : index
      scf.for %arg8 = %c0_27 to %c32_28 step %c1_29 {
        %24 = arith.addi %23, %arg8 : index
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_7[] : memref<f32>
        memref.store %cst, %alloca_6[] : memref<f32>
        %c0_30 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_31 = arith.constant 1 : index
        scf.for %arg9 = %c0_30 to %c16 step %c1_31 {
          %c4 = arith.constant 4 : index
          %25 = arith.muli %arg9, %c4 : index
          %26 = memref.load %alloca_7[] : memref<f32>
          %27 = arith.mulf %16, %26 : f32
          %28 = memref.load %alloca_6[] : memref<f32>
          %29 = arith.mulf %20, %28 : f32
          %30 = arith.addf %27, %29 : f32
          %31 = memref.load %alloca_3[] : memref<f32>
          %32 = arith.mulf %21, %31 : f32
          %33 = arith.addf %30, %32 : f32
          %34 = memref.load %alloca[] : memref<f32>
          %35 = arith.mulf %22, %34 : f32
          %36 = arith.addf %33, %35 : f32
          %c-1 = arith.constant -1 : index
          %37 = arith.muli %25, %c-1 : index
          %c63 = arith.constant 63 : index
          %38 = arith.addi %37, %c63 : index
          memref.store %36, %arg6[%24, %38] : memref<?x64xf32>
          memref.store %26, %alloca_6[] : memref<f32>
          %c-1_32 = arith.constant -1 : index
          %39 = arith.muli %25, %c-1_32 : index
          %c63_33 = arith.constant 63 : index
          %40 = arith.addi %39, %c63_33 : index
          %41 = memref.load %arg3[%24, %40] : memref<?x64xf32>
          memref.store %41, %alloca_7[] : memref<f32>
          memref.store %31, %alloca[] : memref<f32>
          %c-1_34 = arith.constant -1 : index
          %42 = arith.muli %25, %c-1_34 : index
          %c63_35 = arith.constant 63 : index
          %43 = arith.addi %42, %c63_35 : index
          %44 = memref.load %arg6[%24, %43] : memref<?x64xf32>
          memref.store %44, %alloca_3[] : memref<f32>
          %c1_36 = arith.constant 1 : index
          %45 = arith.addi %25, %c1_36 : index
          %46 = memref.load %alloca_7[] : memref<f32>
          %47 = arith.mulf %16, %46 : f32
          %48 = memref.load %alloca_6[] : memref<f32>
          %49 = arith.mulf %20, %48 : f32
          %50 = arith.addf %47, %49 : f32
          %51 = memref.load %alloca_3[] : memref<f32>
          %52 = arith.mulf %21, %51 : f32
          %53 = arith.addf %50, %52 : f32
          %54 = memref.load %alloca[] : memref<f32>
          %55 = arith.mulf %22, %54 : f32
          %56 = arith.addf %53, %55 : f32
          %c-1_37 = arith.constant -1 : index
          %57 = arith.muli %45, %c-1_37 : index
          %c63_38 = arith.constant 63 : index
          %58 = arith.addi %57, %c63_38 : index
          memref.store %56, %arg6[%24, %58] : memref<?x64xf32>
          memref.store %46, %alloca_6[] : memref<f32>
          %c-1_39 = arith.constant -1 : index
          %59 = arith.muli %45, %c-1_39 : index
          %c63_40 = arith.constant 63 : index
          %60 = arith.addi %59, %c63_40 : index
          %61 = memref.load %arg3[%24, %60] : memref<?x64xf32>
          memref.store %61, %alloca_7[] : memref<f32>
          memref.store %51, %alloca[] : memref<f32>
          %c-1_41 = arith.constant -1 : index
          %62 = arith.muli %45, %c-1_41 : index
          %c63_42 = arith.constant 63 : index
          %63 = arith.addi %62, %c63_42 : index
          %64 = memref.load %arg6[%24, %63] : memref<?x64xf32>
          memref.store %64, %alloca_3[] : memref<f32>
          %c2_43 = arith.constant 2 : index
          %65 = arith.addi %25, %c2_43 : index
          %66 = memref.load %alloca_7[] : memref<f32>
          %67 = arith.mulf %16, %66 : f32
          %68 = memref.load %alloca_6[] : memref<f32>
          %69 = arith.mulf %20, %68 : f32
          %70 = arith.addf %67, %69 : f32
          %71 = memref.load %alloca_3[] : memref<f32>
          %72 = arith.mulf %21, %71 : f32
          %73 = arith.addf %70, %72 : f32
          %74 = memref.load %alloca[] : memref<f32>
          %75 = arith.mulf %22, %74 : f32
          %76 = arith.addf %73, %75 : f32
          %c-1_44 = arith.constant -1 : index
          %77 = arith.muli %65, %c-1_44 : index
          %c63_45 = arith.constant 63 : index
          %78 = arith.addi %77, %c63_45 : index
          memref.store %76, %arg6[%24, %78] : memref<?x64xf32>
          memref.store %66, %alloca_6[] : memref<f32>
          %c-1_46 = arith.constant -1 : index
          %79 = arith.muli %65, %c-1_46 : index
          %c63_47 = arith.constant 63 : index
          %80 = arith.addi %79, %c63_47 : index
          %81 = memref.load %arg3[%24, %80] : memref<?x64xf32>
          memref.store %81, %alloca_7[] : memref<f32>
          memref.store %71, %alloca[] : memref<f32>
          %c-1_48 = arith.constant -1 : index
          %82 = arith.muli %65, %c-1_48 : index
          %c63_49 = arith.constant 63 : index
          %83 = arith.addi %82, %c63_49 : index
          %84 = memref.load %arg6[%24, %83] : memref<?x64xf32>
          memref.store %84, %alloca_3[] : memref<f32>
          %c3 = arith.constant 3 : index
          %85 = arith.addi %25, %c3 : index
          %86 = memref.load %alloca_7[] : memref<f32>
          %87 = arith.mulf %16, %86 : f32
          %88 = memref.load %alloca_6[] : memref<f32>
          %89 = arith.mulf %20, %88 : f32
          %90 = arith.addf %87, %89 : f32
          %91 = memref.load %alloca_3[] : memref<f32>
          %92 = arith.mulf %21, %91 : f32
          %93 = arith.addf %90, %92 : f32
          %94 = memref.load %alloca[] : memref<f32>
          %95 = arith.mulf %22, %94 : f32
          %96 = arith.addf %93, %95 : f32
          %c-1_50 = arith.constant -1 : index
          %97 = arith.muli %85, %c-1_50 : index
          %c63_51 = arith.constant 63 : index
          %98 = arith.addi %97, %c63_51 : index
          memref.store %96, %arg6[%24, %98] : memref<?x64xf32>
          memref.store %86, %alloca_6[] : memref<f32>
          %c-1_52 = arith.constant -1 : index
          %99 = arith.muli %85, %c-1_52 : index
          %c63_53 = arith.constant 63 : index
          %100 = arith.addi %99, %c63_53 : index
          %101 = memref.load %arg3[%24, %100] : memref<?x64xf32>
          memref.store %101, %alloca_7[] : memref<f32>
          memref.store %91, %alloca[] : memref<f32>
          %c-1_54 = arith.constant -1 : index
          %102 = arith.muli %85, %c-1_54 : index
          %c63_55 = arith.constant 63 : index
          %103 = arith.addi %102, %c63_55 : index
          %104 = memref.load %arg6[%24, %103] : memref<?x64xf32>
          memref.store %104, %alloca_3[] : memref<f32>
        }
      }
    }
    %c0_15 = arith.constant 0 : index
    %c2_16 = arith.constant 2 : index
    %c1_17 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_15) to (%c2_16) step (%c1_17) {
      %c32 = arith.constant 32 : index
      %23 = arith.muli %arg7, %c32 : index
      %c0_27 = arith.constant 0 : index
      %c1_28 = arith.constant 1 : index
      %c1_29 = arith.constant 1 : index
      scf.for %arg8 = %c0_27 to %c1_28 step %c1_29 {
        %c128 = arith.constant 128 : index
        %24 = arith.muli %arg8, %c128 : index
        %c0_30 = arith.constant 0 : index
        %c32_31 = arith.constant 32 : index
        %c1_32 = arith.constant 1 : index
        scf.for %arg9 = %c0_30 to %c32_31 step %c1_32 {
          %25 = arith.addi %23, %arg9 : index
          %c0_33 = arith.constant 0 : index
          %c16 = arith.constant 16 : index
          %c1_34 = arith.constant 1 : index
          scf.for %arg10 = %c0_33 to %c16 step %c1_34 {
            %c4 = arith.constant 4 : index
            %26 = arith.muli %arg10, %c4 : index
            %27 = arith.addi %24, %26 : index
            %28 = memref.load %arg5[%25, %27] : memref<?x64xf32>
            %29 = memref.load %arg6[%25, %27] : memref<?x64xf32>
            %30 = arith.addf %28, %29 : f32
            memref.store %30, %arg4[%25, %27] : memref<?x64xf32>
            %c1_35 = arith.constant 1 : index
            %31 = arith.addi %27, %c1_35 : index
            %32 = memref.load %arg5[%25, %31] : memref<?x64xf32>
            %33 = memref.load %arg6[%25, %31] : memref<?x64xf32>
            %34 = arith.addf %32, %33 : f32
            memref.store %34, %arg4[%25, %31] : memref<?x64xf32>
            %c2_36 = arith.constant 2 : index
            %35 = arith.addi %27, %c2_36 : index
            %36 = memref.load %arg5[%25, %35] : memref<?x64xf32>
            %37 = memref.load %arg6[%25, %35] : memref<?x64xf32>
            %38 = arith.addf %36, %37 : f32
            memref.store %38, %arg4[%25, %35] : memref<?x64xf32>
            %c3 = arith.constant 3 : index
            %39 = arith.addi %27, %c3 : index
            %40 = memref.load %arg5[%25, %39] : memref<?x64xf32>
            %41 = memref.load %arg6[%25, %39] : memref<?x64xf32>
            %42 = arith.addf %40, %41 : f32
            memref.store %42, %arg4[%25, %39] : memref<?x64xf32>
          }
        }
      }
      scf.reduce 
    }
    %c0_18 = arith.constant 0 : index
    %c2_19 = arith.constant 2 : index
    %c1_20 = arith.constant 1 : index
    scf.for %arg7 = %c0_18 to %c2_19 step %c1_20 {
      %c32 = arith.constant 32 : index
      %23 = arith.muli %arg7, %c32 : index
      %c0_27 = arith.constant 0 : index
      %c32_28 = arith.constant 32 : index
      %c1_29 = arith.constant 1 : index
      scf.for %arg8 = %c0_27 to %c32_28 step %c1_29 {
        %24 = arith.addi %23, %arg8 : index
        memref.store %cst, %alloca_10[] : memref<f32>
        memref.store %cst, %alloca_9[] : memref<f32>
        memref.store %cst, %alloca_8[] : memref<f32>
        %c0_30 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_31 = arith.constant 1 : index
        scf.for %arg9 = %c0_30 to %c16 step %c1_31 {
          %c4 = arith.constant 4 : index
          %25 = arith.muli %arg9, %c4 : index
          %26 = memref.load %arg4[%25, %24] : memref<?x64xf32>
          %27 = arith.mulf %11, %26 : f32
          %28 = memref.load %alloca_10[] : memref<f32>
          %29 = arith.mulf %14, %28 : f32
          %30 = arith.addf %27, %29 : f32
          %31 = memref.load %alloca_9[] : memref<f32>
          %32 = arith.mulf %21, %31 : f32
          %33 = arith.addf %30, %32 : f32
          %34 = memref.load %alloca_8[] : memref<f32>
          %35 = arith.mulf %22, %34 : f32
          %36 = arith.addf %33, %35 : f32
          memref.store %36, %arg5[%25, %24] : memref<?x64xf32>
          %37 = memref.load %arg4[%25, %24] : memref<?x64xf32>
          memref.store %37, %alloca_10[] : memref<f32>
          memref.store %31, %alloca_8[] : memref<f32>
          %38 = memref.load %arg5[%25, %24] : memref<?x64xf32>
          memref.store %38, %alloca_9[] : memref<f32>
          %c1_32 = arith.constant 1 : index
          %39 = arith.addi %25, %c1_32 : index
          %40 = memref.load %arg4[%39, %24] : memref<?x64xf32>
          %41 = arith.mulf %11, %40 : f32
          %42 = memref.load %alloca_10[] : memref<f32>
          %43 = arith.mulf %14, %42 : f32
          %44 = arith.addf %41, %43 : f32
          %45 = memref.load %alloca_9[] : memref<f32>
          %46 = arith.mulf %21, %45 : f32
          %47 = arith.addf %44, %46 : f32
          %48 = memref.load %alloca_8[] : memref<f32>
          %49 = arith.mulf %22, %48 : f32
          %50 = arith.addf %47, %49 : f32
          memref.store %50, %arg5[%39, %24] : memref<?x64xf32>
          %51 = memref.load %arg4[%39, %24] : memref<?x64xf32>
          memref.store %51, %alloca_10[] : memref<f32>
          memref.store %45, %alloca_8[] : memref<f32>
          %52 = memref.load %arg5[%39, %24] : memref<?x64xf32>
          memref.store %52, %alloca_9[] : memref<f32>
          %c2_33 = arith.constant 2 : index
          %53 = arith.addi %25, %c2_33 : index
          %54 = memref.load %arg4[%53, %24] : memref<?x64xf32>
          %55 = arith.mulf %11, %54 : f32
          %56 = memref.load %alloca_10[] : memref<f32>
          %57 = arith.mulf %14, %56 : f32
          %58 = arith.addf %55, %57 : f32
          %59 = memref.load %alloca_9[] : memref<f32>
          %60 = arith.mulf %21, %59 : f32
          %61 = arith.addf %58, %60 : f32
          %62 = memref.load %alloca_8[] : memref<f32>
          %63 = arith.mulf %22, %62 : f32
          %64 = arith.addf %61, %63 : f32
          memref.store %64, %arg5[%53, %24] : memref<?x64xf32>
          %65 = memref.load %arg4[%53, %24] : memref<?x64xf32>
          memref.store %65, %alloca_10[] : memref<f32>
          memref.store %59, %alloca_8[] : memref<f32>
          %66 = memref.load %arg5[%53, %24] : memref<?x64xf32>
          memref.store %66, %alloca_9[] : memref<f32>
          %c3 = arith.constant 3 : index
          %67 = arith.addi %25, %c3 : index
          %68 = memref.load %arg4[%67, %24] : memref<?x64xf32>
          %69 = arith.mulf %11, %68 : f32
          %70 = memref.load %alloca_10[] : memref<f32>
          %71 = arith.mulf %14, %70 : f32
          %72 = arith.addf %69, %71 : f32
          %73 = memref.load %alloca_9[] : memref<f32>
          %74 = arith.mulf %21, %73 : f32
          %75 = arith.addf %72, %74 : f32
          %76 = memref.load %alloca_8[] : memref<f32>
          %77 = arith.mulf %22, %76 : f32
          %78 = arith.addf %75, %77 : f32
          memref.store %78, %arg5[%67, %24] : memref<?x64xf32>
          %79 = memref.load %arg4[%67, %24] : memref<?x64xf32>
          memref.store %79, %alloca_10[] : memref<f32>
          memref.store %73, %alloca_8[] : memref<f32>
          %80 = memref.load %arg5[%67, %24] : memref<?x64xf32>
          memref.store %80, %alloca_9[] : memref<f32>
        }
      }
    }
    %c0_21 = arith.constant 0 : index
    %c2_22 = arith.constant 2 : index
    %c1_23 = arith.constant 1 : index
    scf.for %arg7 = %c0_21 to %c2_22 step %c1_23 {
      %c32 = arith.constant 32 : index
      %23 = arith.muli %arg7, %c32 : index
      %c0_27 = arith.constant 0 : index
      %c32_28 = arith.constant 32 : index
      %c1_29 = arith.constant 1 : index
      scf.for %arg8 = %c0_27 to %c32_28 step %c1_29 {
        %24 = arith.addi %23, %arg8 : index
        memref.store %cst, %alloca_5[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        %c0_30 = arith.constant 0 : index
        %c16 = arith.constant 16 : index
        %c1_31 = arith.constant 1 : index
        scf.for %arg9 = %c0_30 to %c16 step %c1_31 {
          %c4 = arith.constant 4 : index
          %25 = arith.muli %arg9, %c4 : index
          %26 = memref.load %alloca_5[] : memref<f32>
          %27 = arith.mulf %16, %26 : f32
          %28 = memref.load %alloca_4[] : memref<f32>
          %29 = arith.mulf %20, %28 : f32
          %30 = arith.addf %27, %29 : f32
          %31 = memref.load %alloca_3[] : memref<f32>
          %32 = arith.mulf %21, %31 : f32
          %33 = arith.addf %30, %32 : f32
          %34 = memref.load %alloca[] : memref<f32>
          %35 = arith.mulf %22, %34 : f32
          %36 = arith.addf %33, %35 : f32
          %c-1 = arith.constant -1 : index
          %37 = arith.muli %25, %c-1 : index
          %c63 = arith.constant 63 : index
          %38 = arith.addi %37, %c63 : index
          memref.store %36, %arg6[%38, %24] : memref<?x64xf32>
          memref.store %26, %alloca_4[] : memref<f32>
          %c-1_32 = arith.constant -1 : index
          %39 = arith.muli %25, %c-1_32 : index
          %c63_33 = arith.constant 63 : index
          %40 = arith.addi %39, %c63_33 : index
          %41 = memref.load %arg4[%40, %24] : memref<?x64xf32>
          memref.store %41, %alloca_5[] : memref<f32>
          memref.store %31, %alloca[] : memref<f32>
          %c-1_34 = arith.constant -1 : index
          %42 = arith.muli %25, %c-1_34 : index
          %c63_35 = arith.constant 63 : index
          %43 = arith.addi %42, %c63_35 : index
          %44 = memref.load %arg6[%43, %24] : memref<?x64xf32>
          memref.store %44, %alloca_3[] : memref<f32>
          %c1_36 = arith.constant 1 : index
          %45 = arith.addi %25, %c1_36 : index
          %46 = memref.load %alloca_5[] : memref<f32>
          %47 = arith.mulf %16, %46 : f32
          %48 = memref.load %alloca_4[] : memref<f32>
          %49 = arith.mulf %20, %48 : f32
          %50 = arith.addf %47, %49 : f32
          %51 = memref.load %alloca_3[] : memref<f32>
          %52 = arith.mulf %21, %51 : f32
          %53 = arith.addf %50, %52 : f32
          %54 = memref.load %alloca[] : memref<f32>
          %55 = arith.mulf %22, %54 : f32
          %56 = arith.addf %53, %55 : f32
          %c-1_37 = arith.constant -1 : index
          %57 = arith.muli %45, %c-1_37 : index
          %c63_38 = arith.constant 63 : index
          %58 = arith.addi %57, %c63_38 : index
          memref.store %56, %arg6[%58, %24] : memref<?x64xf32>
          memref.store %46, %alloca_4[] : memref<f32>
          %c-1_39 = arith.constant -1 : index
          %59 = arith.muli %45, %c-1_39 : index
          %c63_40 = arith.constant 63 : index
          %60 = arith.addi %59, %c63_40 : index
          %61 = memref.load %arg4[%60, %24] : memref<?x64xf32>
          memref.store %61, %alloca_5[] : memref<f32>
          memref.store %51, %alloca[] : memref<f32>
          %c-1_41 = arith.constant -1 : index
          %62 = arith.muli %45, %c-1_41 : index
          %c63_42 = arith.constant 63 : index
          %63 = arith.addi %62, %c63_42 : index
          %64 = memref.load %arg6[%63, %24] : memref<?x64xf32>
          memref.store %64, %alloca_3[] : memref<f32>
          %c2_43 = arith.constant 2 : index
          %65 = arith.addi %25, %c2_43 : index
          %66 = memref.load %alloca_5[] : memref<f32>
          %67 = arith.mulf %16, %66 : f32
          %68 = memref.load %alloca_4[] : memref<f32>
          %69 = arith.mulf %20, %68 : f32
          %70 = arith.addf %67, %69 : f32
          %71 = memref.load %alloca_3[] : memref<f32>
          %72 = arith.mulf %21, %71 : f32
          %73 = arith.addf %70, %72 : f32
          %74 = memref.load %alloca[] : memref<f32>
          %75 = arith.mulf %22, %74 : f32
          %76 = arith.addf %73, %75 : f32
          %c-1_44 = arith.constant -1 : index
          %77 = arith.muli %65, %c-1_44 : index
          %c63_45 = arith.constant 63 : index
          %78 = arith.addi %77, %c63_45 : index
          memref.store %76, %arg6[%78, %24] : memref<?x64xf32>
          memref.store %66, %alloca_4[] : memref<f32>
          %c-1_46 = arith.constant -1 : index
          %79 = arith.muli %65, %c-1_46 : index
          %c63_47 = arith.constant 63 : index
          %80 = arith.addi %79, %c63_47 : index
          %81 = memref.load %arg4[%80, %24] : memref<?x64xf32>
          memref.store %81, %alloca_5[] : memref<f32>
          memref.store %71, %alloca[] : memref<f32>
          %c-1_48 = arith.constant -1 : index
          %82 = arith.muli %65, %c-1_48 : index
          %c63_49 = arith.constant 63 : index
          %83 = arith.addi %82, %c63_49 : index
          %84 = memref.load %arg6[%83, %24] : memref<?x64xf32>
          memref.store %84, %alloca_3[] : memref<f32>
          %c3 = arith.constant 3 : index
          %85 = arith.addi %25, %c3 : index
          %86 = memref.load %alloca_5[] : memref<f32>
          %87 = arith.mulf %16, %86 : f32
          %88 = memref.load %alloca_4[] : memref<f32>
          %89 = arith.mulf %20, %88 : f32
          %90 = arith.addf %87, %89 : f32
          %91 = memref.load %alloca_3[] : memref<f32>
          %92 = arith.mulf %21, %91 : f32
          %93 = arith.addf %90, %92 : f32
          %94 = memref.load %alloca[] : memref<f32>
          %95 = arith.mulf %22, %94 : f32
          %96 = arith.addf %93, %95 : f32
          %c-1_50 = arith.constant -1 : index
          %97 = arith.muli %85, %c-1_50 : index
          %c63_51 = arith.constant 63 : index
          %98 = arith.addi %97, %c63_51 : index
          memref.store %96, %arg6[%98, %24] : memref<?x64xf32>
          memref.store %86, %alloca_4[] : memref<f32>
          %c-1_52 = arith.constant -1 : index
          %99 = arith.muli %85, %c-1_52 : index
          %c63_53 = arith.constant 63 : index
          %100 = arith.addi %99, %c63_53 : index
          %101 = memref.load %arg4[%100, %24] : memref<?x64xf32>
          memref.store %101, %alloca_5[] : memref<f32>
          memref.store %91, %alloca[] : memref<f32>
          %c-1_54 = arith.constant -1 : index
          %102 = arith.muli %85, %c-1_54 : index
          %c63_55 = arith.constant 63 : index
          %103 = arith.addi %102, %c63_55 : index
          %104 = memref.load %arg6[%103, %24] : memref<?x64xf32>
          memref.store %104, %alloca_3[] : memref<f32>
        }
      }
    }
    %c0_24 = arith.constant 0 : index
    %c2_25 = arith.constant 2 : index
    %c1_26 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_24) to (%c2_25) step (%c1_26) {
      %c32 = arith.constant 32 : index
      %23 = arith.muli %arg7, %c32 : index
      %c0_27 = arith.constant 0 : index
      %c1_28 = arith.constant 1 : index
      %c1_29 = arith.constant 1 : index
      scf.for %arg8 = %c0_27 to %c1_28 step %c1_29 {
        %c128 = arith.constant 128 : index
        %24 = arith.muli %arg8, %c128 : index
        %c0_30 = arith.constant 0 : index
        %c32_31 = arith.constant 32 : index
        %c1_32 = arith.constant 1 : index
        scf.for %arg9 = %c0_30 to %c32_31 step %c1_32 {
          %25 = arith.addi %23, %arg9 : index
          %c0_33 = arith.constant 0 : index
          %c16 = arith.constant 16 : index
          %c1_34 = arith.constant 1 : index
          scf.for %arg10 = %c0_33 to %c16 step %c1_34 {
            %c4 = arith.constant 4 : index
            %26 = arith.muli %arg10, %c4 : index
            %27 = arith.addi %24, %26 : index
            %28 = memref.load %arg5[%25, %27] : memref<?x64xf32>
            %29 = memref.load %arg6[%25, %27] : memref<?x64xf32>
            %30 = arith.addf %28, %29 : f32
            memref.store %30, %arg4[%25, %27] : memref<?x64xf32>
            %c1_35 = arith.constant 1 : index
            %31 = arith.addi %27, %c1_35 : index
            %32 = memref.load %arg5[%25, %31] : memref<?x64xf32>
            %33 = memref.load %arg6[%25, %31] : memref<?x64xf32>
            %34 = arith.addf %32, %33 : f32
            memref.store %34, %arg4[%25, %31] : memref<?x64xf32>
            %c2_36 = arith.constant 2 : index
            %35 = arith.addi %27, %c2_36 : index
            %36 = memref.load %arg5[%25, %35] : memref<?x64xf32>
            %37 = memref.load %arg6[%25, %35] : memref<?x64xf32>
            %38 = arith.addf %36, %37 : f32
            memref.store %38, %arg4[%25, %35] : memref<?x64xf32>
            %c3 = arith.constant 3 : index
            %39 = arith.addi %27, %c3 : index
            %40 = memref.load %arg5[%25, %39] : memref<?x64xf32>
            %41 = memref.load %arg6[%25, %39] : memref<?x64xf32>
            %42 = arith.addf %40, %41 : f32
            memref.store %42, %arg4[%25, %39] : memref<?x64xf32>
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

