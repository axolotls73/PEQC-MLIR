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
    %alloca_8 = memref.alloca() : memref<f32>
    %alloca_9 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_10 = memref.alloca() : memref<f32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() : memref<1xf32>
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
    %alloca_23 = memref.alloca() : memref<1xf32>
    %alloca_24 = memref.alloca() : memref<f32>
    %alloca_25 = memref.alloca() : memref<f32>
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
    memref.store %16, %alloca_9[%c0_27] : memref<1xf32>
    %c0_28 = arith.constant 0 : index
    %17 = memref.load %alloca_9[%c0_28] : memref<1xf32>
    %c0_29 = arith.constant 0 : index
    memref.store %17, %alloca_23[%c0_29] : memref<1xf32>
    %18 = arith.negf %arg2 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    %c0_30 = arith.constant 0 : index
    memref.store %20, %alloca_6[%c0_30] : memref<1xf32>
    %21 = arith.subf %arg2, %cst_0 : f32
    %22 = arith.mulf %20, %21 : f32
    %c0_31 = arith.constant 0 : index
    memref.store %22, %alloca_17[%c0_31] : memref<1xf32>
    %c0_32 = arith.constant 0 : index
    %23 = memref.load %alloca_23[%c0_32] : memref<1xf32>
    %24 = arith.negf %23 : f32
    %25 = arith.mulf %arg2, %cst_2 : f32
    %26 = math.exp %25 : f32
    %27 = arith.mulf %24, %26 : f32
    %c0_33 = arith.constant 0 : index
    memref.store %27, %alloca_13[%c0_33] : memref<1xf32>
    %c0_34 = arith.constant 0 : index
    %28 = memref.load %alloca_6[%c0_34] : memref<1xf32>
    %29 = arith.addf %arg2, %cst_0 : f32
    %30 = arith.mulf %28, %29 : f32
    %c0_35 = arith.constant 0 : index
    memref.store %30, %alloca_11[%c0_35] : memref<1xf32>
    memref.store %0, %alloca_4[] : memref<f32>
    memref.store %0, %alloca_10[] : memref<f32>
    memref.store %0, %alloca_3[] : memref<f32>
    memref.store %0, %alloca_24[] : memref<f32>
    %c0_36 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c32 = arith.constant 32 : index
    scf.for %arg7 = %c0_36 to %c64 step %c32 {
      %c32_51 = arith.constant 32 : index
      %31 = arith.addi %arg7, %c32_51 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %31 step %c1 {
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        %c0_52 = arith.constant 0 : index
        %c64_53 = arith.constant 64 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_52 to %c64_53 step %c1_54 {
          %c0_55 = arith.constant 0 : index
          %32 = memref.load %alloca_9[%c0_55] : memref<1xf32>
          %33 = memref.load %arg3[%arg8, %arg9] : memref<?x64xf32>
          %34 = arith.mulf %32, %33 : f32
          %c0_56 = arith.constant 0 : index
          %35 = memref.load %alloca_17[%c0_56] : memref<1xf32>
          %36 = memref.load %alloca_4[] : memref<f32>
          %37 = arith.mulf %35, %36 : f32
          %38 = arith.addf %34, %37 : f32
          %c0_57 = arith.constant 0 : index
          %39 = memref.load %alloca_14[%c0_57] : memref<1xf32>
          %40 = memref.load %alloca_3[] : memref<f32>
          %c0_58 = arith.constant 0 : index
          memref.store %40, %alloca_7[%c0_58] : memref<1xf32>
          %41 = arith.mulf %39, %40 : f32
          %42 = arith.addf %38, %41 : f32
          %c0_59 = arith.constant 0 : index
          %43 = memref.load %alloca_5[%c0_59] : memref<1xf32>
          %44 = memref.load %alloca_24[] : memref<f32>
          %45 = arith.mulf %43, %44 : f32
          %46 = arith.addf %42, %45 : f32
          memref.store %46, %arg5[%arg8, %arg9] : memref<?x64xf32>
          %47 = memref.load %arg5[%arg8, %arg9] : memref<?x64xf32>
          memref.store %47, %alloca_3[] : memref<f32>
          %c0_60 = arith.constant 0 : index
          %48 = memref.load %alloca_7[%c0_60] : memref<1xf32>
          memref.store %48, %alloca_24[] : memref<f32>
          %49 = memref.load %arg3[%arg8, %arg9] : memref<?x64xf32>
          memref.store %49, %alloca_4[] : memref<f32>
        }
      }
    }
    memref.store %0, %alloca[] : memref<f32>
    memref.store %0, %alloca_20[] : memref<f32>
    memref.store %0, %alloca_8[] : memref<f32>
    memref.store %0, %alloca_22[] : memref<f32>
    memref.store %0, %alloca_21[] : memref<f32>
    memref.store %0, %alloca_25[] : memref<f32>
    %c0_37 = arith.constant 0 : index
    %c64_38 = arith.constant 64 : index
    %c32_39 = arith.constant 32 : index
    scf.for %arg7 = %c0_37 to %c64_38 step %c32_39 {
      %c32_51 = arith.constant 32 : index
      %31 = arith.addi %arg7, %c32_51 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %31 step %c1 {
        memref.store %cst, %alloca_20[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_21[] : memref<f32>
        %c0_52 = arith.constant 0 : index
        %c64_53 = arith.constant 64 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_52 to %c64_53 step %c1_54 {
          %c0_55 = arith.constant 0 : index
          %32 = memref.load %alloca_11[%c0_55] : memref<1xf32>
          %33 = memref.load %alloca[] : memref<f32>
          %c0_56 = arith.constant 0 : index
          memref.store %33, %alloca_12[%c0_56] : memref<1xf32>
          %34 = arith.mulf %32, %33 : f32
          %c0_57 = arith.constant 0 : index
          %35 = memref.load %alloca_13[%c0_57] : memref<1xf32>
          %36 = memref.load %alloca_20[] : memref<f32>
          %37 = arith.mulf %35, %36 : f32
          %38 = arith.addf %34, %37 : f32
          %c0_58 = arith.constant 0 : index
          %39 = memref.load %alloca_14[%c0_58] : memref<1xf32>
          %40 = memref.load %alloca_21[] : memref<f32>
          %c0_59 = arith.constant 0 : index
          memref.store %40, %alloca_15[%c0_59] : memref<1xf32>
          %41 = arith.mulf %39, %40 : f32
          %42 = arith.addf %38, %41 : f32
          %c0_60 = arith.constant 0 : index
          %43 = memref.load %alloca_5[%c0_60] : memref<1xf32>
          %44 = memref.load %alloca_25[] : memref<f32>
          %45 = arith.mulf %43, %44 : f32
          %46 = arith.addf %42, %45 : f32
          %c-1 = arith.constant -1 : index
          %47 = arith.muli %arg9, %c-1 : index
          %c63 = arith.constant 63 : index
          %48 = arith.addi %47, %c63 : index
          memref.store %46, %arg6[%arg8, %48] : memref<?x64xf32>
          %c-1_61 = arith.constant -1 : index
          %49 = arith.muli %arg9, %c-1_61 : index
          %c63_62 = arith.constant 63 : index
          %50 = arith.addi %49, %c63_62 : index
          %51 = memref.load %arg6[%arg8, %50] : memref<?x64xf32>
          memref.store %51, %alloca_21[] : memref<f32>
          %c0_63 = arith.constant 0 : index
          %52 = memref.load %alloca_15[%c0_63] : memref<1xf32>
          memref.store %52, %alloca_25[] : memref<f32>
          %c-1_64 = arith.constant -1 : index
          %53 = arith.muli %arg9, %c-1_64 : index
          %c63_65 = arith.constant 63 : index
          %54 = arith.addi %53, %c63_65 : index
          %55 = memref.load %arg3[%arg8, %54] : memref<?x64xf32>
          memref.store %55, %alloca[] : memref<f32>
          %c0_66 = arith.constant 0 : index
          %56 = memref.load %alloca_12[%c0_66] : memref<1xf32>
          memref.store %56, %alloca_20[] : memref<f32>
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
            %31 = arith.addi %arg7, %c2_60 : index
            %c1 = arith.constant 1 : index
            scf.for %arg11 = %arg7 to %31 step %c1 {
              %c2_61 = arith.constant 2 : index
              %32 = arith.addi %arg8, %c2_61 : index
              %c1_62 = arith.constant 1 : index
              scf.for %arg12 = %arg8 to %32 step %c1_62 {
                %c32_63 = arith.constant 32 : index
                %33 = arith.addi %arg9, %c32_63 : index
                %c1_64 = arith.constant 1 : index
                scf.for %arg13 = %arg9 to %33 step %c1_64 {
                  %c32_65 = arith.constant 32 : index
                  %34 = arith.addi %arg10, %c32_65 : index
                  %c1_66 = arith.constant 1 : index
                  scf.for %arg14 = %arg10 to %34 step %c1_66 {
                    %c32_67 = arith.constant 32 : index
                    %35 = arith.muli %arg11, %c32_67 : index
                    %36 = arith.addi %35, %arg13 : index
                    %c32_68 = arith.constant 32 : index
                    %37 = arith.muli %arg12, %c32_68 : index
                    %38 = arith.addi %37, %arg14 : index
                    %39 = memref.load %arg5[%36, %38] : memref<?x64xf32>
                    %c32_69 = arith.constant 32 : index
                    %40 = arith.muli %arg11, %c32_69 : index
                    %41 = arith.addi %40, %arg13 : index
                    %c32_70 = arith.constant 32 : index
                    %42 = arith.muli %arg12, %c32_70 : index
                    %43 = arith.addi %42, %arg14 : index
                    %44 = memref.load %arg6[%41, %43] : memref<?x64xf32>
                    %45 = arith.addf %39, %44 : f32
                    %c32_71 = arith.constant 32 : index
                    %46 = arith.muli %arg11, %c32_71 : index
                    %47 = arith.addi %46, %arg13 : index
                    %c32_72 = arith.constant 32 : index
                    %48 = arith.muli %arg12, %c32_72 : index
                    %49 = arith.addi %48, %arg14 : index
                    memref.store %45, %arg4[%47, %49] : memref<?x64xf32>
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
      %31 = arith.addi %arg7, %c32_51 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %31 step %c1 {
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca_10[] : memref<f32>
        %c0_52 = arith.constant 0 : index
        %c64_53 = arith.constant 64 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_52 to %c64_53 step %c1_54 {
          %c0_55 = arith.constant 0 : index
          %32 = memref.load %alloca_9[%c0_55] : memref<1xf32>
          %33 = memref.load %arg4[%arg9, %arg8] : memref<?x64xf32>
          %34 = arith.mulf %32, %33 : f32
          %c0_56 = arith.constant 0 : index
          %35 = memref.load %alloca_17[%c0_56] : memref<1xf32>
          %36 = memref.load %alloca_10[] : memref<f32>
          %37 = arith.mulf %35, %36 : f32
          %38 = arith.addf %34, %37 : f32
          %c0_57 = arith.constant 0 : index
          %39 = memref.load %alloca_14[%c0_57] : memref<1xf32>
          %40 = memref.load %alloca_3[] : memref<f32>
          %c0_58 = arith.constant 0 : index
          memref.store %40, %alloca_18[%c0_58] : memref<1xf32>
          %41 = arith.mulf %39, %40 : f32
          %42 = arith.addf %38, %41 : f32
          %c0_59 = arith.constant 0 : index
          %43 = memref.load %alloca_5[%c0_59] : memref<1xf32>
          %44 = memref.load %alloca_24[] : memref<f32>
          %45 = arith.mulf %43, %44 : f32
          %46 = arith.addf %42, %45 : f32
          memref.store %46, %arg5[%arg9, %arg8] : memref<?x64xf32>
          %47 = memref.load %arg5[%arg9, %arg8] : memref<?x64xf32>
          memref.store %47, %alloca_3[] : memref<f32>
          %c0_60 = arith.constant 0 : index
          %48 = memref.load %alloca_18[%c0_60] : memref<1xf32>
          memref.store %48, %alloca_24[] : memref<f32>
          %49 = memref.load %arg4[%arg9, %arg8] : memref<?x64xf32>
          memref.store %49, %alloca_10[] : memref<f32>
        }
      }
    }
    %c0_45 = arith.constant 0 : index
    %c64_46 = arith.constant 64 : index
    %c32_47 = arith.constant 32 : index
    scf.for %arg7 = %c0_45 to %c64_46 step %c32_47 {
      %c32_51 = arith.constant 32 : index
      %31 = arith.addi %arg7, %c32_51 : index
      %c1 = arith.constant 1 : index
      scf.for %arg8 = %arg7 to %31 step %c1 {
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_21[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        memref.store %cst, %alloca_8[] : memref<f32>
        %c0_52 = arith.constant 0 : index
        %c64_53 = arith.constant 64 : index
        %c1_54 = arith.constant 1 : index
        scf.for %arg9 = %c0_52 to %c64_53 step %c1_54 {
          %c0_55 = arith.constant 0 : index
          %32 = memref.load %alloca_11[%c0_55] : memref<1xf32>
          %33 = memref.load %alloca_8[] : memref<f32>
          %c0_56 = arith.constant 0 : index
          memref.store %33, %alloca_16[%c0_56] : memref<1xf32>
          %34 = arith.mulf %32, %33 : f32
          %c0_57 = arith.constant 0 : index
          %35 = memref.load %alloca_13[%c0_57] : memref<1xf32>
          %36 = memref.load %alloca_22[] : memref<f32>
          %37 = arith.mulf %35, %36 : f32
          %38 = arith.addf %34, %37 : f32
          %c0_58 = arith.constant 0 : index
          %39 = memref.load %alloca_14[%c0_58] : memref<1xf32>
          %40 = memref.load %alloca_21[] : memref<f32>
          %c0_59 = arith.constant 0 : index
          memref.store %40, %alloca_19[%c0_59] : memref<1xf32>
          %41 = arith.mulf %39, %40 : f32
          %42 = arith.addf %38, %41 : f32
          %c0_60 = arith.constant 0 : index
          %43 = memref.load %alloca_5[%c0_60] : memref<1xf32>
          %44 = memref.load %alloca_25[] : memref<f32>
          %45 = arith.mulf %43, %44 : f32
          %46 = arith.addf %42, %45 : f32
          %c-1 = arith.constant -1 : index
          %47 = arith.muli %arg9, %c-1 : index
          %c63 = arith.constant 63 : index
          %48 = arith.addi %47, %c63 : index
          memref.store %46, %arg6[%48, %arg8] : memref<?x64xf32>
          %c-1_61 = arith.constant -1 : index
          %49 = arith.muli %arg9, %c-1_61 : index
          %c63_62 = arith.constant 63 : index
          %50 = arith.addi %49, %c63_62 : index
          %51 = memref.load %arg6[%50, %arg8] : memref<?x64xf32>
          memref.store %51, %alloca_21[] : memref<f32>
          %c0_63 = arith.constant 0 : index
          %52 = memref.load %alloca_19[%c0_63] : memref<1xf32>
          memref.store %52, %alloca_25[] : memref<f32>
          %c-1_64 = arith.constant -1 : index
          %53 = arith.muli %arg9, %c-1_64 : index
          %c63_65 = arith.constant 63 : index
          %54 = arith.addi %53, %c63_65 : index
          %55 = memref.load %arg4[%54, %arg8] : memref<?x64xf32>
          memref.store %55, %alloca_8[] : memref<f32>
          %c0_66 = arith.constant 0 : index
          %56 = memref.load %alloca_16[%c0_66] : memref<1xf32>
          memref.store %56, %alloca_22[] : memref<f32>
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
            %31 = arith.addi %arg7, %c2_60 : index
            %c1 = arith.constant 1 : index
            scf.for %arg11 = %arg7 to %31 step %c1 {
              %c2_61 = arith.constant 2 : index
              %32 = arith.addi %arg8, %c2_61 : index
              %c1_62 = arith.constant 1 : index
              scf.for %arg12 = %arg8 to %32 step %c1_62 {
                %c32_63 = arith.constant 32 : index
                %33 = arith.addi %arg9, %c32_63 : index
                %c1_64 = arith.constant 1 : index
                scf.for %arg13 = %arg9 to %33 step %c1_64 {
                  %c32_65 = arith.constant 32 : index
                  %34 = arith.addi %arg10, %c32_65 : index
                  %c1_66 = arith.constant 1 : index
                  scf.for %arg14 = %arg10 to %34 step %c1_66 {
                    %c32_67 = arith.constant 32 : index
                    %35 = arith.muli %arg11, %c32_67 : index
                    %36 = arith.addi %35, %arg13 : index
                    %c32_68 = arith.constant 32 : index
                    %37 = arith.muli %arg12, %c32_68 : index
                    %38 = arith.addi %37, %arg14 : index
                    %39 = memref.load %arg5[%36, %38] : memref<?x64xf32>
                    %c32_69 = arith.constant 32 : index
                    %40 = arith.muli %arg11, %c32_69 : index
                    %41 = arith.addi %40, %arg13 : index
                    %c32_70 = arith.constant 32 : index
                    %42 = arith.muli %arg12, %c32_70 : index
                    %43 = arith.addi %42, %arg14 : index
                    %44 = memref.load %arg6[%41, %43] : memref<?x64xf32>
                    %45 = arith.addf %39, %44 : f32
                    %c32_71 = arith.constant 32 : index
                    %46 = arith.muli %arg11, %c32_71 : index
                    %47 = arith.addi %46, %arg13 : index
                    %c32_72 = arith.constant 32 : index
                    %48 = arith.muli %arg12, %c32_72 : index
                    %49 = arith.addi %48, %arg14 : index
                    memref.store %45, %arg4[%47, %49] : memref<?x64xf32>
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

