#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map6 = affine_map<(d0, d1) -> (d0 * 32 + d1 * 4)>
module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<1xf32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_10 = memref.alloca() : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
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
    affine.store %15, %alloca_9[0] : memref<1xf32>
    %16 = affine.load %alloca_9[0] : memref<1xf32>
    affine.store %16, %alloca[0] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    affine.store %19, %alloca_7[0] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    affine.store %21, %alloca_18[0] : memref<1xf32>
    %22 = affine.load %alloca[0] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    affine.store %26, %alloca_14[0] : memref<1xf32>
    %27 = affine.load %alloca_7[0] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    affine.store %29, %alloca_12[0] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    affine.store %30, %alloca_5[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    affine.store %31, %alloca_11[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    affine.store %32, %alloca_4[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    affine.store %33, %alloca_24[] : memref<f32>
    affine.for %arg7 = 0 to 64 {
      affine.parallel (%arg8) = (0) to (1) {
        %40 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %alloca_5[] : memref<f32>
        affine.store %cst, %alloca_24[] : memref<f32>
        affine.store %cst, %alloca_4[] : memref<f32>
        %41 = affine.load %alloca_9[0] : memref<1xf32>
        %42 = affine.load %alloca_18[0] : memref<1xf32>
        %43 = affine.load %alloca_15[0] : memref<1xf32>
        %44 = affine.load %alloca_6[0] : memref<1xf32>
        %45 = affine.load %alloca_9[0] : memref<1xf32>
        %46 = affine.load %alloca_18[0] : memref<1xf32>
        %47 = affine.load %alloca_15[0] : memref<1xf32>
        %48 = affine.load %alloca_6[0] : memref<1xf32>
        %49 = affine.load %alloca_9[0] : memref<1xf32>
        %50 = affine.load %alloca_18[0] : memref<1xf32>
        %51 = affine.load %alloca_15[0] : memref<1xf32>
        %52 = affine.load %alloca_6[0] : memref<1xf32>
        %53 = affine.load %alloca_9[0] : memref<1xf32>
        %54 = affine.load %alloca_18[0] : memref<1xf32>
        %55 = affine.load %alloca_15[0] : memref<1xf32>
        %56 = affine.load %alloca_6[0] : memref<1xf32>
        affine.for %arg9 = 0 to 16 {
          %57 = affine.apply #map1(%arg9)
          %58 = affine.load %arg3[%40, %57] : memref<?x64xf32>
          %59 = arith.mulf %41, %58 : f32
          %60 = affine.load %alloca_5[] : memref<f32>
          %61 = arith.mulf %42, %60 : f32
          %62 = arith.addf %59, %61 : f32
          %63 = affine.load %alloca_4[] : memref<f32>
          affine.store %63, %alloca_8[0] : memref<1xf32>
          %64 = arith.mulf %43, %63 : f32
          %65 = arith.addf %62, %64 : f32
          %66 = affine.load %alloca_24[] : memref<f32>
          %67 = arith.mulf %44, %66 : f32
          %68 = arith.addf %65, %67 : f32
          affine.store %68, %arg5[%40, %57] : memref<?x64xf32>
          %69 = affine.load %arg5[%40, %57] : memref<?x64xf32>
          affine.store %69, %alloca_4[] : memref<f32>
          %70 = affine.load %alloca_8[0] : memref<1xf32>
          affine.store %70, %alloca_24[] : memref<f32>
          %71 = affine.load %arg3[%40, %57] : memref<?x64xf32>
          affine.store %71, %alloca_5[] : memref<f32>
          %72 = affine.apply #map2(%57)
          %73 = affine.load %arg3[%40, %72] : memref<?x64xf32>
          %74 = arith.mulf %45, %73 : f32
          %75 = affine.load %alloca_5[] : memref<f32>
          %76 = arith.mulf %46, %75 : f32
          %77 = arith.addf %74, %76 : f32
          %78 = affine.load %alloca_4[] : memref<f32>
          affine.store %78, %alloca_8[0] : memref<1xf32>
          %79 = arith.mulf %47, %78 : f32
          %80 = arith.addf %77, %79 : f32
          %81 = affine.load %alloca_24[] : memref<f32>
          %82 = arith.mulf %48, %81 : f32
          %83 = arith.addf %80, %82 : f32
          affine.store %83, %arg5[%40, %72] : memref<?x64xf32>
          %84 = affine.load %arg5[%40, %72] : memref<?x64xf32>
          affine.store %84, %alloca_4[] : memref<f32>
          %85 = affine.load %alloca_8[0] : memref<1xf32>
          affine.store %85, %alloca_24[] : memref<f32>
          %86 = affine.load %arg3[%40, %72] : memref<?x64xf32>
          affine.store %86, %alloca_5[] : memref<f32>
          %87 = affine.apply #map3(%57)
          %88 = affine.load %arg3[%40, %87] : memref<?x64xf32>
          %89 = arith.mulf %49, %88 : f32
          %90 = affine.load %alloca_5[] : memref<f32>
          %91 = arith.mulf %50, %90 : f32
          %92 = arith.addf %89, %91 : f32
          %93 = affine.load %alloca_4[] : memref<f32>
          affine.store %93, %alloca_8[0] : memref<1xf32>
          %94 = arith.mulf %51, %93 : f32
          %95 = arith.addf %92, %94 : f32
          %96 = affine.load %alloca_24[] : memref<f32>
          %97 = arith.mulf %52, %96 : f32
          %98 = arith.addf %95, %97 : f32
          affine.store %98, %arg5[%40, %87] : memref<?x64xf32>
          %99 = affine.load %arg5[%40, %87] : memref<?x64xf32>
          affine.store %99, %alloca_4[] : memref<f32>
          %100 = affine.load %alloca_8[0] : memref<1xf32>
          affine.store %100, %alloca_24[] : memref<f32>
          %101 = affine.load %arg3[%40, %87] : memref<?x64xf32>
          affine.store %101, %alloca_5[] : memref<f32>
          %102 = affine.apply #map4(%57)
          %103 = affine.load %arg3[%40, %102] : memref<?x64xf32>
          %104 = arith.mulf %53, %103 : f32
          %105 = affine.load %alloca_5[] : memref<f32>
          %106 = arith.mulf %54, %105 : f32
          %107 = arith.addf %104, %106 : f32
          %108 = affine.load %alloca_4[] : memref<f32>
          affine.store %108, %alloca_8[0] : memref<1xf32>
          %109 = arith.mulf %55, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = affine.load %alloca_24[] : memref<f32>
          %112 = arith.mulf %56, %111 : f32
          %113 = arith.addf %110, %112 : f32
          affine.store %113, %arg5[%40, %102] : memref<?x64xf32>
          %114 = affine.load %arg5[%40, %102] : memref<?x64xf32>
          affine.store %114, %alloca_4[] : memref<f32>
          %115 = affine.load %alloca_8[0] : memref<1xf32>
          affine.store %115, %alloca_24[] : memref<f32>
          %116 = affine.load %arg3[%40, %102] : memref<?x64xf32>
          affine.store %116, %alloca_5[] : memref<f32>
        }
      }
    }
    %34 = llvm.mlir.undef : f32
    affine.store %34, %alloca_3[] : memref<f32>
    %35 = llvm.mlir.undef : f32
    affine.store %35, %alloca_21[] : memref<f32>
    %36 = llvm.mlir.undef : f32
    affine.store %36, %alloca_10[] : memref<f32>
    %37 = llvm.mlir.undef : f32
    affine.store %37, %alloca_23[] : memref<f32>
    %38 = llvm.mlir.undef : f32
    affine.store %38, %alloca_22[] : memref<f32>
    %39 = llvm.mlir.undef : f32
    affine.store %39, %alloca_25[] : memref<f32>
    affine.for %arg7 = 0 to 64 {
      affine.parallel (%arg8) = (0) to (1) {
        %40 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %alloca_21[] : memref<f32>
        affine.store %cst, %alloca_3[] : memref<f32>
        affine.store %cst, %alloca_25[] : memref<f32>
        affine.store %cst, %alloca_22[] : memref<f32>
        %41 = affine.load %alloca_12[0] : memref<1xf32>
        %42 = affine.load %alloca_14[0] : memref<1xf32>
        %43 = affine.load %alloca_15[0] : memref<1xf32>
        %44 = affine.load %alloca_6[0] : memref<1xf32>
        %45 = affine.load %alloca_12[0] : memref<1xf32>
        %46 = affine.load %alloca_14[0] : memref<1xf32>
        %47 = affine.load %alloca_15[0] : memref<1xf32>
        %48 = affine.load %alloca_6[0] : memref<1xf32>
        %49 = affine.load %alloca_12[0] : memref<1xf32>
        %50 = affine.load %alloca_14[0] : memref<1xf32>
        %51 = affine.load %alloca_15[0] : memref<1xf32>
        %52 = affine.load %alloca_6[0] : memref<1xf32>
        %53 = affine.load %alloca_12[0] : memref<1xf32>
        %54 = affine.load %alloca_14[0] : memref<1xf32>
        %55 = affine.load %alloca_15[0] : memref<1xf32>
        %56 = affine.load %alloca_6[0] : memref<1xf32>
        affine.for %arg9 = 0 to 16 {
          %57 = affine.apply #map1(%arg9)
          %58 = affine.load %alloca_3[] : memref<f32>
          affine.store %58, %alloca_13[0] : memref<1xf32>
          %59 = arith.mulf %41, %58 : f32
          %60 = affine.load %alloca_21[] : memref<f32>
          %61 = arith.mulf %42, %60 : f32
          %62 = arith.addf %59, %61 : f32
          %63 = affine.load %alloca_22[] : memref<f32>
          affine.store %63, %alloca_16[0] : memref<1xf32>
          %64 = arith.mulf %43, %63 : f32
          %65 = arith.addf %62, %64 : f32
          %66 = affine.load %alloca_25[] : memref<f32>
          %67 = arith.mulf %44, %66 : f32
          %68 = arith.addf %65, %67 : f32
          affine.store %68, %arg6[%40, -%57 + 63] : memref<?x64xf32>
          %69 = affine.load %arg6[%40, -%57 + 63] : memref<?x64xf32>
          affine.store %69, %alloca_22[] : memref<f32>
          %70 = affine.load %alloca_16[0] : memref<1xf32>
          affine.store %70, %alloca_25[] : memref<f32>
          %71 = affine.load %arg3[%40, -%57 + 63] : memref<?x64xf32>
          affine.store %71, %alloca_3[] : memref<f32>
          %72 = affine.load %alloca_13[0] : memref<1xf32>
          affine.store %72, %alloca_21[] : memref<f32>
          %73 = affine.apply #map2(%57)
          %74 = affine.load %alloca_3[] : memref<f32>
          affine.store %74, %alloca_13[0] : memref<1xf32>
          %75 = arith.mulf %45, %74 : f32
          %76 = affine.load %alloca_21[] : memref<f32>
          %77 = arith.mulf %46, %76 : f32
          %78 = arith.addf %75, %77 : f32
          %79 = affine.load %alloca_22[] : memref<f32>
          affine.store %79, %alloca_16[0] : memref<1xf32>
          %80 = arith.mulf %47, %79 : f32
          %81 = arith.addf %78, %80 : f32
          %82 = affine.load %alloca_25[] : memref<f32>
          %83 = arith.mulf %48, %82 : f32
          %84 = arith.addf %81, %83 : f32
          affine.store %84, %arg6[%40, -%73 + 63] : memref<?x64xf32>
          %85 = affine.load %arg6[%40, -%73 + 63] : memref<?x64xf32>
          affine.store %85, %alloca_22[] : memref<f32>
          %86 = affine.load %alloca_16[0] : memref<1xf32>
          affine.store %86, %alloca_25[] : memref<f32>
          %87 = affine.load %arg3[%40, -%73 + 63] : memref<?x64xf32>
          affine.store %87, %alloca_3[] : memref<f32>
          %88 = affine.load %alloca_13[0] : memref<1xf32>
          affine.store %88, %alloca_21[] : memref<f32>
          %89 = affine.apply #map3(%57)
          %90 = affine.load %alloca_3[] : memref<f32>
          affine.store %90, %alloca_13[0] : memref<1xf32>
          %91 = arith.mulf %49, %90 : f32
          %92 = affine.load %alloca_21[] : memref<f32>
          %93 = arith.mulf %50, %92 : f32
          %94 = arith.addf %91, %93 : f32
          %95 = affine.load %alloca_22[] : memref<f32>
          affine.store %95, %alloca_16[0] : memref<1xf32>
          %96 = arith.mulf %51, %95 : f32
          %97 = arith.addf %94, %96 : f32
          %98 = affine.load %alloca_25[] : memref<f32>
          %99 = arith.mulf %52, %98 : f32
          %100 = arith.addf %97, %99 : f32
          affine.store %100, %arg6[%40, -%89 + 63] : memref<?x64xf32>
          %101 = affine.load %arg6[%40, -%89 + 63] : memref<?x64xf32>
          affine.store %101, %alloca_22[] : memref<f32>
          %102 = affine.load %alloca_16[0] : memref<1xf32>
          affine.store %102, %alloca_25[] : memref<f32>
          %103 = affine.load %arg3[%40, -%89 + 63] : memref<?x64xf32>
          affine.store %103, %alloca_3[] : memref<f32>
          %104 = affine.load %alloca_13[0] : memref<1xf32>
          affine.store %104, %alloca_21[] : memref<f32>
          %105 = affine.apply #map4(%57)
          %106 = affine.load %alloca_3[] : memref<f32>
          affine.store %106, %alloca_13[0] : memref<1xf32>
          %107 = arith.mulf %53, %106 : f32
          %108 = affine.load %alloca_21[] : memref<f32>
          %109 = arith.mulf %54, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = affine.load %alloca_22[] : memref<f32>
          affine.store %111, %alloca_16[0] : memref<1xf32>
          %112 = arith.mulf %55, %111 : f32
          %113 = arith.addf %110, %112 : f32
          %114 = affine.load %alloca_25[] : memref<f32>
          %115 = arith.mulf %56, %114 : f32
          %116 = arith.addf %113, %115 : f32
          affine.store %116, %arg6[%40, -%105 + 63] : memref<?x64xf32>
          %117 = affine.load %arg6[%40, -%105 + 63] : memref<?x64xf32>
          affine.store %117, %alloca_22[] : memref<f32>
          %118 = affine.load %alloca_16[0] : memref<1xf32>
          affine.store %118, %alloca_25[] : memref<f32>
          %119 = affine.load %arg3[%40, -%105 + 63] : memref<?x64xf32>
          affine.store %119, %alloca_3[] : memref<f32>
          %120 = affine.load %alloca_13[0] : memref<1xf32>
          affine.store %120, %alloca_21[] : memref<f32>
        }
      }
    }
    affine.parallel (%arg7) = (0) to (2) {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = 0 to 32 {
          %40 = affine.apply #map5(%arg7, %arg9)
          affine.for %arg10 = 0 to 8 {
            %41 = affine.apply #map6(%arg8, %arg10)
            %42 = affine.load %arg5[%40, %41] : memref<?x64xf32>
            %43 = affine.load %arg6[%40, %41] : memref<?x64xf32>
            %44 = arith.addf %42, %43 : f32
            affine.store %44, %arg4[%40, %41] : memref<?x64xf32>
            %45 = affine.apply #map2(%41)
            %46 = affine.load %arg5[%40, %45] : memref<?x64xf32>
            %47 = affine.load %arg6[%40, %45] : memref<?x64xf32>
            %48 = arith.addf %46, %47 : f32
            affine.store %48, %arg4[%40, %45] : memref<?x64xf32>
            %49 = affine.apply #map3(%41)
            %50 = affine.load %arg5[%40, %49] : memref<?x64xf32>
            %51 = affine.load %arg6[%40, %49] : memref<?x64xf32>
            %52 = arith.addf %50, %51 : f32
            affine.store %52, %arg4[%40, %49] : memref<?x64xf32>
            %53 = affine.apply #map4(%41)
            %54 = affine.load %arg5[%40, %53] : memref<?x64xf32>
            %55 = affine.load %arg6[%40, %53] : memref<?x64xf32>
            %56 = arith.addf %54, %55 : f32
            affine.store %56, %arg4[%40, %53] : memref<?x64xf32>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.parallel (%arg8) = (0) to (1) {
        %40 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %alloca_24[] : memref<f32>
        affine.store %cst, %alloca_4[] : memref<f32>
        affine.store %cst, %alloca_11[] : memref<f32>
        %41 = affine.load %alloca_9[0] : memref<1xf32>
        %42 = affine.load %alloca_18[0] : memref<1xf32>
        %43 = affine.load %alloca_15[0] : memref<1xf32>
        %44 = affine.load %alloca_6[0] : memref<1xf32>
        %45 = affine.load %alloca_9[0] : memref<1xf32>
        %46 = affine.load %alloca_18[0] : memref<1xf32>
        %47 = affine.load %alloca_15[0] : memref<1xf32>
        %48 = affine.load %alloca_6[0] : memref<1xf32>
        %49 = affine.load %alloca_9[0] : memref<1xf32>
        %50 = affine.load %alloca_18[0] : memref<1xf32>
        %51 = affine.load %alloca_15[0] : memref<1xf32>
        %52 = affine.load %alloca_6[0] : memref<1xf32>
        %53 = affine.load %alloca_9[0] : memref<1xf32>
        %54 = affine.load %alloca_18[0] : memref<1xf32>
        %55 = affine.load %alloca_15[0] : memref<1xf32>
        %56 = affine.load %alloca_6[0] : memref<1xf32>
        affine.for %arg9 = 0 to 16 {
          %57 = affine.apply #map1(%arg9)
          %58 = affine.load %arg4[%57, %40] : memref<?x64xf32>
          %59 = arith.mulf %41, %58 : f32
          %60 = affine.load %alloca_11[] : memref<f32>
          %61 = arith.mulf %42, %60 : f32
          %62 = arith.addf %59, %61 : f32
          %63 = affine.load %alloca_4[] : memref<f32>
          affine.store %63, %alloca_19[0] : memref<1xf32>
          %64 = arith.mulf %43, %63 : f32
          %65 = arith.addf %62, %64 : f32
          %66 = affine.load %alloca_24[] : memref<f32>
          %67 = arith.mulf %44, %66 : f32
          %68 = arith.addf %65, %67 : f32
          affine.store %68, %arg5[%57, %40] : memref<?x64xf32>
          %69 = affine.load %arg5[%57, %40] : memref<?x64xf32>
          affine.store %69, %alloca_4[] : memref<f32>
          %70 = affine.load %alloca_19[0] : memref<1xf32>
          affine.store %70, %alloca_24[] : memref<f32>
          %71 = affine.load %arg4[%57, %40] : memref<?x64xf32>
          affine.store %71, %alloca_11[] : memref<f32>
          %72 = affine.apply #map2(%57)
          %73 = affine.load %arg4[%72, %40] : memref<?x64xf32>
          %74 = arith.mulf %45, %73 : f32
          %75 = affine.load %alloca_11[] : memref<f32>
          %76 = arith.mulf %46, %75 : f32
          %77 = arith.addf %74, %76 : f32
          %78 = affine.load %alloca_4[] : memref<f32>
          affine.store %78, %alloca_19[0] : memref<1xf32>
          %79 = arith.mulf %47, %78 : f32
          %80 = arith.addf %77, %79 : f32
          %81 = affine.load %alloca_24[] : memref<f32>
          %82 = arith.mulf %48, %81 : f32
          %83 = arith.addf %80, %82 : f32
          affine.store %83, %arg5[%72, %40] : memref<?x64xf32>
          %84 = affine.load %arg5[%72, %40] : memref<?x64xf32>
          affine.store %84, %alloca_4[] : memref<f32>
          %85 = affine.load %alloca_19[0] : memref<1xf32>
          affine.store %85, %alloca_24[] : memref<f32>
          %86 = affine.load %arg4[%72, %40] : memref<?x64xf32>
          affine.store %86, %alloca_11[] : memref<f32>
          %87 = affine.apply #map3(%57)
          %88 = affine.load %arg4[%87, %40] : memref<?x64xf32>
          %89 = arith.mulf %49, %88 : f32
          %90 = affine.load %alloca_11[] : memref<f32>
          %91 = arith.mulf %50, %90 : f32
          %92 = arith.addf %89, %91 : f32
          %93 = affine.load %alloca_4[] : memref<f32>
          affine.store %93, %alloca_19[0] : memref<1xf32>
          %94 = arith.mulf %51, %93 : f32
          %95 = arith.addf %92, %94 : f32
          %96 = affine.load %alloca_24[] : memref<f32>
          %97 = arith.mulf %52, %96 : f32
          %98 = arith.addf %95, %97 : f32
          affine.store %98, %arg5[%87, %40] : memref<?x64xf32>
          %99 = affine.load %arg5[%87, %40] : memref<?x64xf32>
          affine.store %99, %alloca_4[] : memref<f32>
          %100 = affine.load %alloca_19[0] : memref<1xf32>
          affine.store %100, %alloca_24[] : memref<f32>
          %101 = affine.load %arg4[%87, %40] : memref<?x64xf32>
          affine.store %101, %alloca_11[] : memref<f32>
          %102 = affine.apply #map4(%57)
          %103 = affine.load %arg4[%102, %40] : memref<?x64xf32>
          %104 = arith.mulf %53, %103 : f32
          %105 = affine.load %alloca_11[] : memref<f32>
          %106 = arith.mulf %54, %105 : f32
          %107 = arith.addf %104, %106 : f32
          %108 = affine.load %alloca_4[] : memref<f32>
          affine.store %108, %alloca_19[0] : memref<1xf32>
          %109 = arith.mulf %55, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = affine.load %alloca_24[] : memref<f32>
          %112 = arith.mulf %56, %111 : f32
          %113 = arith.addf %110, %112 : f32
          affine.store %113, %arg5[%102, %40] : memref<?x64xf32>
          %114 = affine.load %arg5[%102, %40] : memref<?x64xf32>
          affine.store %114, %alloca_4[] : memref<f32>
          %115 = affine.load %alloca_19[0] : memref<1xf32>
          affine.store %115, %alloca_24[] : memref<f32>
          %116 = affine.load %arg4[%102, %40] : memref<?x64xf32>
          affine.store %116, %alloca_11[] : memref<f32>
        }
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.parallel (%arg8) = (0) to (1) {
        %40 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %alloca_25[] : memref<f32>
        affine.store %cst, %alloca_22[] : memref<f32>
        affine.store %cst, %alloca_23[] : memref<f32>
        affine.store %cst, %alloca_10[] : memref<f32>
        %41 = affine.load %alloca_12[0] : memref<1xf32>
        %42 = affine.load %alloca_14[0] : memref<1xf32>
        %43 = affine.load %alloca_15[0] : memref<1xf32>
        %44 = affine.load %alloca_6[0] : memref<1xf32>
        %45 = affine.load %alloca_12[0] : memref<1xf32>
        %46 = affine.load %alloca_14[0] : memref<1xf32>
        %47 = affine.load %alloca_15[0] : memref<1xf32>
        %48 = affine.load %alloca_6[0] : memref<1xf32>
        %49 = affine.load %alloca_12[0] : memref<1xf32>
        %50 = affine.load %alloca_14[0] : memref<1xf32>
        %51 = affine.load %alloca_15[0] : memref<1xf32>
        %52 = affine.load %alloca_6[0] : memref<1xf32>
        %53 = affine.load %alloca_12[0] : memref<1xf32>
        %54 = affine.load %alloca_14[0] : memref<1xf32>
        %55 = affine.load %alloca_15[0] : memref<1xf32>
        %56 = affine.load %alloca_6[0] : memref<1xf32>
        affine.for %arg9 = 0 to 16 {
          %57 = affine.apply #map1(%arg9)
          %58 = affine.load %alloca_10[] : memref<f32>
          affine.store %58, %alloca_17[0] : memref<1xf32>
          %59 = arith.mulf %41, %58 : f32
          %60 = affine.load %alloca_23[] : memref<f32>
          %61 = arith.mulf %42, %60 : f32
          %62 = arith.addf %59, %61 : f32
          %63 = affine.load %alloca_22[] : memref<f32>
          affine.store %63, %alloca_20[0] : memref<1xf32>
          %64 = arith.mulf %43, %63 : f32
          %65 = arith.addf %62, %64 : f32
          %66 = affine.load %alloca_25[] : memref<f32>
          %67 = arith.mulf %44, %66 : f32
          %68 = arith.addf %65, %67 : f32
          affine.store %68, %arg6[-%57 + 63, %40] : memref<?x64xf32>
          %69 = affine.load %arg6[-%57 + 63, %40] : memref<?x64xf32>
          affine.store %69, %alloca_22[] : memref<f32>
          %70 = affine.load %alloca_20[0] : memref<1xf32>
          affine.store %70, %alloca_25[] : memref<f32>
          %71 = affine.load %arg4[-%57 + 63, %40] : memref<?x64xf32>
          affine.store %71, %alloca_10[] : memref<f32>
          %72 = affine.load %alloca_17[0] : memref<1xf32>
          affine.store %72, %alloca_23[] : memref<f32>
          %73 = affine.apply #map2(%57)
          %74 = affine.load %alloca_10[] : memref<f32>
          affine.store %74, %alloca_17[0] : memref<1xf32>
          %75 = arith.mulf %45, %74 : f32
          %76 = affine.load %alloca_23[] : memref<f32>
          %77 = arith.mulf %46, %76 : f32
          %78 = arith.addf %75, %77 : f32
          %79 = affine.load %alloca_22[] : memref<f32>
          affine.store %79, %alloca_20[0] : memref<1xf32>
          %80 = arith.mulf %47, %79 : f32
          %81 = arith.addf %78, %80 : f32
          %82 = affine.load %alloca_25[] : memref<f32>
          %83 = arith.mulf %48, %82 : f32
          %84 = arith.addf %81, %83 : f32
          affine.store %84, %arg6[-%73 + 63, %40] : memref<?x64xf32>
          %85 = affine.load %arg6[-%73 + 63, %40] : memref<?x64xf32>
          affine.store %85, %alloca_22[] : memref<f32>
          %86 = affine.load %alloca_20[0] : memref<1xf32>
          affine.store %86, %alloca_25[] : memref<f32>
          %87 = affine.load %arg4[-%73 + 63, %40] : memref<?x64xf32>
          affine.store %87, %alloca_10[] : memref<f32>
          %88 = affine.load %alloca_17[0] : memref<1xf32>
          affine.store %88, %alloca_23[] : memref<f32>
          %89 = affine.apply #map3(%57)
          %90 = affine.load %alloca_10[] : memref<f32>
          affine.store %90, %alloca_17[0] : memref<1xf32>
          %91 = arith.mulf %49, %90 : f32
          %92 = affine.load %alloca_23[] : memref<f32>
          %93 = arith.mulf %50, %92 : f32
          %94 = arith.addf %91, %93 : f32
          %95 = affine.load %alloca_22[] : memref<f32>
          affine.store %95, %alloca_20[0] : memref<1xf32>
          %96 = arith.mulf %51, %95 : f32
          %97 = arith.addf %94, %96 : f32
          %98 = affine.load %alloca_25[] : memref<f32>
          %99 = arith.mulf %52, %98 : f32
          %100 = arith.addf %97, %99 : f32
          affine.store %100, %arg6[-%89 + 63, %40] : memref<?x64xf32>
          %101 = affine.load %arg6[-%89 + 63, %40] : memref<?x64xf32>
          affine.store %101, %alloca_22[] : memref<f32>
          %102 = affine.load %alloca_20[0] : memref<1xf32>
          affine.store %102, %alloca_25[] : memref<f32>
          %103 = affine.load %arg4[-%89 + 63, %40] : memref<?x64xf32>
          affine.store %103, %alloca_10[] : memref<f32>
          %104 = affine.load %alloca_17[0] : memref<1xf32>
          affine.store %104, %alloca_23[] : memref<f32>
          %105 = affine.apply #map4(%57)
          %106 = affine.load %alloca_10[] : memref<f32>
          affine.store %106, %alloca_17[0] : memref<1xf32>
          %107 = arith.mulf %53, %106 : f32
          %108 = affine.load %alloca_23[] : memref<f32>
          %109 = arith.mulf %54, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = affine.load %alloca_22[] : memref<f32>
          affine.store %111, %alloca_20[0] : memref<1xf32>
          %112 = arith.mulf %55, %111 : f32
          %113 = arith.addf %110, %112 : f32
          %114 = affine.load %alloca_25[] : memref<f32>
          %115 = arith.mulf %56, %114 : f32
          %116 = arith.addf %113, %115 : f32
          affine.store %116, %arg6[-%105 + 63, %40] : memref<?x64xf32>
          %117 = affine.load %arg6[-%105 + 63, %40] : memref<?x64xf32>
          affine.store %117, %alloca_22[] : memref<f32>
          %118 = affine.load %alloca_20[0] : memref<1xf32>
          affine.store %118, %alloca_25[] : memref<f32>
          %119 = affine.load %arg4[-%105 + 63, %40] : memref<?x64xf32>
          affine.store %119, %alloca_10[] : memref<f32>
          %120 = affine.load %alloca_17[0] : memref<1xf32>
          affine.store %120, %alloca_23[] : memref<f32>
        }
      }
    }
    affine.parallel (%arg7) = (0) to (2) {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = 0 to 32 {
          %40 = affine.apply #map5(%arg7, %arg9)
          affine.for %arg10 = 0 to 8 {
            %41 = affine.apply #map6(%arg8, %arg10)
            %42 = affine.load %arg5[%40, %41] : memref<?x64xf32>
            %43 = affine.load %arg6[%40, %41] : memref<?x64xf32>
            %44 = arith.addf %42, %43 : f32
            affine.store %44, %arg4[%40, %41] : memref<?x64xf32>
            %45 = affine.apply #map2(%41)
            %46 = affine.load %arg5[%40, %45] : memref<?x64xf32>
            %47 = affine.load %arg6[%40, %45] : memref<?x64xf32>
            %48 = arith.addf %46, %47 : f32
            affine.store %48, %arg4[%40, %45] : memref<?x64xf32>
            %49 = affine.apply #map3(%41)
            %50 = affine.load %arg5[%40, %49] : memref<?x64xf32>
            %51 = affine.load %arg6[%40, %49] : memref<?x64xf32>
            %52 = arith.addf %50, %51 : f32
            affine.store %52, %arg4[%40, %49] : memref<?x64xf32>
            %53 = affine.apply #map4(%41)
            %54 = affine.load %arg5[%40, %53] : memref<?x64xf32>
            %55 = affine.load %arg6[%40, %53] : memref<?x64xf32>
            %56 = arith.addf %54, %55 : f32
            affine.store %56, %arg4[%40, %53] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

