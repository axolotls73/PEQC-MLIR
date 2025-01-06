#map = affine_map<(d0, d1) -> (d0 * 32 + d1)>
module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = llvm.mlir.undef : f32
    %cst_0 = arith.constant 1.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant -2.000000e+00 : f32
    %alloca = memref.alloca() : memref<f32>
    %alloca_3 = memref.alloca() : memref<1xf32>
    %alloca_4 = memref.alloca() : memref<f32>
    %alloca_5 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_6 = memref.alloca() : memref<1xf32>
    %alloca_7 = memref.alloca() : memref<1xf32>
    %alloca_8 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_9 = memref.alloca() : memref<f32>
    %alloca_10 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_11 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_12 = memref.alloca() : memref<1xf32>
    %alloca_13 = memref.alloca() : memref<f32>
    %alloca_14 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_15 = memref.alloca() {scop.scratchpad} : memref<1xf32>
    %alloca_16 = memref.alloca() : memref<1xf32>
    %alloca_17 = memref.alloca() : memref<1xf32>
    %alloca_18 = memref.alloca() : memref<1xf32>
    %alloca_19 = memref.alloca() : memref<1xf32>
    %alloca_20 = memref.alloca() : memref<f32>
    %alloca_21 = memref.alloca() : memref<f32>
    %alloca_22 = memref.alloca() : memref<f32>
    %alloca_23 = memref.alloca() : memref<f32>
    %alloca_24 = memref.alloca() : memref<f32>
    %alloca_25 = memref.alloca() : memref<f32>
    %1 = arith.mulf %arg2, %cst_2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.negf %2 : f32
    affine.store %3, %alloca_5[0] : memref<1xf32>
    %4 = arith.negf %arg2 : f32
    %5 = math.powf %cst_1, %4 : f32
    affine.store %5, %alloca_14[0] : memref<1xf32>
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
    affine.store %16, %alloca_10[0] : memref<1xf32>
    %17 = affine.load %alloca_10[0] : memref<1xf32>
    affine.store %17, %alloca_3[0] : memref<1xf32>
    %18 = arith.negf %arg2 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    affine.store %20, %alloca_7[0] : memref<1xf32>
    %21 = arith.subf %arg2, %cst_0 : f32
    %22 = arith.mulf %20, %21 : f32
    affine.store %22, %alloca_15[0] : memref<1xf32>
    %23 = affine.load %alloca_3[0] : memref<1xf32>
    %24 = arith.negf %23 : f32
    %25 = arith.mulf %arg2, %cst_2 : f32
    %26 = math.exp %25 : f32
    %27 = arith.mulf %24, %26 : f32
    affine.store %27, %alloca_8[0] : memref<1xf32>
    %28 = affine.load %alloca_7[0] : memref<1xf32>
    %29 = arith.addf %arg2, %cst_0 : f32
    %30 = arith.mulf %28, %29 : f32
    affine.store %30, %alloca_11[0] : memref<1xf32>
    affine.store %0, %alloca_4[] : memref<f32>
    affine.store %0, %alloca_13[] : memref<f32>
    affine.store %0, %alloca_25[] : memref<f32>
    affine.store %0, %alloca_23[] : memref<f32>
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_4[] : memref<f32>
      affine.store %cst, %alloca_23[] : memref<f32>
      affine.store %cst, %alloca_25[] : memref<f32>
      affine.for %arg8 = 0 to 64 {
        %31 = affine.load %alloca_10[0] : memref<1xf32>
        %32 = affine.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        %33 = arith.mulf %31, %32 : f32
        %34 = affine.load %alloca_15[0] : memref<1xf32>
        %35 = affine.load %alloca_4[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %38 = affine.load %alloca_14[0] : memref<1xf32>
        %39 = affine.load %alloca_25[] : memref<f32>
        affine.store %39, %alloca_6[0] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %42 = affine.load %alloca_5[0] : memref<1xf32>
        %43 = affine.load %alloca_23[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        affine.store %45, %arg5[%arg7, %arg8] : memref<?x64xf32>
        %46 = affine.load %arg5[%arg7, %arg8] : memref<?x64xf32>
        affine.store %46, %alloca_25[] : memref<f32>
        %47 = affine.load %alloca_6[0] : memref<1xf32>
        affine.store %47, %alloca_23[] : memref<f32>
        %48 = affine.load %arg3[%arg7, %arg8] : memref<?x64xf32>
        affine.store %48, %alloca_4[] : memref<f32>
      }
    }
    affine.store %0, %alloca[] : memref<f32>
    affine.store %0, %alloca_20[] : memref<f32>
    affine.store %0, %alloca_9[] : memref<f32>
    affine.store %0, %alloca_21[] : memref<f32>
    affine.store %0, %alloca_22[] : memref<f32>
    affine.store %0, %alloca_24[] : memref<f32>
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_20[] : memref<f32>
      affine.store %cst, %alloca[] : memref<f32>
      affine.store %cst, %alloca_24[] : memref<f32>
      affine.store %cst, %alloca_22[] : memref<f32>
      affine.for %arg8 = 0 to 64 {
        %31 = affine.load %alloca_11[0] : memref<1xf32>
        %32 = affine.load %alloca[] : memref<f32>
        affine.store %32, %alloca_12[0] : memref<1xf32>
        %33 = arith.mulf %31, %32 : f32
        %34 = affine.load %alloca_8[0] : memref<1xf32>
        %35 = affine.load %alloca_20[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %38 = affine.load %alloca_14[0] : memref<1xf32>
        %39 = affine.load %alloca_22[] : memref<f32>
        affine.store %39, %alloca_17[0] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %42 = affine.load %alloca_5[0] : memref<1xf32>
        %43 = affine.load %alloca_24[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        affine.store %45, %arg6[%arg7, -%arg8 + 63] : memref<?x64xf32>
        %46 = affine.load %arg6[%arg7, -%arg8 + 63] : memref<?x64xf32>
        affine.store %46, %alloca_22[] : memref<f32>
        %47 = affine.load %alloca_17[0] : memref<1xf32>
        affine.store %47, %alloca_24[] : memref<f32>
        %48 = affine.load %arg3[%arg7, -%arg8 + 63] : memref<?x64xf32>
        affine.store %48, %alloca[] : memref<f32>
        %49 = affine.load %alloca_12[0] : memref<1xf32>
        affine.store %49, %alloca_20[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = 0 to 32 {
          %31 = affine.apply #map(%arg7, %arg9)
          affine.for %arg10 = 0 to 32 {
            %32 = affine.apply #map(%arg8, %arg10)
            %33 = affine.load %arg5[%31, %32] : memref<?x64xf32>
            %34 = affine.load %arg6[%31, %32] : memref<?x64xf32>
            %35 = arith.addf %33, %34 : f32
            affine.store %35, %arg4[%31, %32] : memref<?x64xf32>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_23[] : memref<f32>
      affine.store %cst, %alloca_25[] : memref<f32>
      affine.store %cst, %alloca_13[] : memref<f32>
      affine.for %arg8 = 0 to 64 {
        %31 = affine.load %alloca_10[0] : memref<1xf32>
        %32 = affine.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        %33 = arith.mulf %31, %32 : f32
        %34 = affine.load %alloca_15[0] : memref<1xf32>
        %35 = affine.load %alloca_13[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %38 = affine.load %alloca_14[0] : memref<1xf32>
        %39 = affine.load %alloca_25[] : memref<f32>
        affine.store %39, %alloca_18[0] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %42 = affine.load %alloca_5[0] : memref<1xf32>
        %43 = affine.load %alloca_23[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        affine.store %45, %arg5[%arg8, %arg7] : memref<?x64xf32>
        %46 = affine.load %arg5[%arg8, %arg7] : memref<?x64xf32>
        affine.store %46, %alloca_25[] : memref<f32>
        %47 = affine.load %alloca_18[0] : memref<1xf32>
        affine.store %47, %alloca_23[] : memref<f32>
        %48 = affine.load %arg4[%arg8, %arg7] : memref<?x64xf32>
        affine.store %48, %alloca_13[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.store %cst, %alloca_24[] : memref<f32>
      affine.store %cst, %alloca_22[] : memref<f32>
      affine.store %cst, %alloca_21[] : memref<f32>
      affine.store %cst, %alloca_9[] : memref<f32>
      affine.for %arg8 = 0 to 64 {
        %31 = affine.load %alloca_11[0] : memref<1xf32>
        %32 = affine.load %alloca_9[] : memref<f32>
        affine.store %32, %alloca_16[0] : memref<1xf32>
        %33 = arith.mulf %31, %32 : f32
        %34 = affine.load %alloca_8[0] : memref<1xf32>
        %35 = affine.load %alloca_21[] : memref<f32>
        %36 = arith.mulf %34, %35 : f32
        %37 = arith.addf %33, %36 : f32
        %38 = affine.load %alloca_14[0] : memref<1xf32>
        %39 = affine.load %alloca_22[] : memref<f32>
        affine.store %39, %alloca_19[0] : memref<1xf32>
        %40 = arith.mulf %38, %39 : f32
        %41 = arith.addf %37, %40 : f32
        %42 = affine.load %alloca_5[0] : memref<1xf32>
        %43 = affine.load %alloca_24[] : memref<f32>
        %44 = arith.mulf %42, %43 : f32
        %45 = arith.addf %41, %44 : f32
        affine.store %45, %arg6[-%arg8 + 63, %arg7] : memref<?x64xf32>
        %46 = affine.load %arg6[-%arg8 + 63, %arg7] : memref<?x64xf32>
        affine.store %46, %alloca_22[] : memref<f32>
        %47 = affine.load %alloca_19[0] : memref<1xf32>
        affine.store %47, %alloca_24[] : memref<f32>
        %48 = affine.load %arg4[-%arg8 + 63, %arg7] : memref<?x64xf32>
        affine.store %48, %alloca_9[] : memref<f32>
        %49 = affine.load %alloca_16[0] : memref<1xf32>
        affine.store %49, %alloca_21[] : memref<f32>
      }
    }
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 2 {
        affine.for %arg9 = 0 to 32 {
          %31 = affine.apply #map(%arg7, %arg9)
          affine.for %arg10 = 0 to 32 {
            %32 = affine.apply #map(%arg8, %arg10)
            %33 = affine.load %arg5[%31, %32] : memref<?x64xf32>
            %34 = affine.load %arg6[%31, %32] : memref<?x64xf32>
            %35 = arith.addf %33, %34 : f32
            affine.store %35, %arg4[%31, %32] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

