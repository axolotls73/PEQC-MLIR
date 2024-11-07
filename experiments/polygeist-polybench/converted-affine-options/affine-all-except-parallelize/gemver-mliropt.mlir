#map = affine_map<(d0) -> (d0 * -32 + 40, 32)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map2 = affine_map<(d0) -> ((d0 * -32 + 40) ceildiv 4, 8)>
#map3 = affine_map<(d0, d1) -> (d0 * 32 + d1 * 4)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    affine.for %arg12 = 0 to 2 {
      affine.for %arg13 = 0 to 2 {
        affine.for %arg14 = 0 to min #map(%arg13) {
          %0 = affine.apply #map1(%arg13, %arg14)
          %1 = affine.load %arg4[%0] : memref<?xf64>
          %2 = affine.load %arg6[%0] : memref<?xf64>
          %3 = affine.load %arg10[%0] : memref<?xf64>
          %4 = affine.load %arg4[%0] : memref<?xf64>
          %5 = affine.load %arg6[%0] : memref<?xf64>
          %6 = affine.load %arg10[%0] : memref<?xf64>
          %7 = affine.load %arg4[%0] : memref<?xf64>
          %8 = affine.load %arg6[%0] : memref<?xf64>
          %9 = affine.load %arg10[%0] : memref<?xf64>
          %10 = affine.load %arg4[%0] : memref<?xf64>
          %11 = affine.load %arg6[%0] : memref<?xf64>
          %12 = affine.load %arg10[%0] : memref<?xf64>
          affine.for %arg15 = 0 to min #map2(%arg12) {
            %13 = affine.apply #map3(%arg12, %arg15)
            %14 = affine.load %arg3[%0, %13] : memref<?x40xf64>
            %15 = affine.load %arg5[%13] : memref<?xf64>
            %16 = arith.mulf %1, %15 : f64
            %17 = arith.addf %14, %16 : f64
            %18 = affine.load %arg7[%13] : memref<?xf64>
            %19 = arith.mulf %2, %18 : f64
            %20 = arith.addf %17, %19 : f64
            affine.store %20, %arg3[%0, %13] : memref<?x40xf64>
            %21 = affine.load %arg9[%13] : memref<?xf64>
            %22 = affine.load %arg3[%0, %13] : memref<?x40xf64>
            %23 = arith.mulf %arg2, %22 : f64
            %24 = arith.mulf %23, %3 : f64
            %25 = arith.addf %21, %24 : f64
            affine.store %25, %arg9[%13] : memref<?xf64>
            %26 = affine.apply #map4(%13)
            %27 = affine.load %arg3[%0, %26] : memref<?x40xf64>
            %28 = affine.load %arg5[%26] : memref<?xf64>
            %29 = arith.mulf %4, %28 : f64
            %30 = arith.addf %27, %29 : f64
            %31 = affine.load %arg7[%26] : memref<?xf64>
            %32 = arith.mulf %5, %31 : f64
            %33 = arith.addf %30, %32 : f64
            affine.store %33, %arg3[%0, %26] : memref<?x40xf64>
            %34 = affine.load %arg9[%26] : memref<?xf64>
            %35 = affine.load %arg3[%0, %26] : memref<?x40xf64>
            %36 = arith.mulf %arg2, %35 : f64
            %37 = arith.mulf %36, %6 : f64
            %38 = arith.addf %34, %37 : f64
            affine.store %38, %arg9[%26] : memref<?xf64>
            %39 = affine.apply #map5(%13)
            %40 = affine.load %arg3[%0, %39] : memref<?x40xf64>
            %41 = affine.load %arg5[%39] : memref<?xf64>
            %42 = arith.mulf %7, %41 : f64
            %43 = arith.addf %40, %42 : f64
            %44 = affine.load %arg7[%39] : memref<?xf64>
            %45 = arith.mulf %8, %44 : f64
            %46 = arith.addf %43, %45 : f64
            affine.store %46, %arg3[%0, %39] : memref<?x40xf64>
            %47 = affine.load %arg9[%39] : memref<?xf64>
            %48 = affine.load %arg3[%0, %39] : memref<?x40xf64>
            %49 = arith.mulf %arg2, %48 : f64
            %50 = arith.mulf %49, %9 : f64
            %51 = arith.addf %47, %50 : f64
            affine.store %51, %arg9[%39] : memref<?xf64>
            %52 = affine.apply #map6(%13)
            %53 = affine.load %arg3[%0, %52] : memref<?x40xf64>
            %54 = affine.load %arg5[%52] : memref<?xf64>
            %55 = arith.mulf %10, %54 : f64
            %56 = arith.addf %53, %55 : f64
            %57 = affine.load %arg7[%52] : memref<?xf64>
            %58 = arith.mulf %11, %57 : f64
            %59 = arith.addf %56, %58 : f64
            affine.store %59, %arg3[%0, %52] : memref<?x40xf64>
            %60 = affine.load %arg9[%52] : memref<?xf64>
            %61 = affine.load %arg3[%0, %52] : memref<?x40xf64>
            %62 = arith.mulf %arg2, %61 : f64
            %63 = arith.mulf %62, %12 : f64
            %64 = arith.addf %60, %63 : f64
            affine.store %64, %arg9[%52] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg12 = 0 to 2 {
      affine.for %arg13 = 0 to min #map2(%arg12) {
        %0 = affine.apply #map3(%arg12, %arg13)
        %1 = affine.load %arg9[%0] : memref<?xf64>
        %2 = affine.load %arg11[%0] : memref<?xf64>
        %3 = arith.addf %1, %2 : f64
        affine.store %3, %arg9[%0] : memref<?xf64>
        %4 = affine.apply #map4(%0)
        %5 = affine.load %arg9[%4] : memref<?xf64>
        %6 = affine.load %arg11[%4] : memref<?xf64>
        %7 = arith.addf %5, %6 : f64
        affine.store %7, %arg9[%4] : memref<?xf64>
        %8 = affine.apply #map5(%0)
        %9 = affine.load %arg9[%8] : memref<?xf64>
        %10 = affine.load %arg11[%8] : memref<?xf64>
        %11 = arith.addf %9, %10 : f64
        affine.store %11, %arg9[%8] : memref<?xf64>
        %12 = affine.apply #map6(%0)
        %13 = affine.load %arg9[%12] : memref<?xf64>
        %14 = affine.load %arg11[%12] : memref<?xf64>
        %15 = arith.addf %13, %14 : f64
        affine.store %15, %arg9[%12] : memref<?xf64>
      }
    }
    affine.parallel (%arg12) = (0) to (2) {
      affine.for %arg13 = 0 to 2 {
        affine.parallel (%arg14) = (%arg12 * 32) to (min(40, %arg12 * 32 + 32)) {
          affine.for %arg15 = 0 to min #map2(%arg13) {
            %0 = affine.apply #map3(%arg13, %arg15)
            %1 = affine.load %arg8[%arg14] : memref<?xf64>
            %2 = affine.load %arg3[%arg14, %0] : memref<?x40xf64>
            %3 = arith.mulf %arg1, %2 : f64
            %4 = affine.load %arg9[%0] : memref<?xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = arith.addf %1, %5 : f64
            affine.store %6, %arg8[%arg14] : memref<?xf64>
            %7 = affine.apply #map4(%0)
            %8 = affine.load %arg8[%arg14] : memref<?xf64>
            %9 = affine.load %arg3[%arg14, %7] : memref<?x40xf64>
            %10 = arith.mulf %arg1, %9 : f64
            %11 = affine.load %arg9[%7] : memref<?xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = arith.addf %8, %12 : f64
            affine.store %13, %arg8[%arg14] : memref<?xf64>
            %14 = affine.apply #map5(%0)
            %15 = affine.load %arg8[%arg14] : memref<?xf64>
            %16 = affine.load %arg3[%arg14, %14] : memref<?x40xf64>
            %17 = arith.mulf %arg1, %16 : f64
            %18 = affine.load %arg9[%14] : memref<?xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = arith.addf %15, %19 : f64
            affine.store %20, %arg8[%arg14] : memref<?xf64>
            %21 = affine.apply #map6(%0)
            %22 = affine.load %arg8[%arg14] : memref<?xf64>
            %23 = affine.load %arg3[%arg14, %21] : memref<?x40xf64>
            %24 = arith.mulf %arg1, %23 : f64
            %25 = affine.load %arg9[%21] : memref<?xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = arith.addf %22, %26 : f64
            affine.store %27, %arg8[%arg14] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

