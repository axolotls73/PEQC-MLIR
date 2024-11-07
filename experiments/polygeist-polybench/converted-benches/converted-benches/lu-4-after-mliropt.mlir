#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0)>
#map2 = affine_map<(d0, d1) -> (1, d0 * 32, d1 * 32 - 39)>
#map3 = affine_map<(d0, d1) -> (d0 * 16 + 1, d1 * 32 + 32)>
#map4 = affine_map<(d0, d1, d2) -> (2, d0 * 32, d1 * 16 + 1, d1 * 32 - d2 * 32 - 30)>
#map5 = affine_map<(d0, d1) -> (40, d0 * 32 + 32, d1 * 16 + 16)>
#map6 = affine_map<(d0, d1) -> (d0 * 32 - d1 + 32)>
#map7 = affine_map<(d0, d1, d2) -> (1, d0 * 32, d1 * 32 - d2 + 1)>
#map8 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1)>
#map9 = affine_map<(d0, d1) -> (d0 * 32, d1)>
#map10 = affine_map<(d0, d1) -> (d0 + d1)>
#map11 = affine_map<(d0) -> (d0 * 32 + 32)>
#set = affine_set<(d0, d1, d2) : (d0 - 1 == 0, d1 - 1 == 0, d2 - 1 == 0)>
#set1 = affine_set<(d0, d1, d2) : (d0 == 0, d1 == 0, d2 == 0)>
#set2 = affine_set<(d0) : (d0 == 0)>
#set3 = affine_set<(d0, d1, d2) : (d0 - 1 == 0, d1 == 0, d2 - 2 == 0)>
#set4 = affine_set<(d0, d1, d2) : (d0 - (d1 - 1) == 0, d2 == 0)>
#set5 = affine_set<(d0, d1, d2) : (d0 - d1 == 0, d2 == 0)>
module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = 0 to #map(%arg2) {
        affine.for %arg4 = #map1(%arg2) to 3 {
          affine.if #set(%arg2, %arg3, %arg4) {
            affine.parallel (%arg5) = (33) to (40) {
              affine.parallel (%arg6) = (32) to (%arg5) {
                affine.for %arg7 = #map1(%arg5) to 64 {
                  %0 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %1 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %2 = affine.load %arg1[-%arg5 + %arg7, %arg6] : memref<?x40xf64>
                  %3 = arith.mulf %1, %2 : f64
                  %4 = arith.subf %0, %3 : f64
                  affine.store %4, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
              }
            }
          }
          affine.if #set1(%arg2, %arg3, %arg4) {
            %0 = affine.load %arg1[1, 0] : memref<?x40xf64>
            %1 = affine.load %arg1[0, 0] : memref<?x40xf64>
            %2 = arith.divf %0, %1 : f64
            affine.store %2, %arg1[1, 0] : memref<?x40xf64>
            affine.parallel (%arg5) = (2) to (32) {
              %3 = affine.load %arg1[1, %arg5 - 1] : memref<?x40xf64>
              %4 = affine.load %arg1[1, 0] : memref<?x40xf64>
              %5 = affine.load %arg1[0, %arg5 - 1] : memref<?x40xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = arith.subf %3, %6 : f64
              affine.store %7, %arg1[1, %arg5 - 1] : memref<?x40xf64>
            }
          }
          affine.if #set2(%arg3) {
            affine.for %arg5 = max #map2(%arg2, %arg4) to min #map3(%arg4, %arg2) {
              affine.for %arg6 = 0 to #map1(%arg5) {
                affine.parallel (%arg7) = (%arg4 * 32) to (%arg5 + 40) {
                  %0 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %1 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %2 = affine.load %arg1[%arg6, -%arg5 + %arg7] : memref<?x40xf64>
                  %3 = arith.mulf %1, %2 : f64
                  %4 = arith.subf %0, %3 : f64
                  affine.store %4, %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                }
              }
            }
          }
          affine.if #set3(%arg2, %arg3, %arg4) {
            affine.for %arg5 = 0 to 31 {
              affine.parallel (%arg6) = (66) to (73) {
                %3 = affine.load %arg1[33, %arg6 - 33] : memref<?x40xf64>
                %4 = affine.load %arg1[33, %arg5] : memref<?x40xf64>
                %5 = affine.load %arg1[%arg5, %arg6 - 33] : memref<?x40xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg1[33, %arg6 - 33] : memref<?x40xf64>
              }
            }
            %0 = affine.load %arg1[33, 31] : memref<?x40xf64>
            %1 = affine.load %arg1[31, 31] : memref<?x40xf64>
            %2 = arith.divf %0, %1 : f64
            affine.store %2, %arg1[33, 31] : memref<?x40xf64>
            affine.parallel (%arg5) = (66) to (73) {
              %3 = affine.load %arg1[33, %arg5 - 33] : memref<?x40xf64>
              %4 = affine.load %arg1[33, 31] : memref<?x40xf64>
              %5 = affine.load %arg1[31, %arg5 - 33] : memref<?x40xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = arith.subf %3, %6 : f64
              affine.store %7, %arg1[33, %arg5 - 33] : memref<?x40xf64>
            }
          }
          affine.for %arg5 = max #map4(%arg2, %arg4, %arg3) to min #map5(%arg2, %arg4) {
            affine.if #set1(%arg2, %arg3, %arg4) {
              %0 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
              %1 = affine.load %arg1[0, 0] : memref<?x40xf64>
              %2 = arith.divf %0, %1 : f64
              affine.store %2, %arg1[%arg5, 0] : memref<?x40xf64>
              affine.parallel (%arg6) = (%arg5 * 2) to (32) {
                %3 = affine.load %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
                %5 = affine.load %arg1[0, -%arg5 + %arg6] : memref<?x40xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
              }
            }
            affine.if #set4(%arg2, %arg4, %arg3) {
              affine.for %arg6 = 0 to #map6(%arg2, %arg5) {
                affine.parallel (%arg7) = (%arg5 * 2) to (min(%arg2 * 32 + 64, %arg5 + 40)) {
                  %0 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %1 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %2 = affine.load %arg1[%arg6, -%arg5 + %arg7] : memref<?x40xf64>
                  %3 = arith.mulf %1, %2 : f64
                  %4 = arith.subf %0, %3 : f64
                  affine.store %4, %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                }
              }
            }
            affine.if #set4(%arg2, %arg4, %arg3) {
              %0 = affine.load %arg1[%arg5, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
              %1 = affine.load %arg1[%arg5 * 32 - %arg2 + 32, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
              %2 = arith.divf %0, %1 : f64
              affine.store %2, %arg1[%arg5, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
              affine.parallel (%arg6) = (%arg5 * 2) to (min(%arg2 * 32 + 64, %arg5 + 40)) {
                %3 = affine.load %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg5, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
                %5 = affine.load %arg1[%arg5 * 32 - %arg2 + 32, -%arg5 + %arg6] : memref<?x40xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
              }
            }
            affine.for %arg6 = max #map7(%arg3, %arg4, %arg5) to min #map8(%arg3, %arg5) {
              affine.for %arg7 = max #map9(%arg4, %arg5) to #map10(%arg5, %arg6) {
                %3 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                %5 = affine.load %arg1[-%arg5 + %arg7, %arg6] : memref<?x40xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg1[%arg5, %arg6] : memref<?x40xf64>
              }
              %0 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
              %1 = affine.load %arg1[%arg6, %arg6] : memref<?x40xf64>
              %2 = arith.divf %0, %1 : f64
              affine.store %2, %arg1[%arg5, %arg6] : memref<?x40xf64>
              affine.parallel (%arg7) = (%arg5 * 2) to (min(%arg4 * 32 + 32, %arg5 + 40)) {
                %3 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %5 = affine.load %arg1[%arg6, -%arg5 + %arg7] : memref<?x40xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
              }
            }
          }
          affine.if #set5(%arg2, %arg4, %arg3) {
            affine.parallel (%arg5) = (%arg2 * 16 + 16) to (min(40, %arg2 * 32 + 32)) {
              %0 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
              %1 = affine.load %arg1[0, 0] : memref<?x40xf64>
              %2 = arith.divf %0, %1 : f64
              affine.store %2, %arg1[%arg5, 0] : memref<?x40xf64>
              affine.for %arg6 = 1 to #map6(%arg2, %arg5) {
                affine.for %arg7 = #map1(%arg5) to #map10(%arg5, %arg6) {
                  %6 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %7 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %8 = affine.load %arg1[-%arg5 + %arg7, %arg6] : memref<?x40xf64>
                  %9 = arith.mulf %7, %8 : f64
                  %10 = arith.subf %6, %9 : f64
                  affine.store %10, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
                %3 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg6, %arg6] : memref<?x40xf64>
                %5 = arith.divf %3, %4 : f64
                affine.store %5, %arg1[%arg5, %arg6] : memref<?x40xf64>
              }
              affine.parallel (%arg6) = (%arg2 * 32 - %arg5 + 32) to (min(32, %arg5)) {
                affine.for %arg7 = #map1(%arg5) to #map11(%arg2) {
                  %3 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %4 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %5 = affine.load %arg1[-%arg5 + %arg7, %arg6] : memref<?x40xf64>
                  %6 = arith.mulf %4, %5 : f64
                  %7 = arith.subf %3, %6 : f64
                  affine.store %7, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
              }
            }
          }
        }
      }
    }
    return
  }
}

