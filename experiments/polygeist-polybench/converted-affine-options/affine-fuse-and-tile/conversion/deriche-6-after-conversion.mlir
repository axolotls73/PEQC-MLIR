module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %c-32 = arith.constant -32 : index
    %c2 = arith.constant 2 : index
    %c63 = arith.constant 63 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c32 = arith.constant 32 : index
    %c64 = arith.constant 64 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = llvm.mlir.undef : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() : memref<1xf32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<f32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<1xf32>
    %alloca_10 = memref.alloca() : memref<f32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_13 = memref.alloca() : memref<1xf32>
    %alloca_14 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_15 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_16 = memref.alloca() : memref<1xf32>
    %alloca_17 = memref.alloca() : memref<1xf32>
    %alloca_18 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_19 = memref.alloca() : memref<1xf32>
    %alloca_20 = memref.alloca() : memref<1xf32>
    %alloca_21 = memref.alloca() : memref<f32>
    %alloca_22 = memref.alloca() : memref<f32>
    %alloca_23 = memref.alloca() : memref<f32>
    %alloca_24 = memref.alloca() : memref<f32>
    %alloca_25 = memref.alloca() : memref<f32>
    %1 = arith.mulf %arg2, %cst_2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.negf %2 : f32
    memref.store %3, %alloca_6[%c0] : memref<1xf32>
    %4 = arith.negf %arg2 : f32
    %5 = math.powf %cst_1, %4 : f32
    memref.store %5, %alloca_15[%c0] : memref<1xf32>
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
    memref.store %16, %alloca_11[%c0] : memref<1xf32>
    %17 = memref.load %alloca_11[%c0] : memref<1xf32>
    memref.store %17, %alloca_5[%c0] : memref<1xf32>
    %18 = arith.negf %arg2 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    memref.store %20, %alloca_8[%c0] : memref<1xf32>
    %21 = arith.subf %arg2, %cst_0 : f32
    %22 = arith.mulf %20, %21 : f32
    memref.store %22, %alloca_18[%c0] : memref<1xf32>
    %23 = memref.load %alloca_5[%c0] : memref<1xf32>
    %24 = arith.negf %23 : f32
    %25 = arith.mulf %arg2, %cst_2 : f32
    %26 = math.exp %25 : f32
    %27 = arith.mulf %24, %26 : f32
    memref.store %27, %alloca_14[%c0] : memref<1xf32>
    %28 = memref.load %alloca_8[%c0] : memref<1xf32>
    %29 = arith.addf %arg2, %cst_0 : f32
    %30 = arith.mulf %28, %29 : f32
    memref.store %30, %alloca_12[%c0] : memref<1xf32>
    memref.store %0, %alloca_24[] : memref<f32>
    memref.store %0, %alloca_7[] : memref<f32>
    memref.store %0, %alloca_4[] : memref<f32>
    memref.store %0, %alloca_25[] : memref<f32>
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %31 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %31 step %c1 {
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %32 = memref.load %alloca_11[%c0] : memref<1xf32>
          %33 = memref.load %arg3[%arg8, %arg9] : memref<?x64xf32>
          %34 = arith.mulf %32, %33 : f32
          %35 = memref.load %alloca_18[%c0] : memref<1xf32>
          %36 = memref.load %alloca_24[] : memref<f32>
          %37 = arith.mulf %35, %36 : f32
          %38 = arith.addf %34, %37 : f32
          %39 = memref.load %alloca_15[%c0] : memref<1xf32>
          %40 = memref.load %alloca_4[] : memref<f32>
          memref.store %40, %alloca_9[%c0] : memref<1xf32>
          %41 = arith.mulf %39, %40 : f32
          %42 = arith.addf %38, %41 : f32
          %43 = memref.load %alloca_6[%c0] : memref<1xf32>
          %44 = memref.load %alloca_25[] : memref<f32>
          %45 = arith.mulf %43, %44 : f32
          %46 = arith.addf %42, %45 : f32
          memref.store %46, %arg5[%arg8, %arg9] : memref<?x64xf32>
          %47 = memref.load %arg5[%arg8, %arg9] : memref<?x64xf32>
          memref.store %47, %alloca_4[] : memref<f32>
          %48 = memref.load %alloca_9[%c0] : memref<1xf32>
          memref.store %48, %alloca_25[] : memref<f32>
          %49 = memref.load %arg3[%arg8, %arg9] : memref<?x64xf32>
          memref.store %49, %alloca_24[] : memref<f32>
        }
      }
    }
    memref.store %0, %alloca_3[] : memref<f32>
    memref.store %0, %alloca_21[] : memref<f32>
    memref.store %0, %alloca_10[] : memref<f32>
    memref.store %0, %alloca_22[] : memref<f32>
    memref.store %0, %alloca_23[] : memref<f32>
    memref.store %0, %alloca[] : memref<f32>
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %31 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %31 step %c1 {
        memref.store %cst, %alloca_21[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_23[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %32 = memref.load %alloca_12[%c0] : memref<1xf32>
          %33 = memref.load %alloca_3[] : memref<f32>
          memref.store %33, %alloca_13[%c0] : memref<1xf32>
          %34 = arith.mulf %32, %33 : f32
          %35 = memref.load %alloca_14[%c0] : memref<1xf32>
          %36 = memref.load %alloca_21[] : memref<f32>
          %37 = arith.mulf %35, %36 : f32
          %38 = arith.addf %34, %37 : f32
          %39 = memref.load %alloca_15[%c0] : memref<1xf32>
          %40 = memref.load %alloca_23[] : memref<f32>
          memref.store %40, %alloca_16[%c0] : memref<1xf32>
          %41 = arith.mulf %39, %40 : f32
          %42 = arith.addf %38, %41 : f32
          %43 = memref.load %alloca_6[%c0] : memref<1xf32>
          %44 = memref.load %alloca[] : memref<f32>
          %45 = arith.mulf %43, %44 : f32
          %46 = arith.addf %42, %45 : f32
          %47 = arith.muli %arg9, %c-1 : index
          %48 = arith.addi %47, %c63 : index
          memref.store %46, %arg6[%arg8, %48] : memref<?x64xf32>
          %49 = arith.muli %arg9, %c-1 : index
          %50 = arith.addi %49, %c63 : index
          %51 = memref.load %arg6[%arg8, %50] : memref<?x64xf32>
          memref.store %51, %alloca_23[] : memref<f32>
          %52 = memref.load %alloca_16[%c0] : memref<1xf32>
          memref.store %52, %alloca[] : memref<f32>
          %53 = arith.muli %arg9, %c-1 : index
          %54 = arith.addi %53, %c63 : index
          %55 = memref.load %arg3[%arg8, %54] : memref<?x64xf32>
          memref.store %55, %alloca_3[] : memref<f32>
          %56 = memref.load %alloca_13[%c0] : memref<1xf32>
          memref.store %56, %alloca_21[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c32 {
      scf.for %arg8 = %c0 to %c2 step %c32 {
        scf.for %arg9 = %c0 to %c32 step %c32 {
          scf.for %arg10 = %c0 to %c32 step %c32 {
            %31 = arith.addi %arg7, %c2 : index
            scf.for %arg11 = %arg7 to %31 step %c1 {
              %32 = arith.addi %arg8, %c2 : index
              scf.for %arg12 = %arg8 to %32 step %c1 {
                %33 = arith.addi %arg9, %c32 : index
                scf.for %arg13 = %arg9 to %33 step %c1 {
                  %34 = arith.addi %arg10, %c32 : index
                  scf.for %arg14 = %arg10 to %34 step %c1 {
                    %35 = arith.muli %arg11, %c32 : index
                    %36 = arith.addi %35, %arg13 : index
                    memref.store %cst, %alloca_24[] : memref<f32>
                    memref.store %cst, %alloca_25[] : memref<f32>
                    memref.store %cst, %alloca_4[] : memref<f32>
                    %37 = arith.muli %arg12, %c32 : index
                    %38 = arith.addi %37, %arg14 : index
                    %39 = memref.load %alloca_11[%c0] : memref<1xf32>
                    %40 = memref.load %arg3[%36, %38] : memref<?x64xf32>
                    %41 = arith.mulf %39, %40 : f32
                    %42 = memref.load %alloca_18[%c0] : memref<1xf32>
                    %43 = memref.load %alloca_24[] : memref<f32>
                    %44 = arith.mulf %42, %43 : f32
                    %45 = arith.addf %41, %44 : f32
                    %46 = memref.load %alloca_15[%c0] : memref<1xf32>
                    %47 = memref.load %alloca_4[] : memref<f32>
                    memref.store %47, %alloca_9[%c0] : memref<1xf32>
                    %48 = arith.mulf %46, %47 : f32
                    %49 = arith.addf %45, %48 : f32
                    %50 = memref.load %alloca_6[%c0] : memref<1xf32>
                    %51 = memref.load %alloca_25[] : memref<f32>
                    %52 = arith.mulf %50, %51 : f32
                    %53 = arith.addf %49, %52 : f32
                    memref.store %53, %arg5[%36, %38] : memref<?x64xf32>
                    %54 = memref.load %arg5[%36, %38] : memref<?x64xf32>
                    memref.store %54, %alloca_4[] : memref<f32>
                    %55 = memref.load %alloca_9[%c0] : memref<1xf32>
                    memref.store %55, %alloca_25[] : memref<f32>
                    %56 = memref.load %arg3[%36, %38] : memref<?x64xf32>
                    memref.store %56, %alloca_24[] : memref<f32>
                    %57 = arith.muli %arg11, %c32 : index
                    %58 = arith.addi %57, %arg13 : index
                    memref.store %cst, %alloca_21[] : memref<f32>
                    memref.store %cst, %alloca_3[] : memref<f32>
                    memref.store %cst, %alloca[] : memref<f32>
                    memref.store %cst, %alloca_23[] : memref<f32>
                    %59 = arith.muli %arg12, %c-32 : index
                    %60 = arith.muli %arg14, %c-1 : index
                    %61 = arith.addi %59, %60 : index
                    %62 = arith.addi %61, %c63 : index
                    %63 = memref.load %alloca_12[%c0] : memref<1xf32>
                    %64 = memref.load %alloca_3[] : memref<f32>
                    memref.store %64, %alloca_13[%c0] : memref<1xf32>
                    %65 = arith.mulf %63, %64 : f32
                    %66 = memref.load %alloca_14[%c0] : memref<1xf32>
                    %67 = memref.load %alloca_21[] : memref<f32>
                    %68 = arith.mulf %66, %67 : f32
                    %69 = arith.addf %65, %68 : f32
                    %70 = memref.load %alloca_15[%c0] : memref<1xf32>
                    %71 = memref.load %alloca_23[] : memref<f32>
                    memref.store %71, %alloca_16[%c0] : memref<1xf32>
                    %72 = arith.mulf %70, %71 : f32
                    %73 = arith.addf %69, %72 : f32
                    %74 = memref.load %alloca_6[%c0] : memref<1xf32>
                    %75 = memref.load %alloca[] : memref<f32>
                    %76 = arith.mulf %74, %75 : f32
                    %77 = arith.addf %73, %76 : f32
                    %78 = arith.muli %62, %c-1 : index
                    %79 = arith.addi %78, %c63 : index
                    memref.store %77, %arg6[%58, %79] : memref<?x64xf32>
                    %80 = arith.muli %62, %c-1 : index
                    %81 = arith.addi %80, %c63 : index
                    %82 = memref.load %arg6[%58, %81] : memref<?x64xf32>
                    memref.store %82, %alloca_23[] : memref<f32>
                    %83 = memref.load %alloca_16[%c0] : memref<1xf32>
                    memref.store %83, %alloca[] : memref<f32>
                    %84 = arith.muli %62, %c-1 : index
                    %85 = arith.addi %84, %c63 : index
                    %86 = memref.load %arg3[%58, %85] : memref<?x64xf32>
                    memref.store %86, %alloca_3[] : memref<f32>
                    %87 = memref.load %alloca_13[%c0] : memref<1xf32>
                    memref.store %87, %alloca_21[] : memref<f32>
                    %88 = arith.muli %arg11, %c32 : index
                    %89 = arith.addi %88, %arg13 : index
                    %90 = arith.muli %arg12, %c32 : index
                    %91 = arith.addi %90, %arg14 : index
                    %92 = memref.load %arg5[%89, %91] : memref<?x64xf32>
                    %93 = arith.muli %arg11, %c32 : index
                    %94 = arith.addi %93, %arg13 : index
                    %95 = arith.muli %arg12, %c32 : index
                    %96 = arith.addi %95, %arg14 : index
                    %97 = memref.load %arg6[%94, %96] : memref<?x64xf32>
                    %98 = arith.addf %92, %97 : f32
                    %99 = arith.muli %arg11, %c32 : index
                    %100 = arith.addi %99, %arg13 : index
                    %101 = arith.muli %arg12, %c32 : index
                    %102 = arith.addi %101, %arg14 : index
                    memref.store %98, %arg4[%100, %102] : memref<?x64xf32>
                  }
                }
              }
            }
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %31 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %31 step %c1 {
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_7[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %32 = memref.load %alloca_11[%c0] : memref<1xf32>
          %33 = memref.load %arg4[%arg9, %arg8] : memref<?x64xf32>
          %34 = arith.mulf %32, %33 : f32
          %35 = memref.load %alloca_18[%c0] : memref<1xf32>
          %36 = memref.load %alloca_7[] : memref<f32>
          %37 = arith.mulf %35, %36 : f32
          %38 = arith.addf %34, %37 : f32
          %39 = memref.load %alloca_15[%c0] : memref<1xf32>
          %40 = memref.load %alloca_4[] : memref<f32>
          memref.store %40, %alloca_19[%c0] : memref<1xf32>
          %41 = arith.mulf %39, %40 : f32
          %42 = arith.addf %38, %41 : f32
          %43 = memref.load %alloca_6[%c0] : memref<1xf32>
          %44 = memref.load %alloca_25[] : memref<f32>
          %45 = arith.mulf %43, %44 : f32
          %46 = arith.addf %42, %45 : f32
          memref.store %46, %arg5[%arg9, %arg8] : memref<?x64xf32>
          %47 = memref.load %arg5[%arg9, %arg8] : memref<?x64xf32>
          memref.store %47, %alloca_4[] : memref<f32>
          %48 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %48, %alloca_25[] : memref<f32>
          %49 = memref.load %arg4[%arg9, %arg8] : memref<?x64xf32>
          memref.store %49, %alloca_7[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %31 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %31 step %c1 {
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_23[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        memref.store %cst, %alloca_10[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %32 = memref.load %alloca_12[%c0] : memref<1xf32>
          %33 = memref.load %alloca_10[] : memref<f32>
          memref.store %33, %alloca_17[%c0] : memref<1xf32>
          %34 = arith.mulf %32, %33 : f32
          %35 = memref.load %alloca_14[%c0] : memref<1xf32>
          %36 = memref.load %alloca_22[] : memref<f32>
          %37 = arith.mulf %35, %36 : f32
          %38 = arith.addf %34, %37 : f32
          %39 = memref.load %alloca_15[%c0] : memref<1xf32>
          %40 = memref.load %alloca_23[] : memref<f32>
          memref.store %40, %alloca_20[%c0] : memref<1xf32>
          %41 = arith.mulf %39, %40 : f32
          %42 = arith.addf %38, %41 : f32
          %43 = memref.load %alloca_6[%c0] : memref<1xf32>
          %44 = memref.load %alloca[] : memref<f32>
          %45 = arith.mulf %43, %44 : f32
          %46 = arith.addf %42, %45 : f32
          %47 = arith.muli %arg9, %c-1 : index
          %48 = arith.addi %47, %c63 : index
          memref.store %46, %arg6[%48, %arg8] : memref<?x64xf32>
          %49 = arith.muli %arg9, %c-1 : index
          %50 = arith.addi %49, %c63 : index
          %51 = memref.load %arg6[%50, %arg8] : memref<?x64xf32>
          memref.store %51, %alloca_23[] : memref<f32>
          %52 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %52, %alloca[] : memref<f32>
          %53 = arith.muli %arg9, %c-1 : index
          %54 = arith.addi %53, %c63 : index
          %55 = memref.load %arg4[%54, %arg8] : memref<?x64xf32>
          memref.store %55, %alloca_10[] : memref<f32>
          %56 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %56, %alloca_22[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c32 {
      scf.for %arg8 = %c0 to %c2 step %c32 {
        scf.for %arg9 = %c0 to %c32 step %c32 {
          scf.for %arg10 = %c0 to %c32 step %c32 {
            %31 = arith.addi %arg7, %c2 : index
            scf.for %arg11 = %arg7 to %31 step %c1 {
              %32 = arith.addi %arg8, %c2 : index
              scf.for %arg12 = %arg8 to %32 step %c1 {
                %33 = arith.addi %arg9, %c32 : index
                scf.for %arg13 = %arg9 to %33 step %c1 {
                  %34 = arith.addi %arg10, %c32 : index
                  scf.for %arg14 = %arg10 to %34 step %c1 {
                    %35 = arith.muli %arg12, %c32 : index
                    %36 = arith.addi %35, %arg14 : index
                    memref.store %cst, %alloca_25[] : memref<f32>
                    memref.store %cst, %alloca_4[] : memref<f32>
                    memref.store %cst, %alloca_7[] : memref<f32>
                    %37 = arith.muli %arg11, %c32 : index
                    %38 = arith.addi %37, %arg13 : index
                    %39 = memref.load %alloca_11[%c0] : memref<1xf32>
                    %40 = memref.load %arg4[%38, %36] : memref<?x64xf32>
                    %41 = arith.mulf %39, %40 : f32
                    %42 = memref.load %alloca_18[%c0] : memref<1xf32>
                    %43 = memref.load %alloca_7[] : memref<f32>
                    %44 = arith.mulf %42, %43 : f32
                    %45 = arith.addf %41, %44 : f32
                    %46 = memref.load %alloca_15[%c0] : memref<1xf32>
                    %47 = memref.load %alloca_4[] : memref<f32>
                    memref.store %47, %alloca_19[%c0] : memref<1xf32>
                    %48 = arith.mulf %46, %47 : f32
                    %49 = arith.addf %45, %48 : f32
                    %50 = memref.load %alloca_6[%c0] : memref<1xf32>
                    %51 = memref.load %alloca_25[] : memref<f32>
                    %52 = arith.mulf %50, %51 : f32
                    %53 = arith.addf %49, %52 : f32
                    memref.store %53, %arg5[%38, %36] : memref<?x64xf32>
                    %54 = memref.load %arg5[%38, %36] : memref<?x64xf32>
                    memref.store %54, %alloca_4[] : memref<f32>
                    %55 = memref.load %alloca_19[%c0] : memref<1xf32>
                    memref.store %55, %alloca_25[] : memref<f32>
                    %56 = memref.load %arg4[%38, %36] : memref<?x64xf32>
                    memref.store %56, %alloca_7[] : memref<f32>
                    %57 = arith.muli %arg12, %c32 : index
                    %58 = arith.addi %57, %arg14 : index
                    memref.store %cst, %alloca[] : memref<f32>
                    memref.store %cst, %alloca_23[] : memref<f32>
                    memref.store %cst, %alloca_22[] : memref<f32>
                    memref.store %cst, %alloca_10[] : memref<f32>
                    %59 = arith.muli %arg11, %c-32 : index
                    %60 = arith.muli %arg13, %c-1 : index
                    %61 = arith.addi %59, %60 : index
                    %62 = arith.addi %61, %c63 : index
                    %63 = memref.load %alloca_12[%c0] : memref<1xf32>
                    %64 = memref.load %alloca_10[] : memref<f32>
                    memref.store %64, %alloca_17[%c0] : memref<1xf32>
                    %65 = arith.mulf %63, %64 : f32
                    %66 = memref.load %alloca_14[%c0] : memref<1xf32>
                    %67 = memref.load %alloca_22[] : memref<f32>
                    %68 = arith.mulf %66, %67 : f32
                    %69 = arith.addf %65, %68 : f32
                    %70 = memref.load %alloca_15[%c0] : memref<1xf32>
                    %71 = memref.load %alloca_23[] : memref<f32>
                    memref.store %71, %alloca_20[%c0] : memref<1xf32>
                    %72 = arith.mulf %70, %71 : f32
                    %73 = arith.addf %69, %72 : f32
                    %74 = memref.load %alloca_6[%c0] : memref<1xf32>
                    %75 = memref.load %alloca[] : memref<f32>
                    %76 = arith.mulf %74, %75 : f32
                    %77 = arith.addf %73, %76 : f32
                    %78 = arith.muli %62, %c-1 : index
                    %79 = arith.addi %78, %c63 : index
                    memref.store %77, %arg6[%79, %58] : memref<?x64xf32>
                    %80 = arith.muli %62, %c-1 : index
                    %81 = arith.addi %80, %c63 : index
                    %82 = memref.load %arg6[%81, %58] : memref<?x64xf32>
                    memref.store %82, %alloca_23[] : memref<f32>
                    %83 = memref.load %alloca_20[%c0] : memref<1xf32>
                    memref.store %83, %alloca[] : memref<f32>
                    %84 = arith.muli %62, %c-1 : index
                    %85 = arith.addi %84, %c63 : index
                    %86 = memref.load %arg4[%85, %58] : memref<?x64xf32>
                    memref.store %86, %alloca_10[] : memref<f32>
                    %87 = memref.load %alloca_17[%c0] : memref<1xf32>
                    memref.store %87, %alloca_22[] : memref<f32>
                    %88 = arith.muli %arg11, %c32 : index
                    %89 = arith.addi %88, %arg13 : index
                    %90 = arith.muli %arg12, %c32 : index
                    %91 = arith.addi %90, %arg14 : index
                    %92 = memref.load %arg5[%89, %91] : memref<?x64xf32>
                    %93 = arith.muli %arg11, %c32 : index
                    %94 = arith.addi %93, %arg13 : index
                    %95 = arith.muli %arg12, %c32 : index
                    %96 = arith.addi %95, %arg14 : index
                    %97 = memref.load %arg6[%94, %96] : memref<?x64xf32>
                    %98 = arith.addf %92, %97 : f32
                    %99 = arith.muli %arg11, %c32 : index
                    %100 = arith.addi %99, %arg13 : index
                    %101 = arith.muli %arg12, %c32 : index
                    %102 = arith.addi %101, %arg14 : index
                    memref.store %98, %arg4[%100, %102] : memref<?x64xf32>
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

