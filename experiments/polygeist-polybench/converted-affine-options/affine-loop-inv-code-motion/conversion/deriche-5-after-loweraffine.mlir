module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = llvm.mlir.undef : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<1xf32>
    %alloca_10 = memref.alloca() : memref<f32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_13 = memref.alloca() : memref<1xf32>
    %alloca_14 = memref.alloca() : memref<f32>
    %alloca_15 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_16 = memref.alloca() : memref<1xf32>
    %alloca_17 = memref.alloca() : memref<1xf32>
    %alloca_18 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_19 = memref.alloca() : memref<1xf32>
    %alloca_20 = memref.alloca() : memref<1xf32>
    %alloca_21 = memref.alloca() : memref<f32>
    %alloca_22 = memref.alloca() : memref<f32>
    %alloca_23 = memref.alloca() : memref<f32>
    %alloca_24 = memref.alloca() : memref<1xf32>
    %alloca_25 = memref.alloca() : memref<f32>
    %1 = arith.mulf %arg2, %cst_2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.negf %2 : f32
    %c0 = arith.constant 0 : index
    memref.store %3, %alloca_6[%c0] : memref<1xf32>
    %4 = arith.negf %arg2 : f32
    %5 = math.powf %cst_1, %4 : f32
    %c0_26 = arith.constant 0 : index
    memref.store %5, %alloca_15[%c0_26] : memref<1xf32>
    %6 = arith.negf %arg2 : f32
    %7 = math.exp %6 : f32
    %8 = arith.mulf %arg2, %7 : f32
    %9 = arith.subf %cst_0, %7 : f32
    %10 = arith.mulf %9, %9 : f32
    %11 = arith.mulf %8, %cst_1 : f32
    %12 = arith.addf %11, %cst_0 : f32
    %13 = arith.mulf %arg2, %cst_1 : f32
    %14 = math.exp %13 : f32
    %15 = arith.subf %12, %14 : f32
    %16 = arith.divf %10, %15 : f32
    %c0_27 = arith.constant 0 : index
    memref.store %16, %alloca_11[%c0_27] : memref<1xf32>
    %c0_28 = arith.constant 0 : index
    %17 = memref.load %alloca_11[%c0_28] : memref<1xf32>
    %c0_29 = arith.constant 0 : index
    memref.store %17, %alloca_24[%c0_29] : memref<1xf32>
    %18 = arith.negf %arg2 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    %c0_30 = arith.constant 0 : index
    memref.store %20, %alloca_8[%c0_30] : memref<1xf32>
    %21 = arith.subf %arg2, %cst_0 : f32
    %22 = arith.mulf %20, %21 : f32
    %c0_31 = arith.constant 0 : index
    memref.store %22, %alloca_18[%c0_31] : memref<1xf32>
    %c0_32 = arith.constant 0 : index
    %23 = memref.load %alloca_24[%c0_32] : memref<1xf32>
    %24 = arith.negf %23 : f32
    %25 = arith.mulf %arg2, %cst_2 : f32
    %26 = math.exp %25 : f32
    %27 = arith.mulf %24, %26 : f32
    %c0_33 = arith.constant 0 : index
    memref.store %27, %alloca_7[%c0_33] : memref<1xf32>
    %c0_34 = arith.constant 0 : index
    %28 = memref.load %alloca_8[%c0_34] : memref<1xf32>
    %29 = arith.addf %arg2, %cst_0 : f32
    %30 = arith.mulf %28, %29 : f32
    %c0_35 = arith.constant 0 : index
    memref.store %30, %alloca_12[%c0_35] : memref<1xf32>
    memref.store %0, %alloca_5[] : memref<f32>
    memref.store %0, %alloca_14[] : memref<f32>
    memref.store %0, %alloca_4[] : memref<f32>
    memref.store %0, %alloca_25[] : memref<f32>
    %c0_36 = arith.constant 0 : index
    %31 = memref.load %alloca_11[%c0_36] : memref<1xf32>
    %c0_37 = arith.constant 0 : index
    %32 = memref.load %alloca_18[%c0_37] : memref<1xf32>
    %c0_38 = arith.constant 0 : index
    %33 = memref.load %alloca_15[%c0_38] : memref<1xf32>
    %c0_39 = arith.constant 0 : index
    %34 = memref.load %alloca_6[%c0_39] : memref<1xf32>
    %c0_40 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0_40 to %c64 step %c1 {
      memref.store %cst, %alloca_5[] : memref<f32>
      memref.store %cst, %alloca_25[] : memref<f32>
      memref.store %cst, %alloca_4[] : memref<f32>
      %c0_67 = arith.constant 0 : index
      %c64_68 = arith.constant 64 : index
      %c1_69 = arith.constant 1 : index
      scf.for %arg8 = %c0_67 to %c64_68 step %c1_69 {
        %47 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %48 = arith.mulf %31, %47 : f32
        %49 = memref.load %alloca_5[] : memref<f32>
        %50 = arith.mulf %32, %49 : f32
        %51 = arith.addf %48, %50 : f32
        %52 = memref.load %alloca_4[] : memref<f32>
        %c0_70 = arith.constant 0 : index
        memref.store %52, %alloca_9[%c0_70] : memref<1xf32>
        %53 = arith.mulf %33, %52 : f32
        %54 = arith.addf %51, %53 : f32
        %55 = memref.load %alloca_25[] : memref<f32>
        %56 = arith.mulf %34, %55 : f32
        %57 = arith.addf %54, %56 : f32
        memref.store %57, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %58 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        memref.store %58, %alloca_4[] : memref<f32>
        %c0_71 = arith.constant 0 : index
        %59 = memref.load %alloca_9[%c0_71] : memref<1xf32>
        memref.store %59, %alloca_25[] : memref<f32>
        %60 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        memref.store %60, %alloca_5[] : memref<f32>
      }
    }
    memref.store %0, %alloca_3[] : memref<f32>
    memref.store %0, %alloca_21[] : memref<f32>
    memref.store %0, %alloca_10[] : memref<f32>
    memref.store %0, %alloca_23[] : memref<f32>
    memref.store %0, %alloca_22[] : memref<f32>
    memref.store %0, %alloca[] : memref<f32>
    %c0_41 = arith.constant 0 : index
    %35 = memref.load %alloca_12[%c0_41] : memref<1xf32>
    %c0_42 = arith.constant 0 : index
    %36 = memref.load %alloca_7[%c0_42] : memref<1xf32>
    %c0_43 = arith.constant 0 : index
    %37 = memref.load %alloca_15[%c0_43] : memref<1xf32>
    %c0_44 = arith.constant 0 : index
    %38 = memref.load %alloca_6[%c0_44] : memref<1xf32>
    %c0_45 = arith.constant 0 : index
    %c64_46 = arith.constant 64 : index
    %c1_47 = arith.constant 1 : index
    scf.for %arg7 = %c0_45 to %c64_46 step %c1_47 {
      memref.store %cst, %alloca_21[] : memref<f32>
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      %c0_67 = arith.constant 0 : index
      %c64_68 = arith.constant 64 : index
      %c1_69 = arith.constant 1 : index
      scf.for %arg8 = %c0_67 to %c64_68 step %c1_69 {
        %47 = memref.load %alloca_3[] : memref<f32>
        %c0_70 = arith.constant 0 : index
        memref.store %47, %alloca_13[%c0_70] : memref<1xf32>
        %48 = arith.mulf %35, %47 : f32
        %49 = memref.load %alloca_21[] : memref<f32>
        %50 = arith.mulf %36, %49 : f32
        %51 = arith.addf %48, %50 : f32
        %52 = memref.load %alloca_22[] : memref<f32>
        %c0_71 = arith.constant 0 : index
        memref.store %52, %alloca_16[%c0_71] : memref<1xf32>
        %53 = arith.mulf %37, %52 : f32
        %54 = arith.addf %51, %53 : f32
        %55 = memref.load %alloca[] : memref<f32>
        %56 = arith.mulf %38, %55 : f32
        %57 = arith.addf %54, %56 : f32
        %c-1 = arith.constant -1 : index
        %58 = arith.muli %arg8, %c-1 : index
        %c63 = arith.constant 63 : index
        %59 = arith.addi %58, %c63 : index
        memref.store %57, %arg6[%arg7, %59] : memref<?x64xf32>
        %c-1_72 = arith.constant -1 : index
        %60 = arith.muli %arg8, %c-1_72 : index
        %c63_73 = arith.constant 63 : index
        %61 = arith.addi %60, %c63_73 : index
        %62 = memref.load %arg6[%arg7, %61] : memref<?x64xf32>
        memref.store %62, %alloca_22[] : memref<f32>
        %c0_74 = arith.constant 0 : index
        %63 = memref.load %alloca_16[%c0_74] : memref<1xf32>
        memref.store %63, %alloca[] : memref<f32>
        %c-1_75 = arith.constant -1 : index
        %64 = arith.muli %arg8, %c-1_75 : index
        %c63_76 = arith.constant 63 : index
        %65 = arith.addi %64, %c63_76 : index
        %66 = memref.load %arg3[%arg7, %65] : memref<?x64xf32>
        memref.store %66, %alloca_3[] : memref<f32>
        %c0_77 = arith.constant 0 : index
        %67 = memref.load %alloca_13[%c0_77] : memref<1xf32>
        memref.store %67, %alloca_21[] : memref<f32>
      }
    }
    %c0_48 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_49 = arith.constant 1 : index
    scf.for %arg7 = %c0_48 to %c2 step %c1_49 {
      %c0_67 = arith.constant 0 : index
      %c2_68 = arith.constant 2 : index
      %c1_69 = arith.constant 1 : index
      scf.for %arg8 = %c0_67 to %c2_68 step %c1_69 {
        %c32 = arith.constant 32 : index
        %47 = arith.muli %arg7, %c32 : index
        %c32_70 = arith.constant 32 : index
        %48 = arith.muli %arg7, %c32_70 : index
        %c32_71 = arith.constant 32 : index
        %49 = arith.addi %48, %c32_71 : index
        %c1_72 = arith.constant 1 : index
        scf.for %arg9 = %47 to %49 step %c1_72 {
          %c32_73 = arith.constant 32 : index
          %50 = arith.muli %arg8, %c32_73 : index
          %c32_74 = arith.constant 32 : index
          %51 = arith.muli %arg8, %c32_74 : index
          %c32_75 = arith.constant 32 : index
          %52 = arith.addi %51, %c32_75 : index
          %c1_76 = arith.constant 1 : index
          scf.for %arg10 = %50 to %52 step %c1_76 {
            %53 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %54 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %55 = arith.addf %53, %54 : f32
            memref.store %55, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    %c0_50 = arith.constant 0 : index
    %39 = memref.load %alloca_11[%c0_50] : memref<1xf32>
    %c0_51 = arith.constant 0 : index
    %40 = memref.load %alloca_18[%c0_51] : memref<1xf32>
    %c0_52 = arith.constant 0 : index
    %41 = memref.load %alloca_15[%c0_52] : memref<1xf32>
    %c0_53 = arith.constant 0 : index
    %42 = memref.load %alloca_6[%c0_53] : memref<1xf32>
    %c0_54 = arith.constant 0 : index
    %c64_55 = arith.constant 64 : index
    %c1_56 = arith.constant 1 : index
    scf.for %arg7 = %c0_54 to %c64_55 step %c1_56 {
      memref.store %cst, %alloca_25[] : memref<f32>
      memref.store %cst, %alloca_4[] : memref<f32>
      memref.store %cst, %alloca_14[] : memref<f32>
      %c0_67 = arith.constant 0 : index
      %c64_68 = arith.constant 64 : index
      %c1_69 = arith.constant 1 : index
      scf.for %arg8 = %c0_67 to %c64_68 step %c1_69 {
        %47 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %48 = arith.mulf %39, %47 : f32
        %49 = memref.load %alloca_14[] : memref<f32>
        %50 = arith.mulf %40, %49 : f32
        %51 = arith.addf %48, %50 : f32
        %52 = memref.load %alloca_4[] : memref<f32>
        %c0_70 = arith.constant 0 : index
        memref.store %52, %alloca_19[%c0_70] : memref<1xf32>
        %53 = arith.mulf %41, %52 : f32
        %54 = arith.addf %51, %53 : f32
        %55 = memref.load %alloca_25[] : memref<f32>
        %56 = arith.mulf %42, %55 : f32
        %57 = arith.addf %54, %56 : f32
        memref.store %57, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %58 = memref.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        memref.store %58, %alloca_4[] : memref<f32>
        %c0_71 = arith.constant 0 : index
        %59 = memref.load %alloca_19[%c0_71] : memref<1xf32>
        memref.store %59, %alloca_25[] : memref<f32>
        %60 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        memref.store %60, %alloca_14[] : memref<f32>
      }
    }
    %c0_57 = arith.constant 0 : index
    %43 = memref.load %alloca_12[%c0_57] : memref<1xf32>
    %c0_58 = arith.constant 0 : index
    %44 = memref.load %alloca_7[%c0_58] : memref<1xf32>
    %c0_59 = arith.constant 0 : index
    %45 = memref.load %alloca_15[%c0_59] : memref<1xf32>
    %c0_60 = arith.constant 0 : index
    %46 = memref.load %alloca_6[%c0_60] : memref<1xf32>
    %c0_61 = arith.constant 0 : index
    %c64_62 = arith.constant 64 : index
    %c1_63 = arith.constant 1 : index
    scf.for %arg7 = %c0_61 to %c64_62 step %c1_63 {
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      memref.store %cst, %alloca_23[] : memref<f32>
      memref.store %cst, %alloca_10[] : memref<f32>
      %c0_67 = arith.constant 0 : index
      %c64_68 = arith.constant 64 : index
      %c1_69 = arith.constant 1 : index
      scf.for %arg8 = %c0_67 to %c64_68 step %c1_69 {
        %47 = memref.load %alloca_10[] : memref<f32>
        %c0_70 = arith.constant 0 : index
        memref.store %47, %alloca_17[%c0_70] : memref<1xf32>
        %48 = arith.mulf %43, %47 : f32
        %49 = memref.load %alloca_23[] : memref<f32>
        %50 = arith.mulf %44, %49 : f32
        %51 = arith.addf %48, %50 : f32
        %52 = memref.load %alloca_22[] : memref<f32>
        %c0_71 = arith.constant 0 : index
        memref.store %52, %alloca_20[%c0_71] : memref<1xf32>
        %53 = arith.mulf %45, %52 : f32
        %54 = arith.addf %51, %53 : f32
        %55 = memref.load %alloca[] : memref<f32>
        %56 = arith.mulf %46, %55 : f32
        %57 = arith.addf %54, %56 : f32
        %c-1 = arith.constant -1 : index
        %58 = arith.muli %arg8, %c-1 : index
        %c63 = arith.constant 63 : index
        %59 = arith.addi %58, %c63 : index
        memref.store %57, %arg6[%59, %arg7] : memref<?x64xf32>
        %c-1_72 = arith.constant -1 : index
        %60 = arith.muli %arg8, %c-1_72 : index
        %c63_73 = arith.constant 63 : index
        %61 = arith.addi %60, %c63_73 : index
        %62 = memref.load %arg6[%61, %arg7] : memref<?x64xf32>
        memref.store %62, %alloca_22[] : memref<f32>
        %c0_74 = arith.constant 0 : index
        %63 = memref.load %alloca_20[%c0_74] : memref<1xf32>
        memref.store %63, %alloca[] : memref<f32>
        %c-1_75 = arith.constant -1 : index
        %64 = arith.muli %arg8, %c-1_75 : index
        %c63_76 = arith.constant 63 : index
        %65 = arith.addi %64, %c63_76 : index
        %66 = memref.load %arg4[%65, %arg7] : memref<?x64xf32>
        memref.store %66, %alloca_10[] : memref<f32>
        %c0_77 = arith.constant 0 : index
        %67 = memref.load %alloca_17[%c0_77] : memref<1xf32>
        memref.store %67, %alloca_23[] : memref<f32>
      }
    }
    %c0_64 = arith.constant 0 : index
    %c2_65 = arith.constant 2 : index
    %c1_66 = arith.constant 1 : index
    scf.for %arg7 = %c0_64 to %c2_65 step %c1_66 {
      %c0_67 = arith.constant 0 : index
      %c2_68 = arith.constant 2 : index
      %c1_69 = arith.constant 1 : index
      scf.for %arg8 = %c0_67 to %c2_68 step %c1_69 {
        %c32 = arith.constant 32 : index
        %47 = arith.muli %arg7, %c32 : index
        %c32_70 = arith.constant 32 : index
        %48 = arith.muli %arg7, %c32_70 : index
        %c32_71 = arith.constant 32 : index
        %49 = arith.addi %48, %c32_71 : index
        %c1_72 = arith.constant 1 : index
        scf.for %arg9 = %47 to %49 step %c1_72 {
          %c32_73 = arith.constant 32 : index
          %50 = arith.muli %arg8, %c32_73 : index
          %c32_74 = arith.constant 32 : index
          %51 = arith.muli %arg8, %c32_74 : index
          %c32_75 = arith.constant 32 : index
          %52 = arith.addi %51, %c32_75 : index
          %c1_76 = arith.constant 1 : index
          scf.for %arg10 = %50 to %52 step %c1_76 {
            %53 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %54 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %55 = arith.addf %53, %54 : f32
            memref.store %55, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

