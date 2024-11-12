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
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    %alloca_4 = memref.alloca() : memref<1xf32>
    %alloca_5 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_6 = memref.alloca() : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() : memref<f32>
    %alloca_9 = memref.alloca() : memref<1xf32>
    %alloca_10 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() {scop.scratchpad} : memref<1xf32>
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
    affine.store %2, %alloca_5[0] : memref<1xf32>
    %3 = arith.negf %arg2 : f32
    %4 = math.powf %cst_1, %3 : f32
    affine.store %4, %alloca_14[0] : memref<1xf32>
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
    affine.store %15, %alloca_10[0] : memref<1xf32>
    %16 = affine.load %alloca_10[0] : memref<1xf32>
    affine.store %16, %alloca_4[0] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    affine.store %19, %alloca_6[0] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    affine.store %21, %alloca_17[0] : memref<1xf32>
    %22 = affine.load %alloca_4[0] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    affine.store %26, %alloca_12[0] : memref<1xf32>
    %27 = affine.load %alloca_6[0] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    affine.store %29, %alloca_11[0] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    affine.store %30, %alloca_25[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    affine.store %31, %alloca_13[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    affine.store %32, %alloca_24[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    affine.store %33, %alloca_23[] : memref<f32>
    %34 = affine.load %alloca_10[0] : memref<1xf32>
    %35 = affine.load %alloca_17[0] : memref<1xf32>
    %36 = affine.load %alloca_14[0] : memref<1xf32>
    %37 = affine.load %alloca_5[0] : memref<1xf32>
    %38 = affine.load %alloca_10[0] : memref<1xf32>
    %39 = affine.load %alloca_17[0] : memref<1xf32>
    %40 = affine.load %alloca_14[0] : memref<1xf32>
    %41 = affine.load %alloca_5[0] : memref<1xf32>
    %42 = affine.load %alloca_10[0] : memref<1xf32>
    %43 = affine.load %alloca_17[0] : memref<1xf32>
    %44 = affine.load %alloca_14[0] : memref<1xf32>
    %45 = affine.load %alloca_5[0] : memref<1xf32>
    %46 = affine.load %alloca_10[0] : memref<1xf32>
    %47 = affine.load %alloca_17[0] : memref<1xf32>
    %48 = affine.load %alloca_14[0] : memref<1xf32>
    %49 = affine.load %alloca_5[0] : memref<1xf32>
    affine.for %arg7 = 0 to 64 {
      affine.for %arg8 = 0 to 1 {
        %104 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %alloca_25[] : memref<f32>
        affine.store %cst, %alloca_23[] : memref<f32>
        affine.store %cst, %alloca_24[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %105 = affine.apply #map1(%arg9)
          %106 = affine.load %arg3[%104, %105] : memref<?x64xf32>
          %107 = arith.mulf %34, %106 : f32
          %108 = affine.load %alloca_25[] : memref<f32>
          %109 = arith.mulf %35, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = affine.load %alloca_24[] : memref<f32>
          affine.store %111, %alloca_7[0] : memref<1xf32>
          %112 = arith.mulf %36, %111 : f32
          %113 = arith.addf %110, %112 : f32
          %114 = affine.load %alloca_23[] : memref<f32>
          %115 = arith.mulf %37, %114 : f32
          %116 = arith.addf %113, %115 : f32
          affine.store %116, %arg5[%104, %105] : memref<?x64xf32>
          %117 = affine.load %arg5[%104, %105] : memref<?x64xf32>
          affine.store %117, %alloca_24[] : memref<f32>
          %118 = affine.load %alloca_7[0] : memref<1xf32>
          affine.store %118, %alloca_23[] : memref<f32>
          %119 = affine.load %arg3[%104, %105] : memref<?x64xf32>
          affine.store %119, %alloca_25[] : memref<f32>
          %120 = affine.apply #map2(%105)
          %121 = affine.load %arg3[%104, %120] : memref<?x64xf32>
          %122 = arith.mulf %38, %121 : f32
          %123 = affine.load %alloca_25[] : memref<f32>
          %124 = arith.mulf %39, %123 : f32
          %125 = arith.addf %122, %124 : f32
          %126 = affine.load %alloca_24[] : memref<f32>
          affine.store %126, %alloca_7[0] : memref<1xf32>
          %127 = arith.mulf %40, %126 : f32
          %128 = arith.addf %125, %127 : f32
          %129 = affine.load %alloca_23[] : memref<f32>
          %130 = arith.mulf %41, %129 : f32
          %131 = arith.addf %128, %130 : f32
          affine.store %131, %arg5[%104, %120] : memref<?x64xf32>
          %132 = affine.load %arg5[%104, %120] : memref<?x64xf32>
          affine.store %132, %alloca_24[] : memref<f32>
          %133 = affine.load %alloca_7[0] : memref<1xf32>
          affine.store %133, %alloca_23[] : memref<f32>
          %134 = affine.load %arg3[%104, %120] : memref<?x64xf32>
          affine.store %134, %alloca_25[] : memref<f32>
          %135 = affine.apply #map3(%105)
          %136 = affine.load %arg3[%104, %135] : memref<?x64xf32>
          %137 = arith.mulf %42, %136 : f32
          %138 = affine.load %alloca_25[] : memref<f32>
          %139 = arith.mulf %43, %138 : f32
          %140 = arith.addf %137, %139 : f32
          %141 = affine.load %alloca_24[] : memref<f32>
          affine.store %141, %alloca_7[0] : memref<1xf32>
          %142 = arith.mulf %44, %141 : f32
          %143 = arith.addf %140, %142 : f32
          %144 = affine.load %alloca_23[] : memref<f32>
          %145 = arith.mulf %45, %144 : f32
          %146 = arith.addf %143, %145 : f32
          affine.store %146, %arg5[%104, %135] : memref<?x64xf32>
          %147 = affine.load %arg5[%104, %135] : memref<?x64xf32>
          affine.store %147, %alloca_24[] : memref<f32>
          %148 = affine.load %alloca_7[0] : memref<1xf32>
          affine.store %148, %alloca_23[] : memref<f32>
          %149 = affine.load %arg3[%104, %135] : memref<?x64xf32>
          affine.store %149, %alloca_25[] : memref<f32>
          %150 = affine.apply #map4(%105)
          %151 = affine.load %arg3[%104, %150] : memref<?x64xf32>
          %152 = arith.mulf %46, %151 : f32
          %153 = affine.load %alloca_25[] : memref<f32>
          %154 = arith.mulf %47, %153 : f32
          %155 = arith.addf %152, %154 : f32
          %156 = affine.load %alloca_24[] : memref<f32>
          affine.store %156, %alloca_7[0] : memref<1xf32>
          %157 = arith.mulf %48, %156 : f32
          %158 = arith.addf %155, %157 : f32
          %159 = affine.load %alloca_23[] : memref<f32>
          %160 = arith.mulf %49, %159 : f32
          %161 = arith.addf %158, %160 : f32
          affine.store %161, %arg5[%104, %150] : memref<?x64xf32>
          %162 = affine.load %arg5[%104, %150] : memref<?x64xf32>
          affine.store %162, %alloca_24[] : memref<f32>
          %163 = affine.load %alloca_7[0] : memref<1xf32>
          affine.store %163, %alloca_23[] : memref<f32>
          %164 = affine.load %arg3[%104, %150] : memref<?x64xf32>
          affine.store %164, %alloca_25[] : memref<f32>
        }
      }
    }
    %50 = llvm.mlir.undef : f32
    affine.store %50, %alloca_3[] : memref<f32>
    %51 = llvm.mlir.undef : f32
    affine.store %51, %alloca_20[] : memref<f32>
    %52 = llvm.mlir.undef : f32
    affine.store %52, %alloca_8[] : memref<f32>
    %53 = llvm.mlir.undef : f32
    affine.store %53, %alloca_22[] : memref<f32>
    %54 = llvm.mlir.undef : f32
    affine.store %54, %alloca_21[] : memref<f32>
    %55 = llvm.mlir.undef : f32
    affine.store %55, %alloca[] : memref<f32>
    %56 = affine.load %alloca_11[0] : memref<1xf32>
    %57 = affine.load %alloca_12[0] : memref<1xf32>
    %58 = affine.load %alloca_14[0] : memref<1xf32>
    %59 = affine.load %alloca_5[0] : memref<1xf32>
    %60 = affine.load %alloca_11[0] : memref<1xf32>
    %61 = affine.load %alloca_12[0] : memref<1xf32>
    %62 = affine.load %alloca_14[0] : memref<1xf32>
    %63 = affine.load %alloca_5[0] : memref<1xf32>
    %64 = affine.load %alloca_11[0] : memref<1xf32>
    %65 = affine.load %alloca_12[0] : memref<1xf32>
    %66 = affine.load %alloca_14[0] : memref<1xf32>
    %67 = affine.load %alloca_5[0] : memref<1xf32>
    %68 = affine.load %alloca_11[0] : memref<1xf32>
    %69 = affine.load %alloca_12[0] : memref<1xf32>
    %70 = affine.load %alloca_14[0] : memref<1xf32>
    %71 = affine.load %alloca_5[0] : memref<1xf32>
    affine.for %arg7 = 0 to 64 {
      affine.for %arg8 = 0 to 1 {
        %104 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %alloca_20[] : memref<f32>
        affine.store %cst, %alloca_3[] : memref<f32>
        affine.store %cst, %alloca[] : memref<f32>
        affine.store %cst, %alloca_21[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %105 = affine.apply #map1(%arg9)
          %106 = affine.load %alloca_3[] : memref<f32>
          affine.store %106, %alloca_9[0] : memref<1xf32>
          %107 = arith.mulf %56, %106 : f32
          %108 = affine.load %alloca_20[] : memref<f32>
          %109 = arith.mulf %57, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = affine.load %alloca_21[] : memref<f32>
          affine.store %111, %alloca_15[0] : memref<1xf32>
          %112 = arith.mulf %58, %111 : f32
          %113 = arith.addf %110, %112 : f32
          %114 = affine.load %alloca[] : memref<f32>
          %115 = arith.mulf %59, %114 : f32
          %116 = arith.addf %113, %115 : f32
          affine.store %116, %arg6[%104, -%105 + 63] : memref<?x64xf32>
          %117 = affine.load %arg6[%104, -%105 + 63] : memref<?x64xf32>
          affine.store %117, %alloca_21[] : memref<f32>
          %118 = affine.load %alloca_15[0] : memref<1xf32>
          affine.store %118, %alloca[] : memref<f32>
          %119 = affine.load %arg3[%104, -%105 + 63] : memref<?x64xf32>
          affine.store %119, %alloca_3[] : memref<f32>
          %120 = affine.load %alloca_9[0] : memref<1xf32>
          affine.store %120, %alloca_20[] : memref<f32>
          %121 = affine.apply #map2(%105)
          %122 = affine.load %alloca_3[] : memref<f32>
          affine.store %122, %alloca_9[0] : memref<1xf32>
          %123 = arith.mulf %60, %122 : f32
          %124 = affine.load %alloca_20[] : memref<f32>
          %125 = arith.mulf %61, %124 : f32
          %126 = arith.addf %123, %125 : f32
          %127 = affine.load %alloca_21[] : memref<f32>
          affine.store %127, %alloca_15[0] : memref<1xf32>
          %128 = arith.mulf %62, %127 : f32
          %129 = arith.addf %126, %128 : f32
          %130 = affine.load %alloca[] : memref<f32>
          %131 = arith.mulf %63, %130 : f32
          %132 = arith.addf %129, %131 : f32
          affine.store %132, %arg6[%104, -%121 + 63] : memref<?x64xf32>
          %133 = affine.load %arg6[%104, -%121 + 63] : memref<?x64xf32>
          affine.store %133, %alloca_21[] : memref<f32>
          %134 = affine.load %alloca_15[0] : memref<1xf32>
          affine.store %134, %alloca[] : memref<f32>
          %135 = affine.load %arg3[%104, -%121 + 63] : memref<?x64xf32>
          affine.store %135, %alloca_3[] : memref<f32>
          %136 = affine.load %alloca_9[0] : memref<1xf32>
          affine.store %136, %alloca_20[] : memref<f32>
          %137 = affine.apply #map3(%105)
          %138 = affine.load %alloca_3[] : memref<f32>
          affine.store %138, %alloca_9[0] : memref<1xf32>
          %139 = arith.mulf %64, %138 : f32
          %140 = affine.load %alloca_20[] : memref<f32>
          %141 = arith.mulf %65, %140 : f32
          %142 = arith.addf %139, %141 : f32
          %143 = affine.load %alloca_21[] : memref<f32>
          affine.store %143, %alloca_15[0] : memref<1xf32>
          %144 = arith.mulf %66, %143 : f32
          %145 = arith.addf %142, %144 : f32
          %146 = affine.load %alloca[] : memref<f32>
          %147 = arith.mulf %67, %146 : f32
          %148 = arith.addf %145, %147 : f32
          affine.store %148, %arg6[%104, -%137 + 63] : memref<?x64xf32>
          %149 = affine.load %arg6[%104, -%137 + 63] : memref<?x64xf32>
          affine.store %149, %alloca_21[] : memref<f32>
          %150 = affine.load %alloca_15[0] : memref<1xf32>
          affine.store %150, %alloca[] : memref<f32>
          %151 = affine.load %arg3[%104, -%137 + 63] : memref<?x64xf32>
          affine.store %151, %alloca_3[] : memref<f32>
          %152 = affine.load %alloca_9[0] : memref<1xf32>
          affine.store %152, %alloca_20[] : memref<f32>
          %153 = affine.apply #map4(%105)
          %154 = affine.load %alloca_3[] : memref<f32>
          affine.store %154, %alloca_9[0] : memref<1xf32>
          %155 = arith.mulf %68, %154 : f32
          %156 = affine.load %alloca_20[] : memref<f32>
          %157 = arith.mulf %69, %156 : f32
          %158 = arith.addf %155, %157 : f32
          %159 = affine.load %alloca_21[] : memref<f32>
          affine.store %159, %alloca_15[0] : memref<1xf32>
          %160 = arith.mulf %70, %159 : f32
          %161 = arith.addf %158, %160 : f32
          %162 = affine.load %alloca[] : memref<f32>
          %163 = arith.mulf %71, %162 : f32
          %164 = arith.addf %161, %163 : f32
          affine.store %164, %arg6[%104, -%153 + 63] : memref<?x64xf32>
          %165 = affine.load %arg6[%104, -%153 + 63] : memref<?x64xf32>
          affine.store %165, %alloca_21[] : memref<f32>
          %166 = affine.load %alloca_15[0] : memref<1xf32>
          affine.store %166, %alloca[] : memref<f32>
          %167 = affine.load %arg3[%104, -%153 + 63] : memref<?x64xf32>
          affine.store %167, %alloca_3[] : memref<f32>
          %168 = affine.load %alloca_9[0] : memref<1xf32>
          affine.store %168, %alloca_20[] : memref<f32>
        }
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 32 {
        %104 = affine.apply #map5(%arg7, %arg8)
        affine.for %arg9 = 0 to 2 {
          affine.for %arg10 = 0 to 8 {
            %105 = affine.apply #map6(%arg9, %arg10)
            %106 = affine.load %arg5[%104, %105] : memref<?x64xf32>
            %107 = affine.load %arg6[%104, %105] : memref<?x64xf32>
            %108 = arith.addf %106, %107 : f32
            affine.store %108, %arg4[%104, %105] : memref<?x64xf32>
            %109 = affine.apply #map2(%105)
            %110 = affine.load %arg5[%104, %109] : memref<?x64xf32>
            %111 = affine.load %arg6[%104, %109] : memref<?x64xf32>
            %112 = arith.addf %110, %111 : f32
            affine.store %112, %arg4[%104, %109] : memref<?x64xf32>
            %113 = affine.apply #map3(%105)
            %114 = affine.load %arg5[%104, %113] : memref<?x64xf32>
            %115 = affine.load %arg6[%104, %113] : memref<?x64xf32>
            %116 = arith.addf %114, %115 : f32
            affine.store %116, %arg4[%104, %113] : memref<?x64xf32>
            %117 = affine.apply #map4(%105)
            %118 = affine.load %arg5[%104, %117] : memref<?x64xf32>
            %119 = affine.load %arg6[%104, %117] : memref<?x64xf32>
            %120 = arith.addf %118, %119 : f32
            affine.store %120, %arg4[%104, %117] : memref<?x64xf32>
          }
        }
      }
    }
    %72 = affine.load %alloca_10[0] : memref<1xf32>
    %73 = affine.load %alloca_17[0] : memref<1xf32>
    %74 = affine.load %alloca_14[0] : memref<1xf32>
    %75 = affine.load %alloca_5[0] : memref<1xf32>
    %76 = affine.load %alloca_10[0] : memref<1xf32>
    %77 = affine.load %alloca_17[0] : memref<1xf32>
    %78 = affine.load %alloca_14[0] : memref<1xf32>
    %79 = affine.load %alloca_5[0] : memref<1xf32>
    %80 = affine.load %alloca_10[0] : memref<1xf32>
    %81 = affine.load %alloca_17[0] : memref<1xf32>
    %82 = affine.load %alloca_14[0] : memref<1xf32>
    %83 = affine.load %alloca_5[0] : memref<1xf32>
    %84 = affine.load %alloca_10[0] : memref<1xf32>
    %85 = affine.load %alloca_17[0] : memref<1xf32>
    %86 = affine.load %alloca_14[0] : memref<1xf32>
    %87 = affine.load %alloca_5[0] : memref<1xf32>
    affine.for %arg7 = 0 to 64 {
      affine.for %arg8 = 0 to 1 {
        %104 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %alloca_23[] : memref<f32>
        affine.store %cst, %alloca_24[] : memref<f32>
        affine.store %cst, %alloca_13[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %105 = affine.apply #map1(%arg9)
          %106 = affine.load %arg4[%105, %104] : memref<?x64xf32>
          %107 = arith.mulf %72, %106 : f32
          %108 = affine.load %alloca_13[] : memref<f32>
          %109 = arith.mulf %73, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = affine.load %alloca_24[] : memref<f32>
          affine.store %111, %alloca_18[0] : memref<1xf32>
          %112 = arith.mulf %74, %111 : f32
          %113 = arith.addf %110, %112 : f32
          %114 = affine.load %alloca_23[] : memref<f32>
          %115 = arith.mulf %75, %114 : f32
          %116 = arith.addf %113, %115 : f32
          affine.store %116, %arg5[%105, %104] : memref<?x64xf32>
          %117 = affine.load %arg5[%105, %104] : memref<?x64xf32>
          affine.store %117, %alloca_24[] : memref<f32>
          %118 = affine.load %alloca_18[0] : memref<1xf32>
          affine.store %118, %alloca_23[] : memref<f32>
          %119 = affine.load %arg4[%105, %104] : memref<?x64xf32>
          affine.store %119, %alloca_13[] : memref<f32>
          %120 = affine.apply #map2(%105)
          %121 = affine.load %arg4[%120, %104] : memref<?x64xf32>
          %122 = arith.mulf %76, %121 : f32
          %123 = affine.load %alloca_13[] : memref<f32>
          %124 = arith.mulf %77, %123 : f32
          %125 = arith.addf %122, %124 : f32
          %126 = affine.load %alloca_24[] : memref<f32>
          affine.store %126, %alloca_18[0] : memref<1xf32>
          %127 = arith.mulf %78, %126 : f32
          %128 = arith.addf %125, %127 : f32
          %129 = affine.load %alloca_23[] : memref<f32>
          %130 = arith.mulf %79, %129 : f32
          %131 = arith.addf %128, %130 : f32
          affine.store %131, %arg5[%120, %104] : memref<?x64xf32>
          %132 = affine.load %arg5[%120, %104] : memref<?x64xf32>
          affine.store %132, %alloca_24[] : memref<f32>
          %133 = affine.load %alloca_18[0] : memref<1xf32>
          affine.store %133, %alloca_23[] : memref<f32>
          %134 = affine.load %arg4[%120, %104] : memref<?x64xf32>
          affine.store %134, %alloca_13[] : memref<f32>
          %135 = affine.apply #map3(%105)
          %136 = affine.load %arg4[%135, %104] : memref<?x64xf32>
          %137 = arith.mulf %80, %136 : f32
          %138 = affine.load %alloca_13[] : memref<f32>
          %139 = arith.mulf %81, %138 : f32
          %140 = arith.addf %137, %139 : f32
          %141 = affine.load %alloca_24[] : memref<f32>
          affine.store %141, %alloca_18[0] : memref<1xf32>
          %142 = arith.mulf %82, %141 : f32
          %143 = arith.addf %140, %142 : f32
          %144 = affine.load %alloca_23[] : memref<f32>
          %145 = arith.mulf %83, %144 : f32
          %146 = arith.addf %143, %145 : f32
          affine.store %146, %arg5[%135, %104] : memref<?x64xf32>
          %147 = affine.load %arg5[%135, %104] : memref<?x64xf32>
          affine.store %147, %alloca_24[] : memref<f32>
          %148 = affine.load %alloca_18[0] : memref<1xf32>
          affine.store %148, %alloca_23[] : memref<f32>
          %149 = affine.load %arg4[%135, %104] : memref<?x64xf32>
          affine.store %149, %alloca_13[] : memref<f32>
          %150 = affine.apply #map4(%105)
          %151 = affine.load %arg4[%150, %104] : memref<?x64xf32>
          %152 = arith.mulf %84, %151 : f32
          %153 = affine.load %alloca_13[] : memref<f32>
          %154 = arith.mulf %85, %153 : f32
          %155 = arith.addf %152, %154 : f32
          %156 = affine.load %alloca_24[] : memref<f32>
          affine.store %156, %alloca_18[0] : memref<1xf32>
          %157 = arith.mulf %86, %156 : f32
          %158 = arith.addf %155, %157 : f32
          %159 = affine.load %alloca_23[] : memref<f32>
          %160 = arith.mulf %87, %159 : f32
          %161 = arith.addf %158, %160 : f32
          affine.store %161, %arg5[%150, %104] : memref<?x64xf32>
          %162 = affine.load %arg5[%150, %104] : memref<?x64xf32>
          affine.store %162, %alloca_24[] : memref<f32>
          %163 = affine.load %alloca_18[0] : memref<1xf32>
          affine.store %163, %alloca_23[] : memref<f32>
          %164 = affine.load %arg4[%150, %104] : memref<?x64xf32>
          affine.store %164, %alloca_13[] : memref<f32>
        }
      }
    }
    %88 = affine.load %alloca_11[0] : memref<1xf32>
    %89 = affine.load %alloca_12[0] : memref<1xf32>
    %90 = affine.load %alloca_14[0] : memref<1xf32>
    %91 = affine.load %alloca_5[0] : memref<1xf32>
    %92 = affine.load %alloca_11[0] : memref<1xf32>
    %93 = affine.load %alloca_12[0] : memref<1xf32>
    %94 = affine.load %alloca_14[0] : memref<1xf32>
    %95 = affine.load %alloca_5[0] : memref<1xf32>
    %96 = affine.load %alloca_11[0] : memref<1xf32>
    %97 = affine.load %alloca_12[0] : memref<1xf32>
    %98 = affine.load %alloca_14[0] : memref<1xf32>
    %99 = affine.load %alloca_5[0] : memref<1xf32>
    %100 = affine.load %alloca_11[0] : memref<1xf32>
    %101 = affine.load %alloca_12[0] : memref<1xf32>
    %102 = affine.load %alloca_14[0] : memref<1xf32>
    %103 = affine.load %alloca_5[0] : memref<1xf32>
    affine.for %arg7 = 0 to 64 {
      affine.for %arg8 = 0 to 1 {
        %104 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %alloca[] : memref<f32>
        affine.store %cst, %alloca_21[] : memref<f32>
        affine.store %cst, %alloca_22[] : memref<f32>
        affine.store %cst, %alloca_8[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %105 = affine.apply #map1(%arg9)
          %106 = affine.load %alloca_8[] : memref<f32>
          affine.store %106, %alloca_16[0] : memref<1xf32>
          %107 = arith.mulf %88, %106 : f32
          %108 = affine.load %alloca_22[] : memref<f32>
          %109 = arith.mulf %89, %108 : f32
          %110 = arith.addf %107, %109 : f32
          %111 = affine.load %alloca_21[] : memref<f32>
          affine.store %111, %alloca_19[0] : memref<1xf32>
          %112 = arith.mulf %90, %111 : f32
          %113 = arith.addf %110, %112 : f32
          %114 = affine.load %alloca[] : memref<f32>
          %115 = arith.mulf %91, %114 : f32
          %116 = arith.addf %113, %115 : f32
          affine.store %116, %arg6[-%105 + 63, %104] : memref<?x64xf32>
          %117 = affine.load %arg6[-%105 + 63, %104] : memref<?x64xf32>
          affine.store %117, %alloca_21[] : memref<f32>
          %118 = affine.load %alloca_19[0] : memref<1xf32>
          affine.store %118, %alloca[] : memref<f32>
          %119 = affine.load %arg4[-%105 + 63, %104] : memref<?x64xf32>
          affine.store %119, %alloca_8[] : memref<f32>
          %120 = affine.load %alloca_16[0] : memref<1xf32>
          affine.store %120, %alloca_22[] : memref<f32>
          %121 = affine.apply #map2(%105)
          %122 = affine.load %alloca_8[] : memref<f32>
          affine.store %122, %alloca_16[0] : memref<1xf32>
          %123 = arith.mulf %92, %122 : f32
          %124 = affine.load %alloca_22[] : memref<f32>
          %125 = arith.mulf %93, %124 : f32
          %126 = arith.addf %123, %125 : f32
          %127 = affine.load %alloca_21[] : memref<f32>
          affine.store %127, %alloca_19[0] : memref<1xf32>
          %128 = arith.mulf %94, %127 : f32
          %129 = arith.addf %126, %128 : f32
          %130 = affine.load %alloca[] : memref<f32>
          %131 = arith.mulf %95, %130 : f32
          %132 = arith.addf %129, %131 : f32
          affine.store %132, %arg6[-%121 + 63, %104] : memref<?x64xf32>
          %133 = affine.load %arg6[-%121 + 63, %104] : memref<?x64xf32>
          affine.store %133, %alloca_21[] : memref<f32>
          %134 = affine.load %alloca_19[0] : memref<1xf32>
          affine.store %134, %alloca[] : memref<f32>
          %135 = affine.load %arg4[-%121 + 63, %104] : memref<?x64xf32>
          affine.store %135, %alloca_8[] : memref<f32>
          %136 = affine.load %alloca_16[0] : memref<1xf32>
          affine.store %136, %alloca_22[] : memref<f32>
          %137 = affine.apply #map3(%105)
          %138 = affine.load %alloca_8[] : memref<f32>
          affine.store %138, %alloca_16[0] : memref<1xf32>
          %139 = arith.mulf %96, %138 : f32
          %140 = affine.load %alloca_22[] : memref<f32>
          %141 = arith.mulf %97, %140 : f32
          %142 = arith.addf %139, %141 : f32
          %143 = affine.load %alloca_21[] : memref<f32>
          affine.store %143, %alloca_19[0] : memref<1xf32>
          %144 = arith.mulf %98, %143 : f32
          %145 = arith.addf %142, %144 : f32
          %146 = affine.load %alloca[] : memref<f32>
          %147 = arith.mulf %99, %146 : f32
          %148 = arith.addf %145, %147 : f32
          affine.store %148, %arg6[-%137 + 63, %104] : memref<?x64xf32>
          %149 = affine.load %arg6[-%137 + 63, %104] : memref<?x64xf32>
          affine.store %149, %alloca_21[] : memref<f32>
          %150 = affine.load %alloca_19[0] : memref<1xf32>
          affine.store %150, %alloca[] : memref<f32>
          %151 = affine.load %arg4[-%137 + 63, %104] : memref<?x64xf32>
          affine.store %151, %alloca_8[] : memref<f32>
          %152 = affine.load %alloca_16[0] : memref<1xf32>
          affine.store %152, %alloca_22[] : memref<f32>
          %153 = affine.apply #map4(%105)
          %154 = affine.load %alloca_8[] : memref<f32>
          affine.store %154, %alloca_16[0] : memref<1xf32>
          %155 = arith.mulf %100, %154 : f32
          %156 = affine.load %alloca_22[] : memref<f32>
          %157 = arith.mulf %101, %156 : f32
          %158 = arith.addf %155, %157 : f32
          %159 = affine.load %alloca_21[] : memref<f32>
          affine.store %159, %alloca_19[0] : memref<1xf32>
          %160 = arith.mulf %102, %159 : f32
          %161 = arith.addf %158, %160 : f32
          %162 = affine.load %alloca[] : memref<f32>
          %163 = arith.mulf %103, %162 : f32
          %164 = arith.addf %161, %163 : f32
          affine.store %164, %arg6[-%153 + 63, %104] : memref<?x64xf32>
          %165 = affine.load %arg6[-%153 + 63, %104] : memref<?x64xf32>
          affine.store %165, %alloca_21[] : memref<f32>
          %166 = affine.load %alloca_19[0] : memref<1xf32>
          affine.store %166, %alloca[] : memref<f32>
          %167 = affine.load %arg4[-%153 + 63, %104] : memref<?x64xf32>
          affine.store %167, %alloca_8[] : memref<f32>
          %168 = affine.load %alloca_16[0] : memref<1xf32>
          affine.store %168, %alloca_22[] : memref<f32>
        }
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 32 {
        %104 = affine.apply #map5(%arg7, %arg8)
        affine.for %arg9 = 0 to 2 {
          affine.for %arg10 = 0 to 8 {
            %105 = affine.apply #map6(%arg9, %arg10)
            %106 = affine.load %arg5[%104, %105] : memref<?x64xf32>
            %107 = affine.load %arg6[%104, %105] : memref<?x64xf32>
            %108 = arith.addf %106, %107 : f32
            affine.store %108, %arg4[%104, %105] : memref<?x64xf32>
            %109 = affine.apply #map2(%105)
            %110 = affine.load %arg5[%104, %109] : memref<?x64xf32>
            %111 = affine.load %arg6[%104, %109] : memref<?x64xf32>
            %112 = arith.addf %110, %111 : f32
            affine.store %112, %arg4[%104, %109] : memref<?x64xf32>
            %113 = affine.apply #map3(%105)
            %114 = affine.load %arg5[%104, %113] : memref<?x64xf32>
            %115 = affine.load %arg6[%104, %113] : memref<?x64xf32>
            %116 = arith.addf %114, %115 : f32
            affine.store %116, %arg4[%104, %113] : memref<?x64xf32>
            %117 = affine.apply #map4(%105)
            %118 = affine.load %arg5[%104, %117] : memref<?x64xf32>
            %119 = affine.load %arg6[%104, %117] : memref<?x64xf32>
            %120 = arith.addf %118, %119 : f32
            affine.store %120, %arg4[%104, %117] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

