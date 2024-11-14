#map = affine_map<(d0) -> (d0 * 32 + 1)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 * 4 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %cst = arith.constant 1.250000e-01 : f64
    %cst_0 = arith.constant 2.000000e+00 : f64
    affine.parallel (%arg4) = (0) to (1) {
      %0 = affine.apply #map(%arg4)
      affine.for %arg5 = 0 to 20 {
        %1 = affine.apply #map1(%0, %arg5)
        affine.for %arg6 = 0 to 8 {
          %2 = affine.apply #map2(%arg6)
          affine.for %arg7 = 0 to 2 {
            %3 = affine.apply #map3(%arg7)
            affine.for %arg8 = 0 to 8 {
              %4 = affine.apply #map2(%arg8)
              %5 = affine.load %arg2[%4 + 1, %2, %3] : memref<?x10x10xf64>
              %6 = affine.load %arg2[%4, %2, %3] : memref<?x10x10xf64>
              %7 = arith.mulf %6, %cst_0 : f64
              %8 = arith.subf %5, %7 : f64
              %9 = affine.load %arg2[%4 - 1, %2, %3] : memref<?x10x10xf64>
              %10 = arith.addf %8, %9 : f64
              %11 = arith.mulf %10, %cst : f64
              %12 = affine.load %arg2[%4, %2 + 1, %3] : memref<?x10x10xf64>
              %13 = arith.subf %12, %7 : f64
              %14 = affine.load %arg2[%4, %2 - 1, %3] : memref<?x10x10xf64>
              %15 = arith.addf %13, %14 : f64
              %16 = arith.mulf %15, %cst : f64
              %17 = arith.addf %11, %16 : f64
              %18 = affine.load %arg2[%4, %2, %3 + 1] : memref<?x10x10xf64>
              %19 = arith.subf %18, %7 : f64
              %20 = affine.load %arg2[%4, %2, %3 - 1] : memref<?x10x10xf64>
              %21 = arith.addf %19, %20 : f64
              %22 = arith.mulf %21, %cst : f64
              %23 = arith.addf %17, %22 : f64
              %24 = arith.addf %23, %6 : f64
              affine.store %24, %arg3[%4, %2, %3] : memref<?x10x10xf64>
              %25 = affine.apply #map2(%3)
              %26 = affine.load %arg2[%4 + 1, %2, %25] : memref<?x10x10xf64>
              %27 = affine.load %arg2[%4, %2, %25] : memref<?x10x10xf64>
              %28 = arith.mulf %27, %cst_0 : f64
              %29 = arith.subf %26, %28 : f64
              %30 = affine.load %arg2[%4 - 1, %2, %25] : memref<?x10x10xf64>
              %31 = arith.addf %29, %30 : f64
              %32 = arith.mulf %31, %cst : f64
              %33 = affine.load %arg2[%4, %2 + 1, %25] : memref<?x10x10xf64>
              %34 = arith.subf %33, %28 : f64
              %35 = affine.load %arg2[%4, %2 - 1, %25] : memref<?x10x10xf64>
              %36 = arith.addf %34, %35 : f64
              %37 = arith.mulf %36, %cst : f64
              %38 = arith.addf %32, %37 : f64
              %39 = affine.load %arg2[%4, %2, %25 + 1] : memref<?x10x10xf64>
              %40 = arith.subf %39, %28 : f64
              %41 = affine.load %arg2[%4, %2, %25 - 1] : memref<?x10x10xf64>
              %42 = arith.addf %40, %41 : f64
              %43 = arith.mulf %42, %cst : f64
              %44 = arith.addf %38, %43 : f64
              %45 = arith.addf %44, %27 : f64
              affine.store %45, %arg3[%4, %2, %25] : memref<?x10x10xf64>
              %46 = affine.apply #map4(%3)
              %47 = affine.load %arg2[%4 + 1, %2, %46] : memref<?x10x10xf64>
              %48 = affine.load %arg2[%4, %2, %46] : memref<?x10x10xf64>
              %49 = arith.mulf %48, %cst_0 : f64
              %50 = arith.subf %47, %49 : f64
              %51 = affine.load %arg2[%4 - 1, %2, %46] : memref<?x10x10xf64>
              %52 = arith.addf %50, %51 : f64
              %53 = arith.mulf %52, %cst : f64
              %54 = affine.load %arg2[%4, %2 + 1, %46] : memref<?x10x10xf64>
              %55 = arith.subf %54, %49 : f64
              %56 = affine.load %arg2[%4, %2 - 1, %46] : memref<?x10x10xf64>
              %57 = arith.addf %55, %56 : f64
              %58 = arith.mulf %57, %cst : f64
              %59 = arith.addf %53, %58 : f64
              %60 = affine.load %arg2[%4, %2, %46 + 1] : memref<?x10x10xf64>
              %61 = arith.subf %60, %49 : f64
              %62 = affine.load %arg2[%4, %2, %46 - 1] : memref<?x10x10xf64>
              %63 = arith.addf %61, %62 : f64
              %64 = arith.mulf %63, %cst : f64
              %65 = arith.addf %59, %64 : f64
              %66 = arith.addf %65, %48 : f64
              affine.store %66, %arg3[%4, %2, %46] : memref<?x10x10xf64>
              %67 = affine.apply #map5(%3)
              %68 = affine.load %arg2[%4 + 1, %2, %67] : memref<?x10x10xf64>
              %69 = affine.load %arg2[%4, %2, %67] : memref<?x10x10xf64>
              %70 = arith.mulf %69, %cst_0 : f64
              %71 = arith.subf %68, %70 : f64
              %72 = affine.load %arg2[%4 - 1, %2, %67] : memref<?x10x10xf64>
              %73 = arith.addf %71, %72 : f64
              %74 = arith.mulf %73, %cst : f64
              %75 = affine.load %arg2[%4, %2 + 1, %67] : memref<?x10x10xf64>
              %76 = arith.subf %75, %70 : f64
              %77 = affine.load %arg2[%4, %2 - 1, %67] : memref<?x10x10xf64>
              %78 = arith.addf %76, %77 : f64
              %79 = arith.mulf %78, %cst : f64
              %80 = arith.addf %74, %79 : f64
              %81 = affine.load %arg2[%4, %2, %67 + 1] : memref<?x10x10xf64>
              %82 = arith.subf %81, %70 : f64
              %83 = affine.load %arg2[%4, %2, %67 - 1] : memref<?x10x10xf64>
              %84 = arith.addf %82, %83 : f64
              %85 = arith.mulf %84, %cst : f64
              %86 = arith.addf %80, %85 : f64
              %87 = arith.addf %86, %69 : f64
              affine.store %87, %arg3[%4, %2, %67] : memref<?x10x10xf64>
            }
          }
        }
        affine.for %arg6 = 0 to 8 {
          %2 = affine.apply #map2(%arg6)
          affine.for %arg7 = 0 to 2 {
            %3 = affine.apply #map3(%arg7)
            affine.for %arg8 = 0 to 8 {
              %4 = affine.apply #map2(%arg8)
              %5 = affine.load %arg3[%4 + 1, %2, %3] : memref<?x10x10xf64>
              %6 = affine.load %arg3[%4, %2, %3] : memref<?x10x10xf64>
              %7 = arith.mulf %6, %cst_0 : f64
              %8 = arith.subf %5, %7 : f64
              %9 = affine.load %arg3[%4 - 1, %2, %3] : memref<?x10x10xf64>
              %10 = arith.addf %8, %9 : f64
              %11 = arith.mulf %10, %cst : f64
              %12 = affine.load %arg3[%4, %2 + 1, %3] : memref<?x10x10xf64>
              %13 = arith.subf %12, %7 : f64
              %14 = affine.load %arg3[%4, %2 - 1, %3] : memref<?x10x10xf64>
              %15 = arith.addf %13, %14 : f64
              %16 = arith.mulf %15, %cst : f64
              %17 = arith.addf %11, %16 : f64
              %18 = affine.load %arg3[%4, %2, %3 + 1] : memref<?x10x10xf64>
              %19 = arith.subf %18, %7 : f64
              %20 = affine.load %arg3[%4, %2, %3 - 1] : memref<?x10x10xf64>
              %21 = arith.addf %19, %20 : f64
              %22 = arith.mulf %21, %cst : f64
              %23 = arith.addf %17, %22 : f64
              %24 = arith.addf %23, %6 : f64
              affine.store %24, %arg2[%4, %2, %3] : memref<?x10x10xf64>
              %25 = affine.apply #map2(%3)
              %26 = affine.load %arg3[%4 + 1, %2, %25] : memref<?x10x10xf64>
              %27 = affine.load %arg3[%4, %2, %25] : memref<?x10x10xf64>
              %28 = arith.mulf %27, %cst_0 : f64
              %29 = arith.subf %26, %28 : f64
              %30 = affine.load %arg3[%4 - 1, %2, %25] : memref<?x10x10xf64>
              %31 = arith.addf %29, %30 : f64
              %32 = arith.mulf %31, %cst : f64
              %33 = affine.load %arg3[%4, %2 + 1, %25] : memref<?x10x10xf64>
              %34 = arith.subf %33, %28 : f64
              %35 = affine.load %arg3[%4, %2 - 1, %25] : memref<?x10x10xf64>
              %36 = arith.addf %34, %35 : f64
              %37 = arith.mulf %36, %cst : f64
              %38 = arith.addf %32, %37 : f64
              %39 = affine.load %arg3[%4, %2, %25 + 1] : memref<?x10x10xf64>
              %40 = arith.subf %39, %28 : f64
              %41 = affine.load %arg3[%4, %2, %25 - 1] : memref<?x10x10xf64>
              %42 = arith.addf %40, %41 : f64
              %43 = arith.mulf %42, %cst : f64
              %44 = arith.addf %38, %43 : f64
              %45 = arith.addf %44, %27 : f64
              affine.store %45, %arg2[%4, %2, %25] : memref<?x10x10xf64>
              %46 = affine.apply #map4(%3)
              %47 = affine.load %arg3[%4 + 1, %2, %46] : memref<?x10x10xf64>
              %48 = affine.load %arg3[%4, %2, %46] : memref<?x10x10xf64>
              %49 = arith.mulf %48, %cst_0 : f64
              %50 = arith.subf %47, %49 : f64
              %51 = affine.load %arg3[%4 - 1, %2, %46] : memref<?x10x10xf64>
              %52 = arith.addf %50, %51 : f64
              %53 = arith.mulf %52, %cst : f64
              %54 = affine.load %arg3[%4, %2 + 1, %46] : memref<?x10x10xf64>
              %55 = arith.subf %54, %49 : f64
              %56 = affine.load %arg3[%4, %2 - 1, %46] : memref<?x10x10xf64>
              %57 = arith.addf %55, %56 : f64
              %58 = arith.mulf %57, %cst : f64
              %59 = arith.addf %53, %58 : f64
              %60 = affine.load %arg3[%4, %2, %46 + 1] : memref<?x10x10xf64>
              %61 = arith.subf %60, %49 : f64
              %62 = affine.load %arg3[%4, %2, %46 - 1] : memref<?x10x10xf64>
              %63 = arith.addf %61, %62 : f64
              %64 = arith.mulf %63, %cst : f64
              %65 = arith.addf %59, %64 : f64
              %66 = arith.addf %65, %48 : f64
              affine.store %66, %arg2[%4, %2, %46] : memref<?x10x10xf64>
              %67 = affine.apply #map5(%3)
              %68 = affine.load %arg3[%4 + 1, %2, %67] : memref<?x10x10xf64>
              %69 = affine.load %arg3[%4, %2, %67] : memref<?x10x10xf64>
              %70 = arith.mulf %69, %cst_0 : f64
              %71 = arith.subf %68, %70 : f64
              %72 = affine.load %arg3[%4 - 1, %2, %67] : memref<?x10x10xf64>
              %73 = arith.addf %71, %72 : f64
              %74 = arith.mulf %73, %cst : f64
              %75 = affine.load %arg3[%4, %2 + 1, %67] : memref<?x10x10xf64>
              %76 = arith.subf %75, %70 : f64
              %77 = affine.load %arg3[%4, %2 - 1, %67] : memref<?x10x10xf64>
              %78 = arith.addf %76, %77 : f64
              %79 = arith.mulf %78, %cst : f64
              %80 = arith.addf %74, %79 : f64
              %81 = affine.load %arg3[%4, %2, %67 + 1] : memref<?x10x10xf64>
              %82 = arith.subf %81, %70 : f64
              %83 = affine.load %arg3[%4, %2, %67 - 1] : memref<?x10x10xf64>
              %84 = arith.addf %82, %83 : f64
              %85 = arith.mulf %84, %cst : f64
              %86 = arith.addf %80, %85 : f64
              %87 = arith.addf %86, %69 : f64
              affine.store %87, %arg2[%4, %2, %67] : memref<?x10x10xf64>
            }
          }
        }
      }
    }
    return
  }
}

