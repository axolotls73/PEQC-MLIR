#map = affine_map<(d0) -> (d0 * -32 + 40, 32)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map2 = affine_map<(d0) -> ((d0 * -32 + 40) ceildiv 4, 8)>
#map3 = affine_map<(d0, d1) -> (d0 * 32 + d1 * 4)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = 0 to 2 {
        affine.for %arg8 = 0 to min #map(%arg6) {
          %0 = affine.apply #map1(%arg6, %arg8)
          affine.for %arg9 = 0 to min #map2(%arg7) {
            %1 = affine.apply #map3(%arg7, %arg9)
            %2 = affine.load %arg1[%0] : memref<?xf64>
            %3 = affine.load %arg5[%0, %1] : memref<?x40xf64>
            %4 = affine.load %arg3[%1] : memref<?xf64>
            %5 = arith.mulf %3, %4 : f64
            %6 = arith.addf %2, %5 : f64
            affine.store %6, %arg1[%0] : memref<?xf64>
            %7 = affine.load %arg2[%0] : memref<?xf64>
            %8 = affine.load %arg5[%1, %0] : memref<?x40xf64>
            %9 = affine.load %arg4[%1] : memref<?xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = arith.addf %7, %10 : f64
            affine.store %11, %arg2[%0] : memref<?xf64>
            %12 = affine.apply #map4(%1)
            %13 = affine.load %arg1[%0] : memref<?xf64>
            %14 = affine.load %arg5[%0, %12] : memref<?x40xf64>
            %15 = affine.load %arg3[%12] : memref<?xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = arith.addf %13, %16 : f64
            affine.store %17, %arg1[%0] : memref<?xf64>
            %18 = affine.load %arg2[%0] : memref<?xf64>
            %19 = affine.load %arg5[%12, %0] : memref<?x40xf64>
            %20 = affine.load %arg4[%12] : memref<?xf64>
            %21 = arith.mulf %19, %20 : f64
            %22 = arith.addf %18, %21 : f64
            affine.store %22, %arg2[%0] : memref<?xf64>
            %23 = affine.apply #map5(%1)
            %24 = affine.load %arg1[%0] : memref<?xf64>
            %25 = affine.load %arg5[%0, %23] : memref<?x40xf64>
            %26 = affine.load %arg3[%23] : memref<?xf64>
            %27 = arith.mulf %25, %26 : f64
            %28 = arith.addf %24, %27 : f64
            affine.store %28, %arg1[%0] : memref<?xf64>
            %29 = affine.load %arg2[%0] : memref<?xf64>
            %30 = affine.load %arg5[%23, %0] : memref<?x40xf64>
            %31 = affine.load %arg4[%23] : memref<?xf64>
            %32 = arith.mulf %30, %31 : f64
            %33 = arith.addf %29, %32 : f64
            affine.store %33, %arg2[%0] : memref<?xf64>
            %34 = affine.apply #map6(%1)
            %35 = affine.load %arg1[%0] : memref<?xf64>
            %36 = affine.load %arg5[%0, %34] : memref<?x40xf64>
            %37 = affine.load %arg3[%34] : memref<?xf64>
            %38 = arith.mulf %36, %37 : f64
            %39 = arith.addf %35, %38 : f64
            affine.store %39, %arg1[%0] : memref<?xf64>
            %40 = affine.load %arg2[%0] : memref<?xf64>
            %41 = affine.load %arg5[%34, %0] : memref<?x40xf64>
            %42 = affine.load %arg4[%34] : memref<?xf64>
            %43 = arith.mulf %41, %42 : f64
            %44 = arith.addf %40, %43 : f64
            affine.store %44, %arg2[%0] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

