#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 32)>
#map2 = affine_map<(d0) -> (-d0 + 63)>
#map3 = affine_map<(d0, d1) -> (-d0 + 63)>
#map4 = affine_map<(d0, d1) -> (d1)>
module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
    %alloc = memref.alloc() : memref<1x1xf32>
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant -2.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant 1.000000e+00 : f32
    %0 = llvm.mlir.undef : f32
    %alloca = memref.alloca() : memref<f32>
    affine.store %0, %alloca[] : memref<f32>
    %alloca_3 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_3[] : memref<f32>
    %alloca_4 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_4[] : memref<f32>
    %alloca_5 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_5[] : memref<f32>
    %alloca_6 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_6[] : memref<f32>
    %alloca_7 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_7[] : memref<f32>
    %alloca_8 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_8[] : memref<f32>
    %alloca_9 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_9[] : memref<f32>
    %alloca_10 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_10[] : memref<f32>
    %alloca_11 = memref.alloca() : memref<f32>
    affine.store %0, %alloca_11[] : memref<f32>
    %1 = arith.negf %arg2 : f32
    %2 = math.exp %1 : f32
    %3 = arith.subf %cst_2, %2 : f32
    %4 = arith.mulf %3, %3 : f32
    %5 = arith.mulf %arg2, %2 : f32
    %6 = arith.mulf %5, %cst_1 : f32
    %7 = arith.addf %6, %cst_2 : f32
    %8 = arith.mulf %arg2, %cst_1 : f32
    %9 = math.exp %8 : f32
    %10 = arith.subf %7, %9 : f32
    %11 = arith.divf %4, %10 : f32
    %12 = arith.mulf %11, %2 : f32
    %13 = arith.subf %arg2, %cst_2 : f32
    %14 = arith.mulf %12, %13 : f32
    %15 = arith.addf %arg2, %cst_2 : f32
    %16 = arith.mulf %12, %15 : f32
    %17 = arith.negf %11 : f32
    %18 = arith.mulf %arg2, %cst_0 : f32
    %19 = math.exp %18 : f32
    %20 = arith.mulf %17, %19 : f32
    %21 = math.powf %cst_1, %1 : f32
    %22 = arith.negf %19 : f32
    affine.for %arg7 = 0 to 64 step 32 {
      affine.for %arg8 = #map(%arg7) to #map1(%arg7) {
        affine.store %cst, %alloca_3[] : memref<f32>
        affine.store %cst, %alloca[] : memref<f32>
        affine.store %cst, %alloca_7[] : memref<f32>
        affine.store %cst, %alloca_6[] : memref<f32>
        affine.for %arg9 = 0 to 64 {
          %23 = affine.load %alloca_7[] : memref<f32>
          %24 = arith.mulf %16, %23 : f32
          %25 = affine.load %alloca_6[] : memref<f32>
          %26 = arith.mulf %20, %25 : f32
          %27 = arith.addf %24, %26 : f32
          %28 = affine.load %alloca_3[] : memref<f32>
          %29 = arith.mulf %21, %28 : f32
          %30 = arith.addf %27, %29 : f32
          %31 = affine.load %alloca[] : memref<f32>
          %32 = arith.mulf %22, %31 : f32
          %33 = arith.addf %30, %32 : f32
          affine.store %33, %arg6[%arg8, -%arg9 + 63] : memref<?x64xf32>
          affine.store %23, %alloca_6[] : memref<f32>
          %34 = affine.load %arg3[%arg8, -%arg9 + 63] : memref<?x64xf32>
          affine.store %34, %alloca_7[] : memref<f32>
          affine.store %28, %alloca[] : memref<f32>
          %35 = affine.load %arg6[%arg8, -%arg9 + 63] : memref<?x64xf32>
          affine.store %35, %alloca_3[] : memref<f32>
        }
      }
    }
    affine.for %arg7 = 0 to 64 step 32 {
      affine.for %arg8 = 0 to 64 step 32 {
        affine.for %arg9 = #map(%arg7) to #map1(%arg7) {
          affine.for %arg10 = #map(%arg8) to #map1(%arg8) {
            affine.store %cst, %alloca_9[] : memref<f32>
            affine.store %cst, %alloca_8[] : memref<f32>
            affine.store %cst, %alloca_11[] : memref<f32>
            %23 = affine.load %arg3[%arg9, %arg10] : memref<?x64xf32>
            %24 = arith.mulf %11, %23 : f32
            %25 = affine.load %alloca_11[] : memref<f32>
            %26 = arith.mulf %14, %25 : f32
            %27 = arith.addf %24, %26 : f32
            %28 = affine.load %alloca_9[] : memref<f32>
            %29 = arith.mulf %21, %28 : f32
            %30 = arith.addf %27, %29 : f32
            %31 = affine.load %alloca_8[] : memref<f32>
            %32 = arith.mulf %22, %31 : f32
            %33 = arith.addf %30, %32 : f32
            affine.store %33, %arg5[%arg9, %arg10] : memref<?x64xf32>
            %34 = affine.load %arg3[%arg9, %arg10] : memref<?x64xf32>
            affine.store %34, %alloca_11[] : memref<f32>
            affine.store %28, %alloca_8[] : memref<f32>
            %35 = affine.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            affine.store %35, %alloca_9[] : memref<f32>
            affine.store %cst, %alloca_3[] : memref<f32>
            affine.store %cst, %alloca[] : memref<f32>
            affine.store %cst, %alloca_7[] : memref<f32>
            affine.store %cst, %alloca_6[] : memref<f32>
            %36 = affine.apply #map2(%arg10)
            %37 = affine.load %alloca_7[] : memref<f32>
            %38 = arith.mulf %16, %37 : f32
            %39 = affine.load %alloca_6[] : memref<f32>
            %40 = arith.mulf %20, %39 : f32
            %41 = arith.addf %38, %40 : f32
            %42 = affine.load %alloca_3[] : memref<f32>
            %43 = arith.mulf %21, %42 : f32
            %44 = arith.addf %41, %43 : f32
            %45 = affine.load %alloca[] : memref<f32>
            %46 = arith.mulf %22, %45 : f32
            %47 = arith.addf %44, %46 : f32
            affine.store %47, %arg6[%arg9, -%36 + 63] : memref<?x64xf32>
            affine.store %37, %alloca_6[] : memref<f32>
            %48 = affine.load %arg3[%arg9, -%36 + 63] : memref<?x64xf32>
            affine.store %48, %alloca_7[] : memref<f32>
            affine.store %42, %alloca[] : memref<f32>
            %49 = affine.load %arg6[%arg9, -%36 + 63] : memref<?x64xf32>
            affine.store %49, %alloca_3[] : memref<f32>
            %50 = affine.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %51 = affine.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %52 = arith.addf %50, %51 : f32
            affine.store %52, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 64 step 32 {
      affine.for %arg8 = #map(%arg7) to #map1(%arg7) {
        affine.store %cst, %alloca_5[] : memref<f32>
        affine.store %cst, %alloca_4[] : memref<f32>
        affine.store %cst, %alloca_3[] : memref<f32>
        affine.store %cst, %alloca[] : memref<f32>
        affine.for %arg9 = 0 to 64 {
          %23 = affine.apply #map2(%arg9)
          %24 = affine.load %arg5[%23, %arg8] : memref<?x64xf32>
          %25 = affine.load %arg6[%23, %arg8] : memref<?x64xf32>
          %26 = arith.addf %24, %25 : f32
          affine.store %26, %alloc[0, 0] : memref<1x1xf32>
          %27 = affine.load %alloca_5[] : memref<f32>
          %28 = arith.mulf %16, %27 : f32
          %29 = affine.load %alloca_4[] : memref<f32>
          %30 = arith.mulf %20, %29 : f32
          %31 = arith.addf %28, %30 : f32
          %32 = affine.load %alloca_3[] : memref<f32>
          %33 = arith.mulf %21, %32 : f32
          %34 = arith.addf %31, %33 : f32
          %35 = affine.load %alloca[] : memref<f32>
          %36 = arith.mulf %22, %35 : f32
          %37 = arith.addf %34, %36 : f32
          affine.store %37, %arg6[-%arg9 + 63, %arg8] : memref<?x64xf32>
          affine.store %27, %alloca_4[] : memref<f32>
          %38 = affine.apply #map3(%arg9, %arg8)
          %39 = affine.apply #map4(%arg9, %arg8)
          %40 = affine.load %alloc[0, 0] : memref<1x1xf32>
          affine.store %40, %alloca_5[] : memref<f32>
          affine.store %32, %alloca[] : memref<f32>
          %41 = affine.load %arg6[-%arg9 + 63, %arg8] : memref<?x64xf32>
          affine.store %41, %alloca_3[] : memref<f32>
        }
      }
    }
    affine.for %arg7 = 0 to 64 step 32 {
      affine.for %arg8 = 0 to 64 step 32 {
        affine.for %arg9 = #map(%arg7) to #map1(%arg7) {
          affine.for %arg10 = #map(%arg8) to #map1(%arg8) {
            affine.store %cst, %alloca_10[] : memref<f32>
            affine.store %cst, %alloca_9[] : memref<f32>
            affine.store %cst, %alloca_8[] : memref<f32>
            %23 = affine.load %arg4[%arg9, %arg10] : memref<?x64xf32>
            %24 = arith.mulf %11, %23 : f32
            %25 = affine.load %alloca_10[] : memref<f32>
            %26 = arith.mulf %14, %25 : f32
            %27 = arith.addf %24, %26 : f32
            %28 = affine.load %alloca_9[] : memref<f32>
            %29 = arith.mulf %21, %28 : f32
            %30 = arith.addf %27, %29 : f32
            %31 = affine.load %alloca_8[] : memref<f32>
            %32 = arith.mulf %22, %31 : f32
            %33 = arith.addf %30, %32 : f32
            affine.store %33, %arg5[%arg9, %arg10] : memref<?x64xf32>
            %34 = affine.load %arg4[%arg9, %arg10] : memref<?x64xf32>
            affine.store %34, %alloca_10[] : memref<f32>
            affine.store %28, %alloca_8[] : memref<f32>
            %35 = affine.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            affine.store %35, %alloca_9[] : memref<f32>
            affine.store %cst, %alloca_5[] : memref<f32>
            affine.store %cst, %alloca_4[] : memref<f32>
            affine.store %cst, %alloca_3[] : memref<f32>
            affine.store %cst, %alloca[] : memref<f32>
            %36 = affine.apply #map2(%arg9)
            %37 = affine.load %alloca_5[] : memref<f32>
            %38 = arith.mulf %16, %37 : f32
            %39 = affine.load %alloca_4[] : memref<f32>
            %40 = arith.mulf %20, %39 : f32
            %41 = arith.addf %38, %40 : f32
            %42 = affine.load %alloca_3[] : memref<f32>
            %43 = arith.mulf %21, %42 : f32
            %44 = arith.addf %41, %43 : f32
            %45 = affine.load %alloca[] : memref<f32>
            %46 = arith.mulf %22, %45 : f32
            %47 = arith.addf %44, %46 : f32
            affine.store %47, %arg6[-%36 + 63, %arg10] : memref<?x64xf32>
            affine.store %37, %alloca_4[] : memref<f32>
            %48 = affine.load %arg4[-%36 + 63, %arg10] : memref<?x64xf32>
            affine.store %48, %alloca_5[] : memref<f32>
            affine.store %42, %alloca[] : memref<f32>
            %49 = affine.load %arg6[-%36 + 63, %arg10] : memref<?x64xf32>
            affine.store %49, %alloca_3[] : memref<f32>
            %50 = affine.load %arg5[%arg9, %arg10] : memref<?x64xf32>
            %51 = affine.load %arg6[%arg9, %arg10] : memref<?x64xf32>
            %52 = arith.addf %50, %51 : f32
            affine.store %52, %arg4[%arg9, %arg10] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

