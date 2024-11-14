#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> ((d0 + 1) floordiv 4)>
#map3 = affine_map<(d0) -> (d0 * 4)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (d0 - ((d0 + 1) floordiv 4) * 4 + 1)>
#map8 = affine_map<(d0, d1) -> (d1 + ((d0 + 1) floordiv 4) * 4)>
module {
  func.func @kernel_syr2k(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x20xf64>) {
    affine.for %arg7 = 0 to 1 {
      %0 = affine.apply #map(%arg7)
      affine.for %arg8 = 0 to 30 {
        %1 = affine.apply #map1(%0, %arg8)
        affine.for %arg9 = 0 to #map2(%1) {
          %2 = affine.apply #map3(%arg9)
          %3 = affine.load %arg4[%1, %2] : memref<?x30xf64>
          %4 = arith.mulf %3, %arg3 : f64
          affine.store %4, %arg4[%1, %2] : memref<?x30xf64>
          %5 = affine.apply #map4(%2)
          %6 = affine.load %arg4[%1, %5] : memref<?x30xf64>
          %7 = arith.mulf %6, %arg3 : f64
          affine.store %7, %arg4[%1, %5] : memref<?x30xf64>
          %8 = affine.apply #map5(%2)
          %9 = affine.load %arg4[%1, %8] : memref<?x30xf64>
          %10 = arith.mulf %9, %arg3 : f64
          affine.store %10, %arg4[%1, %8] : memref<?x30xf64>
          %11 = affine.apply #map6(%2)
          %12 = affine.load %arg4[%1, %11] : memref<?x30xf64>
          %13 = arith.mulf %12, %arg3 : f64
          affine.store %13, %arg4[%1, %11] : memref<?x30xf64>
        }
        affine.for %arg9 = 0 to #map7(%1) {
          %2 = affine.apply #map8(%1, %arg9)
          %3 = affine.load %arg4[%1, %2] : memref<?x30xf64>
          %4 = arith.mulf %3, %arg3 : f64
          affine.store %4, %arg4[%1, %2] : memref<?x30xf64>
        }
        affine.for %arg9 = 0 to 20 {
          %2 = affine.load %arg6[%1, %arg9] : memref<?x20xf64>
          %3 = affine.load %arg5[%1, %arg9] : memref<?x20xf64>
          %4 = affine.load %arg6[%1, %arg9] : memref<?x20xf64>
          %5 = affine.load %arg5[%1, %arg9] : memref<?x20xf64>
          %6 = affine.load %arg6[%1, %arg9] : memref<?x20xf64>
          %7 = affine.load %arg5[%1, %arg9] : memref<?x20xf64>
          %8 = affine.load %arg6[%1, %arg9] : memref<?x20xf64>
          %9 = affine.load %arg5[%1, %arg9] : memref<?x20xf64>
          affine.for %arg10 = 0 to #map2(%1) {
            %12 = affine.apply #map3(%arg10)
            %13 = affine.load %arg5[%12, %arg9] : memref<?x20xf64>
            %14 = arith.mulf %13, %arg2 : f64
            %15 = arith.mulf %14, %2 : f64
            %16 = affine.load %arg6[%12, %arg9] : memref<?x20xf64>
            %17 = arith.mulf %16, %arg2 : f64
            %18 = arith.mulf %17, %3 : f64
            %19 = arith.addf %15, %18 : f64
            %20 = affine.load %arg4[%1, %12] : memref<?x30xf64>
            %21 = arith.addf %20, %19 : f64
            affine.store %21, %arg4[%1, %12] : memref<?x30xf64>
            %22 = affine.apply #map4(%12)
            %23 = affine.load %arg5[%22, %arg9] : memref<?x20xf64>
            %24 = arith.mulf %23, %arg2 : f64
            %25 = arith.mulf %24, %4 : f64
            %26 = affine.load %arg6[%22, %arg9] : memref<?x20xf64>
            %27 = arith.mulf %26, %arg2 : f64
            %28 = arith.mulf %27, %5 : f64
            %29 = arith.addf %25, %28 : f64
            %30 = affine.load %arg4[%1, %22] : memref<?x30xf64>
            %31 = arith.addf %30, %29 : f64
            affine.store %31, %arg4[%1, %22] : memref<?x30xf64>
            %32 = affine.apply #map5(%12)
            %33 = affine.load %arg5[%32, %arg9] : memref<?x20xf64>
            %34 = arith.mulf %33, %arg2 : f64
            %35 = arith.mulf %34, %6 : f64
            %36 = affine.load %arg6[%32, %arg9] : memref<?x20xf64>
            %37 = arith.mulf %36, %arg2 : f64
            %38 = arith.mulf %37, %7 : f64
            %39 = arith.addf %35, %38 : f64
            %40 = affine.load %arg4[%1, %32] : memref<?x30xf64>
            %41 = arith.addf %40, %39 : f64
            affine.store %41, %arg4[%1, %32] : memref<?x30xf64>
            %42 = affine.apply #map6(%12)
            %43 = affine.load %arg5[%42, %arg9] : memref<?x20xf64>
            %44 = arith.mulf %43, %arg2 : f64
            %45 = arith.mulf %44, %8 : f64
            %46 = affine.load %arg6[%42, %arg9] : memref<?x20xf64>
            %47 = arith.mulf %46, %arg2 : f64
            %48 = arith.mulf %47, %9 : f64
            %49 = arith.addf %45, %48 : f64
            %50 = affine.load %arg4[%1, %42] : memref<?x30xf64>
            %51 = arith.addf %50, %49 : f64
            affine.store %51, %arg4[%1, %42] : memref<?x30xf64>
          }
          %10 = affine.load %arg6[%1, %arg9] : memref<?x20xf64>
          %11 = affine.load %arg5[%1, %arg9] : memref<?x20xf64>
          affine.for %arg10 = 0 to #map7(%1) {
            %12 = affine.apply #map8(%1, %arg10)
            %13 = affine.load %arg5[%12, %arg9] : memref<?x20xf64>
            %14 = arith.mulf %13, %arg2 : f64
            %15 = arith.mulf %14, %10 : f64
            %16 = affine.load %arg6[%12, %arg9] : memref<?x20xf64>
            %17 = arith.mulf %16, %arg2 : f64
            %18 = arith.mulf %17, %11 : f64
            %19 = arith.addf %15, %18 : f64
            %20 = affine.load %arg4[%1, %12] : memref<?x30xf64>
            %21 = arith.addf %20, %19 : f64
            affine.store %21, %arg4[%1, %12] : memref<?x30xf64>
          }
        }
      }
    }
    return
  }
}

