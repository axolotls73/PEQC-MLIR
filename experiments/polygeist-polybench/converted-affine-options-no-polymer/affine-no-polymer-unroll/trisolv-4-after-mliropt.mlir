#map = affine_map<(d0) -> ((d0 floordiv 4) * 4)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
#map4 = affine_map<(d0) -> (d0)>
module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    affine.for %arg4 = 0 to 40 {
      %0 = affine.load %arg3[%arg4] : memref<?xf64>
      affine.store %0, %arg2[%arg4] : memref<?xf64>
      affine.for %arg5 = 0 to #map(%arg4) step 4 {
        %4 = affine.load %arg1[%arg4, %arg5] : memref<?x40xf64>
        %5 = affine.load %arg2[%arg5] : memref<?xf64>
        %6 = arith.mulf %4, %5 : f64
        %7 = affine.load %arg2[%arg4] : memref<?xf64>
        %8 = arith.subf %7, %6 : f64
        affine.store %8, %arg2[%arg4] : memref<?xf64>
        %9 = affine.apply #map1(%arg5)
        %10 = affine.load %arg1[%arg4, %9] : memref<?x40xf64>
        %11 = affine.load %arg2[%9] : memref<?xf64>
        %12 = arith.mulf %10, %11 : f64
        %13 = affine.load %arg2[%arg4] : memref<?xf64>
        %14 = arith.subf %13, %12 : f64
        affine.store %14, %arg2[%arg4] : memref<?xf64>
        %15 = affine.apply #map2(%arg5)
        %16 = affine.load %arg1[%arg4, %15] : memref<?x40xf64>
        %17 = affine.load %arg2[%15] : memref<?xf64>
        %18 = arith.mulf %16, %17 : f64
        %19 = affine.load %arg2[%arg4] : memref<?xf64>
        %20 = arith.subf %19, %18 : f64
        affine.store %20, %arg2[%arg4] : memref<?xf64>
        %21 = affine.apply #map3(%arg5)
        %22 = affine.load %arg1[%arg4, %21] : memref<?x40xf64>
        %23 = affine.load %arg2[%21] : memref<?xf64>
        %24 = arith.mulf %22, %23 : f64
        %25 = affine.load %arg2[%arg4] : memref<?xf64>
        %26 = arith.subf %25, %24 : f64
        affine.store %26, %arg2[%arg4] : memref<?xf64>
      }
      affine.for %arg5 = #map(%arg4) to #map4(%arg4) {
        %4 = affine.load %arg1[%arg4, %arg5] : memref<?x40xf64>
        %5 = affine.load %arg2[%arg5] : memref<?xf64>
        %6 = arith.mulf %4, %5 : f64
        %7 = affine.load %arg2[%arg4] : memref<?xf64>
        %8 = arith.subf %7, %6 : f64
        affine.store %8, %arg2[%arg4] : memref<?xf64>
      }
      %1 = affine.load %arg2[%arg4] : memref<?xf64>
      %2 = affine.load %arg1[%arg4, %arg4] : memref<?x40xf64>
      %3 = arith.divf %1, %2 : f64
      affine.store %3, %arg2[%arg4] : memref<?xf64>
    }
    return
  }
}

