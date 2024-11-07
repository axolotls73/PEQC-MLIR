#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0, d1) -> (d0 * 32, d1 * 32 + 1)>
#map2 = affine_map<(d0, d1) -> (40, d0 * 32 + 32, d1 * 32 + 33)>
#map3 = affine_map<(d0) -> (1, d0 * 32)>
#map4 = affine_map<(d0) -> (d0 - 1)>
#set = affine_set<(d0, d1) : (d0 - 1 == 0, d1 - 1 == 0)>
#set1 = affine_set<(d0, d1, d2) : (d0 == 0, d1 == 0, d2 - 1 == 0)>
#set2 = affine_set<(d0) : (d0 - 2 >= 0)>
#set3 = affine_set<(d0, d1) : (d0 - d1 == 0)>
#set4 = affine_set<(d0, d1) : (d0 - 1 == 0, d1 == 0)>
module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    affine.parallel (%arg4) = (0) to (2) {
      affine.parallel (%arg5) = (%arg4 * 32) to (min(40, %arg4 * 32 + 32)) {
        %0 = affine.load %arg3[%arg5] : memref<?xf64>
        affine.store %0, %arg2[%arg5] : memref<?xf64>
      }
    }
    affine.for %arg4 = 0 to 2 {
      affine.for %arg5 = 0 to #map(%arg4) {
        affine.if #set(%arg4, %arg5) {
          %0 = affine.load %arg2[32] : memref<?xf64>
          %1 = affine.load %arg1[32, 31] : memref<?x40xf64>
          %2 = affine.load %arg2[31] : memref<?xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.subf %0, %3 : f64
          affine.store %4, %arg2[32] : memref<?xf64>
        }
        affine.for %arg6 = max #map1(%arg4, %arg5) to min #map2(%arg4, %arg5) {
          affine.for %arg7 = max #map3(%arg5) to #map4(%arg6) {
            %0 = affine.load %arg2[%arg6] : memref<?xf64>
            %1 = affine.load %arg1[%arg6, %arg7 - 1] : memref<?x40xf64>
            %2 = affine.load %arg2[%arg7 - 1] : memref<?xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.subf %0, %3 : f64
            affine.store %4, %arg2[%arg6] : memref<?xf64>
          }
          affine.if #set1(%arg4, %arg5, %arg6) {
            %0 = affine.load %arg2[0] : memref<?xf64>
            %1 = affine.load %arg1[0, 0] : memref<?x40xf64>
            %2 = arith.divf %0, %1 : f64
            affine.store %2, %arg2[0] : memref<?xf64>
          }
          affine.if #set2(%arg6) {
            %0 = affine.load %arg2[%arg6 - 1] : memref<?xf64>
            %1 = affine.load %arg1[%arg6 - 1, %arg6 - 1] : memref<?x40xf64>
            %2 = arith.divf %0, %1 : f64
            affine.store %2, %arg2[%arg6 - 1] : memref<?xf64>
            %3 = affine.load %arg2[%arg6] : memref<?xf64>
            %4 = affine.load %arg1[%arg6, %arg6 - 2] : memref<?x40xf64>
            %5 = affine.load %arg2[%arg6 - 2] : memref<?xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = arith.subf %3, %6 : f64
            affine.store %7, %arg2[%arg6] : memref<?xf64>
          }
          affine.if #set3(%arg4, %arg5) {
            %0 = affine.load %arg2[%arg6] : memref<?xf64>
            %1 = affine.load %arg1[%arg6, %arg6 - 1] : memref<?x40xf64>
            %2 = affine.load %arg2[%arg6 - 1] : memref<?xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.subf %0, %3 : f64
            affine.store %4, %arg2[%arg6] : memref<?xf64>
          }
        }
        affine.if #set4(%arg4, %arg5) {
          affine.parallel (%arg6) = (33) to (40) {
            affine.for %arg7 = 1 to 32 {
              %0 = affine.load %arg2[%arg6] : memref<?xf64>
              %1 = affine.load %arg1[%arg6, %arg7 - 1] : memref<?x40xf64>
              %2 = affine.load %arg2[%arg7 - 1] : memref<?xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = arith.subf %0, %3 : f64
              affine.store %4, %arg2[%arg6] : memref<?xf64>
            }
          }
        }
        affine.if #set(%arg4, %arg5) {
          %0 = affine.load %arg2[39] : memref<?xf64>
          %1 = affine.load %arg1[39, 39] : memref<?x40xf64>
          %2 = arith.divf %0, %1 : f64
          affine.store %2, %arg2[39] : memref<?xf64>
        }
      }
    }
    return
  }
}

