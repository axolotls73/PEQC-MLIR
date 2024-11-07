module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<1xf32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<f32>
    %alloca_10 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() : memref<1xf32>
    %alloca_13 = memref.alloca() : memref<f32>
    %alloca_14 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_15 = memref.alloca() : memref<1xf32>
    %alloca_16 = memref.alloca() : memref<1xf32>
    %alloca_17 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_18 = memref.alloca() : memref<1xf32>
    %alloca_19 = memref.alloca() : memref<1xf32>
    %alloca_20 = memref.alloca() : memref<f32>
    %alloca_21 = memref.alloca() : memref<f32>
    %alloca_22 = memref.alloca() : memref<f32>
    %alloca_23 = memref.alloca() : memref<f32>
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
    %7 = arith.subf %cst_0, %6 : f32
    %8 = arith.mulf %7, %7 : f32
    %9 = arith.mulf %arg2, %cst_1 : f32
    %10 = arith.mulf %9, %6 : f32
    %11 = arith.addf %10, %cst_0 : f32
    %12 = math.exp %9 : f32
    %13 = arith.subf %11, %12 : f32
    %14 = arith.divf %8, %13 : f32
    %c0_27 = arith.constant 0 : index
    memref.store %14, %alloca_10[%c0_27] : memref<1xf32>
    %c0_28 = arith.constant 0 : index
    %15 = memref.load %alloca_10[%c0_28] : memref<1xf32>
    %c0_29 = arith.constant 0 : index
    memref.store %15, %alloca_3[%c0_29] : memref<1xf32>
    %16 = arith.negf %arg2 : f32
    %17 = math.exp %16 : f32
    %18 = arith.mulf %15, %17 : f32
    %c0_30 = arith.constant 0 : index
    memref.store %18, %alloca_7[%c0_30] : memref<1xf32>
    %19 = arith.subf %arg2, %cst_0 : f32
    %20 = arith.mulf %18, %19 : f32
    %c0_31 = arith.constant 0 : index
    memref.store %20, %alloca_17[%c0_31] : memref<1xf32>
    %c0_32 = arith.constant 0 : index
    %21 = memref.load %alloca_3[%c0_32] : memref<1xf32>
    %22 = arith.negf %21 : f32
    %23 = arith.mulf %arg2, %cst_2 : f32
    %24 = math.exp %23 : f32
    %25 = arith.mulf %22, %24 : f32
    %c0_33 = arith.constant 0 : index
    memref.store %25, %alloca_6[%c0_33] : memref<1xf32>
    %c0_34 = arith.constant 0 : index
    %26 = memref.load %alloca_7[%c0_34] : memref<1xf32>
    %27 = arith.addf %arg2, %cst_0 : f32
    %28 = arith.mulf %26, %27 : f32
    %c0_35 = arith.constant 0 : index
    memref.store %28, %alloca_11[%c0_35] : memref<1xf32>
    %29 = llvm.mlir.undef : f32
    memref.store %29, %alloca_4[] : memref<f32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_13[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_24[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_23[] : memref<f32>
    %c0_36 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0_36 to %c64 step %c1 {
      memref.store %cst, %alloca_4[] : memref<f32>
      memref.store %cst, %alloca_23[] : memref<f32>
      memref.store %cst, %alloca_24[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %39 = memref.load %alloca_10[%c0_54] : memref<1xf32>
        %40 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %41 = arith.mulf %39, %40 : f32
        %c0_55 = arith.constant 0 : index
        %42 = memref.load %alloca_17[%c0_55] : memref<1xf32>
        %43 = memref.load %alloca_4[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        %c0_56 = arith.constant 0 : index
        %46 = memref.load %alloca_14[%c0_56] : memref<1xf32>
        %47 = memref.load %alloca_24[] : memref<f32>
        %c0_57 = arith.constant 0 : index
        memref.store %47, %alloca_8[%c0_57] : memref<1xf32>
        %48 = arith.mulf %46, %47 : f32
        %49 = arith.addf %45, %48 : f32
        %c0_58 = arith.constant 0 : index
        %50 = memref.load %alloca_5[%c0_58] : memref<1xf32>
        %51 = memref.load %alloca_23[] : memref<f32>
        %52 = arith.mulf %50, %51 : f32
        %53 = arith.addf %49, %52 : f32
        memref.store %53, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %54 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        memref.store %54, %alloca_24[] : memref<f32>
        %c0_59 = arith.constant 0 : index
        %55 = memref.load %alloca_8[%c0_59] : memref<1xf32>
        memref.store %55, %alloca_23[] : memref<f32>
        %56 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        memref.store %56, %alloca_4[] : memref<f32>
      }
    }
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca[] : memref<f32>
    %34 = llvm.mlir.undef : f32
    memref.store %34, %alloca_20[] : memref<f32>
    %35 = llvm.mlir.undef : f32
    memref.store %35, %alloca_9[] : memref<f32>
    %36 = llvm.mlir.undef : f32
    memref.store %36, %alloca_22[] : memref<f32>
    %37 = llvm.mlir.undef : f32
    memref.store %37, %alloca_21[] : memref<f32>
    %38 = llvm.mlir.undef : f32
    memref.store %38, %alloca_25[] : memref<f32>
    %c0_37 = arith.constant 0 : index
    %c64_38 = arith.constant 64 : index
    %c1_39 = arith.constant 1 : index
    scf.for %arg7 = %c0_37 to %c64_38 step %c1_39 {
      memref.store %cst, %alloca_20[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_25[] : memref<f32>
      memref.store %cst, %alloca_21[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %39 = memref.load %alloca_11[%c0_54] : memref<1xf32>
        %40 = memref.load %alloca[] : memref<f32>
        %c0_55 = arith.constant 0 : index
        memref.store %40, %alloca_12[%c0_55] : memref<1xf32>
        %41 = arith.mulf %39, %40 : f32
        %c0_56 = arith.constant 0 : index
        %42 = memref.load %alloca_6[%c0_56] : memref<1xf32>
        %43 = memref.load %alloca_20[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        %c0_57 = arith.constant 0 : index
        %46 = memref.load %alloca_14[%c0_57] : memref<1xf32>
        %47 = memref.load %alloca_21[] : memref<f32>
        %c0_58 = arith.constant 0 : index
        memref.store %47, %alloca_15[%c0_58] : memref<1xf32>
        %48 = arith.mulf %46, %47 : f32
        %49 = arith.addf %45, %48 : f32
        %c0_59 = arith.constant 0 : index
        %50 = memref.load %alloca_5[%c0_59] : memref<1xf32>
        %51 = memref.load %alloca_25[] : memref<f32>
        %52 = arith.mulf %50, %51 : f32
        %53 = arith.addf %49, %52 : f32
        %c-1 = arith.constant -1 : index
        %54 = arith.muli %arg8, %c-1 : index
        %c63 = arith.constant 63 : index
        %55 = arith.addi %54, %c63 : index
        memref.store %53, %arg6[%arg7, %55] : memref<?x64xf32>
        %c-1_60 = arith.constant -1 : index
        %56 = arith.muli %arg8, %c-1_60 : index
        %c63_61 = arith.constant 63 : index
        %57 = arith.addi %56, %c63_61 : index
        %58 = memref.load %arg6[%arg7, %57] : memref<?x64xf32>
        memref.store %58, %alloca_21[] : memref<f32>
        %c0_62 = arith.constant 0 : index
        %59 = memref.load %alloca_15[%c0_62] : memref<1xf32>
        memref.store %59, %alloca_25[] : memref<f32>
        %c-1_63 = arith.constant -1 : index
        %60 = arith.muli %arg8, %c-1_63 : index
        %c63_64 = arith.constant 63 : index
        %61 = arith.addi %60, %c63_64 : index
        %62 = memref.load %arg3[%arg7, %61] : memref<?x64xf32>
        memref.store %62, %alloca[] : memref<f32>
        %c0_65 = arith.constant 0 : index
        %63 = memref.load %alloca_12[%c0_65] : memref<1xf32>
        memref.store %63, %alloca_20[] : memref<f32>
      }
    }
    %c0_40 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_41 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_40) to (%c2) step (%c1_41) {
      %c0_51 = arith.constant 0 : index
      %c2_52 = arith.constant 2 : index
      %c1_53 = arith.constant 1 : index
      scf.parallel (%arg8) = (%c0_51) to (%c2_52) step (%c1_53) {
        %c32 = arith.constant 32 : index
        %39 = arith.muli %arg7, %c32 : index
        %c32_54 = arith.constant 32 : index
        %40 = arith.muli %arg7, %c32_54 : index
        %c32_55 = arith.constant 32 : index
        %41 = arith.addi %40, %c32_55 : index
        %c1_56 = arith.constant 1 : index
        scf.parallel (%arg9) = (%39) to (%41) step (%c1_56) {
          %c32_57 = arith.constant 32 : index
          %42 = arith.muli %arg8, %c32_57 : index
          %c32_58 = arith.constant 32 : index
          %43 = arith.muli %arg8, %c32_58 : index
          %c32_59 = arith.constant 32 : index
          %44 = arith.addi %43, %c32_59 : index
          %c1_60 = arith.constant 1 : index
          scf.parallel (%arg10) = (%42) to (%44) step (%c1_60) {
            %45 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %46 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %47 = arith.addf %45, %46 : f32
            memref.store %47, %arg4[%arg9, %arg10] : memref<?x64xf32>
            scf.reduce 
          }
          scf.reduce 
        }
        scf.reduce 
      }
      scf.reduce 
    }
    %c0_42 = arith.constant 0 : index
    %c64_43 = arith.constant 64 : index
    %c1_44 = arith.constant 1 : index
    scf.for %arg7 = %c0_42 to %c64_43 step %c1_44 {
      memref.store %cst, %alloca_23[] : memref<f32>
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_13[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %39 = memref.load %alloca_10[%c0_54] : memref<1xf32>
        %40 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %41 = arith.mulf %39, %40 : f32
        %c0_55 = arith.constant 0 : index
        %42 = memref.load %alloca_17[%c0_55] : memref<1xf32>
        %43 = memref.load %alloca_13[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        %c0_56 = arith.constant 0 : index
        %46 = memref.load %alloca_14[%c0_56] : memref<1xf32>
        %47 = memref.load %alloca_24[] : memref<f32>
        %c0_57 = arith.constant 0 : index
        memref.store %47, %alloca_18[%c0_57] : memref<1xf32>
        %48 = arith.mulf %46, %47 : f32
        %49 = arith.addf %45, %48 : f32
        %c0_58 = arith.constant 0 : index
        %50 = memref.load %alloca_5[%c0_58] : memref<1xf32>
        %51 = memref.load %alloca_23[] : memref<f32>
        %52 = arith.mulf %50, %51 : f32
        %53 = arith.addf %49, %52 : f32
        memref.store %53, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %54 = memref.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        memref.store %54, %alloca_24[] : memref<f32>
        %c0_59 = arith.constant 0 : index
        %55 = memref.load %alloca_18[%c0_59] : memref<1xf32>
        memref.store %55, %alloca_23[] : memref<f32>
        %56 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        memref.store %56, %alloca_13[] : memref<f32>
      }
    }
    %c0_45 = arith.constant 0 : index
    %c64_46 = arith.constant 64 : index
    %c1_47 = arith.constant 1 : index
    scf.for %arg7 = %c0_45 to %c64_46 step %c1_47 {
      memref.store %cst, %alloca_25[] : memref<f32>
      memref.store %cst, %alloca_21[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      memref.store %cst, %alloca_9[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %39 = memref.load %alloca_11[%c0_54] : memref<1xf32>
        %40 = memref.load %alloca_9[] : memref<f32>
        %c0_55 = arith.constant 0 : index
        memref.store %40, %alloca_16[%c0_55] : memref<1xf32>
        %41 = arith.mulf %39, %40 : f32
        %c0_56 = arith.constant 0 : index
        %42 = memref.load %alloca_6[%c0_56] : memref<1xf32>
        %43 = memref.load %alloca_22[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        %c0_57 = arith.constant 0 : index
        %46 = memref.load %alloca_14[%c0_57] : memref<1xf32>
        %47 = memref.load %alloca_21[] : memref<f32>
        %c0_58 = arith.constant 0 : index
        memref.store %47, %alloca_19[%c0_58] : memref<1xf32>
        %48 = arith.mulf %46, %47 : f32
        %49 = arith.addf %45, %48 : f32
        %c0_59 = arith.constant 0 : index
        %50 = memref.load %alloca_5[%c0_59] : memref<1xf32>
        %51 = memref.load %alloca_25[] : memref<f32>
        %52 = arith.mulf %50, %51 : f32
        %53 = arith.addf %49, %52 : f32
        %c-1 = arith.constant -1 : index
        %54 = arith.muli %arg8, %c-1 : index
        %c63 = arith.constant 63 : index
        %55 = arith.addi %54, %c63 : index
        memref.store %53, %arg6[%55, %arg7] : memref<?x64xf32>
        %c-1_60 = arith.constant -1 : index
        %56 = arith.muli %arg8, %c-1_60 : index
        %c63_61 = arith.constant 63 : index
        %57 = arith.addi %56, %c63_61 : index
        %58 = memref.load %arg6[%57, %arg7] : memref<?x64xf32>
        memref.store %58, %alloca_21[] : memref<f32>
        %c0_62 = arith.constant 0 : index
        %59 = memref.load %alloca_19[%c0_62] : memref<1xf32>
        memref.store %59, %alloca_25[] : memref<f32>
        %c-1_63 = arith.constant -1 : index
        %60 = arith.muli %arg8, %c-1_63 : index
        %c63_64 = arith.constant 63 : index
        %61 = arith.addi %60, %c63_64 : index
        %62 = memref.load %arg4[%61, %arg7] : memref<?x64xf32>
        memref.store %62, %alloca_9[] : memref<f32>
        %c0_65 = arith.constant 0 : index
        %63 = memref.load %alloca_16[%c0_65] : memref<1xf32>
        memref.store %63, %alloca_22[] : memref<f32>
      }
    }
    %c0_48 = arith.constant 0 : index
    %c2_49 = arith.constant 2 : index
    %c1_50 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_48) to (%c2_49) step (%c1_50) {
      %c0_51 = arith.constant 0 : index
      %c2_52 = arith.constant 2 : index
      %c1_53 = arith.constant 1 : index
      scf.parallel (%arg8) = (%c0_51) to (%c2_52) step (%c1_53) {
        %c32 = arith.constant 32 : index
        %39 = arith.muli %arg7, %c32 : index
        %c32_54 = arith.constant 32 : index
        %40 = arith.muli %arg7, %c32_54 : index
        %c32_55 = arith.constant 32 : index
        %41 = arith.addi %40, %c32_55 : index
        %c1_56 = arith.constant 1 : index
        scf.parallel (%arg9) = (%39) to (%41) step (%c1_56) {
          %c32_57 = arith.constant 32 : index
          %42 = arith.muli %arg8, %c32_57 : index
          %c32_58 = arith.constant 32 : index
          %43 = arith.muli %arg8, %c32_58 : index
          %c32_59 = arith.constant 32 : index
          %44 = arith.addi %43, %c32_59 : index
          %c1_60 = arith.constant 1 : index
          scf.parallel (%arg10) = (%42) to (%44) step (%c1_60) {
            %45 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %46 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %47 = arith.addf %45, %46 : f32
            memref.store %47, %arg4[%arg9, %arg10] : memref<?x64xf32>
            scf.reduce 
          }
          scf.reduce 
        }
        scf.reduce 
      }
      scf.reduce 
    }
    return
  }
}

