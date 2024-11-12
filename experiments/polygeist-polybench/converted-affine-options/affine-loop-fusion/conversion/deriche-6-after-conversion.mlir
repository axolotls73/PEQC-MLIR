module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %c32 = arith.constant 32 : index
    %c2 = arith.constant 2 : index
    %c63 = arith.constant 63 : index
    %c-1 = arith.constant -1 : index
    %c1 = arith.constant 1 : index
    %c64 = arith.constant 64 : index
    %c0 = arith.constant 0 : index
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
    %alloca_13 = memref.alloca() : memref<f32>
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
    %alloca_25 = memref.alloca() : memref<1xf32>
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
    memref.store %16, %alloca_25[%c0] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    memref.store %19, %alloca_8[%c0] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    memref.store %21, %alloca_16[%c0] : memref<1xf32>
    %22 = memref.load %alloca_25[%c0] : memref<1xf32>
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
    memref.store %30, %alloca_5[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    memref.store %31, %alloca_13[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    memref.store %32, %alloca_4[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    memref.store %33, %alloca_24[] : memref<f32>
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_5[] : memref<f32>
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_4[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %40 = memref.load %alloca_11[%c0] : memref<1xf32>
        %41 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %42 = arith.mulf %40, %41 : f32
        %43 = memref.load %alloca_16[%c0] : memref<1xf32>
        %44 = memref.load %alloca_5[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %47 = memref.load %alloca_15[%c0] : memref<1xf32>
        %48 = memref.load %alloca_4[] : memref<f32>
        memref.store %48, %alloca_9[%c0] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = memref.load %alloca_6[%c0] : memref<1xf32>
        %52 = memref.load %alloca_24[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        memref.store %54, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %55 = memref.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        memref.store %55, %alloca_4[] : memref<f32>
        %56 = memref.load %alloca_9[%c0] : memref<1xf32>
        memref.store %56, %alloca_24[] : memref<f32>
        %57 = memref.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        memref.store %57, %alloca_5[] : memref<f32>
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
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_21[] : memref<f32>
      memref.store %cst, %alloca_3[] : memref<f32>
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_23[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %40 = memref.load %alloca_12[%c0] : memref<1xf32>
        %41 = memref.load %alloca_3[] : memref<f32>
        memref.store %41, %alloca_7[%c0] : memref<1xf32>
        %42 = arith.mulf %40, %41 : f32
        %43 = memref.load %alloca_14[%c0] : memref<1xf32>
        %44 = memref.load %alloca_21[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %47 = memref.load %alloca_15[%c0] : memref<1xf32>
        %48 = memref.load %alloca_23[] : memref<f32>
        memref.store %48, %alloca_18[%c0] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = memref.load %alloca_6[%c0] : memref<1xf32>
        %52 = memref.load %alloca[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        %55 = arith.muli %arg8, %c-1 : index
        %56 = arith.addi %55, %c63 : index
        memref.store %54, %arg6[%arg7, %56] : memref<?x64xf32>
        %57 = arith.muli %arg8, %c-1 : index
        %58 = arith.addi %57, %c63 : index
        %59 = memref.load %arg6[%arg7, %58] : memref<?x64xf32>
        memref.store %59, %alloca_23[] : memref<f32>
        %60 = memref.load %alloca_18[%c0] : memref<1xf32>
        memref.store %60, %alloca[] : memref<f32>
        %61 = arith.muli %arg8, %c-1 : index
        %62 = arith.addi %61, %c63 : index
        %63 = memref.load %arg3[%arg7, %62] : memref<?x64xf32>
        memref.store %63, %alloca_3[] : memref<f32>
        %64 = memref.load %alloca_7[%c0] : memref<1xf32>
        memref.store %64, %alloca_21[] : memref<f32>
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c2 step %c1 {
        %40 = arith.muli %arg7, %c32 : index
        %41 = arith.muli %arg7, %c32 : index
        %42 = arith.addi %41, %c32 : index
        scf.for %arg9 = %40 to %42 step %c1 {
          %43 = arith.muli %arg8, %c32 : index
          %44 = arith.muli %arg8, %c32 : index
          %45 = arith.addi %44, %c32 : index
          scf.for %arg10 = %43 to %45 step %c1 {
            memref.store %cst, %alloca_5[] : memref<f32>
            memref.store %cst, %alloca_24[] : memref<f32>
            memref.store %cst, %alloca_4[] : memref<f32>
            %46 = memref.load %alloca_11[%c0] : memref<1xf32>
            %47 = memref.load %arg3[%arg9, %arg10] : memref<?x64xf32>
            %48 = arith.mulf %46, %47 : f32
            %49 = memref.load %alloca_16[%c0] : memref<1xf32>
            %50 = memref.load %alloca_5[] : memref<f32>
            %51 = arith.mulf %49, %50 : f32
            %52 = arith.addf %48, %51 : f32
            %53 = memref.load %alloca_15[%c0] : memref<1xf32>
            %54 = memref.load %alloca_4[] : memref<f32>
            memref.store %54, %alloca_9[%c0] : memref<1xf32>
            %55 = arith.mulf %53, %54 : f32
            %56 = arith.addf %52, %55 : f32
            %57 = memref.load %alloca_6[%c0] : memref<1xf32>
            %58 = memref.load %alloca_24[] : memref<f32>
            %59 = arith.mulf %57, %58 : f32
            %60 = arith.addf %56, %59 : f32
            memref.store %60, %arg5[%arg9, %arg10] : memref<?x64xf32>
            %61 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            memref.store %61, %alloca_4[] : memref<f32>
            %62 = memref.load %alloca_9[%c0] : memref<1xf32>
            memref.store %62, %alloca_24[] : memref<f32>
            %63 = memref.load %arg3[%arg9, %arg10] : memref<?x64xf32>
            memref.store %63, %alloca_5[] : memref<f32>
            memref.store %cst, %alloca_21[] : memref<f32>
            memref.store %cst, %alloca_3[] : memref<f32>
            memref.store %cst, %alloca[] : memref<f32>
            memref.store %cst, %alloca_23[] : memref<f32>
            %64 = arith.muli %arg10, %c-1 : index
            %65 = arith.addi %64, %c63 : index
            %66 = memref.load %alloca_12[%c0] : memref<1xf32>
            %67 = memref.load %alloca_3[] : memref<f32>
            memref.store %67, %alloca_7[%c0] : memref<1xf32>
            %68 = arith.mulf %66, %67 : f32
            %69 = memref.load %alloca_14[%c0] : memref<1xf32>
            %70 = memref.load %alloca_21[] : memref<f32>
            %71 = arith.mulf %69, %70 : f32
            %72 = arith.addf %68, %71 : f32
            %73 = memref.load %alloca_15[%c0] : memref<1xf32>
            %74 = memref.load %alloca_23[] : memref<f32>
            memref.store %74, %alloca_18[%c0] : memref<1xf32>
            %75 = arith.mulf %73, %74 : f32
            %76 = arith.addf %72, %75 : f32
            %77 = memref.load %alloca_6[%c0] : memref<1xf32>
            %78 = memref.load %alloca[] : memref<f32>
            %79 = arith.mulf %77, %78 : f32
            %80 = arith.addf %76, %79 : f32
            %81 = arith.muli %65, %c-1 : index
            %82 = arith.addi %81, %c63 : index
            memref.store %80, %arg6[%arg9, %82] : memref<?x64xf32>
            %83 = arith.muli %65, %c-1 : index
            %84 = arith.addi %83, %c63 : index
            %85 = memref.load %arg6[%arg9, %84] : memref<?x64xf32>
            memref.store %85, %alloca_23[] : memref<f32>
            %86 = memref.load %alloca_18[%c0] : memref<1xf32>
            memref.store %86, %alloca[] : memref<f32>
            %87 = arith.muli %65, %c-1 : index
            %88 = arith.addi %87, %c63 : index
            %89 = memref.load %arg3[%arg9, %88] : memref<?x64xf32>
            memref.store %89, %alloca_3[] : memref<f32>
            %90 = memref.load %alloca_7[%c0] : memref<1xf32>
            memref.store %90, %alloca_21[] : memref<f32>
            %91 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %92 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %93 = arith.addf %91, %92 : f32
            memref.store %93, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca_24[] : memref<f32>
      memref.store %cst, %alloca_4[] : memref<f32>
      memref.store %cst, %alloca_13[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %40 = memref.load %alloca_11[%c0] : memref<1xf32>
        %41 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %42 = arith.mulf %40, %41 : f32
        %43 = memref.load %alloca_16[%c0] : memref<1xf32>
        %44 = memref.load %alloca_13[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %47 = memref.load %alloca_15[%c0] : memref<1xf32>
        %48 = memref.load %alloca_4[] : memref<f32>
        memref.store %48, %alloca_19[%c0] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = memref.load %alloca_6[%c0] : memref<1xf32>
        %52 = memref.load %alloca_24[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        memref.store %54, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %55 = memref.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        memref.store %55, %alloca_4[] : memref<f32>
        %56 = memref.load %alloca_19[%c0] : memref<1xf32>
        memref.store %56, %alloca_24[] : memref<f32>
        %57 = memref.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        memref.store %57, %alloca_13[] : memref<f32>
      }
    }
    scf.for %arg7 = %c0 to %c64 step %c1 {
      memref.store %cst, %alloca[] : memref<f32>
      memref.store %cst, %alloca_23[] : memref<f32>
      memref.store %cst, %alloca_22[] : memref<f32>
      memref.store %cst, %alloca_10[] : memref<f32>
      scf.for %arg8 = %c0 to %c64 step %c1 {
        %40 = memref.load %alloca_12[%c0] : memref<1xf32>
        %41 = memref.load %alloca_10[] : memref<f32>
        memref.store %41, %alloca_17[%c0] : memref<1xf32>
        %42 = arith.mulf %40, %41 : f32
        %43 = memref.load %alloca_14[%c0] : memref<1xf32>
        %44 = memref.load %alloca_22[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %47 = memref.load %alloca_15[%c0] : memref<1xf32>
        %48 = memref.load %alloca_23[] : memref<f32>
        memref.store %48, %alloca_20[%c0] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = memref.load %alloca_6[%c0] : memref<1xf32>
        %52 = memref.load %alloca[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        %55 = arith.muli %arg8, %c-1 : index
        %56 = arith.addi %55, %c63 : index
        memref.store %54, %arg6[%56, %arg7] : memref<?x64xf32>
        %57 = arith.muli %arg8, %c-1 : index
        %58 = arith.addi %57, %c63 : index
        %59 = memref.load %arg6[%58, %arg7] : memref<?x64xf32>
        memref.store %59, %alloca_23[] : memref<f32>
        %60 = memref.load %alloca_20[%c0] : memref<1xf32>
        memref.store %60, %alloca[] : memref<f32>
        %61 = arith.muli %arg8, %c-1 : index
        %62 = arith.addi %61, %c63 : index
        %63 = memref.load %arg4[%62, %arg7] : memref<?x64xf32>
        memref.store %63, %alloca_10[] : memref<f32>
        %64 = memref.load %alloca_17[%c0] : memref<1xf32>
        memref.store %64, %alloca_22[] : memref<f32>
      }
    }
    scf.for %arg7 = %c0 to %c2 step %c1 {
      scf.for %arg8 = %c0 to %c2 step %c1 {
        %40 = arith.muli %arg7, %c32 : index
        %41 = arith.muli %arg7, %c32 : index
        %42 = arith.addi %41, %c32 : index
        scf.for %arg9 = %40 to %42 step %c1 {
          %43 = arith.muli %arg8, %c32 : index
          %44 = arith.muli %arg8, %c32 : index
          %45 = arith.addi %44, %c32 : index
          scf.for %arg10 = %43 to %45 step %c1 {
            memref.store %cst, %alloca_24[] : memref<f32>
            memref.store %cst, %alloca_4[] : memref<f32>
            memref.store %cst, %alloca_13[] : memref<f32>
            %46 = memref.load %alloca_11[%c0] : memref<1xf32>
            %47 = memref.load %arg4[%arg9, %arg10] : memref<?x64xf32>
            %48 = arith.mulf %46, %47 : f32
            %49 = memref.load %alloca_16[%c0] : memref<1xf32>
            %50 = memref.load %alloca_13[] : memref<f32>
            %51 = arith.mulf %49, %50 : f32
            %52 = arith.addf %48, %51 : f32
            %53 = memref.load %alloca_15[%c0] : memref<1xf32>
            %54 = memref.load %alloca_4[] : memref<f32>
            memref.store %54, %alloca_19[%c0] : memref<1xf32>
            %55 = arith.mulf %53, %54 : f32
            %56 = arith.addf %52, %55 : f32
            %57 = memref.load %alloca_6[%c0] : memref<1xf32>
            %58 = memref.load %alloca_24[] : memref<f32>
            %59 = arith.mulf %57, %58 : f32
            %60 = arith.addf %56, %59 : f32
            memref.store %60, %arg5[%arg9, %arg10] : memref<?x64xf32>
            %61 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            memref.store %61, %alloca_4[] : memref<f32>
            %62 = memref.load %alloca_19[%c0] : memref<1xf32>
            memref.store %62, %alloca_24[] : memref<f32>
            %63 = memref.load %arg4[%arg9, %arg10] : memref<?x64xf32>
            memref.store %63, %alloca_13[] : memref<f32>
            memref.store %cst, %alloca[] : memref<f32>
            memref.store %cst, %alloca_23[] : memref<f32>
            memref.store %cst, %alloca_22[] : memref<f32>
            memref.store %cst, %alloca_10[] : memref<f32>
            %64 = arith.muli %arg9, %c-1 : index
            %65 = arith.addi %64, %c63 : index
            %66 = memref.load %alloca_12[%c0] : memref<1xf32>
            %67 = memref.load %alloca_10[] : memref<f32>
            memref.store %67, %alloca_17[%c0] : memref<1xf32>
            %68 = arith.mulf %66, %67 : f32
            %69 = memref.load %alloca_14[%c0] : memref<1xf32>
            %70 = memref.load %alloca_22[] : memref<f32>
            %71 = arith.mulf %69, %70 : f32
            %72 = arith.addf %68, %71 : f32
            %73 = memref.load %alloca_15[%c0] : memref<1xf32>
            %74 = memref.load %alloca_23[] : memref<f32>
            memref.store %74, %alloca_20[%c0] : memref<1xf32>
            %75 = arith.mulf %73, %74 : f32
            %76 = arith.addf %72, %75 : f32
            %77 = memref.load %alloca_6[%c0] : memref<1xf32>
            %78 = memref.load %alloca[] : memref<f32>
            %79 = arith.mulf %77, %78 : f32
            %80 = arith.addf %76, %79 : f32
            %81 = arith.muli %65, %c-1 : index
            %82 = arith.addi %81, %c63 : index
            memref.store %80, %arg6[%82, %arg10] : memref<?x64xf32>
            %83 = arith.muli %65, %c-1 : index
            %84 = arith.addi %83, %c63 : index
            %85 = memref.load %arg6[%84, %arg10] : memref<?x64xf32>
            memref.store %85, %alloca_23[] : memref<f32>
            %86 = memref.load %alloca_20[%c0] : memref<1xf32>
            memref.store %86, %alloca[] : memref<f32>
            %87 = arith.muli %65, %c-1 : index
            %88 = arith.addi %87, %c63 : index
            %89 = memref.load %arg4[%88, %arg10] : memref<?x64xf32>
            memref.store %89, %alloca_10[] : memref<f32>
            %90 = memref.load %alloca_17[%c0] : memref<1xf32>
            memref.store %90, %alloca_22[] : memref<f32>
            %91 = memref.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %92 = memref.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %93 = arith.addf %91, %92 : f32
            memref.store %93, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

