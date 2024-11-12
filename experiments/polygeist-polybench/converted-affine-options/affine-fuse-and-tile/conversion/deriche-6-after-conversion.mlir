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
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() : memref<1xf32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<f32>
    %alloca_10 = memref.alloca() : memref<f32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_13 = memref.alloca() : memref<1xf32>
    %alloca_14 = memref.alloca() {scop.scratchpad} : memref<1xf32>
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
    memref.store %2, %alloca_6[%c0] : memref<1xf32>
    %3 = arith.negf %arg2 : f32
    %4 = math.powf %cst_1, %3 : f32
    memref.store %4, %alloca_15[%c0] : memref<1xf32>
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
    memref.store %15, %alloca_11[%c0] : memref<1xf32>
    %16 = memref.load %alloca_11[%c0] : memref<1xf32>
    memref.store %16, %alloca_5[%c0] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    memref.store %19, %alloca_8[%c0] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    memref.store %21, %alloca_16[%c0] : memref<1xf32>
    %22 = memref.load %alloca_5[%c0] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    memref.store %26, %alloca_14[%c0] : memref<1xf32>
    %27 = memref.load %alloca_8[%c0] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    memref.store %29, %alloca_12[%c0] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    memref.store %30, %alloca_24[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_9[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_4[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_25[] : memref<f32>
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %40 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %40 step %c1 {
        memref.store %cst, %alloca_24[] : memref<f32>
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %41 = memref.load %alloca_11[%c0] : memref<1xf32>
          %42 = memref.load %arg3[%arg8, %arg9] : memref<?x64xf32>
          %43 = arith.mulf %41, %42 : f32
          %44 = memref.load %alloca_16[%c0] : memref<1xf32>
          %45 = memref.load %alloca_24[] : memref<f32>
          %46 = arith.mulf %44, %45 : f32
          %47 = arith.addf %43, %46 : f32
          %48 = memref.load %alloca_15[%c0] : memref<1xf32>
          %49 = memref.load %alloca_4[] : memref<f32>
          memref.store %49, %alloca_7[%c0] : memref<1xf32>
          %50 = arith.mulf %48, %49 : f32
          %51 = arith.addf %47, %50 : f32
          %52 = memref.load %alloca_6[%c0] : memref<1xf32>
          %53 = memref.load %alloca_25[] : memref<f32>
          %54 = arith.mulf %52, %53 : f32
          %55 = arith.addf %51, %54 : f32
          memref.store %55, %arg5[%arg8, %arg9] : memref<?x64xf32>
          %56 = memref.load %arg5[%arg8, %arg9] : memref<?x64xf32>
          memref.store %56, %alloca_4[] : memref<f32>
          %57 = memref.load %alloca_7[%c0] : memref<1xf32>
          memref.store %57, %alloca_25[] : memref<f32>
          %58 = memref.load %arg3[%arg8, %arg9] : memref<?x64xf32>
          memref.store %58, %alloca_24[] : memref<f32>
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
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %40 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %40 step %c1 {
        memref.store %cst, %alloca_21[] : memref<f32>
        memref.store %cst, %alloca_3[] : memref<f32>
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_23[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %41 = memref.load %alloca_12[%c0] : memref<1xf32>
          %42 = memref.load %alloca_3[] : memref<f32>
          memref.store %42, %alloca_13[%c0] : memref<1xf32>
          %43 = arith.mulf %41, %42 : f32
          %44 = memref.load %alloca_14[%c0] : memref<1xf32>
          %45 = memref.load %alloca_21[] : memref<f32>
          %46 = arith.mulf %44, %45 : f32
          %47 = arith.addf %43, %46 : f32
          %48 = memref.load %alloca_15[%c0] : memref<1xf32>
          %49 = memref.load %alloca_23[] : memref<f32>
          memref.store %49, %alloca_18[%c0] : memref<1xf32>
          %50 = arith.mulf %48, %49 : f32
          %51 = arith.addf %47, %50 : f32
          %52 = memref.load %alloca_6[%c0] : memref<1xf32>
          %53 = memref.load %alloca[] : memref<f32>
          %54 = arith.mulf %52, %53 : f32
          %55 = arith.addf %51, %54 : f32
          %56 = arith.muli %arg9, %c-1 : index
          %57 = arith.addi %56, %c63 : index
          memref.store %55, %arg6[%arg8, %57] : memref<?x64xf32>
          %58 = arith.muli %arg9, %c-1 : index
          %59 = arith.addi %58, %c63 : index
          %60 = memref.load %arg6[%arg8, %59] : memref<?x64xf32>
          memref.store %60, %alloca_23[] : memref<f32>
          %61 = memref.load %alloca_18[%c0] : memref<1xf32>
          memref.store %61, %alloca[] : memref<f32>
          %62 = arith.muli %arg9, %c-1 : index
          %63 = arith.addi %62, %c63 : index
          %64 = memref.load %arg3[%arg8, %63] : memref<?x64xf32>
          memref.store %64, %alloca_3[] : memref<f32>
          %65 = memref.load %alloca_13[%c0] : memref<1xf32>
          memref.store %65, %alloca_21[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c32 {
      scf.for %arg8 = %c0 to %c2 step %c32 {
        scf.for %arg9 = %c0 to %c32 step %c32 {
          scf.for %arg10 = %c0 to %c32 step %c32 {
            %40 = arith.addi %arg7, %c2 : index
            scf.for %arg11 = %arg7 to %40 step %c1 {
              %41 = arith.addi %arg8, %c2 : index
              scf.for %arg12 = %arg8 to %41 step %c1 {
                %42 = arith.addi %arg9, %c32 : index
                scf.for %arg13 = %arg9 to %42 step %c1 {
                  %43 = arith.addi %arg10, %c32 : index
                  scf.for %arg14 = %arg10 to %43 step %c1 {
                    %44 = arith.muli %arg11, %c32 : index
                    %45 = arith.addi %44, %arg13 : index
                    memref.store %cst, %alloca_24[] : memref<f32>
                    memref.store %cst, %alloca_25[] : memref<f32>
                    memref.store %cst, %alloca_4[] : memref<f32>
                    %46 = arith.muli %arg12, %c32 : index
                    %47 = arith.addi %46, %arg14 : index
                    %48 = memref.load %alloca_11[%c0] : memref<1xf32>
                    %49 = memref.load %arg3[%45, %47] : memref<?x64xf32>
                    %50 = arith.mulf %48, %49 : f32
                    %51 = memref.load %alloca_16[%c0] : memref<1xf32>
                    %52 = memref.load %alloca_24[] : memref<f32>
                    %53 = arith.mulf %51, %52 : f32
                    %54 = arith.addf %50, %53 : f32
                    %55 = memref.load %alloca_15[%c0] : memref<1xf32>
                    %56 = memref.load %alloca_4[] : memref<f32>
                    memref.store %56, %alloca_7[%c0] : memref<1xf32>
                    %57 = arith.mulf %55, %56 : f32
                    %58 = arith.addf %54, %57 : f32
                    %59 = memref.load %alloca_6[%c0] : memref<1xf32>
                    %60 = memref.load %alloca_25[] : memref<f32>
                    %61 = arith.mulf %59, %60 : f32
                    %62 = arith.addf %58, %61 : f32
                    memref.store %62, %arg5[%45, %47] : memref<?x64xf32>
                    %63 = memref.load %arg5[%45, %47] : memref<?x64xf32>
                    memref.store %63, %alloca_4[] : memref<f32>
                    %64 = memref.load %alloca_7[%c0] : memref<1xf32>
                    memref.store %64, %alloca_25[] : memref<f32>
                    %65 = memref.load %arg3[%45, %47] : memref<?x64xf32>
                    memref.store %65, %alloca_24[] : memref<f32>
                    %66 = arith.muli %arg11, %c32 : index
                    %67 = arith.addi %66, %arg13 : index
                    memref.store %cst, %alloca_21[] : memref<f32>
                    memref.store %cst, %alloca_3[] : memref<f32>
                    memref.store %cst, %alloca[] : memref<f32>
                    memref.store %cst, %alloca_23[] : memref<f32>
                    %68 = arith.muli %arg12, %c-32 : index
                    %69 = arith.muli %arg14, %c-1 : index
                    %70 = arith.addi %68, %69 : index
                    %71 = arith.addi %70, %c63 : index
                    %72 = memref.load %alloca_12[%c0] : memref<1xf32>
                    %73 = memref.load %alloca_3[] : memref<f32>
                    memref.store %73, %alloca_13[%c0] : memref<1xf32>
                    %74 = arith.mulf %72, %73 : f32
                    %75 = memref.load %alloca_14[%c0] : memref<1xf32>
                    %76 = memref.load %alloca_21[] : memref<f32>
                    %77 = arith.mulf %75, %76 : f32
                    %78 = arith.addf %74, %77 : f32
                    %79 = memref.load %alloca_15[%c0] : memref<1xf32>
                    %80 = memref.load %alloca_23[] : memref<f32>
                    memref.store %80, %alloca_18[%c0] : memref<1xf32>
                    %81 = arith.mulf %79, %80 : f32
                    %82 = arith.addf %78, %81 : f32
                    %83 = memref.load %alloca_6[%c0] : memref<1xf32>
                    %84 = memref.load %alloca[] : memref<f32>
                    %85 = arith.mulf %83, %84 : f32
                    %86 = arith.addf %82, %85 : f32
                    %87 = arith.muli %71, %c-1 : index
                    %88 = arith.addi %87, %c63 : index
                    memref.store %86, %arg6[%67, %88] : memref<?x64xf32>
                    %89 = arith.muli %71, %c-1 : index
                    %90 = arith.addi %89, %c63 : index
                    %91 = memref.load %arg6[%67, %90] : memref<?x64xf32>
                    memref.store %91, %alloca_23[] : memref<f32>
                    %92 = memref.load %alloca_18[%c0] : memref<1xf32>
                    memref.store %92, %alloca[] : memref<f32>
                    %93 = arith.muli %71, %c-1 : index
                    %94 = arith.addi %93, %c63 : index
                    %95 = memref.load %arg3[%67, %94] : memref<?x64xf32>
                    memref.store %95, %alloca_3[] : memref<f32>
                    %96 = memref.load %alloca_13[%c0] : memref<1xf32>
                    memref.store %96, %alloca_21[] : memref<f32>
                    %97 = arith.muli %arg11, %c32 : index
                    %98 = arith.addi %97, %arg13 : index
                    %99 = arith.muli %arg12, %c32 : index
                    %100 = arith.addi %99, %arg14 : index
                    %101 = memref.load %arg5[%98, %100] : memref<?x64xf32>
                    %102 = arith.muli %arg11, %c32 : index
                    %103 = arith.addi %102, %arg13 : index
                    %104 = arith.muli %arg12, %c32 : index
                    %105 = arith.addi %104, %arg14 : index
                    %106 = memref.load %arg6[%103, %105] : memref<?x64xf32>
                    %107 = arith.addf %101, %106 : f32
                    %108 = arith.muli %arg11, %c32 : index
                    %109 = arith.addi %108, %arg13 : index
                    %110 = arith.muli %arg12, %c32 : index
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
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %40 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %40 step %c1 {
        memref.store %cst, %alloca_25[] : memref<f32>
        memref.store %cst, %alloca_4[] : memref<f32>
        memref.store %cst, %alloca_9[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %41 = memref.load %alloca_11[%c0] : memref<1xf32>
          %42 = memref.load %arg4[%arg9, %arg8] : memref<?x64xf32>
          %43 = arith.mulf %41, %42 : f32
          %44 = memref.load %alloca_16[%c0] : memref<1xf32>
          %45 = memref.load %alloca_9[] : memref<f32>
          %46 = arith.mulf %44, %45 : f32
          %47 = arith.addf %43, %46 : f32
          %48 = memref.load %alloca_15[%c0] : memref<1xf32>
          %49 = memref.load %alloca_4[] : memref<f32>
          memref.store %49, %alloca_19[%c0] : memref<1xf32>
          %50 = arith.mulf %48, %49 : f32
          %51 = arith.addf %47, %50 : f32
          %52 = memref.load %alloca_6[%c0] : memref<1xf32>
          %53 = memref.load %alloca_25[] : memref<f32>
          %54 = arith.mulf %52, %53 : f32
          %55 = arith.addf %51, %54 : f32
          memref.store %55, %arg5[%arg9, %arg8] : memref<?x64xf32>
          %56 = memref.load %arg5[%arg9, %arg8] : memref<?x64xf32>
          memref.store %56, %alloca_4[] : memref<f32>
          %57 = memref.load %alloca_19[%c0] : memref<1xf32>
          memref.store %57, %alloca_25[] : memref<f32>
          %58 = memref.load %arg4[%arg9, %arg8] : memref<?x64xf32>
          memref.store %58, %alloca_9[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c32 {
      %40 = arith.addi %arg7, %c32 : index
      scf.for %arg8 = %arg7 to %40 step %c1 {
        memref.store %cst, %alloca[] : memref<f32>
        memref.store %cst, %alloca_23[] : memref<f32>
        memref.store %cst, %alloca_22[] : memref<f32>
        memref.store %cst, %alloca_10[] : memref<f32>
        scf.for %arg9 = %c0 to %c64 step %c1 {
          %41 = memref.load %alloca_12[%c0] : memref<1xf32>
          %42 = memref.load %alloca_10[] : memref<f32>
          memref.store %42, %alloca_17[%c0] : memref<1xf32>
          %43 = arith.mulf %41, %42 : f32
          %44 = memref.load %alloca_14[%c0] : memref<1xf32>
          %45 = memref.load %alloca_22[] : memref<f32>
          %46 = arith.mulf %44, %45 : f32
          %47 = arith.addf %43, %46 : f32
          %48 = memref.load %alloca_15[%c0] : memref<1xf32>
          %49 = memref.load %alloca_23[] : memref<f32>
          memref.store %49, %alloca_20[%c0] : memref<1xf32>
          %50 = arith.mulf %48, %49 : f32
          %51 = arith.addf %47, %50 : f32
          %52 = memref.load %alloca_6[%c0] : memref<1xf32>
          %53 = memref.load %alloca[] : memref<f32>
          %54 = arith.mulf %52, %53 : f32
          %55 = arith.addf %51, %54 : f32
          %56 = arith.muli %arg9, %c-1 : index
          %57 = arith.addi %56, %c63 : index
          memref.store %55, %arg6[%57, %arg8] : memref<?x64xf32>
          %58 = arith.muli %arg9, %c-1 : index
          %59 = arith.addi %58, %c63 : index
          %60 = memref.load %arg6[%59, %arg8] : memref<?x64xf32>
          memref.store %60, %alloca_23[] : memref<f32>
          %61 = memref.load %alloca_20[%c0] : memref<1xf32>
          memref.store %61, %alloca[] : memref<f32>
          %62 = arith.muli %arg9, %c-1 : index
          %63 = arith.addi %62, %c63 : index
          %64 = memref.load %arg4[%63, %arg8] : memref<?x64xf32>
          memref.store %64, %alloca_10[] : memref<f32>
          %65 = memref.load %alloca_17[%c0] : memref<1xf32>
          memref.store %65, %alloca_22[] : memref<f32>
        }
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c32 {
      scf.for %arg8 = %c0 to %c2 step %c32 {
        scf.for %arg9 = %c0 to %c32 step %c32 {
          scf.for %arg10 = %c0 to %c32 step %c32 {
            %40 = arith.addi %arg7, %c2 : index
            scf.for %arg11 = %arg7 to %40 step %c1 {
              %41 = arith.addi %arg8, %c2 : index
              scf.for %arg12 = %arg8 to %41 step %c1 {
                %42 = arith.addi %arg9, %c32 : index
                scf.for %arg13 = %arg9 to %42 step %c1 {
                  %43 = arith.addi %arg10, %c32 : index
                  scf.for %arg14 = %arg10 to %43 step %c1 {
                    %44 = arith.muli %arg12, %c32 : index
                    %45 = arith.addi %44, %arg14 : index
                    memref.store %cst, %alloca_25[] : memref<f32>
                    memref.store %cst, %alloca_4[] : memref<f32>
                    memref.store %cst, %alloca_9[] : memref<f32>
                    %46 = arith.muli %arg11, %c32 : index
                    %47 = arith.addi %46, %arg13 : index
                    %48 = memref.load %alloca_11[%c0] : memref<1xf32>
                    %49 = memref.load %arg4[%47, %45] : memref<?x64xf32>
                    %50 = arith.mulf %48, %49 : f32
                    %51 = memref.load %alloca_16[%c0] : memref<1xf32>
                    %52 = memref.load %alloca_9[] : memref<f32>
                    %53 = arith.mulf %51, %52 : f32
                    %54 = arith.addf %50, %53 : f32
                    %55 = memref.load %alloca_15[%c0] : memref<1xf32>
                    %56 = memref.load %alloca_4[] : memref<f32>
                    memref.store %56, %alloca_19[%c0] : memref<1xf32>
                    %57 = arith.mulf %55, %56 : f32
                    %58 = arith.addf %54, %57 : f32
                    %59 = memref.load %alloca_6[%c0] : memref<1xf32>
                    %60 = memref.load %alloca_25[] : memref<f32>
                    %61 = arith.mulf %59, %60 : f32
                    %62 = arith.addf %58, %61 : f32
                    memref.store %62, %arg5[%47, %45] : memref<?x64xf32>
                    %63 = memref.load %arg5[%47, %45] : memref<?x64xf32>
                    memref.store %63, %alloca_4[] : memref<f32>
                    %64 = memref.load %alloca_19[%c0] : memref<1xf32>
                    memref.store %64, %alloca_25[] : memref<f32>
                    %65 = memref.load %arg4[%47, %45] : memref<?x64xf32>
                    memref.store %65, %alloca_9[] : memref<f32>
                    %66 = arith.muli %arg12, %c32 : index
                    %67 = arith.addi %66, %arg14 : index
                    memref.store %cst, %alloca[] : memref<f32>
                    memref.store %cst, %alloca_23[] : memref<f32>
                    memref.store %cst, %alloca_22[] : memref<f32>
                    memref.store %cst, %alloca_10[] : memref<f32>
                    %68 = arith.muli %arg11, %c-32 : index
                    %69 = arith.muli %arg13, %c-1 : index
                    %70 = arith.addi %68, %69 : index
                    %71 = arith.addi %70, %c63 : index
                    %72 = memref.load %alloca_12[%c0] : memref<1xf32>
                    %73 = memref.load %alloca_10[] : memref<f32>
                    memref.store %73, %alloca_17[%c0] : memref<1xf32>
                    %74 = arith.mulf %72, %73 : f32
                    %75 = memref.load %alloca_14[%c0] : memref<1xf32>
                    %76 = memref.load %alloca_22[] : memref<f32>
                    %77 = arith.mulf %75, %76 : f32
                    %78 = arith.addf %74, %77 : f32
                    %79 = memref.load %alloca_15[%c0] : memref<1xf32>
                    %80 = memref.load %alloca_23[] : memref<f32>
                    memref.store %80, %alloca_20[%c0] : memref<1xf32>
                    %81 = arith.mulf %79, %80 : f32
                    %82 = arith.addf %78, %81 : f32
                    %83 = memref.load %alloca_6[%c0] : memref<1xf32>
                    %84 = memref.load %alloca[] : memref<f32>
                    %85 = arith.mulf %83, %84 : f32
                    %86 = arith.addf %82, %85 : f32
                    %87 = arith.muli %71, %c-1 : index
                    %88 = arith.addi %87, %c63 : index
                    memref.store %86, %arg6[%88, %67] : memref<?x64xf32>
                    %89 = arith.muli %71, %c-1 : index
                    %90 = arith.addi %89, %c63 : index
                    %91 = memref.load %arg6[%90, %67] : memref<?x64xf32>
                    memref.store %91, %alloca_23[] : memref<f32>
                    %92 = memref.load %alloca_20[%c0] : memref<1xf32>
                    memref.store %92, %alloca[] : memref<f32>
                    %93 = arith.muli %71, %c-1 : index
                    %94 = arith.addi %93, %c63 : index
                    %95 = memref.load %arg4[%94, %67] : memref<?x64xf32>
                    memref.store %95, %alloca_10[] : memref<f32>
                    %96 = memref.load %alloca_17[%c0] : memref<1xf32>
                    memref.store %96, %alloca_22[] : memref<f32>
                    %97 = arith.muli %arg11, %c32 : index
                    %98 = arith.addi %97, %arg13 : index
                    %99 = arith.muli %arg12, %c32 : index
                    %100 = arith.addi %99, %arg14 : index
                    %101 = memref.load %arg5[%98, %100] : memref<?x64xf32>
                    %102 = arith.muli %arg11, %c32 : index
                    %103 = arith.addi %102, %arg13 : index
                    %104 = arith.muli %arg12, %c32 : index
                    %105 = arith.addi %104, %arg14 : index
                    %106 = memref.load %arg6[%103, %105] : memref<?x64xf32>
                    %107 = arith.addf %101, %106 : f32
                    %108 = arith.muli %arg11, %c32 : index
                    %109 = arith.addi %108, %arg13 : index
                    %110 = arith.muli %arg12, %c32 : index
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

