#map = affine_map<(d0)[s0] -> (-d0 + s0)>
#map1 = affine_map<(d0) -> (d0)>
#set = affine_set<(d0) : (d0 - 1 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - 1 >= 0, d1 - 1 >= 0)>
#set2 = affine_set<(d0, d1)[s0] : (d0 + d1 - s0 - 1 >= 0)>
module {
  func.func @kernel_nussinov(%arg0: i32, %arg1: memref<?xi32>, %arg2: memref<?x180xi32>) {
    %c3_i32 = arith.constant 3 : i32
    %0 = arith.index_cast %arg0 : i32 to index
    affine.for %arg3 = 0 to %0 {
      affine.for %arg4 = #map(%arg3)[%0] to %0 {
        affine.if #set(%arg4) {
          %1 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
          %2 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg4 - 1] : memref<?x180xi32>
          %3 = arith.cmpi sge, %1, %2 : i32
          %4 = scf.if %3 -> (i32) {
            %5 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
            scf.yield %5 : i32
          } else {
            %5 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg4 - 1] : memref<?x180xi32>
            scf.yield %5 : i32
          }
          affine.store %4, %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
        }
        affine.if #set(%arg3) {
          %1 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
          %2 = affine.load %arg2[-%arg3 + symbol(%0), %arg4] : memref<?x180xi32>
          %3 = arith.cmpi sge, %1, %2 : i32
          %4 = scf.if %3 -> (i32) {
            %5 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
            scf.yield %5 : i32
          } else {
            %5 = affine.load %arg2[-%arg3 + symbol(%0), %arg4] : memref<?x180xi32>
            scf.yield %5 : i32
          }
          affine.store %4, %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
        }
        affine.if #set1(%arg4, %arg3) {
          affine.if #set2(%arg3, %arg4)[%0] {
            %1 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
            %2 = affine.load %arg2[-%arg3 + symbol(%0), %arg4 - 1] : memref<?x180xi32>
            %3 = affine.load %arg1[-%arg3 + symbol(%0) - 1] : memref<?xi32>
            %4 = affine.load %arg1[%arg4] : memref<?xi32>
            %5 = arith.addi %3, %4 : i32
            %6 = arith.cmpi eq, %5, %c3_i32 : i32
            %7 = arith.extui %6 : i1 to i32
            %8 = arith.addi %2, %7 : i32
            %9 = arith.cmpi sge, %1, %8 : i32
            %10 = scf.if %9 -> (i32) {
              %11 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
              scf.yield %11 : i32
            } else {
              %11 = affine.load %arg2[-%arg3 + symbol(%0), %arg4 - 1] : memref<?x180xi32>
              %12 = affine.load %arg1[-%arg3 + symbol(%0) - 1] : memref<?xi32>
              %13 = arith.addi %12, %4 : i32
              %14 = arith.cmpi eq, %13, %c3_i32 : i32
              %15 = arith.extui %14 : i1 to i32
              %16 = arith.addi %11, %15 : i32
              scf.yield %16 : i32
            }
            affine.store %10, %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
          } else {
            %1 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
            %2 = affine.load %arg2[-%arg3 + symbol(%0), %arg4 - 1] : memref<?x180xi32>
            %3 = arith.cmpi sge, %1, %2 : i32
            %4 = scf.if %3 -> (i32) {
              %5 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
              scf.yield %5 : i32
            } else {
              %5 = affine.load %arg2[-%arg3 + symbol(%0), %arg4 - 1] : memref<?x180xi32>
              scf.yield %5 : i32
            }
            affine.store %4, %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
          }
        }
        affine.for %arg5 = #map(%arg3)[%0] to #map1(%arg4) {
          %1 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
          %2 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg5] : memref<?x180xi32>
          %3 = affine.load %arg2[%arg5 + 1, %arg4] : memref<?x180xi32>
          %4 = arith.addi %2, %3 : i32
          %5 = arith.cmpi sge, %1, %4 : i32
          %6 = scf.if %5 -> (i32) {
            %7 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
            scf.yield %7 : i32
          } else {
            %7 = affine.load %arg2[-%arg3 + symbol(%0) - 1, %arg5] : memref<?x180xi32>
            %8 = arith.addi %7, %3 : i32
            scf.yield %8 : i32
          }
          affine.store %6, %arg2[-%arg3 + symbol(%0) - 1, %arg4] : memref<?x180xi32>
        }
      }
    }
    return
  }
}
