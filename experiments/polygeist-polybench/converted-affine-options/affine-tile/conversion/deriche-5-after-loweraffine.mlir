module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_6 = memref.alloca() : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<f32>
    %alloca_10 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_13 = memref.alloca() : memref<f32>
    %alloca_14 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_15 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_16 = memref.alloca() : memref<1xf32>
    %alloca_17 = memref.alloca() : memref<1xf32>
    %alloca_18 = memref.alloca() : memref<1xf32>
    %alloca_19 = memref.alloca() : memref<1xf32>
    %alloca_20 = memref.alloca() : memref<f32>
    %alloca_21 = memref.alloca() : memref<f32>
    %alloca_22 = memref.alloca() : memref<f32>
    %alloca_23 = memref.alloca() : memref<1xf32>
    %alloca_24 = memref.alloca() : memref<f32>
    %alloca_25 = memref.alloca() : memref<f32>
    %0 = arith.mulf %arg2, %cst_2 : f32
    %1 = math.exp %0 : f32
    %2 = arith.negf %1 : f32
    %c0 = arith.constant 0 : index
    memref.store %2, %alloca_5[%c0] : memref<1xf32>
    %3 = arith.negf %arg2 : f32
    %4 = math.powf %cst_1, %3 : f32
    %c0_26 = arith.constant 0 : index
    memref.store %4, %alloca_14[%c0_26] : memref<1xf32>
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
    memref.store %15, %alloca_10[%c0_27] : memref<1xf32>
    %c0_28 = arith.constant 0 : index
    %16 = memref.load %alloca_10[%c0_28] : memref<1xf32>
    %c0_29 = arith.constant 0 : index
    memref.store %16, %alloca_23[%c0_29] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    %c0_30 = arith.constant 0 : index
    memref.store %19, %alloca_7[%c0_30] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    %c0_31 = arith.constant 0 : index
    memref.store %21, %alloca_15[%c0_31] : memref<1xf32>
    %c0_32 = arith.constant 0 : index
    %22 = memref.load %alloca_23[%c0_32] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    %c0_33 = arith.constant 0 : index
    memref.store %26, %alloca_12[%c0_33] : memref<1xf32>
    %c0_34 = arith.constant 0 : index
    %27 = memref.load %alloca_7[%c0_34] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    %c0_35 = arith.constant 0 : index
    memref.store %29, %alloca_11[%c0_35] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_4[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_13[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_3[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_24[] : memref<f32>
    %c0_36 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c32 = arith.constant 32 : index
    scf.for %arg7 = %c0_36 to %c64 step %c32 {
      %c32_50 = arith.constant 32 : index
      %40 = arith.addi %arg7, %c32_50 : index
      %c1_51 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %40 step %c1_51 {
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        %c0_52 = arith.constant 0 : index
        %c64_53 = arith.constant 64 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_52 to %c64_53 step %c1_54 {
          %c0_55 = arith.constant 0 : index
          %41 = memref.load %alloca_10[%c0_55] : memref<1xf32>
          %42 = memref.load %arg3[%arg8, %arg9] : memref<?x64xf32>
          %43 = arith.mulf %41, %42 : f32
          %c0_56 = arith.constant 0 : index
          %44 = memref.load %alloca_15[%c0_56] : memref<1xf32>
          %45 = memref.load %alloca_4[] : memref<f32>
          %46 = arith.mulf %44, %45 : f32
          %47 = arith.addf %43, %46 : f32
          %c0_57 = arith.constant 0 : index
          %48 = memref.load %alloca_14[%c0_57] : memref<1xf32>
          %49 = memref.load %alloca_3[] : memref<f32>
          %c0_58 = arith.constant 0 : index
          memref.store %49, %alloca_8[%c0_58] : memref<1xf32>
          %50 = arith.mulf %48, %49 : f32
          %51 = arith.addf %47, %50 : f32
          %c0_59 = arith.constant 0 : index
          %52 = memref.load %alloca_5[%c0_59] : memref<1xf32>
          %53 = memref.load %alloca_24[] : memref<f32>
          %54 = arith.mulf %52, %53 : f32
          %55 = arith.addf %51, %54 : f32
          memref.store %55, %arg5[%arg8, %arg9] : memref<?x64xf32>
          %56 = memref.load %arg5[%arg8, %arg9] : memref<?x64xf32>
          memref.store %56, %alloca_3[] : memref<f32>
          %c0_60 = arith.constant 0 : index
          %57 = memref.load %alloca_8[%c0_60] : memref<1xf32>
          memref.store %57, %alloca_24[] : memref<f32>
          %58 = memref.load %arg3[%arg8, %arg9] : memref<?x64xf32>
          memref.store %58, %alloca_4[] : memref<f32>
        }
      }
    }
    %34 = llvm.mlir.undef : f32
    memref.store %34, %alloca[] : memref<f32>
    %35 = llvm.mlir.undef : f32
    memref.store %35, %alloca_20[] : memref<f32>
    %36 = llvm.mlir.undef : f32
    memref.store %36, %alloca_9[] : memref<f32>
    %37 = llvm.mlir.undef : f32
    memref.store %37, %alloca_21[] : memref<f32>
    %38 = llvm.mlir.undef : f32
    memref.store %38, %alloca_22[] : memref<f32>
    %39 = llvm.mlir.undef : f32
    memref.store %39, %alloca_25[] : memref<f32>
    %c0_37 = arith.constant 0 : index
    %c64_38 = arith.constant 64 : index
    %c32_39 = arith.constant 32 : index
    scf.for %arg7 = %c0_37 to %c64_38 step %c32_39 {
      %c32_50 = arith.constant 32 : index
      %40 = arith.addi %arg7, %c32_50 : index
      %c1_51 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %40 step %c1_51 {
        memref.store %cst, %alloca_20[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        %c0_52 = arith.constant 0 : index
        %c64_53 = arith.constant 64 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_52 to %c64_53 step %c1_54 {
          %c0_55 = arith.constant 0 : index
          %41 = memref.load %alloca_11[%c0_55] : memref<1xf32>
          %42 = memref.load %alloca[] : memref<f32>
          %c0_56 = arith.constant 0 : index
          memref.store %42, %alloca_6[%c0_56] : memref<1xf32>
          %43 = arith.mulf %41, %42 : f32
          %c0_57 = arith.constant 0 : index
          %44 = memref.load %alloca_12[%c0_57] : memref<1xf32>
          %45 = memref.load %alloca_20[] : memref<f32>
          %46 = arith.mulf %44, %45 : f32
          %47 = arith.addf %43, %46 : f32
          %c0_58 = arith.constant 0 : index
          %48 = memref.load %alloca_14[%c0_58] : memref<1xf32>
          %49 = memref.load %alloca_22[] : memref<f32>
          %c0_59 = arith.constant 0 : index
          memref.store %49, %alloca_17[%c0_59] : memref<1xf32>
          %50 = arith.mulf %48, %49 : f32
          %51 = arith.addf %47, %50 : f32
          %c0_60 = arith.constant 0 : index
          %52 = memref.load %alloca_5[%c0_60] : memref<1xf32>
          %53 = memref.load %alloca_25[] : memref<f32>
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
          memref.store %60, %alloca_22[] : memref<f32>
          %c0_63 = arith.constant 0 : index
          %61 = memref.load %alloca_17[%c0_63] : memref<1xf32>
          memref.store %61, %alloca_25[] : memref<f32>
          %c-1_64 = arith.constant -1 : index
          %62 = arith.muli %arg9, %c-1_64 : index
          %c63_65 = arith.constant 63 : index
          %63 = arith.addi %62, %c63_65 : index
          %64 = memref.load %arg3[%arg8, %63] : memref<?x64xf32>
          memref.store %64, %alloca[] : memref<f32>
          %c0_66 = arith.constant 0 : index
          %65 = memref.load %alloca_6[%c0_66] : memref<1xf32>
          memref.store %65, %alloca_20[] : memref<f32>
        }
      }
    }
    %c0_40 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0_40 to %c2 step %c1 {
      %c0_50 = arith.constant 0 : index
      %c2_51 = arith.constant 2 : index
      %c1_52 = arith.constant 1 : index
      scf.for %arg8 = %c0_50 to %c2_51 step %c1_52 {
        %c32_53 = arith.constant 32 : index
        %40 = arith.muli %arg7, %c32_53 : index
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
    %c0_41 = arith.constant 0 : index
    %c64_42 = arith.constant 64 : index
    %c32_43 = arith.constant 32 : index
    scf.for %arg7 = %c0_41 to %c64_42 step %c32_43 {
      %c32_50 = arith.constant 32 : index
      %40 = arith.addi %arg7, %c32_50 : index
      %c1_51 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %40 step %c1_51 {
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca_13[] : memref<f32>
        %c0_52 = arith.constant 0 : index
        %c64_53 = arith.constant 64 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_52 to %c64_53 step %c1_54 {
          %c0_55 = arith.constant 0 : index
          %41 = memref.load %alloca_10[%c0_55] : memref<1xf32>
          %42 = memref.load %arg4[%arg9, %arg8] : memref<?x64xf32>
          %43 = arith.mulf %41, %42 : f32
          %c0_56 = arith.constant 0 : index
          %44 = memref.load %alloca_15[%c0_56] : memref<1xf32>
          %45 = memref.load %alloca_13[] : memref<f32>
          %46 = arith.mulf %44, %45 : f32
          %47 = arith.addf %43, %46 : f32
          %c0_57 = arith.constant 0 : index
          %48 = memref.load %alloca_14[%c0_57] : memref<1xf32>
          %49 = memref.load %alloca_3[] : memref<f32>
          %c0_58 = arith.constant 0 : index
          memref.store %49, %alloca_18[%c0_58] : memref<1xf32>
          %50 = arith.mulf %48, %49 : f32
          %51 = arith.addf %47, %50 : f32
          %c0_59 = arith.constant 0 : index
          %52 = memref.load %alloca_5[%c0_59] : memref<1xf32>
          %53 = memref.load %alloca_24[] : memref<f32>
          %54 = arith.mulf %52, %53 : f32
          %55 = arith.addf %51, %54 : f32
          memref.store %55, %arg5[%arg9, %arg8] : memref<?x64xf32>
          %56 = memref.load %arg5[%arg9, %arg8] : memref<?x64xf32>
          memref.store %56, %alloca_3[] : memref<f32>
          %c0_60 = arith.constant 0 : index
          %57 = memref.load %alloca_18[%c0_60] : memref<1xf32>
          memref.store %57, %alloca_24[] : memref<f32>
          %58 = memref.load %arg4[%arg9, %arg8] : memref<?x64xf32>
          memref.store %58, %alloca_13[] : memref<f32>
        }
      }
    }
    %c0_44 = arith.constant 0 : index
    %c64_45 = arith.constant 64 : index
    %c32_46 = arith.constant 32 : index
    scf.for %arg7 = %c0_44 to %c64_45 step %c32_46 {
      %c32_50 = arith.constant 32 : index
      %40 = arith.addi %arg7, %c32_50 : index
      %c1_51 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %40 step %c1_51 {
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        memref.store %cst, %alloca_21[] : memref<f32>
        memref.store %cst, %alloca_9[] : memref<f32>
        %c0_52 = arith.constant 0 : index
        %c64_53 = arith.constant 64 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_52 to %c64_53 step %c1_54 {
          %c0_55 = arith.constant 0 : index
          %41 = memref.load %alloca_11[%c0_55] : memref<1xf32>
          %42 = memref.load %alloca_9[] : memref<f32>
          %c0_56 = arith.constant 0 : index
          memref.store %42, %alloca_16[%c0_56] : memref<1xf32>
          %43 = arith.mulf %41, %42 : f32
          %c0_57 = arith.constant 0 : index
          %44 = memref.load %alloca_12[%c0_57] : memref<1xf32>
          %45 = memref.load %alloca_21[] : memref<f32>
          %46 = arith.mulf %44, %45 : f32
          %47 = arith.addf %43, %46 : f32
          %c0_58 = arith.constant 0 : index
          %48 = memref.load %alloca_14[%c0_58] : memref<1xf32>
          %49 = memref.load %alloca_22[] : memref<f32>
          %c0_59 = arith.constant 0 : index
          memref.store %49, %alloca_19[%c0_59] : memref<1xf32>
          %50 = arith.mulf %48, %49 : f32
          %51 = arith.addf %47, %50 : f32
          %c0_60 = arith.constant 0 : index
          %52 = memref.load %alloca_5[%c0_60] : memref<1xf32>
          %53 = memref.load %alloca_25[] : memref<f32>
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
          memref.store %60, %alloca_22[] : memref<f32>
          %c0_63 = arith.constant 0 : index
          %61 = memref.load %alloca_19[%c0_63] : memref<1xf32>
          memref.store %61, %alloca_25[] : memref<f32>
          %c-1_64 = arith.constant -1 : index
          %62 = arith.muli %arg9, %c-1_64 : index
          %c63_65 = arith.constant 63 : index
          %63 = arith.addi %62, %c63_65 : index
          %64 = memref.load %arg4[%63, %arg8] : memref<?x64xf32>
          memref.store %64, %alloca_9[] : memref<f32>
          %c0_66 = arith.constant 0 : index
          %65 = memref.load %alloca_16[%c0_66] : memref<1xf32>
          memref.store %65, %alloca_21[] : memref<f32>
        }
      }
    }
    %c0_47 = arith.constant 0 : index
    %c2_48 = arith.constant 2 : index
    %c1_49 = arith.constant 1 : index
    scf.for %arg7 = %c0_47 to %c2_48 step %c1_49 {
      %c0_50 = arith.constant 0 : index
      %c2_51 = arith.constant 2 : index
      %c1_52 = arith.constant 1 : index
      scf.for %arg8 = %c0_50 to %c2_51 step %c1_52 {
        %c32_53 = arith.constant 32 : index
        %40 = arith.muli %arg7, %c32_53 : index
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

