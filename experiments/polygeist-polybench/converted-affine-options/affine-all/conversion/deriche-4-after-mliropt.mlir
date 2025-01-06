#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map7 = affine_map<(d0, d1) -> (d0 * 32 + d1 * 4)>
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
    %alloca_5 = memref.alloca() : memref<f32>
    %alloca_6 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<1xf32>
    %alloca_10 = memref.alloca() : memref<f32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_13 = memref.alloca() {scop.scratchpad} : memref<1xf32>
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
    %alloca_24 = memref.alloca() : memref<1xf32>
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
    affine.store %17, %alloca_24[0] : memref<1xf32>
    %18 = arith.negf %arg2 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    affine.store %20, %alloca_8[0] : memref<1xf32>
    %21 = arith.subf %arg2, %cst_0 : f32
    %22 = arith.mulf %20, %21 : f32
    affine.store %22, %alloca_18[0] : memref<1xf32>
    %23 = affine.load %alloca_24[0] : memref<1xf32>
    %24 = arith.negf %23 : f32
    %25 = arith.mulf %arg2, %cst_2 : f32
    %26 = math.exp %25 : f32
    %27 = arith.mulf %24, %26 : f32
    affine.store %27, %alloca_13[0] : memref<1xf32>
    %28 = affine.load %alloca_8[0] : memref<1xf32>
    %29 = arith.addf %arg2, %cst_0 : f32
    %30 = arith.mulf %28, %29 : f32
    affine.store %30, %alloca_12[0] : memref<1xf32>
    affine.store %0, %alloca_5[] : memref<f32>
    affine.store %0, %alloca_14[] : memref<f32>
    affine.store %0, %alloca_4[] : memref<f32>
    affine.store %0, %alloca_25[] : memref<f32>
    %31 = affine.load %alloca_11[0] : memref<1xf32>
    %32 = affine.load %alloca_18[0] : memref<1xf32>
    %33 = affine.load %alloca_15[0] : memref<1xf32>
    %34 = affine.load %alloca_6[0] : memref<1xf32>
    %35 = affine.load %alloca_11[0] : memref<1xf32>
    %36 = affine.load %alloca_18[0] : memref<1xf32>
    %37 = affine.load %alloca_15[0] : memref<1xf32>
    %38 = affine.load %alloca_6[0] : memref<1xf32>
    %39 = affine.load %alloca_11[0] : memref<1xf32>
    %40 = affine.load %alloca_18[0] : memref<1xf32>
    %41 = affine.load %alloca_15[0] : memref<1xf32>
    %42 = affine.load %alloca_6[0] : memref<1xf32>
    %43 = affine.load %alloca_11[0] : memref<1xf32>
    %44 = affine.load %alloca_18[0] : memref<1xf32>
    %45 = affine.load %alloca_15[0] : memref<1xf32>
    %46 = affine.load %alloca_6[0] : memref<1xf32>
    affine.for %arg7 = 0 to 2 {
      %95 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 32 {
        %96 = affine.apply #map1(%95, %arg8)
        affine.store %cst, %alloca_5[] : memref<f32>
        affine.store %cst, %alloca_25[] : memref<f32>
        affine.store %cst, %alloca_4[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %97 = affine.apply #map2(%arg9)
          %98 = affine.load %arg3[%96, %97] : memref<?x64xf32>
          %99 = arith.mulf %31, %98 : f32
          %100 = affine.load %alloca_5[] : memref<f32>
          %101 = arith.mulf %32, %100 : f32
          %102 = arith.addf %99, %101 : f32
          %103 = affine.load %alloca_4[] : memref<f32>
          affine.store %103, %alloca_9[0] : memref<1xf32>
          %104 = arith.mulf %33, %103 : f32
          %105 = arith.addf %102, %104 : f32
          %106 = affine.load %alloca_25[] : memref<f32>
          %107 = arith.mulf %34, %106 : f32
          %108 = arith.addf %105, %107 : f32
          affine.store %108, %arg5[%96, %97] : memref<?x64xf32>
          %109 = affine.load %arg5[%96, %97] : memref<?x64xf32>
          affine.store %109, %alloca_4[] : memref<f32>
          %110 = affine.load %alloca_9[0] : memref<1xf32>
          affine.store %110, %alloca_25[] : memref<f32>
          %111 = affine.load %arg3[%96, %97] : memref<?x64xf32>
          affine.store %111, %alloca_5[] : memref<f32>
          %112 = affine.apply #map3(%97)
          %113 = affine.load %arg3[%96, %112] : memref<?x64xf32>
          %114 = arith.mulf %35, %113 : f32
          %115 = affine.load %alloca_5[] : memref<f32>
          %116 = arith.mulf %36, %115 : f32
          %117 = arith.addf %114, %116 : f32
          %118 = affine.load %alloca_4[] : memref<f32>
          affine.store %118, %alloca_9[0] : memref<1xf32>
          %119 = arith.mulf %37, %118 : f32
          %120 = arith.addf %117, %119 : f32
          %121 = affine.load %alloca_25[] : memref<f32>
          %122 = arith.mulf %38, %121 : f32
          %123 = arith.addf %120, %122 : f32
          affine.store %123, %arg5[%96, %112] : memref<?x64xf32>
          %124 = affine.load %arg5[%96, %112] : memref<?x64xf32>
          affine.store %124, %alloca_4[] : memref<f32>
          %125 = affine.load %alloca_9[0] : memref<1xf32>
          affine.store %125, %alloca_25[] : memref<f32>
          %126 = affine.load %arg3[%96, %112] : memref<?x64xf32>
          affine.store %126, %alloca_5[] : memref<f32>
          %127 = affine.apply #map4(%97)
          %128 = affine.load %arg3[%96, %127] : memref<?x64xf32>
          %129 = arith.mulf %39, %128 : f32
          %130 = affine.load %alloca_5[] : memref<f32>
          %131 = arith.mulf %40, %130 : f32
          %132 = arith.addf %129, %131 : f32
          %133 = affine.load %alloca_4[] : memref<f32>
          affine.store %133, %alloca_9[0] : memref<1xf32>
          %134 = arith.mulf %41, %133 : f32
          %135 = arith.addf %132, %134 : f32
          %136 = affine.load %alloca_25[] : memref<f32>
          %137 = arith.mulf %42, %136 : f32
          %138 = arith.addf %135, %137 : f32
          affine.store %138, %arg5[%96, %127] : memref<?x64xf32>
          %139 = affine.load %arg5[%96, %127] : memref<?x64xf32>
          affine.store %139, %alloca_4[] : memref<f32>
          %140 = affine.load %alloca_9[0] : memref<1xf32>
          affine.store %140, %alloca_25[] : memref<f32>
          %141 = affine.load %arg3[%96, %127] : memref<?x64xf32>
          affine.store %141, %alloca_5[] : memref<f32>
          %142 = affine.apply #map5(%97)
          %143 = affine.load %arg3[%96, %142] : memref<?x64xf32>
          %144 = arith.mulf %43, %143 : f32
          %145 = affine.load %alloca_5[] : memref<f32>
          %146 = arith.mulf %44, %145 : f32
          %147 = arith.addf %144, %146 : f32
          %148 = affine.load %alloca_4[] : memref<f32>
          affine.store %148, %alloca_9[0] : memref<1xf32>
          %149 = arith.mulf %45, %148 : f32
          %150 = arith.addf %147, %149 : f32
          %151 = affine.load %alloca_25[] : memref<f32>
          %152 = arith.mulf %46, %151 : f32
          %153 = arith.addf %150, %152 : f32
          affine.store %153, %arg5[%96, %142] : memref<?x64xf32>
          %154 = affine.load %arg5[%96, %142] : memref<?x64xf32>
          affine.store %154, %alloca_4[] : memref<f32>
          %155 = affine.load %alloca_9[0] : memref<1xf32>
          affine.store %155, %alloca_25[] : memref<f32>
          %156 = affine.load %arg3[%96, %142] : memref<?x64xf32>
          affine.store %156, %alloca_5[] : memref<f32>
        }
      }
    }
    affine.store %0, %alloca_3[] : memref<f32>
    affine.store %0, %alloca_21[] : memref<f32>
    affine.store %0, %alloca_10[] : memref<f32>
    affine.store %0, %alloca_23[] : memref<f32>
    affine.store %0, %alloca_22[] : memref<f32>
    affine.store %0, %alloca[] : memref<f32>
    %47 = affine.load %alloca_12[0] : memref<1xf32>
    %48 = affine.load %alloca_13[0] : memref<1xf32>
    %49 = affine.load %alloca_15[0] : memref<1xf32>
    %50 = affine.load %alloca_6[0] : memref<1xf32>
    %51 = affine.load %alloca_12[0] : memref<1xf32>
    %52 = affine.load %alloca_13[0] : memref<1xf32>
    %53 = affine.load %alloca_15[0] : memref<1xf32>
    %54 = affine.load %alloca_6[0] : memref<1xf32>
    %55 = affine.load %alloca_12[0] : memref<1xf32>
    %56 = affine.load %alloca_13[0] : memref<1xf32>
    %57 = affine.load %alloca_15[0] : memref<1xf32>
    %58 = affine.load %alloca_6[0] : memref<1xf32>
    %59 = affine.load %alloca_12[0] : memref<1xf32>
    %60 = affine.load %alloca_13[0] : memref<1xf32>
    %61 = affine.load %alloca_15[0] : memref<1xf32>
    %62 = affine.load %alloca_6[0] : memref<1xf32>
    affine.for %arg7 = 0 to 2 {
      %95 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 32 {
        %96 = affine.apply #map1(%95, %arg8)
        affine.store %cst, %alloca_21[] : memref<f32>
        affine.store %cst, %alloca_3[] : memref<f32>
        affine.store %cst, %alloca[] : memref<f32>
        affine.store %cst, %alloca_22[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %97 = affine.apply #map2(%arg9)
          %98 = affine.load %alloca_3[] : memref<f32>
          affine.store %98, %alloca_7[0] : memref<1xf32>
          %99 = arith.mulf %47, %98 : f32
          %100 = affine.load %alloca_21[] : memref<f32>
          %101 = arith.mulf %48, %100 : f32
          %102 = arith.addf %99, %101 : f32
          %103 = affine.load %alloca_22[] : memref<f32>
          affine.store %103, %alloca_16[0] : memref<1xf32>
          %104 = arith.mulf %49, %103 : f32
          %105 = arith.addf %102, %104 : f32
          %106 = affine.load %alloca[] : memref<f32>
          %107 = arith.mulf %50, %106 : f32
          %108 = arith.addf %105, %107 : f32
          affine.store %108, %arg6[%96, -%97 + 63] : memref<?x64xf32>
          %109 = affine.load %arg6[%96, -%97 + 63] : memref<?x64xf32>
          affine.store %109, %alloca_22[] : memref<f32>
          %110 = affine.load %alloca_16[0] : memref<1xf32>
          affine.store %110, %alloca[] : memref<f32>
          %111 = affine.load %arg3[%96, -%97 + 63] : memref<?x64xf32>
          affine.store %111, %alloca_3[] : memref<f32>
          %112 = affine.load %alloca_7[0] : memref<1xf32>
          affine.store %112, %alloca_21[] : memref<f32>
          %113 = affine.apply #map3(%97)
          %114 = affine.load %alloca_3[] : memref<f32>
          affine.store %114, %alloca_7[0] : memref<1xf32>
          %115 = arith.mulf %51, %114 : f32
          %116 = affine.load %alloca_21[] : memref<f32>
          %117 = arith.mulf %52, %116 : f32
          %118 = arith.addf %115, %117 : f32
          %119 = affine.load %alloca_22[] : memref<f32>
          affine.store %119, %alloca_16[0] : memref<1xf32>
          %120 = arith.mulf %53, %119 : f32
          %121 = arith.addf %118, %120 : f32
          %122 = affine.load %alloca[] : memref<f32>
          %123 = arith.mulf %54, %122 : f32
          %124 = arith.addf %121, %123 : f32
          affine.store %124, %arg6[%96, -%113 + 63] : memref<?x64xf32>
          %125 = affine.load %arg6[%96, -%113 + 63] : memref<?x64xf32>
          affine.store %125, %alloca_22[] : memref<f32>
          %126 = affine.load %alloca_16[0] : memref<1xf32>
          affine.store %126, %alloca[] : memref<f32>
          %127 = affine.load %arg3[%96, -%113 + 63] : memref<?x64xf32>
          affine.store %127, %alloca_3[] : memref<f32>
          %128 = affine.load %alloca_7[0] : memref<1xf32>
          affine.store %128, %alloca_21[] : memref<f32>
          %129 = affine.apply #map4(%97)
          %130 = affine.load %alloca_3[] : memref<f32>
          affine.store %130, %alloca_7[0] : memref<1xf32>
          %131 = arith.mulf %55, %130 : f32
          %132 = affine.load %alloca_21[] : memref<f32>
          %133 = arith.mulf %56, %132 : f32
          %134 = arith.addf %131, %133 : f32
          %135 = affine.load %alloca_22[] : memref<f32>
          affine.store %135, %alloca_16[0] : memref<1xf32>
          %136 = arith.mulf %57, %135 : f32
          %137 = arith.addf %134, %136 : f32
          %138 = affine.load %alloca[] : memref<f32>
          %139 = arith.mulf %58, %138 : f32
          %140 = arith.addf %137, %139 : f32
          affine.store %140, %arg6[%96, -%129 + 63] : memref<?x64xf32>
          %141 = affine.load %arg6[%96, -%129 + 63] : memref<?x64xf32>
          affine.store %141, %alloca_22[] : memref<f32>
          %142 = affine.load %alloca_16[0] : memref<1xf32>
          affine.store %142, %alloca[] : memref<f32>
          %143 = affine.load %arg3[%96, -%129 + 63] : memref<?x64xf32>
          affine.store %143, %alloca_3[] : memref<f32>
          %144 = affine.load %alloca_7[0] : memref<1xf32>
          affine.store %144, %alloca_21[] : memref<f32>
          %145 = affine.apply #map5(%97)
          %146 = affine.load %alloca_3[] : memref<f32>
          affine.store %146, %alloca_7[0] : memref<1xf32>
          %147 = arith.mulf %59, %146 : f32
          %148 = affine.load %alloca_21[] : memref<f32>
          %149 = arith.mulf %60, %148 : f32
          %150 = arith.addf %147, %149 : f32
          %151 = affine.load %alloca_22[] : memref<f32>
          affine.store %151, %alloca_16[0] : memref<1xf32>
          %152 = arith.mulf %61, %151 : f32
          %153 = arith.addf %150, %152 : f32
          %154 = affine.load %alloca[] : memref<f32>
          %155 = arith.mulf %62, %154 : f32
          %156 = arith.addf %153, %155 : f32
          affine.store %156, %arg6[%96, -%145 + 63] : memref<?x64xf32>
          %157 = affine.load %arg6[%96, -%145 + 63] : memref<?x64xf32>
          affine.store %157, %alloca_22[] : memref<f32>
          %158 = affine.load %alloca_16[0] : memref<1xf32>
          affine.store %158, %alloca[] : memref<f32>
          %159 = affine.load %arg3[%96, -%145 + 63] : memref<?x64xf32>
          affine.store %159, %alloca_3[] : memref<f32>
          %160 = affine.load %alloca_7[0] : memref<1xf32>
          affine.store %160, %alloca_21[] : memref<f32>
        }
      }
    }
    affine.parallel (%arg7) = (0) to (2) {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = 0 to 32 {
          %95 = affine.apply #map6(%arg7, %arg9)
          affine.for %arg10 = 0 to 8 {
            %96 = affine.apply #map7(%arg8, %arg10)
            %97 = affine.load %arg5[%95, %96] : memref<?x64xf32>
            %98 = affine.load %arg6[%95, %96] : memref<?x64xf32>
            %99 = arith.addf %97, %98 : f32
            affine.store %99, %arg4[%95, %96] : memref<?x64xf32>
            %100 = affine.apply #map3(%96)
            %101 = affine.load %arg5[%95, %100] : memref<?x64xf32>
            %102 = affine.load %arg6[%95, %100] : memref<?x64xf32>
            %103 = arith.addf %101, %102 : f32
            affine.store %103, %arg4[%95, %100] : memref<?x64xf32>
            %104 = affine.apply #map4(%96)
            %105 = affine.load %arg5[%95, %104] : memref<?x64xf32>
            %106 = affine.load %arg6[%95, %104] : memref<?x64xf32>
            %107 = arith.addf %105, %106 : f32
            affine.store %107, %arg4[%95, %104] : memref<?x64xf32>
            %108 = affine.apply #map5(%96)
            %109 = affine.load %arg5[%95, %108] : memref<?x64xf32>
            %110 = affine.load %arg6[%95, %108] : memref<?x64xf32>
            %111 = arith.addf %109, %110 : f32
            affine.store %111, %arg4[%95, %108] : memref<?x64xf32>
          }
        }
      }
    }
    %63 = affine.load %alloca_11[0] : memref<1xf32>
    %64 = affine.load %alloca_18[0] : memref<1xf32>
    %65 = affine.load %alloca_15[0] : memref<1xf32>
    %66 = affine.load %alloca_6[0] : memref<1xf32>
    %67 = affine.load %alloca_11[0] : memref<1xf32>
    %68 = affine.load %alloca_18[0] : memref<1xf32>
    %69 = affine.load %alloca_15[0] : memref<1xf32>
    %70 = affine.load %alloca_6[0] : memref<1xf32>
    %71 = affine.load %alloca_11[0] : memref<1xf32>
    %72 = affine.load %alloca_18[0] : memref<1xf32>
    %73 = affine.load %alloca_15[0] : memref<1xf32>
    %74 = affine.load %alloca_6[0] : memref<1xf32>
    %75 = affine.load %alloca_11[0] : memref<1xf32>
    %76 = affine.load %alloca_18[0] : memref<1xf32>
    %77 = affine.load %alloca_15[0] : memref<1xf32>
    %78 = affine.load %alloca_6[0] : memref<1xf32>
    affine.for %arg7 = 0 to 2 {
      %95 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 32 {
        %96 = affine.apply #map1(%95, %arg8)
        affine.store %cst, %alloca_25[] : memref<f32>
        affine.store %cst, %alloca_4[] : memref<f32>
        affine.store %cst, %alloca_14[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %97 = affine.apply #map2(%arg9)
          %98 = affine.load %arg4[%97, %96] : memref<?x64xf32>
          %99 = arith.mulf %63, %98 : f32
          %100 = affine.load %alloca_14[] : memref<f32>
          %101 = arith.mulf %64, %100 : f32
          %102 = arith.addf %99, %101 : f32
          %103 = affine.load %alloca_4[] : memref<f32>
          affine.store %103, %alloca_19[0] : memref<1xf32>
          %104 = arith.mulf %65, %103 : f32
          %105 = arith.addf %102, %104 : f32
          %106 = affine.load %alloca_25[] : memref<f32>
          %107 = arith.mulf %66, %106 : f32
          %108 = arith.addf %105, %107 : f32
          affine.store %108, %arg5[%97, %96] : memref<?x64xf32>
          %109 = affine.load %arg5[%97, %96] : memref<?x64xf32>
          affine.store %109, %alloca_4[] : memref<f32>
          %110 = affine.load %alloca_19[0] : memref<1xf32>
          affine.store %110, %alloca_25[] : memref<f32>
          %111 = affine.load %arg4[%97, %96] : memref<?x64xf32>
          affine.store %111, %alloca_14[] : memref<f32>
          %112 = affine.apply #map3(%97)
          %113 = affine.load %arg4[%112, %96] : memref<?x64xf32>
          %114 = arith.mulf %67, %113 : f32
          %115 = affine.load %alloca_14[] : memref<f32>
          %116 = arith.mulf %68, %115 : f32
          %117 = arith.addf %114, %116 : f32
          %118 = affine.load %alloca_4[] : memref<f32>
          affine.store %118, %alloca_19[0] : memref<1xf32>
          %119 = arith.mulf %69, %118 : f32
          %120 = arith.addf %117, %119 : f32
          %121 = affine.load %alloca_25[] : memref<f32>
          %122 = arith.mulf %70, %121 : f32
          %123 = arith.addf %120, %122 : f32
          affine.store %123, %arg5[%112, %96] : memref<?x64xf32>
          %124 = affine.load %arg5[%112, %96] : memref<?x64xf32>
          affine.store %124, %alloca_4[] : memref<f32>
          %125 = affine.load %alloca_19[0] : memref<1xf32>
          affine.store %125, %alloca_25[] : memref<f32>
          %126 = affine.load %arg4[%112, %96] : memref<?x64xf32>
          affine.store %126, %alloca_14[] : memref<f32>
          %127 = affine.apply #map4(%97)
          %128 = affine.load %arg4[%127, %96] : memref<?x64xf32>
          %129 = arith.mulf %71, %128 : f32
          %130 = affine.load %alloca_14[] : memref<f32>
          %131 = arith.mulf %72, %130 : f32
          %132 = arith.addf %129, %131 : f32
          %133 = affine.load %alloca_4[] : memref<f32>
          affine.store %133, %alloca_19[0] : memref<1xf32>
          %134 = arith.mulf %73, %133 : f32
          %135 = arith.addf %132, %134 : f32
          %136 = affine.load %alloca_25[] : memref<f32>
          %137 = arith.mulf %74, %136 : f32
          %138 = arith.addf %135, %137 : f32
          affine.store %138, %arg5[%127, %96] : memref<?x64xf32>
          %139 = affine.load %arg5[%127, %96] : memref<?x64xf32>
          affine.store %139, %alloca_4[] : memref<f32>
          %140 = affine.load %alloca_19[0] : memref<1xf32>
          affine.store %140, %alloca_25[] : memref<f32>
          %141 = affine.load %arg4[%127, %96] : memref<?x64xf32>
          affine.store %141, %alloca_14[] : memref<f32>
          %142 = affine.apply #map5(%97)
          %143 = affine.load %arg4[%142, %96] : memref<?x64xf32>
          %144 = arith.mulf %75, %143 : f32
          %145 = affine.load %alloca_14[] : memref<f32>
          %146 = arith.mulf %76, %145 : f32
          %147 = arith.addf %144, %146 : f32
          %148 = affine.load %alloca_4[] : memref<f32>
          affine.store %148, %alloca_19[0] : memref<1xf32>
          %149 = arith.mulf %77, %148 : f32
          %150 = arith.addf %147, %149 : f32
          %151 = affine.load %alloca_25[] : memref<f32>
          %152 = arith.mulf %78, %151 : f32
          %153 = arith.addf %150, %152 : f32
          affine.store %153, %arg5[%142, %96] : memref<?x64xf32>
          %154 = affine.load %arg5[%142, %96] : memref<?x64xf32>
          affine.store %154, %alloca_4[] : memref<f32>
          %155 = affine.load %alloca_19[0] : memref<1xf32>
          affine.store %155, %alloca_25[] : memref<f32>
          %156 = affine.load %arg4[%142, %96] : memref<?x64xf32>
          affine.store %156, %alloca_14[] : memref<f32>
        }
      }
    }
    %79 = affine.load %alloca_12[0] : memref<1xf32>
    %80 = affine.load %alloca_13[0] : memref<1xf32>
    %81 = affine.load %alloca_15[0] : memref<1xf32>
    %82 = affine.load %alloca_6[0] : memref<1xf32>
    %83 = affine.load %alloca_12[0] : memref<1xf32>
    %84 = affine.load %alloca_13[0] : memref<1xf32>
    %85 = affine.load %alloca_15[0] : memref<1xf32>
    %86 = affine.load %alloca_6[0] : memref<1xf32>
    %87 = affine.load %alloca_12[0] : memref<1xf32>
    %88 = affine.load %alloca_13[0] : memref<1xf32>
    %89 = affine.load %alloca_15[0] : memref<1xf32>
    %90 = affine.load %alloca_6[0] : memref<1xf32>
    %91 = affine.load %alloca_12[0] : memref<1xf32>
    %92 = affine.load %alloca_13[0] : memref<1xf32>
    %93 = affine.load %alloca_15[0] : memref<1xf32>
    %94 = affine.load %alloca_6[0] : memref<1xf32>
    affine.for %arg7 = 0 to 2 {
      %95 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 32 {
        %96 = affine.apply #map1(%95, %arg8)
        affine.store %cst, %alloca[] : memref<f32>
        affine.store %cst, %alloca_22[] : memref<f32>
        affine.store %cst, %alloca_23[] : memref<f32>
        affine.store %cst, %alloca_10[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %97 = affine.apply #map2(%arg9)
          %98 = affine.load %alloca_10[] : memref<f32>
          affine.store %98, %alloca_17[0] : memref<1xf32>
          %99 = arith.mulf %79, %98 : f32
          %100 = affine.load %alloca_23[] : memref<f32>
          %101 = arith.mulf %80, %100 : f32
          %102 = arith.addf %99, %101 : f32
          %103 = affine.load %alloca_22[] : memref<f32>
          affine.store %103, %alloca_20[0] : memref<1xf32>
          %104 = arith.mulf %81, %103 : f32
          %105 = arith.addf %102, %104 : f32
          %106 = affine.load %alloca[] : memref<f32>
          %107 = arith.mulf %82, %106 : f32
          %108 = arith.addf %105, %107 : f32
          affine.store %108, %arg6[-%97 + 63, %96] : memref<?x64xf32>
          %109 = affine.load %arg6[-%97 + 63, %96] : memref<?x64xf32>
          affine.store %109, %alloca_22[] : memref<f32>
          %110 = affine.load %alloca_20[0] : memref<1xf32>
          affine.store %110, %alloca[] : memref<f32>
          %111 = affine.load %arg4[-%97 + 63, %96] : memref<?x64xf32>
          affine.store %111, %alloca_10[] : memref<f32>
          %112 = affine.load %alloca_17[0] : memref<1xf32>
          affine.store %112, %alloca_23[] : memref<f32>
          %113 = affine.apply #map3(%97)
          %114 = affine.load %alloca_10[] : memref<f32>
          affine.store %114, %alloca_17[0] : memref<1xf32>
          %115 = arith.mulf %83, %114 : f32
          %116 = affine.load %alloca_23[] : memref<f32>
          %117 = arith.mulf %84, %116 : f32
          %118 = arith.addf %115, %117 : f32
          %119 = affine.load %alloca_22[] : memref<f32>
          affine.store %119, %alloca_20[0] : memref<1xf32>
          %120 = arith.mulf %85, %119 : f32
          %121 = arith.addf %118, %120 : f32
          %122 = affine.load %alloca[] : memref<f32>
          %123 = arith.mulf %86, %122 : f32
          %124 = arith.addf %121, %123 : f32
          affine.store %124, %arg6[-%113 + 63, %96] : memref<?x64xf32>
          %125 = affine.load %arg6[-%113 + 63, %96] : memref<?x64xf32>
          affine.store %125, %alloca_22[] : memref<f32>
          %126 = affine.load %alloca_20[0] : memref<1xf32>
          affine.store %126, %alloca[] : memref<f32>
          %127 = affine.load %arg4[-%113 + 63, %96] : memref<?x64xf32>
          affine.store %127, %alloca_10[] : memref<f32>
          %128 = affine.load %alloca_17[0] : memref<1xf32>
          affine.store %128, %alloca_23[] : memref<f32>
          %129 = affine.apply #map4(%97)
          %130 = affine.load %alloca_10[] : memref<f32>
          affine.store %130, %alloca_17[0] : memref<1xf32>
          %131 = arith.mulf %87, %130 : f32
          %132 = affine.load %alloca_23[] : memref<f32>
          %133 = arith.mulf %88, %132 : f32
          %134 = arith.addf %131, %133 : f32
          %135 = affine.load %alloca_22[] : memref<f32>
          affine.store %135, %alloca_20[0] : memref<1xf32>
          %136 = arith.mulf %89, %135 : f32
          %137 = arith.addf %134, %136 : f32
          %138 = affine.load %alloca[] : memref<f32>
          %139 = arith.mulf %90, %138 : f32
          %140 = arith.addf %137, %139 : f32
          affine.store %140, %arg6[-%129 + 63, %96] : memref<?x64xf32>
          %141 = affine.load %arg6[-%129 + 63, %96] : memref<?x64xf32>
          affine.store %141, %alloca_22[] : memref<f32>
          %142 = affine.load %alloca_20[0] : memref<1xf32>
          affine.store %142, %alloca[] : memref<f32>
          %143 = affine.load %arg4[-%129 + 63, %96] : memref<?x64xf32>
          affine.store %143, %alloca_10[] : memref<f32>
          %144 = affine.load %alloca_17[0] : memref<1xf32>
          affine.store %144, %alloca_23[] : memref<f32>
          %145 = affine.apply #map5(%97)
          %146 = affine.load %alloca_10[] : memref<f32>
          affine.store %146, %alloca_17[0] : memref<1xf32>
          %147 = arith.mulf %91, %146 : f32
          %148 = affine.load %alloca_23[] : memref<f32>
          %149 = arith.mulf %92, %148 : f32
          %150 = arith.addf %147, %149 : f32
          %151 = affine.load %alloca_22[] : memref<f32>
          affine.store %151, %alloca_20[0] : memref<1xf32>
          %152 = arith.mulf %93, %151 : f32
          %153 = arith.addf %150, %152 : f32
          %154 = affine.load %alloca[] : memref<f32>
          %155 = arith.mulf %94, %154 : f32
          %156 = arith.addf %153, %155 : f32
          affine.store %156, %arg6[-%145 + 63, %96] : memref<?x64xf32>
          %157 = affine.load %arg6[-%145 + 63, %96] : memref<?x64xf32>
          affine.store %157, %alloca_22[] : memref<f32>
          %158 = affine.load %alloca_20[0] : memref<1xf32>
          affine.store %158, %alloca[] : memref<f32>
          %159 = affine.load %arg4[-%145 + 63, %96] : memref<?x64xf32>
          affine.store %159, %alloca_10[] : memref<f32>
          %160 = affine.load %alloca_17[0] : memref<1xf32>
          affine.store %160, %alloca_23[] : memref<f32>
        }
      }
    }
    affine.parallel (%arg7) = (0) to (2) {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = 0 to 32 {
          %95 = affine.apply #map6(%arg7, %arg9)
          affine.for %arg10 = 0 to 8 {
            %96 = affine.apply #map7(%arg8, %arg10)
            %97 = affine.load %arg5[%95, %96] : memref<?x64xf32>
            %98 = affine.load %arg6[%95, %96] : memref<?x64xf32>
            %99 = arith.addf %97, %98 : f32
            affine.store %99, %arg4[%95, %96] : memref<?x64xf32>
            %100 = affine.apply #map3(%96)
            %101 = affine.load %arg5[%95, %100] : memref<?x64xf32>
            %102 = affine.load %arg6[%95, %100] : memref<?x64xf32>
            %103 = arith.addf %101, %102 : f32
            affine.store %103, %arg4[%95, %100] : memref<?x64xf32>
            %104 = affine.apply #map4(%96)
            %105 = affine.load %arg5[%95, %104] : memref<?x64xf32>
            %106 = affine.load %arg6[%95, %104] : memref<?x64xf32>
            %107 = arith.addf %105, %106 : f32
            affine.store %107, %arg4[%95, %104] : memref<?x64xf32>
            %108 = affine.apply #map5(%96)
            %109 = affine.load %arg5[%95, %108] : memref<?x64xf32>
            %110 = affine.load %arg6[%95, %108] : memref<?x64xf32>
            %111 = arith.addf %109, %110 : f32
            affine.store %111, %arg4[%95, %108] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

