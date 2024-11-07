#map = affine_map<(d0) -> ((d0 * -32 + 40) ceildiv 4, 8)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    affine.parallel (%arg6) = (0) to (2) {
      affine.for %arg7 = 0 to 2 {
        affine.parallel (%arg8) = (%arg6 * 32) to (min(40, %arg6 * 32 + 32)) {
          affine.for %arg9 = 0 to min #map(%arg7) {
            %0 = affine.apply #map1(%arg7, %arg9)
            %1 = affine.load %arg1[%arg8] : memref<?xf64>
            %2 = affine.load %arg5[%arg8, %0] : memref<?x40xf64>
            %3 = affine.load %arg3[%0] : memref<?xf64>
            %4 = arith.mulf %2, %3 : f64
            %5 = arith.addf %1, %4 : f64
            affine.store %5, %arg1[%arg8] : memref<?xf64>
            %6 = affine.load %arg2[%arg8] : memref<?xf64>
            %7 = affine.load %arg5[%0, %arg8] : memref<?x40xf64>
            %8 = affine.load %arg4[%0] : memref<?xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = arith.addf %6, %9 : f64
            affine.store %10, %arg2[%arg8] : memref<?xf64>
            %11 = affine.apply #map2(%0)
            %12 = affine.load %arg1[%arg8] : memref<?xf64>
            %13 = affine.load %arg5[%arg8, %11] : memref<?x40xf64>
            %14 = affine.load %arg3[%11] : memref<?xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = arith.addf %12, %15 : f64
            affine.store %16, %arg1[%arg8] : memref<?xf64>
            %17 = affine.load %arg2[%arg8] : memref<?xf64>
            %18 = affine.load %arg5[%11, %arg8] : memref<?x40xf64>
            %19 = affine.load %arg4[%11] : memref<?xf64>
            %20 = arith.mulf %18, %19 : f64
            %21 = arith.addf %17, %20 : f64
            affine.store %21, %arg2[%arg8] : memref<?xf64>
            %22 = affine.apply #map3(%0)
            %23 = affine.load %arg1[%arg8] : memref<?xf64>
            %24 = affine.load %arg5[%arg8, %22] : memref<?x40xf64>
            %25 = affine.load %arg3[%22] : memref<?xf64>
            %26 = arith.mulf %24, %25 : f64
            %27 = arith.addf %23, %26 : f64
            affine.store %27, %arg1[%arg8] : memref<?xf64>
            %28 = affine.load %arg2[%arg8] : memref<?xf64>
            %29 = affine.load %arg5[%22, %arg8] : memref<?x40xf64>
            %30 = affine.load %arg4[%22] : memref<?xf64>
            %31 = arith.mulf %29, %30 : f64
            %32 = arith.addf %28, %31 : f64
            affine.store %32, %arg2[%arg8] : memref<?xf64>
            %33 = affine.apply #map4(%0)
            %34 = affine.load %arg1[%arg8] : memref<?xf64>
            %35 = affine.load %arg5[%arg8, %33] : memref<?x40xf64>
            %36 = affine.load %arg3[%33] : memref<?xf64>
            %37 = arith.mulf %35, %36 : f64
            %38 = arith.addf %34, %37 : f64
            affine.store %38, %arg1[%arg8] : memref<?xf64>
            %39 = affine.load %arg2[%arg8] : memref<?xf64>
            %40 = affine.load %arg5[%33, %arg8] : memref<?x40xf64>
            %41 = affine.load %arg4[%33] : memref<?xf64>
            %42 = arith.mulf %40, %41 : f64
            %43 = arith.addf %39, %42 : f64
            affine.store %43, %arg2[%arg8] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

