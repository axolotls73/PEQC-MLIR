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
    %alloca_5 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_6 = memref.alloca() : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<f32>
    %alloca_10 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() : memref<f32>
    %alloca_13 = memref.alloca() {scop.scratchpad} : memref<1xf32>
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
    %alloca_25 = memref.alloca() : memref<1xf32>
    %1 = arith.mulf %arg2, %cst_2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.negf %2 : f32
    %c0 = arith.constant 0 : index
    memref.store %3, %alloca_5[%c0] : memref<1xf32>
    %4 = arith.negf %arg2 : f32
    %5 = math.powf %cst_1, %4 : f32
    %c0_26 = arith.constant 0 : index
    memref.store %5, %alloca_14[%c0_26] : memref<1xf32>
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
    memref.store %16, %alloca_10[%c0_27] : memref<1xf32>
    %c0_28 = arith.constant 0 : index
    %17 = memref.load %alloca_10[%c0_28] : memref<1xf32>
    %c0_29 = arith.constant 0 : index
    memref.store %17, %alloca_25[%c0_29] : memref<1xf32>
    %18 = arith.negf %arg2 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    %c0_30 = arith.constant 0 : index
    memref.store %20, %alloca_7[%c0_30] : memref<1xf32>
    %21 = arith.subf %arg2, %cst_0 : f32
    %22 = arith.mulf %20, %21 : f32
    %c0_31 = arith.constant 0 : index
    memref.store %22, %alloca_17[%c0_31] : memref<1xf32>
    %c0_32 = arith.constant 0 : index
    %23 = memref.load %alloca_25[%c0_32] : memref<1xf32>
    %24 = arith.negf %23 : f32
    %25 = arith.mulf %arg2, %cst_2 : f32
    %26 = math.exp %25 : f32
    %27 = arith.mulf %24, %26 : f32
    %c0_33 = arith.constant 0 : index
    memref.store %27, %alloca_13[%c0_33] : memref<1xf32>
    %c0_34 = arith.constant 0 : index
    %28 = memref.load %alloca_7[%c0_34] : memref<1xf32>
    %29 = arith.addf %arg2, %cst_0 : f32
    %30 = arith.mulf %28, %29 : f32
    %c0_35 = arith.constant 0 : index
    memref.store %30, %alloca_11[%c0_35] : memref<1xf32>
    memref.store %0, %alloca_4[] : memref<f32>
    memref.store %0, %alloca_12[] : memref<f32>
    memref.store %0, %alloca_3[] : memref<f32>
    memref.store %0, %alloca_23[] : memref<f32>
    %c0_36 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0_36 to %c64 step %c1 {
      memref.store %cst, %alloca_4[] : memref<f32>
      memref.store %cst, %alloca_23[] : memref<f32>
      memref.store %cst, %alloca_3[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %31 = memref.load %alloca_10[%c0_54] : memref<1xf32>
        %32 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %33 = arith.mulf %31, %32 : f32
        %c0_55 = arith.constant 0 : index
        %34 = memref.load %alloca_17[%c0_55] : memref<1xf32>
        %35 = memref.load %alloca_4[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %c0_56 = arith.constant 0 : index
        %38 = memref.load %alloca_14[%c0_56] : memref<1xf32>
        %39 = memref.load %alloca_3[] : memref<f32>
        %c0_57 = arith.constant 0 : index
        memref.store %39, %alloca_8[%c0_57] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %c0_58 = arith.constant 0 : index
        %42 = memref.load %alloca_5[%c0_58] : memref<1xf32>
        %43 = memref.load %alloca_23[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        memref.store %45, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %46 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        memref.store %46, %alloca_3[] : memref<f32>
        %c0_59 = arith.constant 0 : index
        %47 = memref.load %alloca_8[%c0_59] : memref<1xf32>
        memref.store %47, %alloca_23[] : memref<f32>
        %48 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        memref.store %48, %alloca_4[] : memref<f32>
      }
    }
    memref.store %0, %alloca[] : memref<f32>
    memref.store %0, %alloca_20[] : memref<f32>
    memref.store %0, %alloca_9[] : memref<f32>
    memref.store %0, %alloca_21[] : memref<f32>
    memref.store %0, %alloca_22[] : memref<f32>
    memref.store %0, %alloca_24[] : memref<f32>
    %c0_37 = arith.constant 0 : index
    %c64_38 = arith.constant 64 : index
    %c1_39 = arith.constant 1 : index
    scf.for %arg7 = %c0_37 to %c64_38 step %c1_39 {
      memref.store %cst, %alloca_20[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %31 = memref.load %alloca_11[%c0_54] : memref<1xf32>
        %32 = memref.load %alloca[] : memref<f32>
        %c0_55 = arith.constant 0 : index
        memref.store %32, %alloca_6[%c0_55] : memref<1xf32>
        %33 = arith.mulf %31, %32 : f32
        %c0_56 = arith.constant 0 : index
        %34 = memref.load %alloca_13[%c0_56] : memref<1xf32>
        %35 = memref.load %alloca_20[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %c0_57 = arith.constant 0 : index
        %38 = memref.load %alloca_14[%c0_57] : memref<1xf32>
        %39 = memref.load %alloca_22[] : memref<f32>
        %c0_58 = arith.constant 0 : index
        memref.store %39, %alloca_15[%c0_58] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %c0_59 = arith.constant 0 : index
        %42 = memref.load %alloca_5[%c0_59] : memref<1xf32>
        %43 = memref.load %alloca_24[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        %c-1 = arith.constant -1 : index
        %46 = arith.muli %arg8, %c-1 : index
        %c63 = arith.constant 63 : index
        %47 = arith.addi %46, %c63 : index
        memref.store %45, %arg6[%arg7, %47] : memref<?x64xf32>
        %c-1_60 = arith.constant -1 : index
        %48 = arith.muli %arg8, %c-1_60 : index
        %c63_61 = arith.constant 63 : index
        %49 = arith.addi %48, %c63_61 : index
        %50 = memref.load %arg6[%arg7, %49] : memref<?x64xf32>
        memref.store %50, %alloca_22[] : memref<f32>
        %c0_62 = arith.constant 0 : index
        %51 = memref.load %alloca_15[%c0_62] : memref<1xf32>
        memref.store %51, %alloca_24[] : memref<f32>
        %c-1_63 = arith.constant -1 : index
        %52 = arith.muli %arg8, %c-1_63 : index
        %c63_64 = arith.constant 63 : index
        %53 = arith.addi %52, %c63_64 : index
        %54 = memref.load %arg3[%arg7, %53] : memref<?x64xf32>
        memref.store %54, %alloca[] : memref<f32>
        %c0_65 = arith.constant 0 : index
        %55 = memref.load %alloca_6[%c0_65] : memref<1xf32>
        memref.store %55, %alloca_20[] : memref<f32>
      }
    }
    %c0_40 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1_41 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_40) to (%c2) step (%c1_41) {
      %c0_51 = arith.constant 0 : index
      %c2_52 = arith.constant 2 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c2_52 step %c1_53 {
        %c32 = arith.constant 32 : index
        %31 = arith.muli %arg7, %c32 : index
        %c32_54 = arith.constant 32 : index
        %32 = arith.muli %arg7, %c32_54 : index
        %c32_55 = arith.constant 32 : index
        %33 = arith.addi %32, %c32_55 : index
        %c1_56 = arith.constant 1 : index
        scf.for %arg9 = %31 to %33 step %c1_56 {
          %c32_57 = arith.constant 32 : index
          %34 = arith.muli %arg8, %c32_57 : index
          %c32_58 = arith.constant 32 : index
          %35 = arith.muli %arg8, %c32_58 : index
          %c32_59 = arith.constant 32 : index
          %36 = arith.addi %35, %c32_59 : index
          %c1_60 = arith.constant 1 : index
          scf.for %arg10 = %34 to %36 step %c1_60 {
            %37 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %38 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %39 = arith.addf %37, %38 : f32
            memref.store %39, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
      scf.reduce 
    }
    %c0_42 = arith.constant 0 : index
    %c64_43 = arith.constant 64 : index
    %c1_44 = arith.constant 1 : index
    scf.for %arg7 = %c0_42 to %c64_43 step %c1_44 {
      memref.store %cst, %alloca_23[] : memref<f32>
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca_12[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %31 = memref.load %alloca_10[%c0_54] : memref<1xf32>
        %32 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %33 = arith.mulf %31, %32 : f32
        %c0_55 = arith.constant 0 : index
        %34 = memref.load %alloca_17[%c0_55] : memref<1xf32>
        %35 = memref.load %alloca_12[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %c0_56 = arith.constant 0 : index
        %38 = memref.load %alloca_14[%c0_56] : memref<1xf32>
        %39 = memref.load %alloca_3[] : memref<f32>
        %c0_57 = arith.constant 0 : index
        memref.store %39, %alloca_18[%c0_57] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %c0_58 = arith.constant 0 : index
        %42 = memref.load %alloca_5[%c0_58] : memref<1xf32>
        %43 = memref.load %alloca_23[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        memref.store %45, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %46 = memref.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        memref.store %46, %alloca_3[] : memref<f32>
        %c0_59 = arith.constant 0 : index
        %47 = memref.load %alloca_18[%c0_59] : memref<1xf32>
        memref.store %47, %alloca_23[] : memref<f32>
        %48 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        memref.store %48, %alloca_12[] : memref<f32>
      }
    }
    %c0_45 = arith.constant 0 : index
    %c64_46 = arith.constant 64 : index
    %c1_47 = arith.constant 1 : index
    scf.for %arg7 = %c0_45 to %c64_46 step %c1_47 {
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      memref.store %cst, %alloca_21[] : memref<f32>
      memref.store %cst, %alloca_9[] : memref<f32>
      %c0_51 = arith.constant 0 : index
      %c64_52 = arith.constant 64 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c64_52 step %c1_53 {
        %c0_54 = arith.constant 0 : index
        %31 = memref.load %alloca_11[%c0_54] : memref<1xf32>
        %32 = memref.load %alloca_9[] : memref<f32>
        %c0_55 = arith.constant 0 : index
        memref.store %32, %alloca_16[%c0_55] : memref<1xf32>
        %33 = arith.mulf %31, %32 : f32
        %c0_56 = arith.constant 0 : index
        %34 = memref.load %alloca_13[%c0_56] : memref<1xf32>
        %35 = memref.load %alloca_21[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %c0_57 = arith.constant 0 : index
        %38 = memref.load %alloca_14[%c0_57] : memref<1xf32>
        %39 = memref.load %alloca_22[] : memref<f32>
        %c0_58 = arith.constant 0 : index
        memref.store %39, %alloca_19[%c0_58] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %c0_59 = arith.constant 0 : index
        %42 = memref.load %alloca_5[%c0_59] : memref<1xf32>
        %43 = memref.load %alloca_24[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        %c-1 = arith.constant -1 : index
        %46 = arith.muli %arg8, %c-1 : index
        %c63 = arith.constant 63 : index
        %47 = arith.addi %46, %c63 : index
        memref.store %45, %arg6[%47, %arg7] : memref<?x64xf32>
        %c-1_60 = arith.constant -1 : index
        %48 = arith.muli %arg8, %c-1_60 : index
        %c63_61 = arith.constant 63 : index
        %49 = arith.addi %48, %c63_61 : index
        %50 = memref.load %arg6[%49, %arg7] : memref<?x64xf32>
        memref.store %50, %alloca_22[] : memref<f32>
        %c0_62 = arith.constant 0 : index
        %51 = memref.load %alloca_19[%c0_62] : memref<1xf32>
        memref.store %51, %alloca_24[] : memref<f32>
        %c-1_63 = arith.constant -1 : index
        %52 = arith.muli %arg8, %c-1_63 : index
        %c63_64 = arith.constant 63 : index
        %53 = arith.addi %52, %c63_64 : index
        %54 = memref.load %arg4[%53, %arg7] : memref<?x64xf32>
        memref.store %54, %alloca_9[] : memref<f32>
        %c0_65 = arith.constant 0 : index
        %55 = memref.load %alloca_16[%c0_65] : memref<1xf32>
        memref.store %55, %alloca_21[] : memref<f32>
      }
    }
    %c0_48 = arith.constant 0 : index
    %c2_49 = arith.constant 2 : index
    %c1_50 = arith.constant 1 : index
    scf.parallel (%arg7) = (%c0_48) to (%c2_49) step (%c1_50) {
      %c0_51 = arith.constant 0 : index
      %c2_52 = arith.constant 2 : index
      %c1_53 = arith.constant 1 : index
      scf.for %arg8 = %c0_51 to %c2_52 step %c1_53 {
        %c32 = arith.constant 32 : index
        %31 = arith.muli %arg7, %c32 : index
        %c32_54 = arith.constant 32 : index
        %32 = arith.muli %arg7, %c32_54 : index
        %c32_55 = arith.constant 32 : index
        %33 = arith.addi %32, %c32_55 : index
        %c1_56 = arith.constant 1 : index
        scf.for %arg9 = %31 to %33 step %c1_56 {
          %c32_57 = arith.constant 32 : index
          %34 = arith.muli %arg8, %c32_57 : index
          %c32_58 = arith.constant 32 : index
          %35 = arith.muli %arg8, %c32_58 : index
          %c32_59 = arith.constant 32 : index
          %36 = arith.addi %35, %c32_59 : index
          %c1_60 = arith.constant 1 : index
          scf.for %arg10 = %34 to %36 step %c1_60 {
            %37 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %38 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %39 = arith.addf %37, %38 : f32
            memref.store %39, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
      scf.reduce 
    }
    return
  }
}

