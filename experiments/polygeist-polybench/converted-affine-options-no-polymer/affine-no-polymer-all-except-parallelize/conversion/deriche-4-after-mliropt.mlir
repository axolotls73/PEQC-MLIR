#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 * 128)>
#map7 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
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
    affine.for %arg7 = 0 to 2 {
      %23 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 32 {
        %24 = affine.apply #map1(%23, %arg8)
        affine.store %cst, %alloca_9[] : memref<f32>
        affine.store %cst, %alloca_8[] : memref<f32>
        affine.store %cst, %alloca_11[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %25 = affine.apply #map2(%arg9)
          %26 = affine.load %arg3[%24, %25] : memref<?x64xf32>
          %27 = arith.mulf %11, %26 : f32
          %28 = affine.load %alloca_11[] : memref<f32>
          %29 = arith.mulf %14, %28 : f32
          %30 = arith.addf %27, %29 : f32
          %31 = affine.load %alloca_9[] : memref<f32>
          %32 = arith.mulf %21, %31 : f32
          %33 = arith.addf %30, %32 : f32
          %34 = affine.load %alloca_8[] : memref<f32>
          %35 = arith.mulf %22, %34 : f32
          %36 = arith.addf %33, %35 : f32
          affine.store %36, %arg5[%24, %25] : memref<?x64xf32>
          %37 = affine.load %arg3[%24, %25] : memref<?x64xf32>
          affine.store %37, %alloca_11[] : memref<f32>
          affine.store %31, %alloca_8[] : memref<f32>
          %38 = affine.load %arg5[%24, %25] : memref<?x64xf32>
          affine.store %38, %alloca_9[] : memref<f32>
          %39 = affine.apply #map3(%25)
          %40 = affine.load %arg3[%24, %39] : memref<?x64xf32>
          %41 = arith.mulf %11, %40 : f32
          %42 = affine.load %alloca_11[] : memref<f32>
          %43 = arith.mulf %14, %42 : f32
          %44 = arith.addf %41, %43 : f32
          %45 = affine.load %alloca_9[] : memref<f32>
          %46 = arith.mulf %21, %45 : f32
          %47 = arith.addf %44, %46 : f32
          %48 = affine.load %alloca_8[] : memref<f32>
          %49 = arith.mulf %22, %48 : f32
          %50 = arith.addf %47, %49 : f32
          affine.store %50, %arg5[%24, %39] : memref<?x64xf32>
          %51 = affine.load %arg3[%24, %39] : memref<?x64xf32>
          affine.store %51, %alloca_11[] : memref<f32>
          affine.store %45, %alloca_8[] : memref<f32>
          %52 = affine.load %arg5[%24, %39] : memref<?x64xf32>
          affine.store %52, %alloca_9[] : memref<f32>
          %53 = affine.apply #map4(%25)
          %54 = affine.load %arg3[%24, %53] : memref<?x64xf32>
          %55 = arith.mulf %11, %54 : f32
          %56 = affine.load %alloca_11[] : memref<f32>
          %57 = arith.mulf %14, %56 : f32
          %58 = arith.addf %55, %57 : f32
          %59 = affine.load %alloca_9[] : memref<f32>
          %60 = arith.mulf %21, %59 : f32
          %61 = arith.addf %58, %60 : f32
          %62 = affine.load %alloca_8[] : memref<f32>
          %63 = arith.mulf %22, %62 : f32
          %64 = arith.addf %61, %63 : f32
          affine.store %64, %arg5[%24, %53] : memref<?x64xf32>
          %65 = affine.load %arg3[%24, %53] : memref<?x64xf32>
          affine.store %65, %alloca_11[] : memref<f32>
          affine.store %59, %alloca_8[] : memref<f32>
          %66 = affine.load %arg5[%24, %53] : memref<?x64xf32>
          affine.store %66, %alloca_9[] : memref<f32>
          %67 = affine.apply #map5(%25)
          %68 = affine.load %arg3[%24, %67] : memref<?x64xf32>
          %69 = arith.mulf %11, %68 : f32
          %70 = affine.load %alloca_11[] : memref<f32>
          %71 = arith.mulf %14, %70 : f32
          %72 = arith.addf %69, %71 : f32
          %73 = affine.load %alloca_9[] : memref<f32>
          %74 = arith.mulf %21, %73 : f32
          %75 = arith.addf %72, %74 : f32
          %76 = affine.load %alloca_8[] : memref<f32>
          %77 = arith.mulf %22, %76 : f32
          %78 = arith.addf %75, %77 : f32
          affine.store %78, %arg5[%24, %67] : memref<?x64xf32>
          %79 = affine.load %arg3[%24, %67] : memref<?x64xf32>
          affine.store %79, %alloca_11[] : memref<f32>
          affine.store %73, %alloca_8[] : memref<f32>
          %80 = affine.load %arg5[%24, %67] : memref<?x64xf32>
          affine.store %80, %alloca_9[] : memref<f32>
        }
      }
    }
    affine.for %arg7 = 0 to 2 {
      %23 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 32 {
        %24 = affine.apply #map1(%23, %arg8)
        affine.store %cst, %alloca_3[] : memref<f32>
        affine.store %cst, %alloca[] : memref<f32>
        affine.store %cst, %alloca_7[] : memref<f32>
        affine.store %cst, %alloca_6[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %25 = affine.apply #map2(%arg9)
          %26 = affine.load %alloca_7[] : memref<f32>
          %27 = arith.mulf %16, %26 : f32
          %28 = affine.load %alloca_6[] : memref<f32>
          %29 = arith.mulf %20, %28 : f32
          %30 = arith.addf %27, %29 : f32
          %31 = affine.load %alloca_3[] : memref<f32>
          %32 = arith.mulf %21, %31 : f32
          %33 = arith.addf %30, %32 : f32
          %34 = affine.load %alloca[] : memref<f32>
          %35 = arith.mulf %22, %34 : f32
          %36 = arith.addf %33, %35 : f32
          affine.store %36, %arg6[%24, -%25 + 63] : memref<?x64xf32>
          affine.store %26, %alloca_6[] : memref<f32>
          %37 = affine.load %arg3[%24, -%25 + 63] : memref<?x64xf32>
          affine.store %37, %alloca_7[] : memref<f32>
          affine.store %31, %alloca[] : memref<f32>
          %38 = affine.load %arg6[%24, -%25 + 63] : memref<?x64xf32>
          affine.store %38, %alloca_3[] : memref<f32>
          %39 = affine.apply #map3(%25)
          %40 = affine.load %alloca_7[] : memref<f32>
          %41 = arith.mulf %16, %40 : f32
          %42 = affine.load %alloca_6[] : memref<f32>
          %43 = arith.mulf %20, %42 : f32
          %44 = arith.addf %41, %43 : f32
          %45 = affine.load %alloca_3[] : memref<f32>
          %46 = arith.mulf %21, %45 : f32
          %47 = arith.addf %44, %46 : f32
          %48 = affine.load %alloca[] : memref<f32>
          %49 = arith.mulf %22, %48 : f32
          %50 = arith.addf %47, %49 : f32
          affine.store %50, %arg6[%24, -%39 + 63] : memref<?x64xf32>
          affine.store %40, %alloca_6[] : memref<f32>
          %51 = affine.load %arg3[%24, -%39 + 63] : memref<?x64xf32>
          affine.store %51, %alloca_7[] : memref<f32>
          affine.store %45, %alloca[] : memref<f32>
          %52 = affine.load %arg6[%24, -%39 + 63] : memref<?x64xf32>
          affine.store %52, %alloca_3[] : memref<f32>
          %53 = affine.apply #map4(%25)
          %54 = affine.load %alloca_7[] : memref<f32>
          %55 = arith.mulf %16, %54 : f32
          %56 = affine.load %alloca_6[] : memref<f32>
          %57 = arith.mulf %20, %56 : f32
          %58 = arith.addf %55, %57 : f32
          %59 = affine.load %alloca_3[] : memref<f32>
          %60 = arith.mulf %21, %59 : f32
          %61 = arith.addf %58, %60 : f32
          %62 = affine.load %alloca[] : memref<f32>
          %63 = arith.mulf %22, %62 : f32
          %64 = arith.addf %61, %63 : f32
          affine.store %64, %arg6[%24, -%53 + 63] : memref<?x64xf32>
          affine.store %54, %alloca_6[] : memref<f32>
          %65 = affine.load %arg3[%24, -%53 + 63] : memref<?x64xf32>
          affine.store %65, %alloca_7[] : memref<f32>
          affine.store %59, %alloca[] : memref<f32>
          %66 = affine.load %arg6[%24, -%53 + 63] : memref<?x64xf32>
          affine.store %66, %alloca_3[] : memref<f32>
          %67 = affine.apply #map5(%25)
          %68 = affine.load %alloca_7[] : memref<f32>
          %69 = arith.mulf %16, %68 : f32
          %70 = affine.load %alloca_6[] : memref<f32>
          %71 = arith.mulf %20, %70 : f32
          %72 = arith.addf %69, %71 : f32
          %73 = affine.load %alloca_3[] : memref<f32>
          %74 = arith.mulf %21, %73 : f32
          %75 = arith.addf %72, %74 : f32
          %76 = affine.load %alloca[] : memref<f32>
          %77 = arith.mulf %22, %76 : f32
          %78 = arith.addf %75, %77 : f32
          affine.store %78, %arg6[%24, -%67 + 63] : memref<?x64xf32>
          affine.store %68, %alloca_6[] : memref<f32>
          %79 = affine.load %arg3[%24, -%67 + 63] : memref<?x64xf32>
          affine.store %79, %alloca_7[] : memref<f32>
          affine.store %73, %alloca[] : memref<f32>
          %80 = affine.load %arg6[%24, -%67 + 63] : memref<?x64xf32>
          affine.store %80, %alloca_3[] : memref<f32>
        }
      }
    }
    affine.for %arg7 = 0 to 2 {
      %23 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
        %24 = affine.apply #map6(%arg8)
        affine.for %arg9 = 0 to 32 {
          %25 = affine.apply #map1(%23, %arg9)
          affine.for %arg10 = 0 to 16 {
            %26 = affine.apply #map7(%24, %arg10)
            %27 = affine.load %arg5[%25, %26] : memref<?x64xf32>
            %28 = affine.load %arg6[%25, %26] : memref<?x64xf32>
            %29 = arith.addf %27, %28 : f32
            affine.store %29, %arg4[%25, %26] : memref<?x64xf32>
            %30 = affine.apply #map3(%26)
            %31 = affine.load %arg5[%25, %30] : memref<?x64xf32>
            %32 = affine.load %arg6[%25, %30] : memref<?x64xf32>
            %33 = arith.addf %31, %32 : f32
            affine.store %33, %arg4[%25, %30] : memref<?x64xf32>
            %34 = affine.apply #map4(%26)
            %35 = affine.load %arg5[%25, %34] : memref<?x64xf32>
            %36 = affine.load %arg6[%25, %34] : memref<?x64xf32>
            %37 = arith.addf %35, %36 : f32
            affine.store %37, %arg4[%25, %34] : memref<?x64xf32>
            %38 = affine.apply #map5(%26)
            %39 = affine.load %arg5[%25, %38] : memref<?x64xf32>
            %40 = affine.load %arg6[%25, %38] : memref<?x64xf32>
            %41 = arith.addf %39, %40 : f32
            affine.store %41, %arg4[%25, %38] : memref<?x64xf32>
          }
        }
      }
    }
    affine.for %arg7 = 0 to 2 {
      %23 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 32 {
        %24 = affine.apply #map1(%23, %arg8)
        affine.store %cst, %alloca_10[] : memref<f32>
        affine.store %cst, %alloca_9[] : memref<f32>
        affine.store %cst, %alloca_8[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %25 = affine.apply #map2(%arg9)
          %26 = affine.load %arg4[%25, %24] : memref<?x64xf32>
          %27 = arith.mulf %11, %26 : f32
          %28 = affine.load %alloca_10[] : memref<f32>
          %29 = arith.mulf %14, %28 : f32
          %30 = arith.addf %27, %29 : f32
          %31 = affine.load %alloca_9[] : memref<f32>
          %32 = arith.mulf %21, %31 : f32
          %33 = arith.addf %30, %32 : f32
          %34 = affine.load %alloca_8[] : memref<f32>
          %35 = arith.mulf %22, %34 : f32
          %36 = arith.addf %33, %35 : f32
          affine.store %36, %arg5[%25, %24] : memref<?x64xf32>
          %37 = affine.load %arg4[%25, %24] : memref<?x64xf32>
          affine.store %37, %alloca_10[] : memref<f32>
          affine.store %31, %alloca_8[] : memref<f32>
          %38 = affine.load %arg5[%25, %24] : memref<?x64xf32>
          affine.store %38, %alloca_9[] : memref<f32>
          %39 = affine.apply #map3(%25)
          %40 = affine.load %arg4[%39, %24] : memref<?x64xf32>
          %41 = arith.mulf %11, %40 : f32
          %42 = affine.load %alloca_10[] : memref<f32>
          %43 = arith.mulf %14, %42 : f32
          %44 = arith.addf %41, %43 : f32
          %45 = affine.load %alloca_9[] : memref<f32>
          %46 = arith.mulf %21, %45 : f32
          %47 = arith.addf %44, %46 : f32
          %48 = affine.load %alloca_8[] : memref<f32>
          %49 = arith.mulf %22, %48 : f32
          %50 = arith.addf %47, %49 : f32
          affine.store %50, %arg5[%39, %24] : memref<?x64xf32>
          %51 = affine.load %arg4[%39, %24] : memref<?x64xf32>
          affine.store %51, %alloca_10[] : memref<f32>
          affine.store %45, %alloca_8[] : memref<f32>
          %52 = affine.load %arg5[%39, %24] : memref<?x64xf32>
          affine.store %52, %alloca_9[] : memref<f32>
          %53 = affine.apply #map4(%25)
          %54 = affine.load %arg4[%53, %24] : memref<?x64xf32>
          %55 = arith.mulf %11, %54 : f32
          %56 = affine.load %alloca_10[] : memref<f32>
          %57 = arith.mulf %14, %56 : f32
          %58 = arith.addf %55, %57 : f32
          %59 = affine.load %alloca_9[] : memref<f32>
          %60 = arith.mulf %21, %59 : f32
          %61 = arith.addf %58, %60 : f32
          %62 = affine.load %alloca_8[] : memref<f32>
          %63 = arith.mulf %22, %62 : f32
          %64 = arith.addf %61, %63 : f32
          affine.store %64, %arg5[%53, %24] : memref<?x64xf32>
          %65 = affine.load %arg4[%53, %24] : memref<?x64xf32>
          affine.store %65, %alloca_10[] : memref<f32>
          affine.store %59, %alloca_8[] : memref<f32>
          %66 = affine.load %arg5[%53, %24] : memref<?x64xf32>
          affine.store %66, %alloca_9[] : memref<f32>
          %67 = affine.apply #map5(%25)
          %68 = affine.load %arg4[%67, %24] : memref<?x64xf32>
          %69 = arith.mulf %11, %68 : f32
          %70 = affine.load %alloca_10[] : memref<f32>
          %71 = arith.mulf %14, %70 : f32
          %72 = arith.addf %69, %71 : f32
          %73 = affine.load %alloca_9[] : memref<f32>
          %74 = arith.mulf %21, %73 : f32
          %75 = arith.addf %72, %74 : f32
          %76 = affine.load %alloca_8[] : memref<f32>
          %77 = arith.mulf %22, %76 : f32
          %78 = arith.addf %75, %77 : f32
          affine.store %78, %arg5[%67, %24] : memref<?x64xf32>
          %79 = affine.load %arg4[%67, %24] : memref<?x64xf32>
          affine.store %79, %alloca_10[] : memref<f32>
          affine.store %73, %alloca_8[] : memref<f32>
          %80 = affine.load %arg5[%67, %24] : memref<?x64xf32>
          affine.store %80, %alloca_9[] : memref<f32>
        }
      }
    }
    affine.for %arg7 = 0 to 2 {
      %23 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 32 {
        %24 = affine.apply #map1(%23, %arg8)
        affine.store %cst, %alloca_5[] : memref<f32>
        affine.store %cst, %alloca_4[] : memref<f32>
        affine.store %cst, %alloca_3[] : memref<f32>
        affine.store %cst, %alloca[] : memref<f32>
        affine.for %arg9 = 0 to 16 {
          %25 = affine.apply #map2(%arg9)
          %26 = affine.load %alloca_5[] : memref<f32>
          %27 = arith.mulf %16, %26 : f32
          %28 = affine.load %alloca_4[] : memref<f32>
          %29 = arith.mulf %20, %28 : f32
          %30 = arith.addf %27, %29 : f32
          %31 = affine.load %alloca_3[] : memref<f32>
          %32 = arith.mulf %21, %31 : f32
          %33 = arith.addf %30, %32 : f32
          %34 = affine.load %alloca[] : memref<f32>
          %35 = arith.mulf %22, %34 : f32
          %36 = arith.addf %33, %35 : f32
          affine.store %36, %arg6[-%25 + 63, %24] : memref<?x64xf32>
          affine.store %26, %alloca_4[] : memref<f32>
          %37 = affine.load %arg4[-%25 + 63, %24] : memref<?x64xf32>
          affine.store %37, %alloca_5[] : memref<f32>
          affine.store %31, %alloca[] : memref<f32>
          %38 = affine.load %arg6[-%25 + 63, %24] : memref<?x64xf32>
          affine.store %38, %alloca_3[] : memref<f32>
          %39 = affine.apply #map3(%25)
          %40 = affine.load %alloca_5[] : memref<f32>
          %41 = arith.mulf %16, %40 : f32
          %42 = affine.load %alloca_4[] : memref<f32>
          %43 = arith.mulf %20, %42 : f32
          %44 = arith.addf %41, %43 : f32
          %45 = affine.load %alloca_3[] : memref<f32>
          %46 = arith.mulf %21, %45 : f32
          %47 = arith.addf %44, %46 : f32
          %48 = affine.load %alloca[] : memref<f32>
          %49 = arith.mulf %22, %48 : f32
          %50 = arith.addf %47, %49 : f32
          affine.store %50, %arg6[-%39 + 63, %24] : memref<?x64xf32>
          affine.store %40, %alloca_4[] : memref<f32>
          %51 = affine.load %arg4[-%39 + 63, %24] : memref<?x64xf32>
          affine.store %51, %alloca_5[] : memref<f32>
          affine.store %45, %alloca[] : memref<f32>
          %52 = affine.load %arg6[-%39 + 63, %24] : memref<?x64xf32>
          affine.store %52, %alloca_3[] : memref<f32>
          %53 = affine.apply #map4(%25)
          %54 = affine.load %alloca_5[] : memref<f32>
          %55 = arith.mulf %16, %54 : f32
          %56 = affine.load %alloca_4[] : memref<f32>
          %57 = arith.mulf %20, %56 : f32
          %58 = arith.addf %55, %57 : f32
          %59 = affine.load %alloca_3[] : memref<f32>
          %60 = arith.mulf %21, %59 : f32
          %61 = arith.addf %58, %60 : f32
          %62 = affine.load %alloca[] : memref<f32>
          %63 = arith.mulf %22, %62 : f32
          %64 = arith.addf %61, %63 : f32
          affine.store %64, %arg6[-%53 + 63, %24] : memref<?x64xf32>
          affine.store %54, %alloca_4[] : memref<f32>
          %65 = affine.load %arg4[-%53 + 63, %24] : memref<?x64xf32>
          affine.store %65, %alloca_5[] : memref<f32>
          affine.store %59, %alloca[] : memref<f32>
          %66 = affine.load %arg6[-%53 + 63, %24] : memref<?x64xf32>
          affine.store %66, %alloca_3[] : memref<f32>
          %67 = affine.apply #map5(%25)
          %68 = affine.load %alloca_5[] : memref<f32>
          %69 = arith.mulf %16, %68 : f32
          %70 = affine.load %alloca_4[] : memref<f32>
          %71 = arith.mulf %20, %70 : f32
          %72 = arith.addf %69, %71 : f32
          %73 = affine.load %alloca_3[] : memref<f32>
          %74 = arith.mulf %21, %73 : f32
          %75 = arith.addf %72, %74 : f32
          %76 = affine.load %alloca[] : memref<f32>
          %77 = arith.mulf %22, %76 : f32
          %78 = arith.addf %75, %77 : f32
          affine.store %78, %arg6[-%67 + 63, %24] : memref<?x64xf32>
          affine.store %68, %alloca_4[] : memref<f32>
          %79 = affine.load %arg4[-%67 + 63, %24] : memref<?x64xf32>
          affine.store %79, %alloca_5[] : memref<f32>
          affine.store %73, %alloca[] : memref<f32>
          %80 = affine.load %arg6[-%67 + 63, %24] : memref<?x64xf32>
          affine.store %80, %alloca_3[] : memref<f32>
        }
      }
    }
    affine.for %arg7 = 0 to 2 {
      %23 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 1 {
        %24 = affine.apply #map6(%arg8)
        affine.for %arg9 = 0 to 32 {
          %25 = affine.apply #map1(%23, %arg9)
          affine.for %arg10 = 0 to 16 {
            %26 = affine.apply #map7(%24, %arg10)
            %27 = affine.load %arg5[%25, %26] : memref<?x64xf32>
            %28 = affine.load %arg6[%25, %26] : memref<?x64xf32>
            %29 = arith.addf %27, %28 : f32
            affine.store %29, %arg4[%25, %26] : memref<?x64xf32>
            %30 = affine.apply #map3(%26)
            %31 = affine.load %arg5[%25, %30] : memref<?x64xf32>
            %32 = affine.load %arg6[%25, %30] : memref<?x64xf32>
            %33 = arith.addf %31, %32 : f32
            affine.store %33, %arg4[%25, %30] : memref<?x64xf32>
            %34 = affine.apply #map4(%26)
            %35 = affine.load %arg5[%25, %34] : memref<?x64xf32>
            %36 = affine.load %arg6[%25, %34] : memref<?x64xf32>
            %37 = arith.addf %35, %36 : f32
            affine.store %37, %arg4[%25, %34] : memref<?x64xf32>
            %38 = affine.apply #map5(%26)
            %39 = affine.load %arg5[%25, %38] : memref<?x64xf32>
            %40 = affine.load %arg6[%25, %38] : memref<?x64xf32>
            %41 = arith.addf %39, %40 : f32
            affine.store %41, %arg4[%25, %38] : memref<?x64xf32>
          }
        }
      }
    }
    return
  }
}

