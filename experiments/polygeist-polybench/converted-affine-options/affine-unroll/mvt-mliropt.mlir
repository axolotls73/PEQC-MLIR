#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (40, d0 * 32 + 32)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x40xf64>) {
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = 0 to 2 {
        affine.for %arg8 = #map(%arg6) to min #map1(%arg6) {
          affine.for %arg9 = #map(%arg7) to min #map1(%arg7) step 4 {
            %0 = affine.load %arg1[%arg8] : memref<?xf64>
            %1 = affine.load %arg5[%arg8, %arg9] : memref<?x40xf64>
            %2 = affine.load %arg3[%arg9] : memref<?xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.addf %0, %3 : f64
            affine.store %4, %arg1[%arg8] : memref<?xf64>
            %5 = affine.load %arg2[%arg8] : memref<?xf64>
            %6 = affine.load %arg5[%arg9, %arg8] : memref<?x40xf64>
            %7 = affine.load %arg4[%arg9] : memref<?xf64>
            %8 = arith.mulf %6, %7 : f64
            %9 = arith.addf %5, %8 : f64
            affine.store %9, %arg2[%arg8] : memref<?xf64>
            %10 = affine.apply #map2(%arg9)
            %11 = affine.load %arg1[%arg8] : memref<?xf64>
            %12 = affine.load %arg5[%arg8, %10] : memref<?x40xf64>
            %13 = affine.load %arg3[%10] : memref<?xf64>
            %14 = arith.mulf %12, %13 : f64
            %15 = arith.addf %11, %14 : f64
            affine.store %15, %arg1[%arg8] : memref<?xf64>
            %16 = affine.load %arg2[%arg8] : memref<?xf64>
            %17 = affine.load %arg5[%10, %arg8] : memref<?x40xf64>
            %18 = affine.load %arg4[%10] : memref<?xf64>
            %19 = arith.mulf %17, %18 : f64
            %20 = arith.addf %16, %19 : f64
            affine.store %20, %arg2[%arg8] : memref<?xf64>
            %21 = affine.apply #map3(%arg9)
            %22 = affine.load %arg1[%arg8] : memref<?xf64>
            %23 = affine.load %arg5[%arg8, %21] : memref<?x40xf64>
            %24 = affine.load %arg3[%21] : memref<?xf64>
            %25 = arith.mulf %23, %24 : f64
            %26 = arith.addf %22, %25 : f64
            affine.store %26, %arg1[%arg8] : memref<?xf64>
            %27 = affine.load %arg2[%arg8] : memref<?xf64>
            %28 = affine.load %arg5[%21, %arg8] : memref<?x40xf64>
            %29 = affine.load %arg4[%21] : memref<?xf64>
            %30 = arith.mulf %28, %29 : f64
            %31 = arith.addf %27, %30 : f64
            affine.store %31, %arg2[%arg8] : memref<?xf64>
            %32 = affine.apply #map4(%arg9)
            %33 = affine.load %arg1[%arg8] : memref<?xf64>
            %34 = affine.load %arg5[%arg8, %32] : memref<?x40xf64>
            %35 = affine.load %arg3[%32] : memref<?xf64>
            %36 = arith.mulf %34, %35 : f64
            %37 = arith.addf %33, %36 : f64
            affine.store %37, %arg1[%arg8] : memref<?xf64>
            %38 = affine.load %arg2[%arg8] : memref<?xf64>
            %39 = affine.load %arg5[%32, %arg8] : memref<?x40xf64>
            %40 = affine.load %arg4[%32] : memref<?xf64>
            %41 = arith.mulf %39, %40 : f64
            %42 = arith.addf %38, %41 : f64
            affine.store %42, %arg2[%arg8] : memref<?xf64>
          }
        }
      }
    }
    return
  }
}

