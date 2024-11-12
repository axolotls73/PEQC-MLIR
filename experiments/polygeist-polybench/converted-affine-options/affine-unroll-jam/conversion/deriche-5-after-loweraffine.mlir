module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() : memref<1xf32>
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
    %alloca_16 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_17 = memref.alloca() : memref<1xf32>
    %alloca_18 = memref.alloca() : memref<1xf32>
    %alloca_19 = memref.alloca() : memref<1xf32>
    %alloca_20 = memref.alloca() : memref<1xf32>
    %alloca_21 = memref.alloca() : memref<f32>
    %alloca_22 = memref.alloca() : memref<f32>
    %alloca_23 = memref.alloca() : memref<f32>
    %alloca_24 = memref.alloca() : memref<f32>
    %alloca_25 = memref.alloca() : memref<f32>
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
    memref.store %16, %alloca_5[%c0_29] : memref<1xf32>
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
    %22 = memref.load %alloca_5[%c0_32] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    %c0_33 = arith.constant 0 : index
    memref.store %26, %alloca_7[%c0_33] : memref<1xf32>
    %c0_34 = arith.constant 0 : index
    %27 = memref.load %alloca_8[%c0_34] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    %c0_35 = arith.constant 0 : index
    memref.store %29, %alloca_12[%c0_35] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_24[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_14[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_4[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_25[] : memref<f32>
    %c0_36 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0_36 to %c64 step %c1 {
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_25[] : memref<f32>
      memref.store %cst, %alloca_4[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %40 = memref.load %alloca_11[%c0_54] : memref<1xf32>
        %41 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %42 = arith.mulf %40, %41 : f32
        %c0_55 = arith.constant 0 : index
        %43 = memref.load %alloca_16[%c0_55] : memref<1xf32>
        %44 = memref.load %alloca_24[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %c0_56 = arith.constant 0 : index
        %47 = memref.load %alloca_15[%c0_56] : memref<1xf32>
        %48 = memref.load %alloca_4[] : memref<f32>
        %c0_57 = arith.constant 0 : index
        memref.store %48, %alloca_9[%c0_57] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %c0_58 = arith.constant 0 : index
        %51 = memref.load %alloca_6[%c0_58] : memref<1xf32>
        %52 = memref.load %alloca_25[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        memref.store %54, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %55 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        memref.store %55, %alloca_4[] : memref<f32>
        %c0_59 = arith.constant 0 : index
        %56 = memref.load %alloca_9[%c0_59] : memref<1xf32>
        memref.store %56, %alloca_25[] : memref<f32>
        %57 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        memref.store %57, %alloca_24[] : memref<f32>
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
    %c1_39 = arith.constant 1 : index
    scf.for %arg7 = %c0_37 to %c64_38 step %c1_39 {
      memref.store %cst, %alloca_21[] : memref<f32>
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_23[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %40 = memref.load %alloca_12[%c0_54] : memref<1xf32>
        %41 = memref.load %alloca_3[] : memref<f32>
        %c0_55 = arith.constant 0 : index
        memref.store %41, %alloca_13[%c0_55] : memref<1xf32>
        %42 = arith.mulf %40, %41 : f32
        %c0_56 = arith.constant 0 : index
        %43 = memref.load %alloca_7[%c0_56] : memref<1xf32>
        %44 = memref.load %alloca_21[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %c0_57 = arith.constant 0 : index
        %47 = memref.load %alloca_15[%c0_57] : memref<1xf32>
        %48 = memref.load %alloca_23[] : memref<f32>
        %c0_58 = arith.constant 0 : index
        memref.store %48, %alloca_18[%c0_58] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %c0_59 = arith.constant 0 : index
        %51 = memref.load %alloca_6[%c0_59] : memref<1xf32>
        %52 = memref.load %alloca[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        %c-1 = arith.constant -1 : index
        %55 = arith.muli %arg8, %c-1 : index
        %c63 = arith.constant 63 : index
        %56 = arith.addi %55, %c63 : index
        memref.store %54, %arg6[%arg7, %56] : memref<?x64xf32>
        %c-1_60 = arith.constant -1 : index
        %57 = arith.muli %arg8, %c-1_60 : index
        %c63_61 = arith.constant 63 : index
        %58 = arith.addi %57, %c63_61 : index
        %59 = memref.load %arg6[%arg7, %58] : memref<?x64xf32>
        memref.store %59, %alloca_23[] : memref<f32>
        %c0_62 = arith.constant 0 : index
        %60 = memref.load %alloca_18[%c0_62] : memref<1xf32>
        memref.store %60, %alloca[] : memref<f32>
        %c-1_63 = arith.constant -1 : index
        %61 = arith.muli %arg8, %c-1_63 : index
        %c63_64 = arith.constant 63 : index
        %62 = arith.addi %61, %c63_64 : index
        %63 = memref.load %arg3[%arg7, %62] : memref<?x64xf32>
        memref.store %63, %alloca_3[] : memref<f32>
        %c0_65 = arith.constant 0 : index
        %64 = memref.load %alloca_13[%c0_65] : memref<1xf32>
        memref.store %64, %alloca_21[] : memref<f32>
      }
    }
    %c0_40 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_41 = arith.constant 1 : index
    scf.for %arg7 = %c0_40 to %c2 step %c1_41 {
      %c0_51 = arith.constant 0 : index
      %c2_52 = arith.constant 2 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c2_52 step %c1_53 {
        %c32 = arith.constant 32 : index
        %40 = arith.muli %arg7, %c32 : index
        %c32_54 = arith.constant 32 : index
        %41 = arith.muli %arg7, %c32_54 : index
        %c32_55 = arith.constant 32 : index
        %42 = arith.addi %41, %c32_55 : index
        %c1_56 = arith.constant 1 : index
        scf.for %arg9 = %40 to %42 step %c1_56 {
          %c32_57 = arith.constant 32 : index
          %43 = arith.muli %arg8, %c32_57 : index
          %c32_58 = arith.constant 32 : index
          %44 = arith.muli %arg8, %c32_58 : index
          %c32_59 = arith.constant 32 : index
          %45 = arith.addi %44, %c32_59 : index
          %c1_60 = arith.constant 1 : index
          scf.for %arg10 = %43 to %45 step %c1_60 {
            %46 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %47 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %48 = arith.addf %46, %47 : f32
            memref.store %48, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    %c0_42 = arith.constant 0 : index
    %c64_43 = arith.constant 64 : index
    %c1_44 = arith.constant 1 : index
    scf.for %arg7 = %c0_42 to %c64_43 step %c1_44 {
      memref.store %cst, %alloca_25[] : memref<f32>
      memref.store %cst, %alloca_4[] : memref<f32>
      memref.store %cst, %alloca_14[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %40 = memref.load %alloca_11[%c0_54] : memref<1xf32>
        %41 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %42 = arith.mulf %40, %41 : f32
        %c0_55 = arith.constant 0 : index
        %43 = memref.load %alloca_16[%c0_55] : memref<1xf32>
        %44 = memref.load %alloca_14[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %c0_56 = arith.constant 0 : index
        %47 = memref.load %alloca_15[%c0_56] : memref<1xf32>
        %48 = memref.load %alloca_4[] : memref<f32>
        %c0_57 = arith.constant 0 : index
        memref.store %48, %alloca_19[%c0_57] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %c0_58 = arith.constant 0 : index
        %51 = memref.load %alloca_6[%c0_58] : memref<1xf32>
        %52 = memref.load %alloca_25[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        memref.store %54, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %55 = memref.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        memref.store %55, %alloca_4[] : memref<f32>
        %c0_59 = arith.constant 0 : index
        %56 = memref.load %alloca_19[%c0_59] : memref<1xf32>
        memref.store %56, %alloca_25[] : memref<f32>
        %57 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        memref.store %57, %alloca_14[] : memref<f32>
      }
    }
    %c0_45 = arith.constant 0 : index
    %c64_46 = arith.constant 64 : index
    %c1_47 = arith.constant 1 : index
    scf.for %arg7 = %c0_45 to %c64_46 step %c1_47 {
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_23[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      memref.store %cst, %alloca_10[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %40 = memref.load %alloca_12[%c0_54] : memref<1xf32>
        %41 = memref.load %alloca_10[] : memref<f32>
        %c0_55 = arith.constant 0 : index
        memref.store %41, %alloca_17[%c0_55] : memref<1xf32>
        %42 = arith.mulf %40, %41 : f32
        %c0_56 = arith.constant 0 : index
        %43 = memref.load %alloca_7[%c0_56] : memref<1xf32>
        %44 = memref.load %alloca_22[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %c0_57 = arith.constant 0 : index
        %47 = memref.load %alloca_15[%c0_57] : memref<1xf32>
        %48 = memref.load %alloca_23[] : memref<f32>
        %c0_58 = arith.constant 0 : index
        memref.store %48, %alloca_20[%c0_58] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %c0_59 = arith.constant 0 : index
        %51 = memref.load %alloca_6[%c0_59] : memref<1xf32>
        %52 = memref.load %alloca[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        %c-1 = arith.constant -1 : index
        %55 = arith.muli %arg8, %c-1 : index
        %c63 = arith.constant 63 : index
        %56 = arith.addi %55, %c63 : index
        memref.store %54, %arg6[%56, %arg7] : memref<?x64xf32>
        %c-1_60 = arith.constant -1 : index
        %57 = arith.muli %arg8, %c-1_60 : index
        %c63_61 = arith.constant 63 : index
        %58 = arith.addi %57, %c63_61 : index
        %59 = memref.load %arg6[%58, %arg7] : memref<?x64xf32>
        memref.store %59, %alloca_23[] : memref<f32>
        %c0_62 = arith.constant 0 : index
        %60 = memref.load %alloca_20[%c0_62] : memref<1xf32>
        memref.store %60, %alloca[] : memref<f32>
        %c-1_63 = arith.constant -1 : index
        %61 = arith.muli %arg8, %c-1_63 : index
        %c63_64 = arith.constant 63 : index
        %62 = arith.addi %61, %c63_64 : index
        %63 = memref.load %arg4[%62, %arg7] : memref<?x64xf32>
        memref.store %63, %alloca_10[] : memref<f32>
        %c0_65 = arith.constant 0 : index
        %64 = memref.load %alloca_17[%c0_65] : memref<1xf32>
        memref.store %64, %alloca_22[] : memref<f32>
      }
    }
    %c0_48 = arith.constant 0 : index
    %c2_49 = arith.constant 2 : index
    %c1_50 = arith.constant 1 : index
    scf.for %arg7 = %c0_48 to %c2_49 step %c1_50 {
      %c0_51 = arith.constant 0 : index
      %c2_52 = arith.constant 2 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c2_52 step %c1_53 {
        %c32 = arith.constant 32 : index
        %40 = arith.muli %arg7, %c32 : index
        %c32_54 = arith.constant 32 : index
        %41 = arith.muli %arg7, %c32_54 : index
        %c32_55 = arith.constant 32 : index
        %42 = arith.addi %41, %c32_55 : index
        %c1_56 = arith.constant 1 : index
        scf.for %arg9 = %40 to %42 step %c1_56 {
          %c32_57 = arith.constant 32 : index
          %43 = arith.muli %arg8, %c32_57 : index
          %c32_58 = arith.constant 32 : index
          %44 = arith.muli %arg8, %c32_58 : index
          %c32_59 = arith.constant 32 : index
          %45 = arith.addi %44, %c32_59 : index
          %c1_60 = arith.constant 1 : index
          scf.for %arg10 = %43 to %45 step %c1_60 {
            %46 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %47 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %48 = arith.addf %46, %47 : f32
            memref.store %48, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

