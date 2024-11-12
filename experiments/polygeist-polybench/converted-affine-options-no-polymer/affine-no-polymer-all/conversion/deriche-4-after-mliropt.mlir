#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (d0 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
module {
  func.func @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x64xf32>, %arg4: memref<?x64xf32>, %arg5: memref<?x64xf32>, %arg6: memref<?x64xf32>) {
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
    affine.for %arg7 = 0 to 64 {
      affine.parallel (%arg8) = (0) to (1) {
        %23 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %alloca_9[] : memref<f32>
        affine.store %cst, %alloca_8[] : memref<f32>
        affine.store %cst, %alloca_11[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %24 = affine.apply #map1(%arg9)
          %25 = affine.load %arg3[%23, %24] : memref<?x64xf32>
          %26 = arith.mulf %11, %25 : f32
          %27 = affine.load %alloca_11[] : memref<f32>
          %28 = arith.mulf %14, %27 : f32
          %29 = arith.addf %26, %28 : f32
          %30 = affine.load %alloca_9[] : memref<f32>
          %31 = arith.mulf %21, %30 : f32
          %32 = arith.addf %29, %31 : f32
          %33 = affine.load %alloca_8[] : memref<f32>
          %34 = arith.mulf %22, %33 : f32
          %35 = arith.addf %32, %34 : f32
          affine.store %35, %arg5[%23, %24] : memref<?x64xf32>
          %36 = affine.load %arg3[%23, %24] : memref<?x64xf32>
          affine.store %36, %alloca_11[] : memref<f32>
          affine.store %30, %alloca_8[] : memref<f32>
          %37 = affine.load %arg5[%23, %24] : memref<?x64xf32>
          affine.store %37, %alloca_9[] : memref<f32>
          %38 = affine.apply #map2(%24)
          %39 = affine.load %arg3[%23, %38] : memref<?x64xf32>
          %40 = arith.mulf %11, %39 : f32
          %41 = affine.load %alloca_11[] : memref<f32>
          %42 = arith.mulf %14, %41 : f32
          %43 = arith.addf %40, %42 : f32
          %44 = affine.load %alloca_9[] : memref<f32>
          %45 = arith.mulf %21, %44 : f32
          %46 = arith.addf %43, %45 : f32
          %47 = affine.load %alloca_8[] : memref<f32>
          %48 = arith.mulf %22, %47 : f32
          %49 = arith.addf %46, %48 : f32
          affine.store %49, %arg5[%23, %38] : memref<?x64xf32>
          %50 = affine.load %arg3[%23, %38] : memref<?x64xf32>
          affine.store %50, %alloca_11[] : memref<f32>
          affine.store %44, %alloca_8[] : memref<f32>
          %51 = affine.load %arg5[%23, %38] : memref<?x64xf32>
          affine.store %51, %alloca_9[] : memref<f32>
          %52 = affine.apply #map3(%24)
          %53 = affine.load %arg3[%23, %52] : memref<?x64xf32>
          %54 = arith.mulf %11, %53 : f32
          %55 = affine.load %alloca_11[] : memref<f32>
          %56 = arith.mulf %14, %55 : f32
          %57 = arith.addf %54, %56 : f32
          %58 = affine.load %alloca_9[] : memref<f32>
          %59 = arith.mulf %21, %58 : f32
          %60 = arith.addf %57, %59 : f32
          %61 = affine.load %alloca_8[] : memref<f32>
          %62 = arith.mulf %22, %61 : f32
          %63 = arith.addf %60, %62 : f32
          affine.store %63, %arg5[%23, %52] : memref<?x64xf32>
          %64 = affine.load %arg3[%23, %52] : memref<?x64xf32>
          affine.store %64, %alloca_11[] : memref<f32>
          affine.store %58, %alloca_8[] : memref<f32>
          %65 = affine.load %arg5[%23, %52] : memref<?x64xf32>
          affine.store %65, %alloca_9[] : memref<f32>
          %66 = affine.apply #map4(%24)
          %67 = affine.load %arg3[%23, %66] : memref<?x64xf32>
          %68 = arith.mulf %11, %67 : f32
          %69 = affine.load %alloca_11[] : memref<f32>
          %70 = arith.mulf %14, %69 : f32
          %71 = arith.addf %68, %70 : f32
          %72 = affine.load %alloca_9[] : memref<f32>
          %73 = arith.mulf %21, %72 : f32
          %74 = arith.addf %71, %73 : f32
          %75 = affine.load %alloca_8[] : memref<f32>
          %76 = arith.mulf %22, %75 : f32
          %77 = arith.addf %74, %76 : f32
          affine.store %77, %arg5[%23, %66] : memref<?x64xf32>
          %78 = affine.load %arg3[%23, %66] : memref<?x64xf32>
          affine.store %78, %alloca_11[] : memref<f32>
          affine.store %72, %alloca_8[] : memref<f32>
          %79 = affine.load %arg5[%23, %66] : memref<?x64xf32>
          affine.store %79, %alloca_9[] : memref<f32>
        }
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.parallel (%arg8) = (0) to (1) {
        %23 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %alloca_3[] : memref<f32>
        affine.store %cst, %alloca[] : memref<f32>
        affine.store %cst, %alloca_7[] : memref<f32>
        affine.store %cst, %alloca_6[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %24 = affine.apply #map1(%arg9)
          %25 = affine.load %alloca_7[] : memref<f32>
          %26 = arith.mulf %16, %25 : f32
          %27 = affine.load %alloca_6[] : memref<f32>
          %28 = arith.mulf %20, %27 : f32
          %29 = arith.addf %26, %28 : f32
          %30 = affine.load %alloca_3[] : memref<f32>
          %31 = arith.mulf %21, %30 : f32
          %32 = arith.addf %29, %31 : f32
          %33 = affine.load %alloca[] : memref<f32>
          %34 = arith.mulf %22, %33 : f32
          %35 = arith.addf %32, %34 : f32
          affine.store %35, %arg6[%23, -%24 + 63] : memref<?x64xf32>
          affine.store %25, %alloca_6[] : memref<f32>
          %36 = affine.load %arg3[%23, -%24 + 63] : memref<?x64xf32>
          affine.store %36, %alloca_7[] : memref<f32>
          affine.store %30, %alloca[] : memref<f32>
          %37 = affine.load %arg6[%23, -%24 + 63] : memref<?x64xf32>
          affine.store %37, %alloca_3[] : memref<f32>
          %38 = affine.apply #map2(%24)
          %39 = affine.load %alloca_7[] : memref<f32>
          %40 = arith.mulf %16, %39 : f32
          %41 = affine.load %alloca_6[] : memref<f32>
          %42 = arith.mulf %20, %41 : f32
          %43 = arith.addf %40, %42 : f32
          %44 = affine.load %alloca_3[] : memref<f32>
          %45 = arith.mulf %21, %44 : f32
          %46 = arith.addf %43, %45 : f32
          %47 = affine.load %alloca[] : memref<f32>
          %48 = arith.mulf %22, %47 : f32
          %49 = arith.addf %46, %48 : f32
          affine.store %49, %arg6[%23, -%38 + 63] : memref<?x64xf32>
          affine.store %39, %alloca_6[] : memref<f32>
          %50 = affine.load %arg3[%23, -%38 + 63] : memref<?x64xf32>
          affine.store %50, %alloca_7[] : memref<f32>
          affine.store %44, %alloca[] : memref<f32>
          %51 = affine.load %arg6[%23, -%38 + 63] : memref<?x64xf32>
          affine.store %51, %alloca_3[] : memref<f32>
          %52 = affine.apply #map3(%24)
          %53 = affine.load %alloca_7[] : memref<f32>
          %54 = arith.mulf %16, %53 : f32
          %55 = affine.load %alloca_6[] : memref<f32>
          %56 = arith.mulf %20, %55 : f32
          %57 = arith.addf %54, %56 : f32
          %58 = affine.load %alloca_3[] : memref<f32>
          %59 = arith.mulf %21, %58 : f32
          %60 = arith.addf %57, %59 : f32
          %61 = affine.load %alloca[] : memref<f32>
          %62 = arith.mulf %22, %61 : f32
          %63 = arith.addf %60, %62 : f32
          affine.store %63, %arg6[%23, -%52 + 63] : memref<?x64xf32>
          affine.store %53, %alloca_6[] : memref<f32>
          %64 = affine.load %arg3[%23, -%52 + 63] : memref<?x64xf32>
          affine.store %64, %alloca_7[] : memref<f32>
          affine.store %58, %alloca[] : memref<f32>
          %65 = affine.load %arg6[%23, -%52 + 63] : memref<?x64xf32>
          affine.store %65, %alloca_3[] : memref<f32>
          %66 = affine.apply #map4(%24)
          %67 = affine.load %alloca_7[] : memref<f32>
          %68 = arith.mulf %16, %67 : f32
          %69 = affine.load %alloca_6[] : memref<f32>
          %70 = arith.mulf %20, %69 : f32
          %71 = arith.addf %68, %70 : f32
          %72 = affine.load %alloca_3[] : memref<f32>
          %73 = arith.mulf %21, %72 : f32
          %74 = arith.addf %71, %73 : f32
          %75 = affine.load %alloca[] : memref<f32>
          %76 = arith.mulf %22, %75 : f32
          %77 = arith.addf %74, %76 : f32
          affine.store %77, %arg6[%23, -%66 + 63] : memref<?x64xf32>
          affine.store %67, %alloca_6[] : memref<f32>
          %78 = affine.load %arg3[%23, -%66 + 63] : memref<?x64xf32>
          affine.store %78, %alloca_7[] : memref<f32>
          affine.store %72, %alloca[] : memref<f32>
          %79 = affine.load %arg6[%23, -%66 + 63] : memref<?x64xf32>
          affine.store %79, %alloca_3[] : memref<f32>
        }
      }
    }
    affine.parallel (%arg7) = (0) to (64) {
      affine.for %arg8 = 0 to 16 {
        %23 = affine.apply #map1(%arg8)
        affine.for %arg9 = 0 to 1 {
          %24 = affine.apply #map(%arg7, %arg9)
          affine.for %arg10 = 0 to 1 {
            %25 = affine.apply #map5(%23, %arg10)
            %26 = affine.load %arg5[%24, %25] : memref<?x64xf32>
            %27 = affine.load %arg6[%24, %25] : memref<?x64xf32>
            %28 = arith.addf %26, %27 : f32
            affine.store %28, %arg4[%24, %25] : memref<?x64xf32>
            %29 = affine.apply #map2(%25)
            %30 = affine.load %arg5[%24, %29] : memref<?x64xf32>
            %31 = affine.load %arg6[%24, %29] : memref<?x64xf32>
            %32 = arith.addf %30, %31 : f32
            affine.store %32, %arg4[%24, %29] : memref<?x64xf32>
            %33 = affine.apply #map3(%25)
            %34 = affine.load %arg5[%24, %33] : memref<?x64xf32>
            %35 = affine.load %arg6[%24, %33] : memref<?x64xf32>
            %36 = arith.addf %34, %35 : f32
            affine.store %36, %arg4[%24, %33] : memref<?x64xf32>
            %37 = affine.apply #map4(%25)
            %38 = affine.load %arg5[%24, %37] : memref<?x64xf32>
            %39 = affine.load %arg6[%24, %37] : memref<?x64xf32>
            %40 = arith.addf %38, %39 : f32
            affine.store %40, %arg4[%24, %37] : memref<?x64xf32>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.parallel (%arg8) = (0) to (1) {
        %23 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %alloca_10[] : memref<f32>
        affine.store %cst, %alloca_9[] : memref<f32>
        affine.store %cst, %alloca_8[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %24 = affine.apply #map1(%arg9)
          %25 = affine.load %arg4[%24, %23] : memref<?x64xf32>
          %26 = arith.mulf %11, %25 : f32
          %27 = affine.load %alloca_10[] : memref<f32>
          %28 = arith.mulf %14, %27 : f32
          %29 = arith.addf %26, %28 : f32
          %30 = affine.load %alloca_9[] : memref<f32>
          %31 = arith.mulf %21, %30 : f32
          %32 = arith.addf %29, %31 : f32
          %33 = affine.load %alloca_8[] : memref<f32>
          %34 = arith.mulf %22, %33 : f32
          %35 = arith.addf %32, %34 : f32
          affine.store %35, %arg5[%24, %23] : memref<?x64xf32>
          %36 = affine.load %arg4[%24, %23] : memref<?x64xf32>
          affine.store %36, %alloca_10[] : memref<f32>
          affine.store %30, %alloca_8[] : memref<f32>
          %37 = affine.load %arg5[%24, %23] : memref<?x64xf32>
          affine.store %37, %alloca_9[] : memref<f32>
          %38 = affine.apply #map2(%24)
          %39 = affine.load %arg4[%38, %23] : memref<?x64xf32>
          %40 = arith.mulf %11, %39 : f32
          %41 = affine.load %alloca_10[] : memref<f32>
          %42 = arith.mulf %14, %41 : f32
          %43 = arith.addf %40, %42 : f32
          %44 = affine.load %alloca_9[] : memref<f32>
          %45 = arith.mulf %21, %44 : f32
          %46 = arith.addf %43, %45 : f32
          %47 = affine.load %alloca_8[] : memref<f32>
          %48 = arith.mulf %22, %47 : f32
          %49 = arith.addf %46, %48 : f32
          affine.store %49, %arg5[%38, %23] : memref<?x64xf32>
          %50 = affine.load %arg4[%38, %23] : memref<?x64xf32>
          affine.store %50, %alloca_10[] : memref<f32>
          affine.store %44, %alloca_8[] : memref<f32>
          %51 = affine.load %arg5[%38, %23] : memref<?x64xf32>
          affine.store %51, %alloca_9[] : memref<f32>
          %52 = affine.apply #map3(%24)
          %53 = affine.load %arg4[%52, %23] : memref<?x64xf32>
          %54 = arith.mulf %11, %53 : f32
          %55 = affine.load %alloca_10[] : memref<f32>
          %56 = arith.mulf %14, %55 : f32
          %57 = arith.addf %54, %56 : f32
          %58 = affine.load %alloca_9[] : memref<f32>
          %59 = arith.mulf %21, %58 : f32
          %60 = arith.addf %57, %59 : f32
          %61 = affine.load %alloca_8[] : memref<f32>
          %62 = arith.mulf %22, %61 : f32
          %63 = arith.addf %60, %62 : f32
          affine.store %63, %arg5[%52, %23] : memref<?x64xf32>
          %64 = affine.load %arg4[%52, %23] : memref<?x64xf32>
          affine.store %64, %alloca_10[] : memref<f32>
          affine.store %58, %alloca_8[] : memref<f32>
          %65 = affine.load %arg5[%52, %23] : memref<?x64xf32>
          affine.store %65, %alloca_9[] : memref<f32>
          %66 = affine.apply #map4(%24)
          %67 = affine.load %arg4[%66, %23] : memref<?x64xf32>
          %68 = arith.mulf %11, %67 : f32
          %69 = affine.load %alloca_10[] : memref<f32>
          %70 = arith.mulf %14, %69 : f32
          %71 = arith.addf %68, %70 : f32
          %72 = affine.load %alloca_9[] : memref<f32>
          %73 = arith.mulf %21, %72 : f32
          %74 = arith.addf %71, %73 : f32
          %75 = affine.load %alloca_8[] : memref<f32>
          %76 = arith.mulf %22, %75 : f32
          %77 = arith.addf %74, %76 : f32
          affine.store %77, %arg5[%66, %23] : memref<?x64xf32>
          %78 = affine.load %arg4[%66, %23] : memref<?x64xf32>
          affine.store %78, %alloca_10[] : memref<f32>
          affine.store %72, %alloca_8[] : memref<f32>
          %79 = affine.load %arg5[%66, %23] : memref<?x64xf32>
          affine.store %79, %alloca_9[] : memref<f32>
        }
      }
    }
    affine.for %arg7 = 0 to 64 {
      affine.parallel (%arg8) = (0) to (1) {
        %23 = affine.apply #map(%arg7, %arg8)
        affine.store %cst, %alloca_5[] : memref<f32>
        affine.store %cst, %alloca_4[] : memref<f32>
        affine.store %cst, %alloca_3[] : memref<f32>
        affine.store %cst, %alloca[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %24 = affine.apply #map1(%arg9)
          %25 = affine.load %alloca_5[] : memref<f32>
          %26 = arith.mulf %16, %25 : f32
          %27 = affine.load %alloca_4[] : memref<f32>
          %28 = arith.mulf %20, %27 : f32
          %29 = arith.addf %26, %28 : f32
          %30 = affine.load %alloca_3[] : memref<f32>
          %31 = arith.mulf %21, %30 : f32
          %32 = arith.addf %29, %31 : f32
          %33 = affine.load %alloca[] : memref<f32>
          %34 = arith.mulf %22, %33 : f32
          %35 = arith.addf %32, %34 : f32
          affine.store %35, %arg6[-%24 + 63, %23] : memref<?x64xf32>
          affine.store %25, %alloca_4[] : memref<f32>
          %36 = affine.load %arg4[-%24 + 63, %23] : memref<?x64xf32>
          affine.store %36, %alloca_5[] : memref<f32>
          affine.store %30, %alloca[] : memref<f32>
          %37 = affine.load %arg6[-%24 + 63, %23] : memref<?x64xf32>
          affine.store %37, %alloca_3[] : memref<f32>
          %38 = affine.apply #map2(%24)
          %39 = affine.load %alloca_5[] : memref<f32>
          %40 = arith.mulf %16, %39 : f32
          %41 = affine.load %alloca_4[] : memref<f32>
          %42 = arith.mulf %20, %41 : f32
          %43 = arith.addf %40, %42 : f32
          %44 = affine.load %alloca_3[] : memref<f32>
          %45 = arith.mulf %21, %44 : f32
          %46 = arith.addf %43, %45 : f32
          %47 = affine.load %alloca[] : memref<f32>
          %48 = arith.mulf %22, %47 : f32
          %49 = arith.addf %46, %48 : f32
          affine.store %49, %arg6[-%38 + 63, %23] : memref<?x64xf32>
          affine.store %39, %alloca_4[] : memref<f32>
          %50 = affine.load %arg4[-%38 + 63, %23] : memref<?x64xf32>
          affine.store %50, %alloca_5[] : memref<f32>
          affine.store %44, %alloca[] : memref<f32>
          %51 = affine.load %arg6[-%38 + 63, %23] : memref<?x64xf32>
          affine.store %51, %alloca_3[] : memref<f32>
          %52 = affine.apply #map3(%24)
          %53 = affine.load %alloca_5[] : memref<f32>
          %54 = arith.mulf %16, %53 : f32
          %55 = affine.load %alloca_4[] : memref<f32>
          %56 = arith.mulf %20, %55 : f32
          %57 = arith.addf %54, %56 : f32
          %58 = affine.load %alloca_3[] : memref<f32>
          %59 = arith.mulf %21, %58 : f32
          %60 = arith.addf %57, %59 : f32
          %61 = affine.load %alloca[] : memref<f32>
          %62 = arith.mulf %22, %61 : f32
          %63 = arith.addf %60, %62 : f32
          affine.store %63, %arg6[-%52 + 63, %23] : memref<?x64xf32>
          affine.store %53, %alloca_4[] : memref<f32>
          %64 = affine.load %arg4[-%52 + 63, %23] : memref<?x64xf32>
          affine.store %64, %alloca_5[] : memref<f32>
          affine.store %58, %alloca[] : memref<f32>
          %65 = affine.load %arg6[-%52 + 63, %23] : memref<?x64xf32>
          affine.store %65, %alloca_3[] : memref<f32>
          %66 = affine.apply #map4(%24)
          %67 = affine.load %alloca_5[] : memref<f32>
          %68 = arith.mulf %16, %67 : f32
          %69 = affine.load %alloca_4[] : memref<f32>
          %70 = arith.mulf %20, %69 : f32
          %71 = arith.addf %68, %70 : f32
          %72 = affine.load %alloca_3[] : memref<f32>
          %73 = arith.mulf %21, %72 : f32
          %74 = arith.addf %71, %73 : f32
          %75 = affine.load %alloca[] : memref<f32>
          %76 = arith.mulf %22, %75 : f32
          %77 = arith.addf %74, %76 : f32
          affine.store %77, %arg6[-%66 + 63, %23] : memref<?x64xf32>
          affine.store %67, %alloca_4[] : memref<f32>
          %78 = affine.load %arg4[-%66 + 63, %23] : memref<?x64xf32>
          affine.store %78, %alloca_5[] : memref<f32>
          affine.store %72, %alloca[] : memref<f32>
          %79 = affine.load %arg6[-%66 + 63, %23] : memref<?x64xf32>
          affine.store %79, %alloca_3[] : memref<f32>
        }
      }
    }
    affine.parallel (%arg7) = (0) to (64) {
      affine.for %arg8 = 0 to 16 {
        %23 = affine.apply #map1(%arg8)
        affine.for %arg9 = 0 to 1 {
          %24 = affine.apply #map(%arg7, %arg9)
          affine.for %arg10 = 0 to 1 {
            %25 = affine.apply #map5(%23, %arg10)
            %26 = affine.load %arg5[%24, %25] : memref<?x64xf32>
            %27 = affine.load %arg6[%24, %25] : memref<?x64xf32>
            %28 = arith.addf %26, %27 : f32
            affine.store %28, %arg4[%24, %25] : memref<?x64xf32>
            %29 = affine.apply #map2(%25)
            %30 = affine.load %arg5[%24, %29] : memref<?x64xf32>
            %31 = affine.load %arg6[%24, %29] : memref<?x64xf32>
            %32 = arith.addf %30, %31 : f32
            affine.store %32, %arg4[%24, %29] : memref<?x64xf32>
            %33 = affine.apply #map3(%25)
            %34 = affine.load %arg5[%24, %33] : memref<?x64xf32>
            %35 = affine.load %arg6[%24, %33] : memref<?x64xf32>
            %36 = arith.addf %34, %35 : f32
            affine.store %36, %arg4[%24, %33] : memref<?x64xf32>
            %37 = affine.apply #map4(%25)
            %38 = affine.load %arg5[%24, %37] : memref<?x64xf32>
            %39 = affine.load %arg6[%24, %37] : memref<?x64xf32>
            %40 = arith.addf %38, %39 : f32
            affine.store %40, %arg4[%24, %37] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

