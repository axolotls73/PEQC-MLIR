#map = affine_map<(d0) -> (d0 * 128)>
#map1 = affine_map<(d0, d1) -> (d0 + d1 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0 * 32)>
#map6 = affine_map<(d0) -> (32, -d0 + 40)>
#map7 = affine_map<(d0, d1) -> (d0 + d1)>
module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    affine.parallel (%arg6) = (0) to (1) {
      %0 = affine.apply #map(%arg6)
      affine.for %arg7 = 0 to 1 {
        %1 = affine.apply #map(%arg7)
        affine.for %arg8 = 0 to 10 {
          %2 = affine.apply #map1(%0, %arg8)
          %3 = affine.apply #map2(%2)
          %4 = affine.apply #map3(%2)
          %5 = affine.apply #map4(%2)
          affine.for %arg9 = 0 to 10 {
            %6 = affine.apply #map1(%1, %arg9)
            %7 = affine.load %arg1[%2] : memref<?xf64>
            %8 = affine.load %arg5[%2, %6] : memref<?x40xf64>
            %9 = affine.load %arg3[%6] : memref<?xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = arith.addf %7, %10 : f64
            affine.store %11, %arg1[%2] : memref<?xf64>
            %12 = affine.apply #map2(%6)
            %13 = affine.load %arg1[%2] : memref<?xf64>
            %14 = affine.load %arg5[%2, %12] : memref<?x40xf64>
            %15 = affine.load %arg3[%12] : memref<?xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = arith.addf %13, %16 : f64
            affine.store %17, %arg1[%2] : memref<?xf64>
            %18 = affine.apply #map3(%6)
            %19 = affine.load %arg1[%2] : memref<?xf64>
            %20 = affine.load %arg5[%2, %18] : memref<?x40xf64>
            %21 = affine.load %arg3[%18] : memref<?xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = arith.addf %19, %22 : f64
            affine.store %23, %arg1[%2] : memref<?xf64>
            %24 = affine.apply #map4(%6)
            %25 = affine.load %arg1[%2] : memref<?xf64>
            %26 = affine.load %arg5[%2, %24] : memref<?x40xf64>
            %27 = affine.load %arg3[%24] : memref<?xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = arith.addf %25, %28 : f64
            affine.store %29, %arg1[%2] : memref<?xf64>
            %30 = affine.load %arg1[%3] : memref<?xf64>
            %31 = affine.load %arg5[%3, %6] : memref<?x40xf64>
            %32 = affine.load %arg3[%6] : memref<?xf64>
            %33 = arith.mulf %31, %32 : f64
            %34 = arith.addf %30, %33 : f64
            affine.store %34, %arg1[%3] : memref<?xf64>
            %35 = affine.apply #map2(%6)
            %36 = affine.load %arg1[%3] : memref<?xf64>
            %37 = affine.load %arg5[%3, %35] : memref<?x40xf64>
            %38 = affine.load %arg3[%35] : memref<?xf64>
            %39 = arith.mulf %37, %38 : f64
            %40 = arith.addf %36, %39 : f64
            affine.store %40, %arg1[%3] : memref<?xf64>
            %41 = affine.apply #map3(%6)
            %42 = affine.load %arg1[%3] : memref<?xf64>
            %43 = affine.load %arg5[%3, %41] : memref<?x40xf64>
            %44 = affine.load %arg3[%41] : memref<?xf64>
            %45 = arith.mulf %43, %44 : f64
            %46 = arith.addf %42, %45 : f64
            affine.store %46, %arg1[%3] : memref<?xf64>
            %47 = affine.apply #map4(%6)
            %48 = affine.load %arg1[%3] : memref<?xf64>
            %49 = affine.load %arg5[%3, %47] : memref<?x40xf64>
            %50 = affine.load %arg3[%47] : memref<?xf64>
            %51 = arith.mulf %49, %50 : f64
            %52 = arith.addf %48, %51 : f64
            affine.store %52, %arg1[%3] : memref<?xf64>
            %53 = affine.load %arg1[%4] : memref<?xf64>
            %54 = affine.load %arg5[%4, %6] : memref<?x40xf64>
            %55 = affine.load %arg3[%6] : memref<?xf64>
            %56 = arith.mulf %54, %55 : f64
            %57 = arith.addf %53, %56 : f64
            affine.store %57, %arg1[%4] : memref<?xf64>
            %58 = affine.apply #map2(%6)
            %59 = affine.load %arg1[%4] : memref<?xf64>
            %60 = affine.load %arg5[%4, %58] : memref<?x40xf64>
            %61 = affine.load %arg3[%58] : memref<?xf64>
            %62 = arith.mulf %60, %61 : f64
            %63 = arith.addf %59, %62 : f64
            affine.store %63, %arg1[%4] : memref<?xf64>
            %64 = affine.apply #map3(%6)
            %65 = affine.load %arg1[%4] : memref<?xf64>
            %66 = affine.load %arg5[%4, %64] : memref<?x40xf64>
            %67 = affine.load %arg3[%64] : memref<?xf64>
            %68 = arith.mulf %66, %67 : f64
            %69 = arith.addf %65, %68 : f64
            affine.store %69, %arg1[%4] : memref<?xf64>
            %70 = affine.apply #map4(%6)
            %71 = affine.load %arg1[%4] : memref<?xf64>
            %72 = affine.load %arg5[%4, %70] : memref<?x40xf64>
            %73 = affine.load %arg3[%70] : memref<?xf64>
            %74 = arith.mulf %72, %73 : f64
            %75 = arith.addf %71, %74 : f64
            affine.store %75, %arg1[%4] : memref<?xf64>
            %76 = affine.load %arg1[%5] : memref<?xf64>
            %77 = affine.load %arg5[%5, %6] : memref<?x40xf64>
            %78 = affine.load %arg3[%6] : memref<?xf64>
            %79 = arith.mulf %77, %78 : f64
            %80 = arith.addf %76, %79 : f64
            affine.store %80, %arg1[%5] : memref<?xf64>
            %81 = affine.apply #map2(%6)
            %82 = affine.load %arg1[%5] : memref<?xf64>
            %83 = affine.load %arg5[%5, %81] : memref<?x40xf64>
            %84 = affine.load %arg3[%81] : memref<?xf64>
            %85 = arith.mulf %83, %84 : f64
            %86 = arith.addf %82, %85 : f64
            affine.store %86, %arg1[%5] : memref<?xf64>
            %87 = affine.apply #map3(%6)
            %88 = affine.load %arg1[%5] : memref<?xf64>
            %89 = affine.load %arg5[%5, %87] : memref<?x40xf64>
            %90 = affine.load %arg3[%87] : memref<?xf64>
            %91 = arith.mulf %89, %90 : f64
            %92 = arith.addf %88, %91 : f64
            affine.store %92, %arg1[%5] : memref<?xf64>
            %93 = affine.apply #map4(%6)
            %94 = affine.load %arg1[%5] : memref<?xf64>
            %95 = affine.load %arg5[%5, %93] : memref<?x40xf64>
            %96 = affine.load %arg3[%93] : memref<?xf64>
            %97 = arith.mulf %95, %96 : f64
            %98 = arith.addf %94, %97 : f64
            affine.store %98, %arg1[%5] : memref<?xf64>
          }
        }
      }
    }
    affine.parallel (%arg6) = (0) to (2) {
      %0 = affine.apply #map5(%arg6)
      affine.for %arg7 = 0 to 1 {
        %1 = affine.apply #map(%arg7)
        affine.for %arg8 = 0 to min #map6(%0) {
          %2 = affine.apply #map7(%0, %arg8)
          affine.for %arg9 = 0 to 10 {
            %3 = affine.apply #map1(%1, %arg9)
            %4 = affine.load %arg2[%2] : memref<?xf64>
            %5 = affine.load %arg5[%3, %2] : memref<?x40xf64>
            %6 = affine.load %arg4[%3] : memref<?xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = arith.addf %4, %7 : f64
            affine.store %8, %arg2[%2] : memref<?xf64>
            %9 = affine.apply #map2(%3)
            %10 = affine.load %arg2[%2] : memref<?xf64>
            %11 = affine.load %arg5[%9, %2] : memref<?x40xf64>
            %12 = affine.load %arg4[%9] : memref<?xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = arith.addf %10, %13 : f64
            affine.store %14, %arg2[%2] : memref<?xf64>
            %15 = affine.apply #map3(%3)
            %16 = affine.load %arg2[%2] : memref<?xf64>
            %17 = affine.load %arg5[%15, %2] : memref<?x40xf64>
            %18 = affine.load %arg4[%15] : memref<?xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = arith.addf %16, %19 : f64
            affine.store %20, %arg2[%2] : memref<?xf64>
            %21 = affine.apply #map4(%3)
            %22 = affine.load %arg2[%2] : memref<?xf64>
            %23 = affine.load %arg5[%21, %2] : memref<?x40xf64>
            %24 = affine.load %arg4[%21] : memref<?xf64>
            %25 = arith.mulf %23, %24 : f64
            %26 = arith.addf %22, %25 : f64
            affine.store %26, %arg2[%2] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

