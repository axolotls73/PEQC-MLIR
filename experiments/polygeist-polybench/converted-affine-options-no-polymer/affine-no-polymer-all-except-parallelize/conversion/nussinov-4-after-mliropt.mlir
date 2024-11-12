#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1) -> (-d0 + d1 + 60)>
#map2 = affine_map<(d0, d1) -> ((((d0 + d1) floordiv 4) * 4 - 60) ceildiv 4)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1 * 4 + 60)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0, d1) -> ((d0 + d1) mod 4)>
#map8 = affine_map<(d0, d1, d2) -> (-d0 + d2 + ((d0 + d1) floordiv 4) * 4)>
#set = affine_set<(d0) : (d0 - 1 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - 1 >= 0, d1 - 1 >= 0)>
#set2 = affine_set<(d0, d1) : (d0 + d1 - 61 >= 0)>
module {
  func.func @kernel_nussinov(%arg0: i32, %arg1: memref<?xi32>, %arg2: memref<?x60xi32>) {
    %c3_i32 = arith.constant 3 : i32
    affine.for %arg3 = 0 to 60 {
      affine.for %arg4 = 0 to #map(%arg3) {
        %0 = affine.apply #map1(%arg3, %arg4)
        affine.if #set(%0) {
          %1 = affine.load %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
          %2 = affine.load %arg2[-%arg3 + 59, %0 - 1] : memref<?x60xi32>
          %3 = arith.cmpi sge, %1, %2 : i32
          %4 = arith.select %3, %1, %2 : i32
          affine.store %4, %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
        }
        affine.if #set(%arg3) {
          %1 = affine.load %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
          %2 = affine.load %arg2[-%arg3 + 60, %0] : memref<?x60xi32>
          %3 = arith.cmpi sge, %1, %2 : i32
          %4 = arith.select %3, %1, %2 : i32
          affine.store %4, %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
        }
        affine.if #set1(%0, %arg3) {
          affine.if #set2(%arg3, %0) {
            %1 = affine.load %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
            %2 = affine.load %arg2[-%arg3 + 60, %0 - 1] : memref<?x60xi32>
            %3 = affine.load %arg1[-%arg3 + 59] : memref<?xi32>
            %4 = affine.load %arg1[%0] : memref<?xi32>
            %5 = arith.addi %3, %4 : i32
            %6 = arith.cmpi eq, %5, %c3_i32 : i32
            %7 = arith.extui %6 : i1 to i32
            %8 = arith.addi %2, %7 : i32
            %9 = arith.cmpi sge, %1, %8 : i32
            %10 = arith.select %9, %1, %8 : i32
            affine.store %10, %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
          } else {
            %1 = affine.load %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
            %2 = affine.load %arg2[-%arg3 + 60, %0 - 1] : memref<?x60xi32>
            %3 = arith.cmpi sge, %1, %2 : i32
            %4 = arith.select %3, %1, %2 : i32
            affine.store %4, %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
          }
        }
        affine.for %arg5 = 0 to #map2(%arg3, %0) {
          %1 = affine.apply #map3(%arg3, %arg5)
          %2 = affine.load %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
          %3 = affine.load %arg2[-%arg3 + 59, %1] : memref<?x60xi32>
          %4 = affine.load %arg2[%1 + 1, %0] : memref<?x60xi32>
          %5 = arith.addi %3, %4 : i32
          %6 = arith.cmpi sge, %2, %5 : i32
          %7 = arith.select %6, %2, %5 : i32
          affine.store %7, %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
          %8 = affine.apply #map4(%1)
          %9 = affine.load %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
          %10 = affine.load %arg2[-%arg3 + 59, %8] : memref<?x60xi32>
          %11 = affine.load %arg2[%8 + 1, %0] : memref<?x60xi32>
          %12 = arith.addi %10, %11 : i32
          %13 = arith.cmpi sge, %9, %12 : i32
          %14 = arith.select %13, %9, %12 : i32
          affine.store %14, %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
          %15 = affine.apply #map5(%1)
          %16 = affine.load %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
          %17 = affine.load %arg2[-%arg3 + 59, %15] : memref<?x60xi32>
          %18 = affine.load %arg2[%15 + 1, %0] : memref<?x60xi32>
          %19 = arith.addi %17, %18 : i32
          %20 = arith.cmpi sge, %16, %19 : i32
          %21 = arith.select %20, %16, %19 : i32
          affine.store %21, %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
          %22 = affine.apply #map6(%1)
          %23 = affine.load %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
          %24 = affine.load %arg2[-%arg3 + 59, %22] : memref<?x60xi32>
          %25 = affine.load %arg2[%22 + 1, %0] : memref<?x60xi32>
          %26 = arith.addi %24, %25 : i32
          %27 = arith.cmpi sge, %23, %26 : i32
          %28 = arith.select %27, %23, %26 : i32
          affine.store %28, %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
        }
        affine.for %arg5 = 0 to #map7(%0, %arg3) {
          %1 = affine.apply #map8(%arg3, %0, %arg5)
          %2 = affine.load %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
          %3 = affine.load %arg2[-%arg3 + 59, %1] : memref<?x60xi32>
          %4 = affine.load %arg2[%1 + 1, %0] : memref<?x60xi32>
          %5 = arith.addi %3, %4 : i32
          %6 = arith.cmpi sge, %2, %5 : i32
          %7 = arith.select %6, %2, %5 : i32
          affine.store %7, %arg2[-%arg3 + 59, %0] : memref<?x60xi32>
        }
      }
    }
    return
  }
}

