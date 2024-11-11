#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> ((d0 + 1) floordiv 4)>
#map2 = affine_map<(d0) -> (d0 * 4)>
#map3 = affine_map<(d0) -> (d0 + 1)>
#map4 = affine_map<(d0) -> (d0 + 2)>
#map5 = affine_map<(d0) -> (d0 + 3)>
#map6 = affine_map<(d0) -> (d0 - ((d0 + 1) floordiv 4) * 4 + 1)>
#map7 = affine_map<(d0, d1) -> (d1 + ((d0 + 1) floordiv 4) * 4)>
module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    affine.parallel (%arg7) = (0) to (30) {
      affine.for %arg8 = 0 to 1 {
        %0 = affine.apply #map(%arg7, %arg8)
        affine.for %arg9 = 0 to #map1(%0) {
          %1 = affine.apply #map2(%arg9)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %2, %arg3 : f64
          affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
          %4 = affine.apply #map3(%1)
          %5 = affine.load %arg4[%0, %4] : memref<?x30xf64>
          %6 = arith.mulf %5, %arg3 : f64
          affine.store %6, %arg4[%0, %4] : memref<?x30xf64>
          %7 = affine.apply #map4(%1)
          %8 = affine.load %arg4[%0, %7] : memref<?x30xf64>
          %9 = arith.mulf %8, %arg3 : f64
          affine.store %9, %arg4[%0, %7] : memref<?x30xf64>
          %10 = affine.apply #map5(%1)
          %11 = affine.load %arg4[%0, %10] : memref<?x30xf64>
          %12 = arith.mulf %11, %arg3 : f64
          affine.store %12, %arg4[%0, %10] : memref<?x30xf64>
        }
        affine.for %arg9 = 0 to #map6(%0) {
          %1 = affine.apply #map7(%0, %arg9)
          %2 = affine.load %arg4[%0, %1] : memref<?x30xf64>
          %3 = arith.mulf %2, %arg3 : f64
          affine.store %3, %arg4[%0, %1] : memref<?x30xf64>
        }
        affine.for %arg9 = 0 to 20 {
          %1 = affine.load %arg6[%0, %arg9] : memref<?x20xf64>
          %2 = affine.load %arg5[%0, %arg9] : memref<?x20xf64>
          %3 = affine.load %arg6[%0, %arg9] : memref<?x20xf64>
          %4 = affine.load %arg5[%0, %arg9] : memref<?x20xf64>
          %5 = affine.load %arg6[%0, %arg9] : memref<?x20xf64>
          %6 = affine.load %arg5[%0, %arg9] : memref<?x20xf64>
          %7 = affine.load %arg6[%0, %arg9] : memref<?x20xf64>
          %8 = affine.load %arg5[%0, %arg9] : memref<?x20xf64>
          affine.for %arg10 = 0 to #map1(%0) {
            %11 = affine.apply #map2(%arg10)
            %12 = affine.load %arg5[%11, %arg9] : memref<?x20xf64>
            %13 = arith.mulf %12, %arg2 : f64
            %14 = arith.mulf %13, %1 : f64
            %15 = affine.load %arg6[%11, %arg9] : memref<?x20xf64>
            %16 = arith.mulf %15, %arg2 : f64
            %17 = arith.mulf %16, %2 : f64
            %18 = arith.addf %14, %17 : f64
            %19 = affine.load %arg4[%0, %11] : memref<?x30xf64>
            %20 = arith.addf %19, %18 : f64
            affine.store %20, %arg4[%0, %11] : memref<?x30xf64>
            %21 = affine.apply #map3(%11)
            %22 = affine.load %arg5[%21, %arg9] : memref<?x20xf64>
            %23 = arith.mulf %22, %arg2 : f64
            %24 = arith.mulf %23, %3 : f64
            %25 = affine.load %arg6[%21, %arg9] : memref<?x20xf64>
            %26 = arith.mulf %25, %arg2 : f64
            %27 = arith.mulf %26, %4 : f64
            %28 = arith.addf %24, %27 : f64
            %29 = affine.load %arg4[%0, %21] : memref<?x30xf64>
            %30 = arith.addf %29, %28 : f64
            affine.store %30, %arg4[%0, %21] : memref<?x30xf64>
            %31 = affine.apply #map4(%11)
            %32 = affine.load %arg5[%31, %arg9] : memref<?x20xf64>
            %33 = arith.mulf %32, %arg2 : f64
            %34 = arith.mulf %33, %5 : f64
            %35 = affine.load %arg6[%31, %arg9] : memref<?x20xf64>
            %36 = arith.mulf %35, %arg2 : f64
            %37 = arith.mulf %36, %6 : f64
            %38 = arith.addf %34, %37 : f64
            %39 = affine.load %arg4[%0, %31] : memref<?x30xf64>
            %40 = arith.addf %39, %38 : f64
            affine.store %40, %arg4[%0, %31] : memref<?x30xf64>
            %41 = affine.apply #map5(%11)
            %42 = affine.load %arg5[%41, %arg9] : memref<?x20xf64>
            %43 = arith.mulf %42, %arg2 : f64
            %44 = arith.mulf %43, %7 : f64
            %45 = affine.load %arg6[%41, %arg9] : memref<?x20xf64>
            %46 = arith.mulf %45, %arg2 : f64
            %47 = arith.mulf %46, %8 : f64
            %48 = arith.addf %44, %47 : f64
            %49 = affine.load %arg4[%0, %41] : memref<?x30xf64>
            %50 = arith.addf %49, %48 : f64
            affine.store %50, %arg4[%0, %41] : memref<?x30xf64>
          }
          %9 = affine.load %arg6[%0, %arg9] : memref<?x20xf64>
          %10 = affine.load %arg5[%0, %arg9] : memref<?x20xf64>
          affine.for %arg10 = 0 to #map6(%0) {
            %11 = affine.apply #map7(%0, %arg10)
            %12 = affine.load %arg5[%11, %arg9] : memref<?x20xf64>
            %13 = arith.mulf %12, %arg2 : f64
            %14 = arith.mulf %13, %9 : f64
            %15 = affine.load %arg6[%11, %arg9] : memref<?x20xf64>
            %16 = arith.mulf %15, %arg2 : f64
            %17 = arith.mulf %16, %10 : f64
            %18 = arith.addf %14, %17 : f64
            %19 = affine.load %arg4[%0, %11] : memref<?x30xf64>
            %20 = arith.addf %19, %18 : f64
            affine.store %20, %arg4[%0, %11] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

