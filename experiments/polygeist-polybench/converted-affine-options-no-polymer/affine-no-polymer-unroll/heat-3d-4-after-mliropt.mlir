#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    affine.for %arg4 = 1 to 21 {
      affine.for %arg5 = 1 to 9 {
        affine.for %arg6 = 1 to 9 {
          affine.for %arg7 = 1 to 9 step 4 {
            %0 = affine.load %arg2[%arg5 + 1, %arg6, %arg7] : memref<?x10x10xf64>
            %1 = affine.load %arg2[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
            %2 = arith.mulf %1, %cst : f64
            %3 = arith.subf %0, %2 : f64
            %4 = affine.load %arg2[%arg5 - 1, %arg6, %arg7] : memref<?x10x10xf64>
            %5 = arith.addf %3, %4 : f64
            %6 = arith.mulf %5, %cst_0 : f64
            %7 = affine.load %arg2[%arg5, %arg6 + 1, %arg7] : memref<?x10x10xf64>
            %8 = arith.subf %7, %2 : f64
            %9 = affine.load %arg2[%arg5, %arg6 - 1, %arg7] : memref<?x10x10xf64>
            %10 = arith.addf %8, %9 : f64
            %11 = arith.mulf %10, %cst_0 : f64
            %12 = arith.addf %6, %11 : f64
            %13 = affine.load %arg2[%arg5, %arg6, %arg7 + 1] : memref<?x10x10xf64>
            %14 = arith.subf %13, %2 : f64
            %15 = affine.load %arg2[%arg5, %arg6, %arg7 - 1] : memref<?x10x10xf64>
            %16 = arith.addf %14, %15 : f64
            %17 = arith.mulf %16, %cst_0 : f64
            %18 = arith.addf %12, %17 : f64
            %19 = arith.addf %18, %1 : f64
            affine.store %19, %arg3[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
            %20 = affine.apply #map(%arg7)
            %21 = affine.load %arg2[%arg5 + 1, %arg6, %20] : memref<?x10x10xf64>
            %22 = affine.load %arg2[%arg5, %arg6, %20] : memref<?x10x10xf64>
            %23 = arith.mulf %22, %cst : f64
            %24 = arith.subf %21, %23 : f64
            %25 = affine.load %arg2[%arg5 - 1, %arg6, %20] : memref<?x10x10xf64>
            %26 = arith.addf %24, %25 : f64
            %27 = arith.mulf %26, %cst_0 : f64
            %28 = affine.load %arg2[%arg5, %arg6 + 1, %20] : memref<?x10x10xf64>
            %29 = arith.subf %28, %23 : f64
            %30 = affine.load %arg2[%arg5, %arg6 - 1, %20] : memref<?x10x10xf64>
            %31 = arith.addf %29, %30 : f64
            %32 = arith.mulf %31, %cst_0 : f64
            %33 = arith.addf %27, %32 : f64
            %34 = affine.load %arg2[%arg5, %arg6, %20 + 1] : memref<?x10x10xf64>
            %35 = arith.subf %34, %23 : f64
            %36 = affine.load %arg2[%arg5, %arg6, %20 - 1] : memref<?x10x10xf64>
            %37 = arith.addf %35, %36 : f64
            %38 = arith.mulf %37, %cst_0 : f64
            %39 = arith.addf %33, %38 : f64
            %40 = arith.addf %39, %22 : f64
            affine.store %40, %arg3[%arg5, %arg6, %20] : memref<?x10x10xf64>
            %41 = affine.apply #map1(%arg7)
            %42 = affine.load %arg2[%arg5 + 1, %arg6, %41] : memref<?x10x10xf64>
            %43 = affine.load %arg2[%arg5, %arg6, %41] : memref<?x10x10xf64>
            %44 = arith.mulf %43, %cst : f64
            %45 = arith.subf %42, %44 : f64
            %46 = affine.load %arg2[%arg5 - 1, %arg6, %41] : memref<?x10x10xf64>
            %47 = arith.addf %45, %46 : f64
            %48 = arith.mulf %47, %cst_0 : f64
            %49 = affine.load %arg2[%arg5, %arg6 + 1, %41] : memref<?x10x10xf64>
            %50 = arith.subf %49, %44 : f64
            %51 = affine.load %arg2[%arg5, %arg6 - 1, %41] : memref<?x10x10xf64>
            %52 = arith.addf %50, %51 : f64
            %53 = arith.mulf %52, %cst_0 : f64
            %54 = arith.addf %48, %53 : f64
            %55 = affine.load %arg2[%arg5, %arg6, %41 + 1] : memref<?x10x10xf64>
            %56 = arith.subf %55, %44 : f64
            %57 = affine.load %arg2[%arg5, %arg6, %41 - 1] : memref<?x10x10xf64>
            %58 = arith.addf %56, %57 : f64
            %59 = arith.mulf %58, %cst_0 : f64
            %60 = arith.addf %54, %59 : f64
            %61 = arith.addf %60, %43 : f64
            affine.store %61, %arg3[%arg5, %arg6, %41] : memref<?x10x10xf64>
            %62 = affine.apply #map2(%arg7)
            %63 = affine.load %arg2[%arg5 + 1, %arg6, %62] : memref<?x10x10xf64>
            %64 = affine.load %arg2[%arg5, %arg6, %62] : memref<?x10x10xf64>
            %65 = arith.mulf %64, %cst : f64
            %66 = arith.subf %63, %65 : f64
            %67 = affine.load %arg2[%arg5 - 1, %arg6, %62] : memref<?x10x10xf64>
            %68 = arith.addf %66, %67 : f64
            %69 = arith.mulf %68, %cst_0 : f64
            %70 = affine.load %arg2[%arg5, %arg6 + 1, %62] : memref<?x10x10xf64>
            %71 = arith.subf %70, %65 : f64
            %72 = affine.load %arg2[%arg5, %arg6 - 1, %62] : memref<?x10x10xf64>
            %73 = arith.addf %71, %72 : f64
            %74 = arith.mulf %73, %cst_0 : f64
            %75 = arith.addf %69, %74 : f64
            %76 = affine.load %arg2[%arg5, %arg6, %62 + 1] : memref<?x10x10xf64>
            %77 = arith.subf %76, %65 : f64
            %78 = affine.load %arg2[%arg5, %arg6, %62 - 1] : memref<?x10x10xf64>
            %79 = arith.addf %77, %78 : f64
            %80 = arith.mulf %79, %cst_0 : f64
            %81 = arith.addf %75, %80 : f64
            %82 = arith.addf %81, %64 : f64
            affine.store %82, %arg3[%arg5, %arg6, %62] : memref<?x10x10xf64>
          }
        }
      }
      affine.for %arg5 = 1 to 9 {
        affine.for %arg6 = 1 to 9 {
          affine.for %arg7 = 1 to 9 step 4 {
            %0 = affine.load %arg3[%arg5 + 1, %arg6, %arg7] : memref<?x10x10xf64>
            %1 = affine.load %arg3[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
            %2 = arith.mulf %1, %cst : f64
            %3 = arith.subf %0, %2 : f64
            %4 = affine.load %arg3[%arg5 - 1, %arg6, %arg7] : memref<?x10x10xf64>
            %5 = arith.addf %3, %4 : f64
            %6 = arith.mulf %5, %cst_0 : f64
            %7 = affine.load %arg3[%arg5, %arg6 + 1, %arg7] : memref<?x10x10xf64>
            %8 = arith.subf %7, %2 : f64
            %9 = affine.load %arg3[%arg5, %arg6 - 1, %arg7] : memref<?x10x10xf64>
            %10 = arith.addf %8, %9 : f64
            %11 = arith.mulf %10, %cst_0 : f64
            %12 = arith.addf %6, %11 : f64
            %13 = affine.load %arg3[%arg5, %arg6, %arg7 + 1] : memref<?x10x10xf64>
            %14 = arith.subf %13, %2 : f64
            %15 = affine.load %arg3[%arg5, %arg6, %arg7 - 1] : memref<?x10x10xf64>
            %16 = arith.addf %14, %15 : f64
            %17 = arith.mulf %16, %cst_0 : f64
            %18 = arith.addf %12, %17 : f64
            %19 = arith.addf %18, %1 : f64
            affine.store %19, %arg2[%arg5, %arg6, %arg7] : memref<?x10x10xf64>
            %20 = affine.apply #map(%arg7)
            %21 = affine.load %arg3[%arg5 + 1, %arg6, %20] : memref<?x10x10xf64>
            %22 = affine.load %arg3[%arg5, %arg6, %20] : memref<?x10x10xf64>
            %23 = arith.mulf %22, %cst : f64
            %24 = arith.subf %21, %23 : f64
            %25 = affine.load %arg3[%arg5 - 1, %arg6, %20] : memref<?x10x10xf64>
            %26 = arith.addf %24, %25 : f64
            %27 = arith.mulf %26, %cst_0 : f64
            %28 = affine.load %arg3[%arg5, %arg6 + 1, %20] : memref<?x10x10xf64>
            %29 = arith.subf %28, %23 : f64
            %30 = affine.load %arg3[%arg5, %arg6 - 1, %20] : memref<?x10x10xf64>
            %31 = arith.addf %29, %30 : f64
            %32 = arith.mulf %31, %cst_0 : f64
            %33 = arith.addf %27, %32 : f64
            %34 = affine.load %arg3[%arg5, %arg6, %20 + 1] : memref<?x10x10xf64>
            %35 = arith.subf %34, %23 : f64
            %36 = affine.load %arg3[%arg5, %arg6, %20 - 1] : memref<?x10x10xf64>
            %37 = arith.addf %35, %36 : f64
            %38 = arith.mulf %37, %cst_0 : f64
            %39 = arith.addf %33, %38 : f64
            %40 = arith.addf %39, %22 : f64
            affine.store %40, %arg2[%arg5, %arg6, %20] : memref<?x10x10xf64>
            %41 = affine.apply #map1(%arg7)
            %42 = affine.load %arg3[%arg5 + 1, %arg6, %41] : memref<?x10x10xf64>
            %43 = affine.load %arg3[%arg5, %arg6, %41] : memref<?x10x10xf64>
            %44 = arith.mulf %43, %cst : f64
            %45 = arith.subf %42, %44 : f64
            %46 = affine.load %arg3[%arg5 - 1, %arg6, %41] : memref<?x10x10xf64>
            %47 = arith.addf %45, %46 : f64
            %48 = arith.mulf %47, %cst_0 : f64
            %49 = affine.load %arg3[%arg5, %arg6 + 1, %41] : memref<?x10x10xf64>
            %50 = arith.subf %49, %44 : f64
            %51 = affine.load %arg3[%arg5, %arg6 - 1, %41] : memref<?x10x10xf64>
            %52 = arith.addf %50, %51 : f64
            %53 = arith.mulf %52, %cst_0 : f64
            %54 = arith.addf %48, %53 : f64
            %55 = affine.load %arg3[%arg5, %arg6, %41 + 1] : memref<?x10x10xf64>
            %56 = arith.subf %55, %44 : f64
            %57 = affine.load %arg3[%arg5, %arg6, %41 - 1] : memref<?x10x10xf64>
            %58 = arith.addf %56, %57 : f64
            %59 = arith.mulf %58, %cst_0 : f64
            %60 = arith.addf %54, %59 : f64
            %61 = arith.addf %60, %43 : f64
            affine.store %61, %arg2[%arg5, %arg6, %41] : memref<?x10x10xf64>
            %62 = affine.apply #map2(%arg7)
            %63 = affine.load %arg3[%arg5 + 1, %arg6, %62] : memref<?x10x10xf64>
            %64 = affine.load %arg3[%arg5, %arg6, %62] : memref<?x10x10xf64>
            %65 = arith.mulf %64, %cst : f64
            %66 = arith.subf %63, %65 : f64
            %67 = affine.load %arg3[%arg5 - 1, %arg6, %62] : memref<?x10x10xf64>
            %68 = arith.addf %66, %67 : f64
            %69 = arith.mulf %68, %cst_0 : f64
            %70 = affine.load %arg3[%arg5, %arg6 + 1, %62] : memref<?x10x10xf64>
            %71 = arith.subf %70, %65 : f64
            %72 = affine.load %arg3[%arg5, %arg6 - 1, %62] : memref<?x10x10xf64>
            %73 = arith.addf %71, %72 : f64
            %74 = arith.mulf %73, %cst_0 : f64
            %75 = arith.addf %69, %74 : f64
            %76 = affine.load %arg3[%arg5, %arg6, %62 + 1] : memref<?x10x10xf64>
            %77 = arith.subf %76, %65 : f64
            %78 = affine.load %arg3[%arg5, %arg6, %62 - 1] : memref<?x10x10xf64>
            %79 = arith.addf %77, %78 : f64
            %80 = arith.mulf %79, %cst_0 : f64
            %81 = arith.addf %75, %80 : f64
            %82 = arith.addf %81, %64 : f64
            affine.store %82, %arg2[%arg5, %arg6, %62] : memref<?x10x10xf64>
          }
        }
      }
    }
    return
  }
}

