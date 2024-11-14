module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<1xf32>
    %alloca_10 = memref.alloca() : memref<f32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_13 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_14 = memref.alloca() : memref<f32>
    %alloca_15 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_16 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_17 = memref.alloca() : memref<1xf32>
    %alloca_18 = memref.alloca() : memref<1xf32>
    %alloca_19 = memref.alloca() : memref<1xf32>
    %alloca_20 = memref.alloca() : memref<1xf32>
    %alloca_21 = memref.alloca() : memref<f32>
    %alloca_22 = memref.alloca() : memref<f32>
    %alloca_23 = memref.alloca() : memref<f32>
    %alloca_24 = memref.alloca() : memref<f32>
    %alloca_25 = memref.alloca() : memref<1xf32>
    %0 = arith.mulf %arg2, %cst_2 : f32
    %1 = math.exp %0 : f32
    %2 = arith.negf %1 : f32
    %c0 = arith.constant 0 : index
    memref.store %2, %alloca_6[%c0] : memref<1xf32>
    %3 = arith.negf %arg2 : f32
    %4 = math.powf %cst_1, %3 : f32
    %c0_26 = arith.constant 0 : index
    memref.store %4, %alloca_15[%c0_26] : memref<1xf32>
    %5 = arith.negf %arg2 : f32
    %6 = math.exp %5 : f32
    %7 = arith.mulf %arg2, %6 : f32
    %8 = arith.subf %cst_0, %6 : f32
    %9 = arith.mulf %8, %8 : f32
    %10 = arith.mulf %7, %cst_1 : f32
    %11 = arith.addf %10, %cst_0 : f32
    %12 = arith.mulf %arg2, %cst_1 : f32
    %13 = math.exp %12 : f32
    %14 = arith.subf %11, %13 : f32
    %15 = arith.divf %9, %14 : f32
    %c0_27 = arith.constant 0 : index
    memref.store %15, %alloca_11[%c0_27] : memref<1xf32>
    %c0_28 = arith.constant 0 : index
    %16 = memref.load %alloca_11[%c0_28] : memref<1xf32>
    %c0_29 = arith.constant 0 : index
    memref.store %16, %alloca_25[%c0_29] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    %c0_30 = arith.constant 0 : index
    memref.store %19, %alloca_8[%c0_30] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    %c0_31 = arith.constant 0 : index
    memref.store %21, %alloca_16[%c0_31] : memref<1xf32>
    %c0_32 = arith.constant 0 : index
    %22 = memref.load %alloca_25[%c0_32] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    %c0_33 = arith.constant 0 : index
    memref.store %26, %alloca_13[%c0_33] : memref<1xf32>
    %c0_34 = arith.constant 0 : index
    %27 = memref.load %alloca_8[%c0_34] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    %c0_35 = arith.constant 0 : index
    memref.store %29, %alloca_12[%c0_35] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_5[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_14[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_4[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_24[] : memref<f32>
    %c0_36 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c32 = arith.constant 32 : index
    scf.for %arg7 = %c0_36 to %c64 step %c32 {
      %c32_51 = arith.constant 32 : index
      %40 = arith.addi %arg7, %c32_51 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %40 step %c1 {
        memref.store %cst, %alloca_5[] : memref<f32>
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        %c0_52 = arith.constant 0 : index
        %c64_53 = arith.constant 64 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_52 to %c64_53 step %c1_54 {
          %c0_55 = arith.constant 0 : index
          %41 = memref.load %alloca_11[%c0_55] : memref<1xf32>
          %42 = memref.load %arg3[%arg8, %arg9] : memref<?x64xf32>
          %43 = arith.mulf %41, %42 : f32
          %c0_56 = arith.constant 0 : index
          %44 = memref.load %alloca_16[%c0_56] : memref<1xf32>
          %45 = memref.load %alloca_5[] : memref<f32>
          %46 = arith.mulf %44, %45 : f32
          %47 = arith.addf %43, %46 : f32
          %c0_57 = arith.constant 0 : index
          %48 = memref.load %alloca_15[%c0_57] : memref<1xf32>
          %49 = memref.load %alloca_4[] : memref<f32>
          %c0_58 = arith.constant 0 : index
          memref.store %49, %alloca_9[%c0_58] : memref<1xf32>
          %50 = arith.mulf %48, %49 : f32
          %51 = arith.addf %47, %50 : f32
          %c0_59 = arith.constant 0 : index
          %52 = memref.load %alloca_6[%c0_59] : memref<1xf32>
          %53 = memref.load %alloca_24[] : memref<f32>
          %54 = arith.mulf %52, %53 : f32
          %55 = arith.addf %51, %54 : f32
          memref.store %55, %arg5[%arg8, %arg9] : memref<?x64xf32>
          %56 = memref.load %arg5[%arg8, %arg9] : memref<?x64xf32>
          memref.store %56, %alloca_4[] : memref<f32>
          %c0_60 = arith.constant 0 : index
          %57 = memref.load %alloca_9[%c0_60] : memref<1xf32>
          memref.store %57, %alloca_24[] : memref<f32>
          %58 = memref.load %arg3[%arg8, %arg9] : memref<?x64xf32>
          memref.store %58, %alloca_5[] : memref<f32>
        }
      }
    }
    %34 = llvm.mlir.undef : f32
    memref.store %34, %alloca_3[] : memref<f32>
    %35 = llvm.mlir.undef : f32
    memref.store %35, %alloca_21[] : memref<f32>
    %36 = llvm.mlir.undef : f32
    memref.store %36, %alloca_10[] : memref<f32>
    %37 = llvm.mlir.undef : f32
    memref.store %37, %alloca_22[] : memref<f32>
    %38 = llvm.mlir.undef : f32
    memref.store %38, %alloca_23[] : memref<f32>
    %39 = llvm.mlir.undef : f32
    memref.store %39, %alloca[] : memref<f32>
    %c0_37 = arith.constant 0 : index
    %c64_38 = arith.constant 64 : index
    %c32_39 = arith.constant 32 : index
    scf.for %arg7 = %c0_37 to %c64_38 step %c32_39 {
      %c32_51 = arith.constant 32 : index
      %40 = arith.addi %arg7, %c32_51 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %40 step %c1 {
        memref.store %cst, %alloca_21[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_23[] : memref<f32>
        %c0_52 = arith.constant 0 : index
        %c64_53 = arith.constant 64 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_52 to %c64_53 step %c1_54 {
          %c0_55 = arith.constant 0 : index
          %41 = memref.load %alloca_12[%c0_55] : memref<1xf32>
          %42 = memref.load %alloca_3[] : memref<f32>
          %c0_56 = arith.constant 0 : index
          memref.store %42, %alloca_7[%c0_56] : memref<1xf32>
          %43 = arith.mulf %41, %42 : f32
          %c0_57 = arith.constant 0 : index
          %44 = memref.load %alloca_13[%c0_57] : memref<1xf32>
          %45 = memref.load %alloca_21[] : memref<f32>
          %46 = arith.mulf %44, %45 : f32
          %47 = arith.addf %43, %46 : f32
          %c0_58 = arith.constant 0 : index
          %48 = memref.load %alloca_15[%c0_58] : memref<1xf32>
          %49 = memref.load %alloca_23[] : memref<f32>
          %c0_59 = arith.constant 0 : index
          memref.store %49, %alloca_18[%c0_59] : memref<1xf32>
          %50 = arith.mulf %48, %49 : f32
          %51 = arith.addf %47, %50 : f32
          %c0_60 = arith.constant 0 : index
          %52 = memref.load %alloca_6[%c0_60] : memref<1xf32>
          %53 = memref.load %alloca[] : memref<f32>
          %54 = arith.mulf %52, %53 : f32
          %55 = arith.addf %51, %54 : f32
          %c-1 = arith.constant -1 : index
          %56 = arith.muli %arg9, %c-1 : index
          %c63 = arith.constant 63 : index
          %57 = arith.addi %56, %c63 : index
          memref.store %55, %arg6[%arg8, %57] : memref<?x64xf32>
          %c-1_61 = arith.constant -1 : index
          %58 = arith.muli %arg9, %c-1_61 : index
          %c63_62 = arith.constant 63 : index
          %59 = arith.addi %58, %c63_62 : index
          %60 = memref.load %arg6[%arg8, %59] : memref<?x64xf32>
          memref.store %60, %alloca_23[] : memref<f32>
          %c0_63 = arith.constant 0 : index
          %61 = memref.load %alloca_18[%c0_63] : memref<1xf32>
          memref.store %61, %alloca[] : memref<f32>
          %c-1_64 = arith.constant -1 : index
          %62 = arith.muli %arg9, %c-1_64 : index
          %c63_65 = arith.constant 63 : index
          %63 = arith.addi %62, %c63_65 : index
          %64 = memref.load %arg3[%arg8, %63] : memref<?x64xf32>
          memref.store %64, %alloca_3[] : memref<f32>
          %c0_66 = arith.constant 0 : index
          %65 = memref.load %alloca_7[%c0_66] : memref<1xf32>
          memref.store %65, %alloca_21[] : memref<f32>
        }
      }
    }
    %c0_40 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c32_41 = arith.constant 32 : index
    scf.for %arg7 = %c0_40 to %c2 step %c32_41 {
      %c0_51 = arith.constant 0 : index
      %c2_52 = arith.constant 2 : index
      %c32_53 = arith.constant 32 : index
      scf.for %arg8 = %c0_51 to %c2_52 step %c32_53 {
        %c0_54 = arith.constant 0 : index
        %c32_55 = arith.constant 32 : index
        %c32_56 = arith.constant 32 : index
        scf.for %arg9 = %c0_54 to %c32_55 step %c32_56 {
          %c0_57 = arith.constant 0 : index
          %c32_58 = arith.constant 32 : index
          %c32_59 = arith.constant 32 : index
          scf.for %arg10 = %c0_57 to %c32_58 step %c32_59 {
            %c2_60 = arith.constant 2 : index
            %40 = arith.addi %arg7, %c2_60 : index
            %c1 = arith.constant 1 : index
            scf.for %arg11 = %arg7 to %40 step %c1 {
              %c2_61 = arith.constant 2 : index
              %41 = arith.addi %arg8, %c2_61 : index
              %c1_62 = arith.constant 1 : index
              scf.for %arg12 = %arg8 to %41 step %c1_62 {
                %c32_63 = arith.constant 32 : index
                %42 = arith.addi %arg9, %c32_63 : index
                %c1_64 = arith.constant 1 : index
                scf.for %arg13 = %arg9 to %42 step %c1_64 {
                  %c32_65 = arith.constant 32 : index
                  %43 = arith.addi %arg10, %c32_65 : index
                  %c1_66 = arith.constant 1 : index
                  scf.for %arg14 = %arg10 to %43 step %c1_66 {
                    %c32_67 = arith.constant 32 : index
                    %44 = arith.muli %arg11, %c32_67 : index
                    %45 = arith.addi %44, %arg13 : index
                    memref.store %cst, %alloca_5[] : memref<f32>
                    memref.store %cst, %alloca_24[] : memref<f32>
                    memref.store %cst, %alloca_4[] : memref<f32>
                    %c32_68 = arith.constant 32 : index
                    %46 = arith.muli %arg12, %c32_68 : index
                    %47 = arith.addi %46, %arg14 : index
                    %c0_69 = arith.constant 0 : index
                    %48 = memref.load %alloca_11[%c0_69] : memref<1xf32>
                    %49 = memref.load %arg3[%45, %47] : memref<?x64xf32>
                    %50 = arith.mulf %48, %49 : f32
                    %c0_70 = arith.constant 0 : index
                    %51 = memref.load %alloca_16[%c0_70] : memref<1xf32>
                    %52 = memref.load %alloca_5[] : memref<f32>
                    %53 = arith.mulf %51, %52 : f32
                    %54 = arith.addf %50, %53 : f32
                    %c0_71 = arith.constant 0 : index
                    %55 = memref.load %alloca_15[%c0_71] : memref<1xf32>
                    %56 = memref.load %alloca_4[] : memref<f32>
                    %c0_72 = arith.constant 0 : index
                    memref.store %56, %alloca_9[%c0_72] : memref<1xf32>
                    %57 = arith.mulf %55, %56 : f32
                    %58 = arith.addf %54, %57 : f32
                    %c0_73 = arith.constant 0 : index
                    %59 = memref.load %alloca_6[%c0_73] : memref<1xf32>
                    %60 = memref.load %alloca_24[] : memref<f32>
                    %61 = arith.mulf %59, %60 : f32
                    %62 = arith.addf %58, %61 : f32
                    memref.store %62, %arg5[%45, %47] : memref<?x64xf32>
                    %63 = memref.load %arg5[%45, %47] : memref<?x64xf32>
                    memref.store %63, %alloca_4[] : memref<f32>
                    %c0_74 = arith.constant 0 : index
                    %64 = memref.load %alloca_9[%c0_74] : memref<1xf32>
                    memref.store %64, %alloca_24[] : memref<f32>
                    %65 = memref.load %arg3[%45, %47] : memref<?x64xf32>
                    memref.store %65, %alloca_5[] : memref<f32>
                    %c32_75 = arith.constant 32 : index
                    %66 = arith.muli %arg11, %c32_75 : index
                    %67 = arith.addi %66, %arg13 : index
                    memref.store %cst, %alloca_21[] : memref<f32>
                    memref.store %cst, %alloca_3[] : memref<f32>
                    memref.store %cst, %alloca[] : memref<f32>
                    memref.store %cst, %alloca_23[] : memref<f32>
                    %c-32 = arith.constant -32 : index
                    %68 = arith.muli %arg12, %c-32 : index
                    %c-1 = arith.constant -1 : index
                    %69 = arith.muli %arg14, %c-1 : index
                    %70 = arith.addi %68, %69 : index
                    %c63 = arith.constant 63 : index
                    %71 = arith.addi %70, %c63 : index
                    %c0_76 = arith.constant 0 : index
                    %72 = memref.load %alloca_12[%c0_76] : memref<1xf32>
                    %73 = memref.load %alloca_3[] : memref<f32>
                    %c0_77 = arith.constant 0 : index
                    memref.store %73, %alloca_7[%c0_77] : memref<1xf32>
                    %74 = arith.mulf %72, %73 : f32
                    %c0_78 = arith.constant 0 : index
                    %75 = memref.load %alloca_13[%c0_78] : memref<1xf32>
                    %76 = memref.load %alloca_21[] : memref<f32>
                    %77 = arith.mulf %75, %76 : f32
                    %78 = arith.addf %74, %77 : f32
                    %c0_79 = arith.constant 0 : index
                    %79 = memref.load %alloca_15[%c0_79] : memref<1xf32>
                    %80 = memref.load %alloca_23[] : memref<f32>
                    %c0_80 = arith.constant 0 : index
                    memref.store %80, %alloca_18[%c0_80] : memref<1xf32>
                    %81 = arith.mulf %79, %80 : f32
                    %82 = arith.addf %78, %81 : f32
                    %c0_81 = arith.constant 0 : index
                    %83 = memref.load %alloca_6[%c0_81] : memref<1xf32>
                    %84 = memref.load %alloca[] : memref<f32>
                    %85 = arith.mulf %83, %84 : f32
                    %86 = arith.addf %82, %85 : f32
                    %c-1_82 = arith.constant -1 : index
                    %87 = arith.muli %71, %c-1_82 : index
                    %c63_83 = arith.constant 63 : index
                    %88 = arith.addi %87, %c63_83 : index
                    memref.store %86, %arg6[%67, %88] : memref<?x64xf32>
                    %c-1_84 = arith.constant -1 : index
                    %89 = arith.muli %71, %c-1_84 : index
                    %c63_85 = arith.constant 63 : index
                    %90 = arith.addi %89, %c63_85 : index
                    %91 = memref.load %arg6[%67, %90] : memref<?x64xf32>
                    memref.store %91, %alloca_23[] : memref<f32>
                    %c0_86 = arith.constant 0 : index
                    %92 = memref.load %alloca_18[%c0_86] : memref<1xf32>
                    memref.store %92, %alloca[] : memref<f32>
                    %c-1_87 = arith.constant -1 : index
                    %93 = arith.muli %71, %c-1_87 : index
                    %c63_88 = arith.constant 63 : index
                    %94 = arith.addi %93, %c63_88 : index
                    %95 = memref.load %arg3[%67, %94] : memref<?x64xf32>
                    memref.store %95, %alloca_3[] : memref<f32>
                    %c0_89 = arith.constant 0 : index
                    %96 = memref.load %alloca_7[%c0_89] : memref<1xf32>
                    memref.store %96, %alloca_21[] : memref<f32>
                    %c32_90 = arith.constant 32 : index
                    %97 = arith.muli %arg11, %c32_90 : index
                    %98 = arith.addi %97, %arg13 : index
                    %c32_91 = arith.constant 32 : index
                    %99 = arith.muli %arg12, %c32_91 : index
                    %100 = arith.addi %99, %arg14 : index
                    %101 = memref.load %arg5[%98, %100] : memref<?x64xf32>
                    %c32_92 = arith.constant 32 : index
                    %102 = arith.muli %arg11, %c32_92 : index
                    %103 = arith.addi %102, %arg13 : index
                    %c32_93 = arith.constant 32 : index
                    %104 = arith.muli %arg12, %c32_93 : index
                    %105 = arith.addi %104, %arg14 : index
                    %106 = memref.load %arg6[%103, %105] : memref<?x64xf32>
                    %107 = arith.addf %101, %106 : f32
                    %c32_94 = arith.constant 32 : index
                    %108 = arith.muli %arg11, %c32_94 : index
                    %109 = arith.addi %108, %arg13 : index
                    %c32_95 = arith.constant 32 : index
                    %110 = arith.muli %arg12, %c32_95 : index
                    %111 = arith.addi %110, %arg14 : index
                    memref.store %107, %arg4[%109, %111] : memref<?x64xf32>
                  }
                }
              }
            }
          }
        }
      }
    }
    %c0_42 = arith.constant 0 : index
    %c64_43 = arith.constant 64 : index
    %c32_44 = arith.constant 32 : index
    scf.for %arg7 = %c0_42 to %c64_43 step %c32_44 {
      %c32_51 = arith.constant 32 : index
      %40 = arith.addi %arg7, %c32_51 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %40 step %c1 {
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_14[] : memref<f32>
        %c0_52 = arith.constant 0 : index
        %c64_53 = arith.constant 64 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_52 to %c64_53 step %c1_54 {
          %c0_55 = arith.constant 0 : index
          %41 = memref.load %alloca_11[%c0_55] : memref<1xf32>
          %42 = memref.load %arg4[%arg9, %arg8] : memref<?x64xf32>
          %43 = arith.mulf %41, %42 : f32
          %c0_56 = arith.constant 0 : index
          %44 = memref.load %alloca_16[%c0_56] : memref<1xf32>
          %45 = memref.load %alloca_14[] : memref<f32>
          %46 = arith.mulf %44, %45 : f32
          %47 = arith.addf %43, %46 : f32
          %c0_57 = arith.constant 0 : index
          %48 = memref.load %alloca_15[%c0_57] : memref<1xf32>
          %49 = memref.load %alloca_4[] : memref<f32>
          %c0_58 = arith.constant 0 : index
          memref.store %49, %alloca_19[%c0_58] : memref<1xf32>
          %50 = arith.mulf %48, %49 : f32
          %51 = arith.addf %47, %50 : f32
          %c0_59 = arith.constant 0 : index
          %52 = memref.load %alloca_6[%c0_59] : memref<1xf32>
          %53 = memref.load %alloca_24[] : memref<f32>
          %54 = arith.mulf %52, %53 : f32
          %55 = arith.addf %51, %54 : f32
          memref.store %55, %arg5[%arg9, %arg8] : memref<?x64xf32>
          %56 = memref.load %arg5[%arg9, %arg8] : memref<?x64xf32>
          memref.store %56, %alloca_4[] : memref<f32>
          %c0_60 = arith.constant 0 : index
          %57 = memref.load %alloca_19[%c0_60] : memref<1xf32>
          memref.store %57, %alloca_24[] : memref<f32>
          %58 = memref.load %arg4[%arg9, %arg8] : memref<?x64xf32>
          memref.store %58, %alloca_14[] : memref<f32>
        }
      }
    }
    %c0_45 = arith.constant 0 : index
    %c64_46 = arith.constant 64 : index
    %c32_47 = arith.constant 32 : index
    scf.for %arg7 = %c0_45 to %c64_46 step %c32_47 {
      %c32_51 = arith.constant 32 : index
      %40 = arith.addi %arg7, %c32_51 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %40 step %c1 {
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_23[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        memref.store %cst, %alloca_10[] : memref<f32>
        %c0_52 = arith.constant 0 : index
        %c64_53 = arith.constant 64 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_52 to %c64_53 step %c1_54 {
          %c0_55 = arith.constant 0 : index
          %41 = memref.load %alloca_12[%c0_55] : memref<1xf32>
          %42 = memref.load %alloca_10[] : memref<f32>
          %c0_56 = arith.constant 0 : index
          memref.store %42, %alloca_17[%c0_56] : memref<1xf32>
          %43 = arith.mulf %41, %42 : f32
          %c0_57 = arith.constant 0 : index
          %44 = memref.load %alloca_13[%c0_57] : memref<1xf32>
          %45 = memref.load %alloca_22[] : memref<f32>
          %46 = arith.mulf %44, %45 : f32
          %47 = arith.addf %43, %46 : f32
          %c0_58 = arith.constant 0 : index
          %48 = memref.load %alloca_15[%c0_58] : memref<1xf32>
          %49 = memref.load %alloca_23[] : memref<f32>
          %c0_59 = arith.constant 0 : index
          memref.store %49, %alloca_20[%c0_59] : memref<1xf32>
          %50 = arith.mulf %48, %49 : f32
          %51 = arith.addf %47, %50 : f32
          %c0_60 = arith.constant 0 : index
          %52 = memref.load %alloca_6[%c0_60] : memref<1xf32>
          %53 = memref.load %alloca[] : memref<f32>
          %54 = arith.mulf %52, %53 : f32
          %55 = arith.addf %51, %54 : f32
          %c-1 = arith.constant -1 : index
          %56 = arith.muli %arg9, %c-1 : index
          %c63 = arith.constant 63 : index
          %57 = arith.addi %56, %c63 : index
          memref.store %55, %arg6[%57, %arg8] : memref<?x64xf32>
          %c-1_61 = arith.constant -1 : index
          %58 = arith.muli %arg9, %c-1_61 : index
          %c63_62 = arith.constant 63 : index
          %59 = arith.addi %58, %c63_62 : index
          %60 = memref.load %arg6[%59, %arg8] : memref<?x64xf32>
          memref.store %60, %alloca_23[] : memref<f32>
          %c0_63 = arith.constant 0 : index
          %61 = memref.load %alloca_20[%c0_63] : memref<1xf32>
          memref.store %61, %alloca[] : memref<f32>
          %c-1_64 = arith.constant -1 : index
          %62 = arith.muli %arg9, %c-1_64 : index
          %c63_65 = arith.constant 63 : index
          %63 = arith.addi %62, %c63_65 : index
          %64 = memref.load %arg4[%63, %arg8] : memref<?x64xf32>
          memref.store %64, %alloca_10[] : memref<f32>
          %c0_66 = arith.constant 0 : index
          %65 = memref.load %alloca_17[%c0_66] : memref<1xf32>
          memref.store %65, %alloca_22[] : memref<f32>
        }
      }
    }
    %c0_48 = arith.constant 0 : index
    %c2_49 = arith.constant 2 : index
    %c32_50 = arith.constant 32 : index
    scf.for %arg7 = %c0_48 to %c2_49 step %c32_50 {
      %c0_51 = arith.constant 0 : index
      %c2_52 = arith.constant 2 : index
      %c32_53 = arith.constant 32 : index
      scf.for %arg8 = %c0_51 to %c2_52 step %c32_53 {
        %c0_54 = arith.constant 0 : index
        %c32_55 = arith.constant 32 : index
        %c32_56 = arith.constant 32 : index
        scf.for %arg9 = %c0_54 to %c32_55 step %c32_56 {
          %c0_57 = arith.constant 0 : index
          %c32_58 = arith.constant 32 : index
          %c32_59 = arith.constant 32 : index
          scf.for %arg10 = %c0_57 to %c32_58 step %c32_59 {
            %c2_60 = arith.constant 2 : index
            %40 = arith.addi %arg7, %c2_60 : index
            %c1 = arith.constant 1 : index
            scf.for %arg11 = %arg7 to %40 step %c1 {
              %c2_61 = arith.constant 2 : index
              %41 = arith.addi %arg8, %c2_61 : index
              %c1_62 = arith.constant 1 : index
              scf.for %arg12 = %arg8 to %41 step %c1_62 {
                %c32_63 = arith.constant 32 : index
                %42 = arith.addi %arg9, %c32_63 : index
                %c1_64 = arith.constant 1 : index
                scf.for %arg13 = %arg9 to %42 step %c1_64 {
                  %c32_65 = arith.constant 32 : index
                  %43 = arith.addi %arg10, %c32_65 : index
                  %c1_66 = arith.constant 1 : index
                  scf.for %arg14 = %arg10 to %43 step %c1_66 {
                    %c32_67 = arith.constant 32 : index
                    %44 = arith.muli %arg12, %c32_67 : index
                    %45 = arith.addi %44, %arg14 : index
                    memref.store %cst, %alloca_24[] : memref<f32>
                    memref.store %cst, %alloca_4[] : memref<f32>
                    memref.store %cst, %alloca_14[] : memref<f32>
                    %c32_68 = arith.constant 32 : index
                    %46 = arith.muli %arg11, %c32_68 : index
                    %47 = arith.addi %46, %arg13 : index
                    %c0_69 = arith.constant 0 : index
                    %48 = memref.load %alloca_11[%c0_69] : memref<1xf32>
                    %49 = memref.load %arg4[%47, %45] : memref<?x64xf32>
                    %50 = arith.mulf %48, %49 : f32
                    %c0_70 = arith.constant 0 : index
                    %51 = memref.load %alloca_16[%c0_70] : memref<1xf32>
                    %52 = memref.load %alloca_14[] : memref<f32>
                    %53 = arith.mulf %51, %52 : f32
                    %54 = arith.addf %50, %53 : f32
                    %c0_71 = arith.constant 0 : index
                    %55 = memref.load %alloca_15[%c0_71] : memref<1xf32>
                    %56 = memref.load %alloca_4[] : memref<f32>
                    %c0_72 = arith.constant 0 : index
                    memref.store %56, %alloca_19[%c0_72] : memref<1xf32>
                    %57 = arith.mulf %55, %56 : f32
                    %58 = arith.addf %54, %57 : f32
                    %c0_73 = arith.constant 0 : index
                    %59 = memref.load %alloca_6[%c0_73] : memref<1xf32>
                    %60 = memref.load %alloca_24[] : memref<f32>
                    %61 = arith.mulf %59, %60 : f32
                    %62 = arith.addf %58, %61 : f32
                    memref.store %62, %arg5[%47, %45] : memref<?x64xf32>
                    %63 = memref.load %arg5[%47, %45] : memref<?x64xf32>
                    memref.store %63, %alloca_4[] : memref<f32>
                    %c0_74 = arith.constant 0 : index
                    %64 = memref.load %alloca_19[%c0_74] : memref<1xf32>
                    memref.store %64, %alloca_24[] : memref<f32>
                    %65 = memref.load %arg4[%47, %45] : memref<?x64xf32>
                    memref.store %65, %alloca_14[] : memref<f32>
                    %c32_75 = arith.constant 32 : index
                    %66 = arith.muli %arg12, %c32_75 : index
                    %67 = arith.addi %66, %arg14 : index
                    memref.store %cst, %alloca[] : memref<f32>
                    memref.store %cst, %alloca_23[] : memref<f32>
                    memref.store %cst, %alloca_22[] : memref<f32>
                    memref.store %cst, %alloca_10[] : memref<f32>
                    %c-32 = arith.constant -32 : index
                    %68 = arith.muli %arg11, %c-32 : index
                    %c-1 = arith.constant -1 : index
                    %69 = arith.muli %arg13, %c-1 : index
                    %70 = arith.addi %68, %69 : index
                    %c63 = arith.constant 63 : index
                    %71 = arith.addi %70, %c63 : index
                    %c0_76 = arith.constant 0 : index
                    %72 = memref.load %alloca_12[%c0_76] : memref<1xf32>
                    %73 = memref.load %alloca_10[] : memref<f32>
                    %c0_77 = arith.constant 0 : index
                    memref.store %73, %alloca_17[%c0_77] : memref<1xf32>
                    %74 = arith.mulf %72, %73 : f32
                    %c0_78 = arith.constant 0 : index
                    %75 = memref.load %alloca_13[%c0_78] : memref<1xf32>
                    %76 = memref.load %alloca_22[] : memref<f32>
                    %77 = arith.mulf %75, %76 : f32
                    %78 = arith.addf %74, %77 : f32
                    %c0_79 = arith.constant 0 : index
                    %79 = memref.load %alloca_15[%c0_79] : memref<1xf32>
                    %80 = memref.load %alloca_23[] : memref<f32>
                    %c0_80 = arith.constant 0 : index
                    memref.store %80, %alloca_20[%c0_80] : memref<1xf32>
                    %81 = arith.mulf %79, %80 : f32
                    %82 = arith.addf %78, %81 : f32
                    %c0_81 = arith.constant 0 : index
                    %83 = memref.load %alloca_6[%c0_81] : memref<1xf32>
                    %84 = memref.load %alloca[] : memref<f32>
                    %85 = arith.mulf %83, %84 : f32
                    %86 = arith.addf %82, %85 : f32
                    %c-1_82 = arith.constant -1 : index
                    %87 = arith.muli %71, %c-1_82 : index
                    %c63_83 = arith.constant 63 : index
                    %88 = arith.addi %87, %c63_83 : index
                    memref.store %86, %arg6[%88, %67] : memref<?x64xf32>
                    %c-1_84 = arith.constant -1 : index
                    %89 = arith.muli %71, %c-1_84 : index
                    %c63_85 = arith.constant 63 : index
                    %90 = arith.addi %89, %c63_85 : index
                    %91 = memref.load %arg6[%90, %67] : memref<?x64xf32>
                    memref.store %91, %alloca_23[] : memref<f32>
                    %c0_86 = arith.constant 0 : index
                    %92 = memref.load %alloca_20[%c0_86] : memref<1xf32>
                    memref.store %92, %alloca[] : memref<f32>
                    %c-1_87 = arith.constant -1 : index
                    %93 = arith.muli %71, %c-1_87 : index
                    %c63_88 = arith.constant 63 : index
                    %94 = arith.addi %93, %c63_88 : index
                    %95 = memref.load %arg4[%94, %67] : memref<?x64xf32>
                    memref.store %95, %alloca_10[] : memref<f32>
                    %c0_89 = arith.constant 0 : index
                    %96 = memref.load %alloca_17[%c0_89] : memref<1xf32>
                    memref.store %96, %alloca_22[] : memref<f32>
                    %c32_90 = arith.constant 32 : index
                    %97 = arith.muli %arg11, %c32_90 : index
                    %98 = arith.addi %97, %arg13 : index
                    %c32_91 = arith.constant 32 : index
                    %99 = arith.muli %arg12, %c32_91 : index
                    %100 = arith.addi %99, %arg14 : index
                    %101 = memref.load %arg5[%98, %100] : memref<?x64xf32>
                    %c32_92 = arith.constant 32 : index
                    %102 = arith.muli %arg11, %c32_92 : index
                    %103 = arith.addi %102, %arg13 : index
                    %c32_93 = arith.constant 32 : index
                    %104 = arith.muli %arg12, %c32_93 : index
                    %105 = arith.addi %104, %arg14 : index
                    %106 = memref.load %arg6[%103, %105] : memref<?x64xf32>
                    %107 = arith.addf %101, %106 : f32
                    %c32_94 = arith.constant 32 : index
                    %108 = arith.muli %arg11, %c32_94 : index
                    %109 = arith.addi %108, %arg13 : index
                    %c32_95 = arith.constant 32 : index
                    %110 = arith.muli %arg12, %c32_95 : index
                    %111 = arith.addi %110, %arg14 : index
                    memref.store %107, %arg4[%109, %111] : memref<?x64xf32>
                  }
                }
              }
            }
          }
        }
      }
    }
    return
  }
}

