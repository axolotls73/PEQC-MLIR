#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (d0 * 32 + 32)>
module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
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
    %alloca_13 = memref.alloca() {scop.scratchpad} : memref<1xf32>
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
    %alloca_25 = memref.alloca() : memref<1xf32>
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
    affine.store %16, %alloca_25[0] : memref<1xf32>
    %17 = arith.negf %arg2 : f32
    %18 = math.exp %17 : f32
    %19 = arith.mulf %16, %18 : f32
    affine.store %19, %alloca_8[0] : memref<1xf32>
    %20 = arith.subf %arg2, %cst_0 : f32
    %21 = arith.mulf %19, %20 : f32
    affine.store %21, %alloca_16[0] : memref<1xf32>
    %22 = affine.load %alloca_25[0] : memref<1xf32>
    %23 = arith.negf %22 : f32
    %24 = arith.mulf %arg2, %cst_2 : f32
    %25 = math.exp %24 : f32
    %26 = arith.mulf %23, %25 : f32
    affine.store %26, %alloca_13[0] : memref<1xf32>
    %27 = affine.load %alloca_8[0] : memref<1xf32>
    %28 = arith.addf %arg2, %cst_0 : f32
    %29 = arith.mulf %27, %28 : f32
    affine.store %29, %alloca_12[0] : memref<1xf32>
    %30 = llvm.mlir.undef : f32
    affine.store %30, %alloca_5[] : memref<f32>
    %31 = llvm.mlir.undef : f32
    affine.store %31, %alloca_14[] : memref<f32>
    %32 = llvm.mlir.undef : f32
    affine.store %32, %alloca_4[] : memref<f32>
    %33 = llvm.mlir.undef : f32
    affine.store %33, %alloca_24[] : memref<f32>
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_5[] : memref<f32>
      affine.store %cst, %alloca_24[] : memref<f32>
      affine.store %cst, %alloca_4[] : memref<f32>
      affine.for %arg8 = 0 to 64 {
        %40 = affine.load %alloca_11[0] : memref<1xf32>
        %41 = affine.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %42 = arith.mulf %40, %41 : f32
        %43 = affine.load %alloca_16[0] : memref<1xf32>
        %44 = affine.load %alloca_5[] : memref<f32>
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
        affine.store %57, %alloca_5[] : memref<f32>
      }
    }
    %34 = llvm.mlir.undef : f32
    affine.store %34, %alloca_3[] : memref<f32>
    %35 = llvm.mlir.undef : f32
    affine.store %35, %alloca_21[] : memref<f32>
    %36 = llvm.mlir.undef : f32
    affine.store %36, %alloca_10[] : memref<f32>
    %37 = llvm.mlir.undef : f32
    affine.store %37, %alloca_22[] : memref<f32>
    %38 = llvm.mlir.undef : f32
    affine.store %38, %alloca_23[] : memref<f32>
    %39 = llvm.mlir.undef : f32
    affine.store %39, %alloca[] : memref<f32>
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_21[] : memref<f32>
      affine.store %cst, %alloca_3[] : memref<f32>
      affine.store %cst, %alloca[] : memref<f32>
      affine.store %cst, %alloca_23[] : memref<f32>
      affine.for %arg8 = 0 to 64 {
        %40 = affine.load %alloca_12[0] : memref<1xf32>
        %41 = affine.load %alloca_3[] : memref<f32>
        affine.store %41, %alloca_7[0] : memref<1xf32>
        %42 = arith.mulf %40, %41 : f32
        %43 = affine.load %alloca_13[0] : memref<1xf32>
        %44 = affine.load %alloca_21[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %47 = affine.load %alloca_15[0] : memref<1xf32>
        %48 = affine.load %alloca_23[] : memref<f32>
        affine.store %48, %alloca_18[0] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = affine.load %alloca_6[0] : memref<1xf32>
        %52 = affine.load %alloca[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        affine.store %54, %arg6[%arg7, -%arg8 + 63] : memref<?x64xf32>
        %55 = affine.load %arg6[%arg7, -%arg8 + 63] : memref<?x64xf32>
        affine.store %55, %alloca_23[] : memref<f32>
        %56 = affine.load %alloca_18[0] : memref<1xf32>
        affine.store %56, %alloca[] : memref<f32>
        %57 = affine.load %arg3[%arg7, -%arg8 + 63] : memref<?x64xf32>
        affine.store %57, %alloca_3[] : memref<f32>
        %58 = affine.load %alloca_7[0] : memref<1xf32>
        affine.store %58, %alloca_21[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = #map(%arg7) to #map1(%arg7) {
          affine.for %arg10 = #map(%arg8) to #map1(%arg8) {
            %40 = affine.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %41 = affine.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %42 = arith.addf %40, %41 : f32
            affine.store %42, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_24[] : memref<f32>
      affine.store %cst, %alloca_4[] : memref<f32>
      affine.store %cst, %alloca_14[] : memref<f32>
      affine.for %arg8 = 0 to 64 {
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
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca[] : memref<f32>
      affine.store %cst, %alloca_23[] : memref<f32>
      affine.store %cst, %alloca_22[] : memref<f32>
      affine.store %cst, %alloca_10[] : memref<f32>
      affine.for %arg8 = 0 to 64 {
        %40 = affine.load %alloca_12[0] : memref<1xf32>
        %41 = affine.load %alloca_10[] : memref<f32>
        affine.store %41, %alloca_17[0] : memref<1xf32>
        %42 = arith.mulf %40, %41 : f32
        %43 = affine.load %alloca_13[0] : memref<1xf32>
        %44 = affine.load %alloca_22[] : memref<f32>
        %45 = arith.mulf %43, %44 : f32
        %46 = arith.addf %42, %45 : f32
        %47 = affine.load %alloca_15[0] : memref<1xf32>
        %48 = affine.load %alloca_23[] : memref<f32>
        affine.store %48, %alloca_20[0] : memref<1xf32>
        %49 = arith.mulf %47, %48 : f32
        %50 = arith.addf %46, %49 : f32
        %51 = affine.load %alloca_6[0] : memref<1xf32>
        %52 = affine.load %alloca[] : memref<f32>
        %53 = arith.mulf %51, %52 : f32
        %54 = arith.addf %50, %53 : f32
        affine.store %54, %arg6[-%arg8 + 63, %arg7] : memref<?x64xf32>
        %55 = affine.load %arg6[-%arg8 + 63, %arg7] : memref<?x64xf32>
        affine.store %55, %alloca_23[] : memref<f32>
        %56 = affine.load %alloca_20[0] : memref<1xf32>
        affine.store %56, %alloca[] : memref<f32>
        %57 = affine.load %arg4[-%arg8 + 63, %arg7] : memref<?x64xf32>
        affine.store %57, %alloca_10[] : memref<f32>
        %58 = affine.load %alloca_17[0] : memref<1xf32>
        affine.store %58, %alloca_22[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = #map(%arg7) to #map1(%arg7) {
          affine.for %arg10 = #map(%arg8) to #map1(%arg8) {
            %40 = affine.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %41 = affine.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %42 = arith.addf %40, %41 : f32
            affine.store %42, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

