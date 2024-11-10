#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (40, d0 * 32 + 32)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_gemver(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x40xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>, %arg8: memref<?xf64>, %arg9: memref<?xf64>, %arg10: memref<?xf64>, %arg11: memref<?xf64>) {
    affine.for %arg12 = 0 to 2 {
      affine.for %arg13 = 0 to 2 {
        affine.for %arg14 = #map(%arg13) to min #map1(%arg13) {
          affine.for %arg15 = #map(%arg12) to min #map1(%arg12) step 4 {
            %0 = affine.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %1 = affine.load %arg4[%arg14] : memref<?xf64>
            %2 = affine.load %arg5[%arg15] : memref<?xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.addf %0, %3 : f64
            %5 = affine.load %arg6[%arg14] : memref<?xf64>
            %6 = affine.load %arg7[%arg15] : memref<?xf64>
            %7 = arith.mulf %5, %6 : f64
            %8 = arith.addf %4, %7 : f64
            affine.store %8, %arg3[%arg14, %arg15] : memref<?x40xf64>
            %9 = affine.load %arg9[%arg15] : memref<?xf64>
            %10 = affine.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %11 = arith.mulf %arg2, %10 : f64
            %12 = affine.load %arg10[%arg14] : memref<?xf64>
            %13 = arith.mulf %11, %12 : f64
            %14 = arith.addf %9, %13 : f64
            affine.store %14, %arg9[%arg15] : memref<?xf64>
            %15 = affine.apply #map2(%arg15)
            %16 = affine.load %arg3[%arg14, %15] : memref<?x40xf64>
            %17 = affine.load %arg4[%arg14] : memref<?xf64>
            %18 = affine.load %arg5[%15] : memref<?xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = arith.addf %16, %19 : f64
            %21 = affine.load %arg6[%arg14] : memref<?xf64>
            %22 = affine.load %arg7[%15] : memref<?xf64>
            %23 = arith.mulf %21, %22 : f64
            %24 = arith.addf %20, %23 : f64
            affine.store %24, %arg3[%arg14, %15] : memref<?x40xf64>
            %25 = affine.load %arg9[%15] : memref<?xf64>
            %26 = affine.load %arg3[%arg14, %15] : memref<?x40xf64>
            %27 = arith.mulf %arg2, %26 : f64
            %28 = affine.load %arg10[%arg14] : memref<?xf64>
            %29 = arith.mulf %27, %28 : f64
            %30 = arith.addf %25, %29 : f64
            affine.store %30, %arg9[%15] : memref<?xf64>
            %31 = affine.apply #map3(%arg15)
            %32 = affine.load %arg3[%arg14, %31] : memref<?x40xf64>
            %33 = affine.load %arg4[%arg14] : memref<?xf64>
            %34 = affine.load %arg5[%31] : memref<?xf64>
            %35 = arith.mulf %33, %34 : f64
            %36 = arith.addf %32, %35 : f64
            %37 = affine.load %arg6[%arg14] : memref<?xf64>
            %38 = affine.load %arg7[%31] : memref<?xf64>
            %39 = arith.mulf %37, %38 : f64
            %40 = arith.addf %36, %39 : f64
            affine.store %40, %arg3[%arg14, %31] : memref<?x40xf64>
            %41 = affine.load %arg9[%31] : memref<?xf64>
            %42 = affine.load %arg3[%arg14, %31] : memref<?x40xf64>
            %43 = arith.mulf %arg2, %42 : f64
            %44 = affine.load %arg10[%arg14] : memref<?xf64>
            %45 = arith.mulf %43, %44 : f64
            %46 = arith.addf %41, %45 : f64
            affine.store %46, %arg9[%31] : memref<?xf64>
            %47 = affine.apply #map4(%arg15)
            %48 = affine.load %arg3[%arg14, %47] : memref<?x40xf64>
            %49 = affine.load %arg4[%arg14] : memref<?xf64>
            %50 = affine.load %arg5[%47] : memref<?xf64>
            %51 = arith.mulf %49, %50 : f64
            %52 = arith.addf %48, %51 : f64
            %53 = affine.load %arg6[%arg14] : memref<?xf64>
            %54 = affine.load %arg7[%47] : memref<?xf64>
            %55 = arith.mulf %53, %54 : f64
            %56 = arith.addf %52, %55 : f64
            affine.store %56, %arg3[%arg14, %47] : memref<?x40xf64>
            %57 = affine.load %arg9[%47] : memref<?xf64>
            %58 = affine.load %arg3[%arg14, %47] : memref<?x40xf64>
            %59 = arith.mulf %arg2, %58 : f64
            %60 = affine.load %arg10[%arg14] : memref<?xf64>
            %61 = arith.mulf %59, %60 : f64
            %62 = arith.addf %57, %61 : f64
            affine.store %62, %arg9[%47] : memref<?xf64>
          }
        }
      }
    }
    affine.for %arg12 = 0 to 2 {
      affine.for %arg13 = #map(%arg12) to min #map1(%arg12) step 4 {
        %0 = affine.load %arg9[%arg13] : memref<?xf64>
        %1 = affine.load %arg11[%arg13] : memref<?xf64>
        %2 = arith.addf %0, %1 : f64
        affine.store %2, %arg9[%arg13] : memref<?xf64>
        %3 = affine.apply #map2(%arg13)
        %4 = affine.load %arg9[%3] : memref<?xf64>
        %5 = affine.load %arg11[%3] : memref<?xf64>
        %6 = arith.addf %4, %5 : f64
        affine.store %6, %arg9[%3] : memref<?xf64>
        %7 = affine.apply #map3(%arg13)
        %8 = affine.load %arg9[%7] : memref<?xf64>
        %9 = affine.load %arg11[%7] : memref<?xf64>
        %10 = arith.addf %8, %9 : f64
        affine.store %10, %arg9[%7] : memref<?xf64>
        %11 = affine.apply #map4(%arg13)
        %12 = affine.load %arg9[%11] : memref<?xf64>
        %13 = affine.load %arg11[%11] : memref<?xf64>
        %14 = arith.addf %12, %13 : f64
        affine.store %14, %arg9[%11] : memref<?xf64>
      }
    }
    affine.for %arg12 = 0 to 2 {
      affine.for %arg13 = 0 to 2 {
        affine.for %arg14 = #map(%arg12) to min #map1(%arg12) {
          affine.for %arg15 = #map(%arg13) to min #map1(%arg13) step 4 {
            %0 = affine.load %arg8[%arg14] : memref<?xf64>
            %1 = affine.load %arg3[%arg14, %arg15] : memref<?x40xf64>
            %2 = arith.mulf %arg1, %1 : f64
            %3 = affine.load %arg9[%arg15] : memref<?xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = arith.addf %0, %4 : f64
            affine.store %5, %arg8[%arg14] : memref<?xf64>
            %6 = affine.apply #map2(%arg15)
            %7 = affine.load %arg8[%arg14] : memref<?xf64>
            %8 = affine.load %arg3[%arg14, %6] : memref<?x40xf64>
            %9 = arith.mulf %arg1, %8 : f64
            %10 = affine.load %arg9[%6] : memref<?xf64>
            %11 = arith.mulf %9, %10 : f64
            %12 = arith.addf %7, %11 : f64
            affine.store %12, %arg8[%arg14] : memref<?xf64>
            %13 = affine.apply #map3(%arg15)
            %14 = affine.load %arg8[%arg14] : memref<?xf64>
            %15 = affine.load %arg3[%arg14, %13] : memref<?x40xf64>
            %16 = arith.mulf %arg1, %15 : f64
            %17 = affine.load %arg9[%13] : memref<?xf64>
            %18 = arith.mulf %16, %17 : f64
            %19 = arith.addf %14, %18 : f64
            affine.store %19, %arg8[%arg14] : memref<?xf64>
            %20 = affine.apply #map4(%arg15)
            %21 = affine.load %arg8[%arg14] : memref<?xf64>
            %22 = affine.load %arg3[%arg14, %20] : memref<?x40xf64>
            %23 = arith.mulf %arg1, %22 : f64
            %24 = affine.load %arg9[%20] : memref<?xf64>
            %25 = arith.mulf %23, %24 : f64
            %26 = arith.addf %21, %25 : f64
            affine.store %26, %arg8[%arg14] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

