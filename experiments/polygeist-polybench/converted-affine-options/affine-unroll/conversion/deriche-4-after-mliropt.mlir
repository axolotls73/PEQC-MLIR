#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
#map3 = affine_map<(d0) -> (d0 * 32)>
#map4 = affine_map<(d0) -> (d0 * 32 + 32)>
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
    %alloca_5 = memref.alloca() : memref<1xf32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() {scop.scratchpad} : memref<1xf32>
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
    %alloca_24 = memref.alloca() : memref<f32>
    %alloca_25 = memref.alloca() : memref<f32>
    %1 = arith.mulf %arg2, %cst_2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.negf %2 : f32
    affine.store %3, %alloca_6[0] : memref<1xf32>
    %4 = arith.negf %arg2 : f32
    %5 = math.powf %cst_1, %4 : f32
    affine.store %5, %alloca_15[0] : memref<1xf32>
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
    affine.store %16, %alloca_11[0] : memref<1xf32>
    %17 = affine.load %alloca_11[0] : memref<1xf32>
    affine.store %17, %alloca_5[0] : memref<1xf32>
    %18 = arith.negf %arg2 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    affine.store %20, %alloca_8[0] : memref<1xf32>
    %21 = arith.subf %arg2, %cst_0 : f32
    %22 = arith.mulf %20, %21 : f32
    affine.store %22, %alloca_18[0] : memref<1xf32>
    %23 = affine.load %alloca_5[0] : memref<1xf32>
    %24 = arith.negf %23 : f32
    %25 = arith.mulf %arg2, %cst_2 : f32
    %26 = math.exp %25 : f32
    %27 = arith.mulf %24, %26 : f32
    affine.store %27, %alloca_9[0] : memref<1xf32>
    %28 = affine.load %alloca_8[0] : memref<1xf32>
    %29 = arith.addf %arg2, %cst_0 : f32
    %30 = arith.mulf %28, %29 : f32
    affine.store %30, %alloca_12[0] : memref<1xf32>
    affine.store %0, %alloca[] : memref<f32>
    affine.store %0, %alloca_14[] : memref<f32>
    affine.store %0, %alloca_4[] : memref<f32>
    affine.store %0, %alloca_24[] : memref<f32>
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca[] : memref<f32>
      affine.store %cst, %alloca_24[] : memref<f32>
      affine.store %cst, %alloca_4[] : memref<f32>
      affine.for %arg8 = 0 to 64 step 4 {
        %31 = affine.load %alloca_11[0] : memref<1xf32>
        %32 = affine.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %33 = arith.mulf %31, %32 : f32
        %34 = affine.load %alloca_18[0] : memref<1xf32>
        %35 = affine.load %alloca[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %38 = affine.load %alloca_15[0] : memref<1xf32>
        %39 = affine.load %alloca_4[] : memref<f32>
        affine.store %39, %alloca_7[0] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %42 = affine.load %alloca_6[0] : memref<1xf32>
        %43 = affine.load %alloca_24[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        affine.store %45, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %46 = affine.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        affine.store %46, %alloca_4[] : memref<f32>
        %47 = affine.load %alloca_7[0] : memref<1xf32>
        affine.store %47, %alloca_24[] : memref<f32>
        %48 = affine.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        affine.store %48, %alloca[] : memref<f32>
        %49 = affine.apply #map(%arg8)
        %50 = affine.load %alloca_11[0] : memref<1xf32>
        %51 = affine.load %arg3[%arg7, %49] : memref<?x64xf32>
        %52 = arith.mulf %50, %51 : f32
        %53 = affine.load %alloca_18[0] : memref<1xf32>
        %54 = affine.load %alloca[] : memref<f32>
        %55 = arith.mulf %53, %54 : f32
        %56 = arith.addf %52, %55 : f32
        %57 = affine.load %alloca_15[0] : memref<1xf32>
        %58 = affine.load %alloca_4[] : memref<f32>
        affine.store %58, %alloca_7[0] : memref<1xf32>
        %59 = arith.mulf %57, %58 : f32
        %60 = arith.addf %56, %59 : f32
        %61 = affine.load %alloca_6[0] : memref<1xf32>
        %62 = affine.load %alloca_24[] : memref<f32>
        %63 = arith.mulf %61, %62 : f32
        %64 = arith.addf %60, %63 : f32
        affine.store %64, %arg5[%arg7, %49] : memref<?x64xf32>
        %65 = affine.load %arg5[%arg7, %49] : memref<?x64xf32>
        affine.store %65, %alloca_4[] : memref<f32>
        %66 = affine.load %alloca_7[0] : memref<1xf32>
        affine.store %66, %alloca_24[] : memref<f32>
        %67 = affine.load %arg3[%arg7, %49] : memref<?x64xf32>
        affine.store %67, %alloca[] : memref<f32>
        %68 = affine.apply #map1(%arg8)
        %69 = affine.load %alloca_11[0] : memref<1xf32>
        %70 = affine.load %arg3[%arg7, %68] : memref<?x64xf32>
        %71 = arith.mulf %69, %70 : f32
        %72 = affine.load %alloca_18[0] : memref<1xf32>
        %73 = affine.load %alloca[] : memref<f32>
        %74 = arith.mulf %72, %73 : f32
        %75 = arith.addf %71, %74 : f32
        %76 = affine.load %alloca_15[0] : memref<1xf32>
        %77 = affine.load %alloca_4[] : memref<f32>
        affine.store %77, %alloca_7[0] : memref<1xf32>
        %78 = arith.mulf %76, %77 : f32
        %79 = arith.addf %75, %78 : f32
        %80 = affine.load %alloca_6[0] : memref<1xf32>
        %81 = affine.load %alloca_24[] : memref<f32>
        %82 = arith.mulf %80, %81 : f32
        %83 = arith.addf %79, %82 : f32
        affine.store %83, %arg5[%arg7, %68] : memref<?x64xf32>
        %84 = affine.load %arg5[%arg7, %68] : memref<?x64xf32>
        affine.store %84, %alloca_4[] : memref<f32>
        %85 = affine.load %alloca_7[0] : memref<1xf32>
        affine.store %85, %alloca_24[] : memref<f32>
        %86 = affine.load %arg3[%arg7, %68] : memref<?x64xf32>
        affine.store %86, %alloca[] : memref<f32>
        %87 = affine.apply #map2(%arg8)
        %88 = affine.load %alloca_11[0] : memref<1xf32>
        %89 = affine.load %arg3[%arg7, %87] : memref<?x64xf32>
        %90 = arith.mulf %88, %89 : f32
        %91 = affine.load %alloca_18[0] : memref<1xf32>
        %92 = affine.load %alloca[] : memref<f32>
        %93 = arith.mulf %91, %92 : f32
        %94 = arith.addf %90, %93 : f32
        %95 = affine.load %alloca_15[0] : memref<1xf32>
        %96 = affine.load %alloca_4[] : memref<f32>
        affine.store %96, %alloca_7[0] : memref<1xf32>
        %97 = arith.mulf %95, %96 : f32
        %98 = arith.addf %94, %97 : f32
        %99 = affine.load %alloca_6[0] : memref<1xf32>
        %100 = affine.load %alloca_24[] : memref<f32>
        %101 = arith.mulf %99, %100 : f32
        %102 = arith.addf %98, %101 : f32
        affine.store %102, %arg5[%arg7, %87] : memref<?x64xf32>
        %103 = affine.load %arg5[%arg7, %87] : memref<?x64xf32>
        affine.store %103, %alloca_4[] : memref<f32>
        %104 = affine.load %alloca_7[0] : memref<1xf32>
        affine.store %104, %alloca_24[] : memref<f32>
        %105 = affine.load %arg3[%arg7, %87] : memref<?x64xf32>
        affine.store %105, %alloca[] : memref<f32>
      }
    }
    affine.store %0, %alloca_3[] : memref<f32>
    affine.store %0, %alloca_21[] : memref<f32>
    affine.store %0, %alloca_10[] : memref<f32>
    affine.store %0, %alloca_22[] : memref<f32>
    affine.store %0, %alloca_23[] : memref<f32>
    affine.store %0, %alloca_25[] : memref<f32>
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_21[] : memref<f32>
      affine.store %cst, %alloca_3[] : memref<f32>
      affine.store %cst, %alloca_25[] : memref<f32>
      affine.store %cst, %alloca_23[] : memref<f32>
      affine.for %arg8 = 0 to 64 step 4 {
        %31 = affine.load %alloca_12[0] : memref<1xf32>
        %32 = affine.load %alloca_3[] : memref<f32>
        affine.store %32, %alloca_13[0] : memref<1xf32>
        %33 = arith.mulf %31, %32 : f32
        %34 = affine.load %alloca_9[0] : memref<1xf32>
        %35 = affine.load %alloca_21[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %38 = affine.load %alloca_15[0] : memref<1xf32>
        %39 = affine.load %alloca_23[] : memref<f32>
        affine.store %39, %alloca_16[0] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %42 = affine.load %alloca_6[0] : memref<1xf32>
        %43 = affine.load %alloca_25[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        affine.store %45, %arg6[%arg7, -%arg8 + 63] : memref<?x64xf32>
        %46 = affine.load %arg6[%arg7, -%arg8 + 63] : memref<?x64xf32>
        affine.store %46, %alloca_23[] : memref<f32>
        %47 = affine.load %alloca_16[0] : memref<1xf32>
        affine.store %47, %alloca_25[] : memref<f32>
        %48 = affine.load %arg3[%arg7, -%arg8 + 63] : memref<?x64xf32>
        affine.store %48, %alloca_3[] : memref<f32>
        %49 = affine.load %alloca_13[0] : memref<1xf32>
        affine.store %49, %alloca_21[] : memref<f32>
        %50 = affine.apply #map(%arg8)
        %51 = affine.load %alloca_12[0] : memref<1xf32>
        %52 = affine.load %alloca_3[] : memref<f32>
        affine.store %52, %alloca_13[0] : memref<1xf32>
        %53 = arith.mulf %51, %52 : f32
        %54 = affine.load %alloca_9[0] : memref<1xf32>
        %55 = affine.load %alloca_21[] : memref<f32>
        %56 = arith.mulf %54, %55 : f32
        %57 = arith.addf %53, %56 : f32
        %58 = affine.load %alloca_15[0] : memref<1xf32>
        %59 = affine.load %alloca_23[] : memref<f32>
        affine.store %59, %alloca_16[0] : memref<1xf32>
        %60 = arith.mulf %58, %59 : f32
        %61 = arith.addf %57, %60 : f32
        %62 = affine.load %alloca_6[0] : memref<1xf32>
        %63 = affine.load %alloca_25[] : memref<f32>
        %64 = arith.mulf %62, %63 : f32
        %65 = arith.addf %61, %64 : f32
        affine.store %65, %arg6[%arg7, -%50 + 63] : memref<?x64xf32>
        %66 = affine.load %arg6[%arg7, -%50 + 63] : memref<?x64xf32>
        affine.store %66, %alloca_23[] : memref<f32>
        %67 = affine.load %alloca_16[0] : memref<1xf32>
        affine.store %67, %alloca_25[] : memref<f32>
        %68 = affine.load %arg3[%arg7, -%50 + 63] : memref<?x64xf32>
        affine.store %68, %alloca_3[] : memref<f32>
        %69 = affine.load %alloca_13[0] : memref<1xf32>
        affine.store %69, %alloca_21[] : memref<f32>
        %70 = affine.apply #map1(%arg8)
        %71 = affine.load %alloca_12[0] : memref<1xf32>
        %72 = affine.load %alloca_3[] : memref<f32>
        affine.store %72, %alloca_13[0] : memref<1xf32>
        %73 = arith.mulf %71, %72 : f32
        %74 = affine.load %alloca_9[0] : memref<1xf32>
        %75 = affine.load %alloca_21[] : memref<f32>
        %76 = arith.mulf %74, %75 : f32
        %77 = arith.addf %73, %76 : f32
        %78 = affine.load %alloca_15[0] : memref<1xf32>
        %79 = affine.load %alloca_23[] : memref<f32>
        affine.store %79, %alloca_16[0] : memref<1xf32>
        %80 = arith.mulf %78, %79 : f32
        %81 = arith.addf %77, %80 : f32
        %82 = affine.load %alloca_6[0] : memref<1xf32>
        %83 = affine.load %alloca_25[] : memref<f32>
        %84 = arith.mulf %82, %83 : f32
        %85 = arith.addf %81, %84 : f32
        affine.store %85, %arg6[%arg7, -%70 + 63] : memref<?x64xf32>
        %86 = affine.load %arg6[%arg7, -%70 + 63] : memref<?x64xf32>
        affine.store %86, %alloca_23[] : memref<f32>
        %87 = affine.load %alloca_16[0] : memref<1xf32>
        affine.store %87, %alloca_25[] : memref<f32>
        %88 = affine.load %arg3[%arg7, -%70 + 63] : memref<?x64xf32>
        affine.store %88, %alloca_3[] : memref<f32>
        %89 = affine.load %alloca_13[0] : memref<1xf32>
        affine.store %89, %alloca_21[] : memref<f32>
        %90 = affine.apply #map2(%arg8)
        %91 = affine.load %alloca_12[0] : memref<1xf32>
        %92 = affine.load %alloca_3[] : memref<f32>
        affine.store %92, %alloca_13[0] : memref<1xf32>
        %93 = arith.mulf %91, %92 : f32
        %94 = affine.load %alloca_9[0] : memref<1xf32>
        %95 = affine.load %alloca_21[] : memref<f32>
        %96 = arith.mulf %94, %95 : f32
        %97 = arith.addf %93, %96 : f32
        %98 = affine.load %alloca_15[0] : memref<1xf32>
        %99 = affine.load %alloca_23[] : memref<f32>
        affine.store %99, %alloca_16[0] : memref<1xf32>
        %100 = arith.mulf %98, %99 : f32
        %101 = arith.addf %97, %100 : f32
        %102 = affine.load %alloca_6[0] : memref<1xf32>
        %103 = affine.load %alloca_25[] : memref<f32>
        %104 = arith.mulf %102, %103 : f32
        %105 = arith.addf %101, %104 : f32
        affine.store %105, %arg6[%arg7, -%90 + 63] : memref<?x64xf32>
        %106 = affine.load %arg6[%arg7, -%90 + 63] : memref<?x64xf32>
        affine.store %106, %alloca_23[] : memref<f32>
        %107 = affine.load %alloca_16[0] : memref<1xf32>
        affine.store %107, %alloca_25[] : memref<f32>
        %108 = affine.load %arg3[%arg7, -%90 + 63] : memref<?x64xf32>
        affine.store %108, %alloca_3[] : memref<f32>
        %109 = affine.load %alloca_13[0] : memref<1xf32>
        affine.store %109, %alloca_21[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = #map3(%arg7) to #map4(%arg7) {
          affine.for %arg10 = #map3(%arg8) to #map4(%arg8) step 4 {
            %31 = affine.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %32 = affine.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %33 = arith.addf %31, %32 : f32
            affine.store %33, %arg4[%arg9, %arg10] : memref<?x64xf32>
            %34 = affine.apply #map(%arg10)
            %35 = affine.load %arg5[%arg9, %34] : memref<?x64xf32>
            %36 = affine.load %arg6[%arg9, %34] : memref<?x64xf32>
            %37 = arith.addf %35, %36 : f32
            affine.store %37, %arg4[%arg9, %34] : memref<?x64xf32>
            %38 = affine.apply #map1(%arg10)
            %39 = affine.load %arg5[%arg9, %38] : memref<?x64xf32>
            %40 = affine.load %arg6[%arg9, %38] : memref<?x64xf32>
            %41 = arith.addf %39, %40 : f32
            affine.store %41, %arg4[%arg9, %38] : memref<?x64xf32>
            %42 = affine.apply #map2(%arg10)
            %43 = affine.load %arg5[%arg9, %42] : memref<?x64xf32>
            %44 = affine.load %arg6[%arg9, %42] : memref<?x64xf32>
            %45 = arith.addf %43, %44 : f32
            affine.store %45, %arg4[%arg9, %42] : memref<?x64xf32>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_24[] : memref<f32>
      affine.store %cst, %alloca_4[] : memref<f32>
      affine.store %cst, %alloca_14[] : memref<f32>
      affine.for %arg8 = 0 to 64 step 4 {
        %31 = affine.load %alloca_11[0] : memref<1xf32>
        %32 = affine.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %33 = arith.mulf %31, %32 : f32
        %34 = affine.load %alloca_18[0] : memref<1xf32>
        %35 = affine.load %alloca_14[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %38 = affine.load %alloca_15[0] : memref<1xf32>
        %39 = affine.load %alloca_4[] : memref<f32>
        affine.store %39, %alloca_19[0] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %42 = affine.load %alloca_6[0] : memref<1xf32>
        %43 = affine.load %alloca_24[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        affine.store %45, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %46 = affine.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        affine.store %46, %alloca_4[] : memref<f32>
        %47 = affine.load %alloca_19[0] : memref<1xf32>
        affine.store %47, %alloca_24[] : memref<f32>
        %48 = affine.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        affine.store %48, %alloca_14[] : memref<f32>
        %49 = affine.apply #map(%arg8)
        %50 = affine.load %alloca_11[0] : memref<1xf32>
        %51 = affine.load %arg4[%49, %arg7] : memref<?x64xf32>
        %52 = arith.mulf %50, %51 : f32
        %53 = affine.load %alloca_18[0] : memref<1xf32>
        %54 = affine.load %alloca_14[] : memref<f32>
        %55 = arith.mulf %53, %54 : f32
        %56 = arith.addf %52, %55 : f32
        %57 = affine.load %alloca_15[0] : memref<1xf32>
        %58 = affine.load %alloca_4[] : memref<f32>
        affine.store %58, %alloca_19[0] : memref<1xf32>
        %59 = arith.mulf %57, %58 : f32
        %60 = arith.addf %56, %59 : f32
        %61 = affine.load %alloca_6[0] : memref<1xf32>
        %62 = affine.load %alloca_24[] : memref<f32>
        %63 = arith.mulf %61, %62 : f32
        %64 = arith.addf %60, %63 : f32
        affine.store %64, %arg5[%49, %arg7] : memref<?x64xf32>
        %65 = affine.load %arg5[%49, %arg7] : memref<?x64xf32>
        affine.store %65, %alloca_4[] : memref<f32>
        %66 = affine.load %alloca_19[0] : memref<1xf32>
        affine.store %66, %alloca_24[] : memref<f32>
        %67 = affine.load %arg4[%49, %arg7] : memref<?x64xf32>
        affine.store %67, %alloca_14[] : memref<f32>
        %68 = affine.apply #map1(%arg8)
        %69 = affine.load %alloca_11[0] : memref<1xf32>
        %70 = affine.load %arg4[%68, %arg7] : memref<?x64xf32>
        %71 = arith.mulf %69, %70 : f32
        %72 = affine.load %alloca_18[0] : memref<1xf32>
        %73 = affine.load %alloca_14[] : memref<f32>
        %74 = arith.mulf %72, %73 : f32
        %75 = arith.addf %71, %74 : f32
        %76 = affine.load %alloca_15[0] : memref<1xf32>
        %77 = affine.load %alloca_4[] : memref<f32>
        affine.store %77, %alloca_19[0] : memref<1xf32>
        %78 = arith.mulf %76, %77 : f32
        %79 = arith.addf %75, %78 : f32
        %80 = affine.load %alloca_6[0] : memref<1xf32>
        %81 = affine.load %alloca_24[] : memref<f32>
        %82 = arith.mulf %80, %81 : f32
        %83 = arith.addf %79, %82 : f32
        affine.store %83, %arg5[%68, %arg7] : memref<?x64xf32>
        %84 = affine.load %arg5[%68, %arg7] : memref<?x64xf32>
        affine.store %84, %alloca_4[] : memref<f32>
        %85 = affine.load %alloca_19[0] : memref<1xf32>
        affine.store %85, %alloca_24[] : memref<f32>
        %86 = affine.load %arg4[%68, %arg7] : memref<?x64xf32>
        affine.store %86, %alloca_14[] : memref<f32>
        %87 = affine.apply #map2(%arg8)
        %88 = affine.load %alloca_11[0] : memref<1xf32>
        %89 = affine.load %arg4[%87, %arg7] : memref<?x64xf32>
        %90 = arith.mulf %88, %89 : f32
        %91 = affine.load %alloca_18[0] : memref<1xf32>
        %92 = affine.load %alloca_14[] : memref<f32>
        %93 = arith.mulf %91, %92 : f32
        %94 = arith.addf %90, %93 : f32
        %95 = affine.load %alloca_15[0] : memref<1xf32>
        %96 = affine.load %alloca_4[] : memref<f32>
        affine.store %96, %alloca_19[0] : memref<1xf32>
        %97 = arith.mulf %95, %96 : f32
        %98 = arith.addf %94, %97 : f32
        %99 = affine.load %alloca_6[0] : memref<1xf32>
        %100 = affine.load %alloca_24[] : memref<f32>
        %101 = arith.mulf %99, %100 : f32
        %102 = arith.addf %98, %101 : f32
        affine.store %102, %arg5[%87, %arg7] : memref<?x64xf32>
        %103 = affine.load %arg5[%87, %arg7] : memref<?x64xf32>
        affine.store %103, %alloca_4[] : memref<f32>
        %104 = affine.load %alloca_19[0] : memref<1xf32>
        affine.store %104, %alloca_24[] : memref<f32>
        %105 = affine.load %arg4[%87, %arg7] : memref<?x64xf32>
        affine.store %105, %alloca_14[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_25[] : memref<f32>
      affine.store %cst, %alloca_23[] : memref<f32>
      affine.store %cst, %alloca_22[] : memref<f32>
      affine.store %cst, %alloca_10[] : memref<f32>
      affine.for %arg8 = 0 to 64 step 4 {
        %31 = affine.load %alloca_12[0] : memref<1xf32>
        %32 = affine.load %alloca_10[] : memref<f32>
        affine.store %32, %alloca_17[0] : memref<1xf32>
        %33 = arith.mulf %31, %32 : f32
        %34 = affine.load %alloca_9[0] : memref<1xf32>
        %35 = affine.load %alloca_22[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %38 = affine.load %alloca_15[0] : memref<1xf32>
        %39 = affine.load %alloca_23[] : memref<f32>
        affine.store %39, %alloca_20[0] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %42 = affine.load %alloca_6[0] : memref<1xf32>
        %43 = affine.load %alloca_25[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        affine.store %45, %arg6[-%arg8 + 63, %arg7] : memref<?x64xf32>
        %46 = affine.load %arg6[-%arg8 + 63, %arg7] : memref<?x64xf32>
        affine.store %46, %alloca_23[] : memref<f32>
        %47 = affine.load %alloca_20[0] : memref<1xf32>
        affine.store %47, %alloca_25[] : memref<f32>
        %48 = affine.load %arg4[-%arg8 + 63, %arg7] : memref<?x64xf32>
        affine.store %48, %alloca_10[] : memref<f32>
        %49 = affine.load %alloca_17[0] : memref<1xf32>
        affine.store %49, %alloca_22[] : memref<f32>
        %50 = affine.apply #map(%arg8)
        %51 = affine.load %alloca_12[0] : memref<1xf32>
        %52 = affine.load %alloca_10[] : memref<f32>
        affine.store %52, %alloca_17[0] : memref<1xf32>
        %53 = arith.mulf %51, %52 : f32
        %54 = affine.load %alloca_9[0] : memref<1xf32>
        %55 = affine.load %alloca_22[] : memref<f32>
        %56 = arith.mulf %54, %55 : f32
        %57 = arith.addf %53, %56 : f32
        %58 = affine.load %alloca_15[0] : memref<1xf32>
        %59 = affine.load %alloca_23[] : memref<f32>
        affine.store %59, %alloca_20[0] : memref<1xf32>
        %60 = arith.mulf %58, %59 : f32
        %61 = arith.addf %57, %60 : f32
        %62 = affine.load %alloca_6[0] : memref<1xf32>
        %63 = affine.load %alloca_25[] : memref<f32>
        %64 = arith.mulf %62, %63 : f32
        %65 = arith.addf %61, %64 : f32
        affine.store %65, %arg6[-%50 + 63, %arg7] : memref<?x64xf32>
        %66 = affine.load %arg6[-%50 + 63, %arg7] : memref<?x64xf32>
        affine.store %66, %alloca_23[] : memref<f32>
        %67 = affine.load %alloca_20[0] : memref<1xf32>
        affine.store %67, %alloca_25[] : memref<f32>
        %68 = affine.load %arg4[-%50 + 63, %arg7] : memref<?x64xf32>
        affine.store %68, %alloca_10[] : memref<f32>
        %69 = affine.load %alloca_17[0] : memref<1xf32>
        affine.store %69, %alloca_22[] : memref<f32>
        %70 = affine.apply #map1(%arg8)
        %71 = affine.load %alloca_12[0] : memref<1xf32>
        %72 = affine.load %alloca_10[] : memref<f32>
        affine.store %72, %alloca_17[0] : memref<1xf32>
        %73 = arith.mulf %71, %72 : f32
        %74 = affine.load %alloca_9[0] : memref<1xf32>
        %75 = affine.load %alloca_22[] : memref<f32>
        %76 = arith.mulf %74, %75 : f32
        %77 = arith.addf %73, %76 : f32
        %78 = affine.load %alloca_15[0] : memref<1xf32>
        %79 = affine.load %alloca_23[] : memref<f32>
        affine.store %79, %alloca_20[0] : memref<1xf32>
        %80 = arith.mulf %78, %79 : f32
        %81 = arith.addf %77, %80 : f32
        %82 = affine.load %alloca_6[0] : memref<1xf32>
        %83 = affine.load %alloca_25[] : memref<f32>
        %84 = arith.mulf %82, %83 : f32
        %85 = arith.addf %81, %84 : f32
        affine.store %85, %arg6[-%70 + 63, %arg7] : memref<?x64xf32>
        %86 = affine.load %arg6[-%70 + 63, %arg7] : memref<?x64xf32>
        affine.store %86, %alloca_23[] : memref<f32>
        %87 = affine.load %alloca_20[0] : memref<1xf32>
        affine.store %87, %alloca_25[] : memref<f32>
        %88 = affine.load %arg4[-%70 + 63, %arg7] : memref<?x64xf32>
        affine.store %88, %alloca_10[] : memref<f32>
        %89 = affine.load %alloca_17[0] : memref<1xf32>
        affine.store %89, %alloca_22[] : memref<f32>
        %90 = affine.apply #map2(%arg8)
        %91 = affine.load %alloca_12[0] : memref<1xf32>
        %92 = affine.load %alloca_10[] : memref<f32>
        affine.store %92, %alloca_17[0] : memref<1xf32>
        %93 = arith.mulf %91, %92 : f32
        %94 = affine.load %alloca_9[0] : memref<1xf32>
        %95 = affine.load %alloca_22[] : memref<f32>
        %96 = arith.mulf %94, %95 : f32
        %97 = arith.addf %93, %96 : f32
        %98 = affine.load %alloca_15[0] : memref<1xf32>
        %99 = affine.load %alloca_23[] : memref<f32>
        affine.store %99, %alloca_20[0] : memref<1xf32>
        %100 = arith.mulf %98, %99 : f32
        %101 = arith.addf %97, %100 : f32
        %102 = affine.load %alloca_6[0] : memref<1xf32>
        %103 = affine.load %alloca_25[] : memref<f32>
        %104 = arith.mulf %102, %103 : f32
        %105 = arith.addf %101, %104 : f32
        affine.store %105, %arg6[-%90 + 63, %arg7] : memref<?x64xf32>
        %106 = affine.load %arg6[-%90 + 63, %arg7] : memref<?x64xf32>
        affine.store %106, %alloca_23[] : memref<f32>
        %107 = affine.load %alloca_20[0] : memref<1xf32>
        affine.store %107, %alloca_25[] : memref<f32>
        %108 = affine.load %arg4[-%90 + 63, %arg7] : memref<?x64xf32>
        affine.store %108, %alloca_10[] : memref<f32>
        %109 = affine.load %alloca_17[0] : memref<1xf32>
        affine.store %109, %alloca_22[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = #map3(%arg7) to #map4(%arg7) {
          affine.for %arg10 = #map3(%arg8) to #map4(%arg8) step 4 {
            %31 = affine.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %32 = affine.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %33 = arith.addf %31, %32 : f32
            affine.store %33, %arg4[%arg9, %arg10] : memref<?x64xf32>
            %34 = affine.apply #map(%arg10)
            %35 = affine.load %arg5[%arg9, %34] : memref<?x64xf32>
            %36 = affine.load %arg6[%arg9, %34] : memref<?x64xf32>
            %37 = arith.addf %35, %36 : f32
            affine.store %37, %arg4[%arg9, %34] : memref<?x64xf32>
            %38 = affine.apply #map1(%arg10)
            %39 = affine.load %arg5[%arg9, %38] : memref<?x64xf32>
            %40 = affine.load %arg6[%arg9, %38] : memref<?x64xf32>
            %41 = arith.addf %39, %40 : f32
            affine.store %41, %arg4[%arg9, %38] : memref<?x64xf32>
            %42 = affine.apply #map2(%arg10)
            %43 = affine.load %arg5[%arg9, %42] : memref<?x64xf32>
            %44 = affine.load %arg6[%arg9, %42] : memref<?x64xf32>
            %45 = arith.addf %43, %44 : f32
            affine.store %45, %arg4[%arg9, %42] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

