#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (60, d0 * 32 + 32)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    affine.for %arg2 = 0 to 60 {
      affine.for %arg3 = 0 to 2 {
        affine.for %arg4 = 0 to 2 {
          affine.for %arg5 = #map(%arg3) to min #map1(%arg3) {
            affine.for %arg6 = #map(%arg4) to min #map1(%arg4) step 4 {
              %0 = affine.load %arg1[%arg5, %arg6] : memref<?x60xi32>
              %1 = affine.load %arg1[%arg5, %arg2] : memref<?x60xi32>
              %2 = affine.load %arg1[%arg2, %arg6] : memref<?x60xi32>
              %3 = arith.addi %1, %2 : i32
              %4 = arith.cmpi slt, %0, %3 : i32
              %5 = arith.select %4, %0, %3 : i32
              affine.store %5, %arg1[%arg5, %arg6] : memref<?x60xi32>
              %6 = affine.apply #map2(%arg6)
              %7 = affine.load %arg1[%arg5, %6] : memref<?x60xi32>
              %8 = affine.load %arg1[%arg5, %arg2] : memref<?x60xi32>
              %9 = affine.load %arg1[%arg2, %6] : memref<?x60xi32>
              %10 = arith.addi %8, %9 : i32
              %11 = arith.cmpi slt, %7, %10 : i32
              %12 = arith.select %11, %7, %10 : i32
              affine.store %12, %arg1[%arg5, %6] : memref<?x60xi32>
              %13 = affine.apply #map3(%arg6)
              %14 = affine.load %arg1[%arg5, %13] : memref<?x60xi32>
              %15 = affine.load %arg1[%arg5, %arg2] : memref<?x60xi32>
              %16 = affine.load %arg1[%arg2, %13] : memref<?x60xi32>
              %17 = arith.addi %15, %16 : i32
              %18 = arith.cmpi slt, %14, %17 : i32
              %19 = arith.select %18, %14, %17 : i32
              affine.store %19, %arg1[%arg5, %13] : memref<?x60xi32>
              %20 = affine.apply #map4(%arg6)
              %21 = affine.load %arg1[%arg5, %20] : memref<?x60xi32>
              %22 = affine.load %arg1[%arg5, %arg2] : memref<?x60xi32>
              %23 = affine.load %arg1[%arg2, %20] : memref<?x60xi32>
              %24 = arith.addi %22, %23 : i32
              %25 = arith.cmpi slt, %21, %24 : i32
              %26 = arith.select %25, %21, %24 : i32
              affine.store %26, %arg1[%arg5, %20] : memref<?x60xi32>
            }
          }
        }
      }
    }
    return
  }
}

