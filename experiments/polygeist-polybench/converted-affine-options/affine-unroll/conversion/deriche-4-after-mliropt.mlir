#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
#map3 = affine_map<(d0) -> (d0 * 32)>
#map4 = affine_map<(d0) -> (d0 * 32 + 32)>
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
    affine.store %2, %alloca_6[0] : memref<1xf32>
    %3 = arith.negf %arg2 : f32
    %4 = math.powf %cst_1, %3 : f32
    affine.store %4, %alloca_15[0] : memref<1xf32>
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
    affine.store %15, %alloca_11[0] : memref<1xf32>
    %16 = affine.load %alloca_11[0] : memref<1xf32>
    affine.store %16, %alloca_5[0] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    affine.store %19, %alloca_8[0] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    affine.store %21, %alloca_16[0] : memref<1xf32>
    %22 = affine.load %alloca_5[0] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    affine.store %26, %alloca_7[0] : memref<1xf32>
    %27 = affine.load %alloca_8[0] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    affine.store %29, %alloca_12[0] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    affine.store %30, %alloca_25[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    affine.store %31, %alloca_14[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    affine.store %32, %alloca_4[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    affine.store %33, %alloca_24[] : memref<f32>
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_25[] : memref<f32>
      affine.store %cst, %alloca_24[] : memref<f32>
      affine.store %cst, %alloca_4[] : memref<f32>
      affine.for %arg8 = 0 to 64 step 4 {
        %40 = affine.load %alloca_11[0] : memref<1xf32>
        %41 = affine.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %42 = arith.mulf %40, %41 : f32
        %43 = affine.load %alloca_16[0] : memref<1xf32>
        %44 = affine.load %alloca_25[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %47 = affine.load %alloca_15[0] : memref<1xf32>
        %48 = affine.load %alloca_4[] : memref<f32>
        affine.store %48, %alloca_9[0] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = affine.load %alloca_6[0] : memref<1xf32>
        %52 = affine.load %alloca_24[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        affine.store %54, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %55 = affine.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        affine.store %55, %alloca_4[] : memref<f32>
        %56 = affine.load %alloca_9[0] : memref<1xf32>
        affine.store %56, %alloca_24[] : memref<f32>
        %57 = affine.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        affine.store %57, %alloca_25[] : memref<f32>
        %58 = affine.apply #map(%arg8)
        %59 = affine.load %alloca_11[0] : memref<1xf32>
        %60 = affine.load %arg3[%arg7, %58] : memref<?x64xf32>
        %61 = arith.mulf %59, %60 : f32
        %62 = affine.load %alloca_16[0] : memref<1xf32>
        %63 = affine.load %alloca_25[] : memref<f32>
        %64 = arith.mulf %62, %63 : f32
        %65 = arith.addf %61, %64 : f32
        %66 = affine.load %alloca_15[0] : memref<1xf32>
        %67 = affine.load %alloca_4[] : memref<f32>
        affine.store %67, %alloca_9[0] : memref<1xf32>
        %68 = arith.mulf %66, %67 : f32
        %69 = arith.addf %65, %68 : f32
        %70 = affine.load %alloca_6[0] : memref<1xf32>
        %71 = affine.load %alloca_24[] : memref<f32>
        %72 = arith.mulf %70, %71 : f32
        %73 = arith.addf %69, %72 : f32
        affine.store %73, %arg5[%arg7, %58] : memref<?x64xf32>
        %74 = affine.load %arg5[%arg7, %58] : memref<?x64xf32>
        affine.store %74, %alloca_4[] : memref<f32>
        %75 = affine.load %alloca_9[0] : memref<1xf32>
        affine.store %75, %alloca_24[] : memref<f32>
        %76 = affine.load %arg3[%arg7, %58] : memref<?x64xf32>
        affine.store %76, %alloca_25[] : memref<f32>
        %77 = affine.apply #map1(%arg8)
        %78 = affine.load %alloca_11[0] : memref<1xf32>
        %79 = affine.load %arg3[%arg7, %77] : memref<?x64xf32>
        %80 = arith.mulf %78, %79 : f32
        %81 = affine.load %alloca_16[0] : memref<1xf32>
        %82 = affine.load %alloca_25[] : memref<f32>
        %83 = arith.mulf %81, %82 : f32
        %84 = arith.addf %80, %83 : f32
        %85 = affine.load %alloca_15[0] : memref<1xf32>
        %86 = affine.load %alloca_4[] : memref<f32>
        affine.store %86, %alloca_9[0] : memref<1xf32>
        %87 = arith.mulf %85, %86 : f32
        %88 = arith.addf %84, %87 : f32
        %89 = affine.load %alloca_6[0] : memref<1xf32>
        %90 = affine.load %alloca_24[] : memref<f32>
        %91 = arith.mulf %89, %90 : f32
        %92 = arith.addf %88, %91 : f32
        affine.store %92, %arg5[%arg7, %77] : memref<?x64xf32>
        %93 = affine.load %arg5[%arg7, %77] : memref<?x64xf32>
        affine.store %93, %alloca_4[] : memref<f32>
        %94 = affine.load %alloca_9[0] : memref<1xf32>
        affine.store %94, %alloca_24[] : memref<f32>
        %95 = affine.load %arg3[%arg7, %77] : memref<?x64xf32>
        affine.store %95, %alloca_25[] : memref<f32>
        %96 = affine.apply #map2(%arg8)
        %97 = affine.load %alloca_11[0] : memref<1xf32>
        %98 = affine.load %arg3[%arg7, %96] : memref<?x64xf32>
        %99 = arith.mulf %97, %98 : f32
        %100 = affine.load %alloca_16[0] : memref<1xf32>
        %101 = affine.load %alloca_25[] : memref<f32>
        %102 = arith.mulf %100, %101 : f32
        %103 = arith.addf %99, %102 : f32
        %104 = affine.load %alloca_15[0] : memref<1xf32>
        %105 = affine.load %alloca_4[] : memref<f32>
        affine.store %105, %alloca_9[0] : memref<1xf32>
        %106 = arith.mulf %104, %105 : f32
        %107 = arith.addf %103, %106 : f32
        %108 = affine.load %alloca_6[0] : memref<1xf32>
        %109 = affine.load %alloca_24[] : memref<f32>
        %110 = arith.mulf %108, %109 : f32
        %111 = arith.addf %107, %110 : f32
        affine.store %111, %arg5[%arg7, %96] : memref<?x64xf32>
        %112 = affine.load %arg5[%arg7, %96] : memref<?x64xf32>
        affine.store %112, %alloca_4[] : memref<f32>
        %113 = affine.load %alloca_9[0] : memref<1xf32>
        affine.store %113, %alloca_24[] : memref<f32>
        %114 = affine.load %arg3[%arg7, %96] : memref<?x64xf32>
        affine.store %114, %alloca_25[] : memref<f32>
      }
    }
    %34 = llvm.mlir.undef : f32
    affine.store %34, %alloca[] : memref<f32>
    %35 = llvm.mlir.undef : f32
    affine.store %35, %alloca_21[] : memref<f32>
    %36 = llvm.mlir.undef : f32
    affine.store %36, %alloca_10[] : memref<f32>
    %37 = llvm.mlir.undef : f32
    affine.store %37, %alloca_23[] : memref<f32>
    %38 = llvm.mlir.undef : f32
    affine.store %38, %alloca_22[] : memref<f32>
    %39 = llvm.mlir.undef : f32
    affine.store %39, %alloca_3[] : memref<f32>
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_21[] : memref<f32>
      affine.store %cst, %alloca[] : memref<f32>
      affine.store %cst, %alloca_3[] : memref<f32>
      affine.store %cst, %alloca_22[] : memref<f32>
      affine.for %arg8 = 0 to 64 step 4 {
        %40 = affine.load %alloca_12[0] : memref<1xf32>
        %41 = affine.load %alloca[] : memref<f32>
        affine.store %41, %alloca_13[0] : memref<1xf32>
        %42 = arith.mulf %40, %41 : f32
        %43 = affine.load %alloca_7[0] : memref<1xf32>
        %44 = affine.load %alloca_21[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %47 = affine.load %alloca_15[0] : memref<1xf32>
        %48 = affine.load %alloca_22[] : memref<f32>
        affine.store %48, %alloca_18[0] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = affine.load %alloca_6[0] : memref<1xf32>
        %52 = affine.load %alloca_3[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        affine.store %54, %arg6[%arg7, -%arg8 + 63] : memref<?x64xf32>
        %55 = affine.load %arg6[%arg7, -%arg8 + 63] : memref<?x64xf32>
        affine.store %55, %alloca_22[] : memref<f32>
        %56 = affine.load %alloca_18[0] : memref<1xf32>
        affine.store %56, %alloca_3[] : memref<f32>
        %57 = affine.load %arg3[%arg7, -%arg8 + 63] : memref<?x64xf32>
        affine.store %57, %alloca[] : memref<f32>
        %58 = affine.load %alloca_13[0] : memref<1xf32>
        affine.store %58, %alloca_21[] : memref<f32>
        %59 = affine.apply #map(%arg8)
        %60 = affine.load %alloca_12[0] : memref<1xf32>
        %61 = affine.load %alloca[] : memref<f32>
        affine.store %61, %alloca_13[0] : memref<1xf32>
        %62 = arith.mulf %60, %61 : f32
        %63 = affine.load %alloca_7[0] : memref<1xf32>
        %64 = affine.load %alloca_21[] : memref<f32>
        %65 = arith.mulf %63, %64 : f32
        %66 = arith.addf %62, %65 : f32
        %67 = affine.load %alloca_15[0] : memref<1xf32>
        %68 = affine.load %alloca_22[] : memref<f32>
        affine.store %68, %alloca_18[0] : memref<1xf32>
        %69 = arith.mulf %67, %68 : f32
        %70 = arith.addf %66, %69 : f32
        %71 = affine.load %alloca_6[0] : memref<1xf32>
        %72 = affine.load %alloca_3[] : memref<f32>
        %73 = arith.mulf %71, %72 : f32
        %74 = arith.addf %70, %73 : f32
        affine.store %74, %arg6[%arg7, -%59 + 63] : memref<?x64xf32>
        %75 = affine.load %arg6[%arg7, -%59 + 63] : memref<?x64xf32>
        affine.store %75, %alloca_22[] : memref<f32>
        %76 = affine.load %alloca_18[0] : memref<1xf32>
        affine.store %76, %alloca_3[] : memref<f32>
        %77 = affine.load %arg3[%arg7, -%59 + 63] : memref<?x64xf32>
        affine.store %77, %alloca[] : memref<f32>
        %78 = affine.load %alloca_13[0] : memref<1xf32>
        affine.store %78, %alloca_21[] : memref<f32>
        %79 = affine.apply #map1(%arg8)
        %80 = affine.load %alloca_12[0] : memref<1xf32>
        %81 = affine.load %alloca[] : memref<f32>
        affine.store %81, %alloca_13[0] : memref<1xf32>
        %82 = arith.mulf %80, %81 : f32
        %83 = affine.load %alloca_7[0] : memref<1xf32>
        %84 = affine.load %alloca_21[] : memref<f32>
        %85 = arith.mulf %83, %84 : f32
        %86 = arith.addf %82, %85 : f32
        %87 = affine.load %alloca_15[0] : memref<1xf32>
        %88 = affine.load %alloca_22[] : memref<f32>
        affine.store %88, %alloca_18[0] : memref<1xf32>
        %89 = arith.mulf %87, %88 : f32
        %90 = arith.addf %86, %89 : f32
        %91 = affine.load %alloca_6[0] : memref<1xf32>
        %92 = affine.load %alloca_3[] : memref<f32>
        %93 = arith.mulf %91, %92 : f32
        %94 = arith.addf %90, %93 : f32
        affine.store %94, %arg6[%arg7, -%79 + 63] : memref<?x64xf32>
        %95 = affine.load %arg6[%arg7, -%79 + 63] : memref<?x64xf32>
        affine.store %95, %alloca_22[] : memref<f32>
        %96 = affine.load %alloca_18[0] : memref<1xf32>
        affine.store %96, %alloca_3[] : memref<f32>
        %97 = affine.load %arg3[%arg7, -%79 + 63] : memref<?x64xf32>
        affine.store %97, %alloca[] : memref<f32>
        %98 = affine.load %alloca_13[0] : memref<1xf32>
        affine.store %98, %alloca_21[] : memref<f32>
        %99 = affine.apply #map2(%arg8)
        %100 = affine.load %alloca_12[0] : memref<1xf32>
        %101 = affine.load %alloca[] : memref<f32>
        affine.store %101, %alloca_13[0] : memref<1xf32>
        %102 = arith.mulf %100, %101 : f32
        %103 = affine.load %alloca_7[0] : memref<1xf32>
        %104 = affine.load %alloca_21[] : memref<f32>
        %105 = arith.mulf %103, %104 : f32
        %106 = arith.addf %102, %105 : f32
        %107 = affine.load %alloca_15[0] : memref<1xf32>
        %108 = affine.load %alloca_22[] : memref<f32>
        affine.store %108, %alloca_18[0] : memref<1xf32>
        %109 = arith.mulf %107, %108 : f32
        %110 = arith.addf %106, %109 : f32
        %111 = affine.load %alloca_6[0] : memref<1xf32>
        %112 = affine.load %alloca_3[] : memref<f32>
        %113 = arith.mulf %111, %112 : f32
        %114 = arith.addf %110, %113 : f32
        affine.store %114, %arg6[%arg7, -%99 + 63] : memref<?x64xf32>
        %115 = affine.load %arg6[%arg7, -%99 + 63] : memref<?x64xf32>
        affine.store %115, %alloca_22[] : memref<f32>
        %116 = affine.load %alloca_18[0] : memref<1xf32>
        affine.store %116, %alloca_3[] : memref<f32>
        %117 = affine.load %arg3[%arg7, -%99 + 63] : memref<?x64xf32>
        affine.store %117, %alloca[] : memref<f32>
        %118 = affine.load %alloca_13[0] : memref<1xf32>
        affine.store %118, %alloca_21[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = #map3(%arg7) to #map4(%arg7) {
          affine.for %arg10 = #map3(%arg8) to #map4(%arg8) step 4 {
            %40 = affine.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %41 = affine.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %42 = arith.addf %40, %41 : f32
            affine.store %42, %arg4[%arg9, %arg10] : memref<?x64xf32>
            %43 = affine.apply #map(%arg10)
            %44 = affine.load %arg5[%arg9, %43] : memref<?x64xf32>
            %45 = affine.load %arg6[%arg9, %43] : memref<?x64xf32>
            %46 = arith.addf %44, %45 : f32
            affine.store %46, %arg4[%arg9, %43] : memref<?x64xf32>
            %47 = affine.apply #map1(%arg10)
            %48 = affine.load %arg5[%arg9, %47] : memref<?x64xf32>
            %49 = affine.load %arg6[%arg9, %47] : memref<?x64xf32>
            %50 = arith.addf %48, %49 : f32
            affine.store %50, %arg4[%arg9, %47] : memref<?x64xf32>
            %51 = affine.apply #map2(%arg10)
            %52 = affine.load %arg5[%arg9, %51] : memref<?x64xf32>
            %53 = affine.load %arg6[%arg9, %51] : memref<?x64xf32>
            %54 = arith.addf %52, %53 : f32
            affine.store %54, %arg4[%arg9, %51] : memref<?x64xf32>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_24[] : memref<f32>
      affine.store %cst, %alloca_4[] : memref<f32>
      affine.store %cst, %alloca_14[] : memref<f32>
      affine.for %arg8 = 0 to 64 step 4 {
        %40 = affine.load %alloca_11[0] : memref<1xf32>
        %41 = affine.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %42 = arith.mulf %40, %41 : f32
        %43 = affine.load %alloca_16[0] : memref<1xf32>
        %44 = affine.load %alloca_14[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %47 = affine.load %alloca_15[0] : memref<1xf32>
        %48 = affine.load %alloca_4[] : memref<f32>
        affine.store %48, %alloca_19[0] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = affine.load %alloca_6[0] : memref<1xf32>
        %52 = affine.load %alloca_24[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        affine.store %54, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %55 = affine.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        affine.store %55, %alloca_4[] : memref<f32>
        %56 = affine.load %alloca_19[0] : memref<1xf32>
        affine.store %56, %alloca_24[] : memref<f32>
        %57 = affine.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        affine.store %57, %alloca_14[] : memref<f32>
        %58 = affine.apply #map(%arg8)
        %59 = affine.load %alloca_11[0] : memref<1xf32>
        %60 = affine.load %arg4[%58, %arg7] : memref<?x64xf32>
        %61 = arith.mulf %59, %60 : f32
        %62 = affine.load %alloca_16[0] : memref<1xf32>
        %63 = affine.load %alloca_14[] : memref<f32>
        %64 = arith.mulf %62, %63 : f32
        %65 = arith.addf %61, %64 : f32
        %66 = affine.load %alloca_15[0] : memref<1xf32>
        %67 = affine.load %alloca_4[] : memref<f32>
        affine.store %67, %alloca_19[0] : memref<1xf32>
        %68 = arith.mulf %66, %67 : f32
        %69 = arith.addf %65, %68 : f32
        %70 = affine.load %alloca_6[0] : memref<1xf32>
        %71 = affine.load %alloca_24[] : memref<f32>
        %72 = arith.mulf %70, %71 : f32
        %73 = arith.addf %69, %72 : f32
        affine.store %73, %arg5[%58, %arg7] : memref<?x64xf32>
        %74 = affine.load %arg5[%58, %arg7] : memref<?x64xf32>
        affine.store %74, %alloca_4[] : memref<f32>
        %75 = affine.load %alloca_19[0] : memref<1xf32>
        affine.store %75, %alloca_24[] : memref<f32>
        %76 = affine.load %arg4[%58, %arg7] : memref<?x64xf32>
        affine.store %76, %alloca_14[] : memref<f32>
        %77 = affine.apply #map1(%arg8)
        %78 = affine.load %alloca_11[0] : memref<1xf32>
        %79 = affine.load %arg4[%77, %arg7] : memref<?x64xf32>
        %80 = arith.mulf %78, %79 : f32
        %81 = affine.load %alloca_16[0] : memref<1xf32>
        %82 = affine.load %alloca_14[] : memref<f32>
        %83 = arith.mulf %81, %82 : f32
        %84 = arith.addf %80, %83 : f32
        %85 = affine.load %alloca_15[0] : memref<1xf32>
        %86 = affine.load %alloca_4[] : memref<f32>
        affine.store %86, %alloca_19[0] : memref<1xf32>
        %87 = arith.mulf %85, %86 : f32
        %88 = arith.addf %84, %87 : f32
        %89 = affine.load %alloca_6[0] : memref<1xf32>
        %90 = affine.load %alloca_24[] : memref<f32>
        %91 = arith.mulf %89, %90 : f32
        %92 = arith.addf %88, %91 : f32
        affine.store %92, %arg5[%77, %arg7] : memref<?x64xf32>
        %93 = affine.load %arg5[%77, %arg7] : memref<?x64xf32>
        affine.store %93, %alloca_4[] : memref<f32>
        %94 = affine.load %alloca_19[0] : memref<1xf32>
        affine.store %94, %alloca_24[] : memref<f32>
        %95 = affine.load %arg4[%77, %arg7] : memref<?x64xf32>
        affine.store %95, %alloca_14[] : memref<f32>
        %96 = affine.apply #map2(%arg8)
        %97 = affine.load %alloca_11[0] : memref<1xf32>
        %98 = affine.load %arg4[%96, %arg7] : memref<?x64xf32>
        %99 = arith.mulf %97, %98 : f32
        %100 = affine.load %alloca_16[0] : memref<1xf32>
        %101 = affine.load %alloca_14[] : memref<f32>
        %102 = arith.mulf %100, %101 : f32
        %103 = arith.addf %99, %102 : f32
        %104 = affine.load %alloca_15[0] : memref<1xf32>
        %105 = affine.load %alloca_4[] : memref<f32>
        affine.store %105, %alloca_19[0] : memref<1xf32>
        %106 = arith.mulf %104, %105 : f32
        %107 = arith.addf %103, %106 : f32
        %108 = affine.load %alloca_6[0] : memref<1xf32>
        %109 = affine.load %alloca_24[] : memref<f32>
        %110 = arith.mulf %108, %109 : f32
        %111 = arith.addf %107, %110 : f32
        affine.store %111, %arg5[%96, %arg7] : memref<?x64xf32>
        %112 = affine.load %arg5[%96, %arg7] : memref<?x64xf32>
        affine.store %112, %alloca_4[] : memref<f32>
        %113 = affine.load %alloca_19[0] : memref<1xf32>
        affine.store %113, %alloca_24[] : memref<f32>
        %114 = affine.load %arg4[%96, %arg7] : memref<?x64xf32>
        affine.store %114, %alloca_14[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_3[] : memref<f32>
      affine.store %cst, %alloca_22[] : memref<f32>
      affine.store %cst, %alloca_23[] : memref<f32>
      affine.store %cst, %alloca_10[] : memref<f32>
      affine.for %arg8 = 0 to 64 step 4 {
        %40 = affine.load %alloca_12[0] : memref<1xf32>
        %41 = affine.load %alloca_10[] : memref<f32>
        affine.store %41, %alloca_17[0] : memref<1xf32>
        %42 = arith.mulf %40, %41 : f32
        %43 = affine.load %alloca_7[0] : memref<1xf32>
        %44 = affine.load %alloca_23[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %47 = affine.load %alloca_15[0] : memref<1xf32>
        %48 = affine.load %alloca_22[] : memref<f32>
        affine.store %48, %alloca_20[0] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = affine.load %alloca_6[0] : memref<1xf32>
        %52 = affine.load %alloca_3[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        affine.store %54, %arg6[-%arg8 + 63, %arg7] : memref<?x64xf32>
        %55 = affine.load %arg6[-%arg8 + 63, %arg7] : memref<?x64xf32>
        affine.store %55, %alloca_22[] : memref<f32>
        %56 = affine.load %alloca_20[0] : memref<1xf32>
        affine.store %56, %alloca_3[] : memref<f32>
        %57 = affine.load %arg4[-%arg8 + 63, %arg7] : memref<?x64xf32>
        affine.store %57, %alloca_10[] : memref<f32>
        %58 = affine.load %alloca_17[0] : memref<1xf32>
        affine.store %58, %alloca_23[] : memref<f32>
        %59 = affine.apply #map(%arg8)
        %60 = affine.load %alloca_12[0] : memref<1xf32>
        %61 = affine.load %alloca_10[] : memref<f32>
        affine.store %61, %alloca_17[0] : memref<1xf32>
        %62 = arith.mulf %60, %61 : f32
        %63 = affine.load %alloca_7[0] : memref<1xf32>
        %64 = affine.load %alloca_23[] : memref<f32>
        %65 = arith.mulf %63, %64 : f32
        %66 = arith.addf %62, %65 : f32
        %67 = affine.load %alloca_15[0] : memref<1xf32>
        %68 = affine.load %alloca_22[] : memref<f32>
        affine.store %68, %alloca_20[0] : memref<1xf32>
        %69 = arith.mulf %67, %68 : f32
        %70 = arith.addf %66, %69 : f32
        %71 = affine.load %alloca_6[0] : memref<1xf32>
        %72 = affine.load %alloca_3[] : memref<f32>
        %73 = arith.mulf %71, %72 : f32
        %74 = arith.addf %70, %73 : f32
        affine.store %74, %arg6[-%59 + 63, %arg7] : memref<?x64xf32>
        %75 = affine.load %arg6[-%59 + 63, %arg7] : memref<?x64xf32>
        affine.store %75, %alloca_22[] : memref<f32>
        %76 = affine.load %alloca_20[0] : memref<1xf32>
        affine.store %76, %alloca_3[] : memref<f32>
        %77 = affine.load %arg4[-%59 + 63, %arg7] : memref<?x64xf32>
        affine.store %77, %alloca_10[] : memref<f32>
        %78 = affine.load %alloca_17[0] : memref<1xf32>
        affine.store %78, %alloca_23[] : memref<f32>
        %79 = affine.apply #map1(%arg8)
        %80 = affine.load %alloca_12[0] : memref<1xf32>
        %81 = affine.load %alloca_10[] : memref<f32>
        affine.store %81, %alloca_17[0] : memref<1xf32>
        %82 = arith.mulf %80, %81 : f32
        %83 = affine.load %alloca_7[0] : memref<1xf32>
        %84 = affine.load %alloca_23[] : memref<f32>
        %85 = arith.mulf %83, %84 : f32
        %86 = arith.addf %82, %85 : f32
        %87 = affine.load %alloca_15[0] : memref<1xf32>
        %88 = affine.load %alloca_22[] : memref<f32>
        affine.store %88, %alloca_20[0] : memref<1xf32>
        %89 = arith.mulf %87, %88 : f32
        %90 = arith.addf %86, %89 : f32
        %91 = affine.load %alloca_6[0] : memref<1xf32>
        %92 = affine.load %alloca_3[] : memref<f32>
        %93 = arith.mulf %91, %92 : f32
        %94 = arith.addf %90, %93 : f32
        affine.store %94, %arg6[-%79 + 63, %arg7] : memref<?x64xf32>
        %95 = affine.load %arg6[-%79 + 63, %arg7] : memref<?x64xf32>
        affine.store %95, %alloca_22[] : memref<f32>
        %96 = affine.load %alloca_20[0] : memref<1xf32>
        affine.store %96, %alloca_3[] : memref<f32>
        %97 = affine.load %arg4[-%79 + 63, %arg7] : memref<?x64xf32>
        affine.store %97, %alloca_10[] : memref<f32>
        %98 = affine.load %alloca_17[0] : memref<1xf32>
        affine.store %98, %alloca_23[] : memref<f32>
        %99 = affine.apply #map2(%arg8)
        %100 = affine.load %alloca_12[0] : memref<1xf32>
        %101 = affine.load %alloca_10[] : memref<f32>
        affine.store %101, %alloca_17[0] : memref<1xf32>
        %102 = arith.mulf %100, %101 : f32
        %103 = affine.load %alloca_7[0] : memref<1xf32>
        %104 = affine.load %alloca_23[] : memref<f32>
        %105 = arith.mulf %103, %104 : f32
        %106 = arith.addf %102, %105 : f32
        %107 = affine.load %alloca_15[0] : memref<1xf32>
        %108 = affine.load %alloca_22[] : memref<f32>
        affine.store %108, %alloca_20[0] : memref<1xf32>
        %109 = arith.mulf %107, %108 : f32
        %110 = arith.addf %106, %109 : f32
        %111 = affine.load %alloca_6[0] : memref<1xf32>
        %112 = affine.load %alloca_3[] : memref<f32>
        %113 = arith.mulf %111, %112 : f32
        %114 = arith.addf %110, %113 : f32
        affine.store %114, %arg6[-%99 + 63, %arg7] : memref<?x64xf32>
        %115 = affine.load %arg6[-%99 + 63, %arg7] : memref<?x64xf32>
        affine.store %115, %alloca_22[] : memref<f32>
        %116 = affine.load %alloca_20[0] : memref<1xf32>
        affine.store %116, %alloca_3[] : memref<f32>
        %117 = affine.load %arg4[-%99 + 63, %arg7] : memref<?x64xf32>
        affine.store %117, %alloca_10[] : memref<f32>
        %118 = affine.load %alloca_17[0] : memref<1xf32>
        affine.store %118, %alloca_23[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = #map3(%arg7) to #map4(%arg7) {
          affine.for %arg10 = #map3(%arg8) to #map4(%arg8) step 4 {
            %40 = affine.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %41 = affine.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %42 = arith.addf %40, %41 : f32
            affine.store %42, %arg4[%arg9, %arg10] : memref<?x64xf32>
            %43 = affine.apply #map(%arg10)
            %44 = affine.load %arg5[%arg9, %43] : memref<?x64xf32>
            %45 = affine.load %arg6[%arg9, %43] : memref<?x64xf32>
            %46 = arith.addf %44, %45 : f32
            affine.store %46, %arg4[%arg9, %43] : memref<?x64xf32>
            %47 = affine.apply #map1(%arg10)
            %48 = affine.load %arg5[%arg9, %47] : memref<?x64xf32>
            %49 = affine.load %arg6[%arg9, %47] : memref<?x64xf32>
            %50 = arith.addf %48, %49 : f32
            affine.store %50, %arg4[%arg9, %47] : memref<?x64xf32>
            %51 = affine.apply #map2(%arg10)
            %52 = affine.load %arg5[%arg9, %51] : memref<?x64xf32>
            %53 = affine.load %arg6[%arg9, %51] : memref<?x64xf32>
            %54 = arith.addf %52, %53 : f32
            affine.store %54, %arg4[%arg9, %51] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

