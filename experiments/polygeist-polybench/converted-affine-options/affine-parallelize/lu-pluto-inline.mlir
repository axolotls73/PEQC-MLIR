#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0)>
#map2 = affine_map<(d0, d1) -> (1, d0 * 32, d1 * 32 - 39)>
#map3 = affine_map<(d0, d1) -> (d0 * 16 + 1, d1 * 32 + 32)>
#map4 = affine_map<(d0) -> (d0 * 32)>
#map5 = affine_map<(d0) -> (d0 + 40)>
#map6 = affine_map<(d0, d1, d2) -> (2, d0 * 32, d1 * 16 + 1, d1 * 32 - d2 * 32 - 30)>
#map7 = affine_map<(d0, d1) -> (40, d0 * 32 + 32, d1 * 16 + 16)>
#map8 = affine_map<(d0) -> (d0 * 2)>
#map9 = affine_map<(d0, d1) -> (d0 * 32 - d1 + 32)>
#map10 = affine_map<(d0, d1) -> (d0 * 32 + 64, d1 + 40)>
#map11 = affine_map<(d0, d1, d2) -> (1, d0 * 32, d1 * 32 - d2 + 1)>
#map12 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1)>
#map13 = affine_map<(d0, d1) -> (d0 * 32, d1)>
#map14 = affine_map<(d0, d1) -> (d0 + d1)>
#map15 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 + 40)>
#map16 = affine_map<(d0) -> (d0 * 16 + 16)>
#map17 = affine_map<(d0) -> (40, d0 * 32 + 32)>
#map18 = affine_map<(d0) -> (32, d0)>
#map19 = affine_map<(d0) -> (d0 * 32 + 32)>
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
            affine.for %arg5 = 33 to 40 {
              affine.for %arg6 = 32 to #map1(%arg5) {
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
            affine.for %arg5 = 2 to 32 {
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
                affine.for %arg7 = #map4(%arg4) to #map5(%arg5) {
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
              affine.for %arg6 = 66 to 73 {
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
            affine.for %arg5 = 66 to 73 {
              %3 = affine.load %arg1[33, %arg5 - 33] : memref<?x40xf64>
              %4 = affine.load %arg1[33, 31] : memref<?x40xf64>
              %5 = affine.load %arg1[31, %arg5 - 33] : memref<?x40xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = arith.subf %3, %6 : f64
              affine.store %7, %arg1[33, %arg5 - 33] : memref<?x40xf64>
            }
          }
          affine.for %arg5 = max #map6(%arg2, %arg4, %arg3) to min #map7(%arg2, %arg4) {
            affine.if #set1(%arg2, %arg3, %arg4) {
              %0 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
              %1 = affine.load %arg1[0, 0] : memref<?x40xf64>
              %2 = arith.divf %0, %1 : f64
              affine.store %2, %arg1[%arg5, 0] : memref<?x40xf64>
              affine.for %arg6 = #map8(%arg5) to 32 {
                %3 = affine.load %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
                %5 = affine.load %arg1[0, -%arg5 + %arg6] : memref<?x40xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
              }
            }
            affine.if #set4(%arg2, %arg4, %arg3) {
              affine.for %arg6 = 0 to #map9(%arg2, %arg5) {
                affine.for %arg7 = #map8(%arg5) to min #map10(%arg2, %arg5) {
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
              affine.for %arg6 = #map8(%arg5) to min #map10(%arg2, %arg5) {
                %3 = affine.load %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg5, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
                %5 = affine.load %arg1[%arg5 * 32 - %arg2 + 32, -%arg5 + %arg6] : memref<?x40xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
              }
            }
            affine.for %arg6 = max #map11(%arg3, %arg4, %arg5) to min #map12(%arg3, %arg5) {
              affine.for %arg7 = max #map13(%arg4, %arg5) to #map14(%arg5, %arg6) {
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
              affine.for %arg7 = #map8(%arg5) to min #map15(%arg4, %arg5) {
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
            affine.for %arg5 = #map16(%arg2) to min #map17(%arg2) {
              %0 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
              %1 = affine.load %arg1[0, 0] : memref<?x40xf64>
              %2 = arith.divf %0, %1 : f64
              affine.store %2, %arg1[%arg5, 0] : memref<?x40xf64>
              affine.for %arg6 = 1 to #map9(%arg2, %arg5) {
                affine.for %arg7 = #map1(%arg5) to #map14(%arg5, %arg6) {
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
              affine.for %arg6 = #map9(%arg2, %arg5) to min #map18(%arg5) {
                affine.for %arg7 = #map1(%arg5) to #map19(%arg2) {
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

