#map = affine_map<(d0) -> (d0 * -32 + 60, 32)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map2 = affine_map<(d0) -> ((d0 * -32 + 60) ceildiv 4, 8)>
#map3 = affine_map<(d0, d1) -> (d0 * 32 + d1 * 4)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @kernel_floyd_warshall(%arg0: i32, %arg1: memref<?x60xi32>) {
    affine.for %arg2 = 0 to 60 {
      affine.for %arg3 = 0 to 2 {
        affine.for %arg4 = 0 to 2 {
          affine.for %arg5 = 0 to min #map(%arg3) {
            %0 = affine.apply #map1(%arg3, %arg5)
            affine.for %arg6 = 0 to min #map2(%arg4) {
              %1 = affine.apply #map3(%arg4, %arg6)
              %2 = affine.load %arg1[%0, %1] : memref<?x60xi32>
              %3 = affine.load %arg1[%0, %arg2] : memref<?x60xi32>
              %4 = affine.load %arg1[%arg2, %1] : memref<?x60xi32>
              %5 = arith.addi %3, %4 : i32
              %6 = arith.cmpi slt, %2, %5 : i32
              %7 = arith.select %6, %2, %5 : i32
              affine.store %7, %arg1[%0, %1] : memref<?x60xi32>
              %8 = affine.apply #map4(%1)
              %9 = affine.load %arg1[%0, %8] : memref<?x60xi32>
              %10 = affine.load %arg1[%0, %arg2] : memref<?x60xi32>
              %11 = affine.load %arg1[%arg2, %8] : memref<?x60xi32>
              %12 = arith.addi %10, %11 : i32
              %13 = arith.cmpi slt, %9, %12 : i32
              %14 = arith.select %13, %9, %12 : i32
              affine.store %14, %arg1[%0, %8] : memref<?x60xi32>
              %15 = affine.apply #map5(%1)
              %16 = affine.load %arg1[%0, %15] : memref<?x60xi32>
              %17 = affine.load %arg1[%0, %arg2] : memref<?x60xi32>
              %18 = affine.load %arg1[%arg2, %15] : memref<?x60xi32>
              %19 = arith.addi %17, %18 : i32
              %20 = arith.cmpi slt, %16, %19 : i32
              %21 = arith.select %20, %16, %19 : i32
              affine.store %21, %arg1[%0, %15] : memref<?x60xi32>
              %22 = affine.apply #map6(%1)
              %23 = affine.load %arg1[%0, %22] : memref<?x60xi32>
              %24 = affine.load %arg1[%0, %arg2] : memref<?x60xi32>
              %25 = affine.load %arg1[%arg2, %22] : memref<?x60xi32>
              %26 = arith.addi %24, %25 : i32
              %27 = arith.cmpi slt, %23, %26 : i32
              %28 = arith.select %27, %23, %26 : i32
              affine.store %28, %arg1[%0, %22] : memref<?x60xi32>
            }
          }
        }
      }
    }
    return
  }
}

