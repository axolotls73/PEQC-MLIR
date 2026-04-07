#map = affine_map<(d0) -> (-d0 + 60)>
#map1 = affine_map<(d0, d1) -> (-d0 + ((d0 + d1) floordiv 4) * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (d0)>
#set = affine_set<(d0) : (d0 - 1 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - 1 >= 0, d1 - 1 >= 0)>
#set2 = affine_set<(d0, d1) : (d0 + d1 - 61 >= 0)>
module {
  func.func @kernel_nussinov(%arg0: i32, %arg1: memref<?xi32>, %arg2: memref<?x60xi32>) {
    %c3_i32 = arith.constant 3 : i32
    affine.for %arg3 = 0 to 60 {
      affine.for %arg4 = #map(%arg3) to 60 {
        affine.if #set(%arg4) {
          %0 = affine.load %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
          %1 = affine.load %arg2[-%arg3 + 59, %arg4 - 1] : memref<?x60xi32>
          %2 = arith.cmpi sge, %0, %1 : i32
          %3 = arith.select %2, %0, %1 : i32
          affine.store %3, %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
        }
        affine.if #set(%arg3) {
          %0 = affine.load %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
          %1 = affine.load %arg2[-%arg3 + 60, %arg4] : memref<?x60xi32>
          %2 = arith.cmpi sge, %0, %1 : i32
          %3 = arith.select %2, %0, %1 : i32
          affine.store %3, %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
        }
        affine.if #set1(%arg4, %arg3) {
          affine.if #set2(%arg3, %arg4) {
            %0 = affine.load %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
            %1 = affine.load %arg2[-%arg3 + 60, %arg4 - 1] : memref<?x60xi32>
            %2 = affine.load %arg1[-%arg3 + 59] : memref<?xi32>
            %3 = affine.load %arg1[%arg4] : memref<?xi32>
            %4 = arith.addi %2, %3 : i32
            %5 = arith.cmpi eq, %4, %c3_i32 : i32
            %6 = arith.extui %5 : i1 to i32
            %7 = arith.addi %1, %6 : i32
            %8 = arith.cmpi sge, %0, %7 : i32
            %9 = arith.select %8, %0, %7 : i32
            affine.store %9, %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
          } else {
            %0 = affine.load %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
            %1 = affine.load %arg2[-%arg3 + 60, %arg4 - 1] : memref<?x60xi32>
            %2 = arith.cmpi sge, %0, %1 : i32
            %3 = arith.select %2, %0, %1 : i32
            affine.store %3, %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
          }
        }
        affine.for %arg5 = #map(%arg3) to #map1(%arg3, %arg4) step 4 {
          %0 = affine.load %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
          %1 = affine.load %arg2[-%arg3 + 59, %arg5] : memref<?x60xi32>
          %2 = affine.load %arg2[%arg5 + 1, %arg4] : memref<?x60xi32>
          %3 = arith.addi %1, %2 : i32
          %4 = arith.cmpi sge, %0, %3 : i32
          %5 = arith.select %4, %0, %3 : i32
          affine.store %5, %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
          %6 = affine.apply #map2(%arg5)
          %7 = affine.load %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
          %8 = affine.load %arg2[-%arg3 + 59, %6] : memref<?x60xi32>
          %9 = affine.load %arg2[%6 + 1, %arg4] : memref<?x60xi32>
          %10 = arith.addi %8, %9 : i32
          %11 = arith.cmpi sge, %7, %10 : i32
          %12 = arith.select %11, %7, %10 : i32
          affine.store %12, %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
          %13 = affine.apply #map3(%arg5)
          %14 = affine.load %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
          %15 = affine.load %arg2[-%arg3 + 59, %13] : memref<?x60xi32>
          %16 = affine.load %arg2[%13 + 1, %arg4] : memref<?x60xi32>
          %17 = arith.addi %15, %16 : i32
          %18 = arith.cmpi sge, %14, %17 : i32
          %19 = arith.select %18, %14, %17 : i32
          affine.store %19, %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
          %20 = affine.apply #map4(%arg5)
          %21 = affine.load %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
          %22 = affine.load %arg2[-%arg3 + 59, %20] : memref<?x60xi32>
          %23 = affine.load %arg2[%20 + 1, %arg4] : memref<?x60xi32>
          %24 = arith.addi %22, %23 : i32
          %25 = arith.cmpi sge, %21, %24 : i32
          %26 = arith.select %25, %21, %24 : i32
          affine.store %26, %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
        }
        affine.for %arg5 = #map1(%arg3, %arg4) to #map5(%arg4) {
          %0 = affine.load %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
          %1 = affine.load %arg2[-%arg3 + 59, %arg5] : memref<?x60xi32>
          %2 = affine.load %arg2[%arg5 + 1, %arg4] : memref<?x60xi32>
          %3 = arith.addi %1, %2 : i32
          %4 = arith.cmpi sge, %0, %3 : i32
          %5 = arith.select %4, %0, %3 : i32
          affine.store %5, %arg2[-%arg3 + 59, %arg4] : memref<?x60xi32>
        }
      }
    }
    return
  }
}

