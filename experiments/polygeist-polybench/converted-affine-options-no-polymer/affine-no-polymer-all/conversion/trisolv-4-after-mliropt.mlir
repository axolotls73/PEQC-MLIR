#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (32, -d0 + 40)>
#map2 = affine_map<(d0, d1) -> (d0 + d1)>
#map3 = affine_map<(d0) -> (d0 floordiv 4)>
#map4 = affine_map<(d0) -> (d0 * 4)>
#map5 = affine_map<(d0) -> (d0 + 1)>
#map6 = affine_map<(d0) -> (d0 + 2)>
#map7 = affine_map<(d0) -> (d0 + 3)>
#map8 = affine_map<(d0) -> (d0 mod 4)>
#map9 = affine_map<(d0, d1) -> (d1 + (d0 floordiv 4) * 4)>
module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    affine.for %arg4 = 0 to 2 {
      %0 = affine.apply #map(%arg4)
      affine.for %arg5 = 0 to min #map1(%0) {
        %1 = affine.apply #map2(%0, %arg5)
        %2 = affine.load %arg3[%1] : memref<?xf64>
        affine.store %2, %arg2[%1] : memref<?xf64>
        affine.for %arg6 = 0 to #map3(%1) {
          %6 = affine.apply #map4(%arg6)
          %7 = affine.load %arg1[%1, %6] : memref<?x40xf64>
          %8 = affine.load %arg2[%6] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = affine.load %arg2[%1] : memref<?xf64>
          %11 = arith.subf %10, %9 : f64
          affine.store %11, %arg2[%1] : memref<?xf64>
          %12 = affine.apply #map5(%6)
          %13 = affine.load %arg1[%1, %12] : memref<?x40xf64>
          %14 = affine.load %arg2[%12] : memref<?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = affine.load %arg2[%1] : memref<?xf64>
          %17 = arith.subf %16, %15 : f64
          affine.store %17, %arg2[%1] : memref<?xf64>
          %18 = affine.apply #map6(%6)
          %19 = affine.load %arg1[%1, %18] : memref<?x40xf64>
          %20 = affine.load %arg2[%18] : memref<?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = affine.load %arg2[%1] : memref<?xf64>
          %23 = arith.subf %22, %21 : f64
          affine.store %23, %arg2[%1] : memref<?xf64>
          %24 = affine.apply #map7(%6)
          %25 = affine.load %arg1[%1, %24] : memref<?x40xf64>
          %26 = affine.load %arg2[%24] : memref<?xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = affine.load %arg2[%1] : memref<?xf64>
          %29 = arith.subf %28, %27 : f64
          affine.store %29, %arg2[%1] : memref<?xf64>
        }
        affine.for %arg6 = 0 to #map8(%1) {
          %6 = affine.apply #map9(%1, %arg6)
          %7 = affine.load %arg1[%1, %6] : memref<?x40xf64>
          %8 = affine.load %arg2[%6] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = affine.load %arg2[%1] : memref<?xf64>
          %11 = arith.subf %10, %9 : f64
          affine.store %11, %arg2[%1] : memref<?xf64>
        }
        %3 = affine.load %arg2[%1] : memref<?xf64>
        %4 = affine.load %arg1[%1, %1] : memref<?x40xf64>
        %5 = arith.divf %3, %4 : f64
        affine.store %5, %arg2[%1] : memref<?xf64>
      }
    }
    return
  }
}

