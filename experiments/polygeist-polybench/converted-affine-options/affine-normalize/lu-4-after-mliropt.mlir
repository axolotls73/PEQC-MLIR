#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (-d0 + 3)>
#map2 = affine_map<(d0, d1) -> (d0 + d1)>
#map3 = affine_map<(d0) -> (d0 + 33)>
#map4 = affine_map<(d0) -> (d0 - 32)>
#map5 = affine_map<(d0) -> (d0 + 32)>
#map6 = affine_map<(d0) -> (-d0 + 64)>
#map7 = affine_map<(d0) -> (d0 + 2)>
#map8 = affine_map<(d0, d1) -> (1, d0 * 32, d1 * 32 - 39)>
#map9 = affine_map<(d0, d1) -> (d0 * 16 + 1, d1 * 32 + 32)>
#map10 = affine_map<(d0) -> (d0)>
#map11 = affine_map<(d0, d1) -> (d0 - d1 * 32 + 40)>
#map12 = affine_map<(d0, d1) -> (d0 * 32 + d1)>
#map13 = affine_map<(d0) -> (d0 + 66)>
#map14 = affine_map<(d0, d1, d2) -> (2, d0 * 32, d1 * 16 + 1, d1 * 32 - d2 * 32 - 30)>
#map15 = affine_map<(d0, d1) -> (40, d0 * 32 + 32, d1 * 16 + 16)>
#map16 = affine_map<(d0) -> (d0 * -2 + 32)>
#map17 = affine_map<(d0, d1) -> (d0 * 2 + d1)>
#map18 = affine_map<(d0, d1) -> (d0 * 32 - d1 + 32)>
#map19 = affine_map<(d0, d1) -> (d0 * 32 - d1 * 2 + 64, -d1 + 40)>
#map20 = affine_map<(d0, d1, d2) -> (1, d0 * 32, d1 * 32 - d2 + 1)>
#map21 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1)>
#map22 = affine_map<(d0, d1) -> (d0 * 32, d1)>
#map23 = affine_map<(d0, d1) -> (d0 * 32 - d1 * 2 + 32, -d1 + 40)>
#map24 = affine_map<(d0) -> (d0 * -16 + 24, d0 * 16 + 16)>
#map25 = affine_map<(d0, d1) -> (d0 * 16 + d1 + 16)>
#map26 = affine_map<(d0, d1) -> (d0 * 32 - d1 + 31)>
#map27 = affine_map<(d0, d1) -> (d0 - d1 * 32, d0 * 2 - d1 * 32 - 32)>
#map28 = affine_map<(d0, d1, d2) -> (d0 * 32 - d1 + d2 + 32)>
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
        affine.for %arg4 = 0 to #map1(%arg2) {
          %0 = affine.apply #map2(%arg2, %arg4)
          affine.if #set(%arg2, %arg3, %0) {
            affine.for %arg5 = 0 to 7 {
              %1 = affine.apply #map3(%arg5)
              affine.for %arg6 = 0 to #map4(%1) {
                %2 = affine.apply #map5(%arg6)
                affine.for %arg7 = 0 to #map6(%1) {
                  %3 = affine.apply #map2(%1, %arg7)
                  %4 = affine.load %arg1[%1, %2] : memref<?x40xf64>
                  %5 = affine.load %arg1[%1, -%1 + %3] : memref<?x40xf64>
                  %6 = affine.load %arg1[-%1 + %3, %2] : memref<?x40xf64>
                  %7 = arith.mulf %5, %6 : f64
                  %8 = arith.subf %4, %7 : f64
                  affine.store %8, %arg1[%1, %2] : memref<?x40xf64>
                }
              }
            }
          }
          affine.if #set1(%arg2, %arg3, %0) {
            %1 = affine.load %arg1[1, 0] : memref<?x40xf64>
            %2 = affine.load %arg1[0, 0] : memref<?x40xf64>
            %3 = arith.divf %1, %2 : f64
            affine.store %3, %arg1[1, 0] : memref<?x40xf64>
            affine.for %arg5 = 0 to 30 {
              %4 = affine.apply #map7(%arg5)
              %5 = affine.load %arg1[1, %4 - 1] : memref<?x40xf64>
              %6 = affine.load %arg1[1, 0] : memref<?x40xf64>
              %7 = affine.load %arg1[0, %4 - 1] : memref<?x40xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = arith.subf %5, %8 : f64
              affine.store %9, %arg1[1, %4 - 1] : memref<?x40xf64>
            }
          }
          affine.if #set2(%arg3) {
            affine.for %arg5 = max #map8(%arg2, %0) to min #map9(%0, %arg2) {
              affine.for %arg6 = 0 to #map10(%arg5) {
                affine.for %arg7 = 0 to #map11(%arg5, %0) {
                  %1 = affine.apply #map12(%0, %arg7)
                  %2 = affine.load %arg1[%arg5, -%arg5 + %1] : memref<?x40xf64>
                  %3 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %4 = affine.load %arg1[%arg6, -%arg5 + %1] : memref<?x40xf64>
                  %5 = arith.mulf %3, %4 : f64
                  %6 = arith.subf %2, %5 : f64
                  affine.store %6, %arg1[%arg5, -%arg5 + %1] : memref<?x40xf64>
                }
              }
            }
          }
          affine.if #set3(%arg2, %arg3, %0) {
            affine.for %arg5 = 0 to 31 {
              affine.for %arg6 = 0 to 7 {
                %4 = affine.apply #map13(%arg6)
                %5 = affine.load %arg1[33, %4 - 33] : memref<?x40xf64>
                %6 = affine.load %arg1[33, %arg5] : memref<?x40xf64>
                %7 = affine.load %arg1[%arg5, %4 - 33] : memref<?x40xf64>
                %8 = arith.mulf %6, %7 : f64
                %9 = arith.subf %5, %8 : f64
                affine.store %9, %arg1[33, %4 - 33] : memref<?x40xf64>
              }
            }
            %1 = affine.load %arg1[33, 31] : memref<?x40xf64>
            %2 = affine.load %arg1[31, 31] : memref<?x40xf64>
            %3 = arith.divf %1, %2 : f64
            affine.store %3, %arg1[33, 31] : memref<?x40xf64>
            affine.for %arg5 = 0 to 7 {
              %4 = affine.apply #map13(%arg5)
              %5 = affine.load %arg1[33, %4 - 33] : memref<?x40xf64>
              %6 = affine.load %arg1[33, 31] : memref<?x40xf64>
              %7 = affine.load %arg1[31, %4 - 33] : memref<?x40xf64>
              %8 = arith.mulf %6, %7 : f64
              %9 = arith.subf %5, %8 : f64
              affine.store %9, %arg1[33, %4 - 33] : memref<?x40xf64>
            }
          }
          affine.for %arg5 = max #map14(%arg2, %0, %arg3) to min #map15(%arg2, %0) {
            affine.if #set1(%arg2, %arg3, %0) {
              %1 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
              %2 = affine.load %arg1[0, 0] : memref<?x40xf64>
              %3 = arith.divf %1, %2 : f64
              affine.store %3, %arg1[%arg5, 0] : memref<?x40xf64>
              affine.for %arg6 = 0 to #map16(%arg5) {
                %4 = affine.apply #map17(%arg5, %arg6)
                %5 = affine.load %arg1[%arg5, -%arg5 + %4] : memref<?x40xf64>
                %6 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
                %7 = affine.load %arg1[0, -%arg5 + %4] : memref<?x40xf64>
                %8 = arith.mulf %6, %7 : f64
                %9 = arith.subf %5, %8 : f64
                affine.store %9, %arg1[%arg5, -%arg5 + %4] : memref<?x40xf64>
              }
            }
            affine.if #set4(%arg2, %0, %arg3) {
              affine.for %arg6 = 0 to #map18(%arg2, %arg5) {
                affine.for %arg7 = 0 to min #map19(%arg2, %arg5) {
                  %1 = affine.apply #map17(%arg5, %arg7)
                  %2 = affine.load %arg1[%arg5, -%arg5 + %1] : memref<?x40xf64>
                  %3 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %4 = affine.load %arg1[%arg6, -%arg5 + %1] : memref<?x40xf64>
                  %5 = arith.mulf %3, %4 : f64
                  %6 = arith.subf %2, %5 : f64
                  affine.store %6, %arg1[%arg5, -%arg5 + %1] : memref<?x40xf64>
                }
              }
            }
            affine.if #set4(%arg2, %0, %arg3) {
              %1 = affine.load %arg1[%arg5, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
              %2 = affine.load %arg1[%arg5 * 32 - %arg2 + 32, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
              %3 = arith.divf %1, %2 : f64
              affine.store %3, %arg1[%arg5, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
              affine.for %arg6 = 0 to min #map19(%arg2, %arg5) {
                %4 = affine.apply #map17(%arg5, %arg6)
                %5 = affine.load %arg1[%arg5, -%arg5 + %4] : memref<?x40xf64>
                %6 = affine.load %arg1[%arg5, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
                %7 = affine.load %arg1[%arg5 * 32 - %arg2 + 32, -%arg5 + %4] : memref<?x40xf64>
                %8 = arith.mulf %6, %7 : f64
                %9 = arith.subf %5, %8 : f64
                affine.store %9, %arg1[%arg5, -%arg5 + %4] : memref<?x40xf64>
              }
            }
            affine.for %arg6 = max #map20(%arg3, %0, %arg5) to min #map21(%arg3, %arg5) {
              affine.for %arg7 = max #map22(%0, %arg5) to #map2(%arg5, %arg6) {
                %4 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %5 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                %6 = affine.load %arg1[-%arg5 + %arg7, %arg6] : memref<?x40xf64>
                %7 = arith.mulf %5, %6 : f64
                %8 = arith.subf %4, %7 : f64
                affine.store %8, %arg1[%arg5, %arg6] : memref<?x40xf64>
              }
              %1 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
              %2 = affine.load %arg1[%arg6, %arg6] : memref<?x40xf64>
              %3 = arith.divf %1, %2 : f64
              affine.store %3, %arg1[%arg5, %arg6] : memref<?x40xf64>
              affine.for %arg7 = 0 to min #map23(%0, %arg5) {
                %4 = affine.apply #map17(%arg5, %arg7)
                %5 = affine.load %arg1[%arg5, -%arg5 + %4] : memref<?x40xf64>
                %6 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %7 = affine.load %arg1[%arg6, -%arg5 + %4] : memref<?x40xf64>
                %8 = arith.mulf %6, %7 : f64
                %9 = arith.subf %5, %8 : f64
                affine.store %9, %arg1[%arg5, -%arg5 + %4] : memref<?x40xf64>
              }
            }
          }
          affine.if #set5(%arg2, %0, %arg3) {
            affine.for %arg5 = 0 to min #map24(%arg2) {
              %1 = affine.apply #map25(%arg2, %arg5)
              %2 = affine.load %arg1[%1, 0] : memref<?x40xf64>
              %3 = affine.load %arg1[0, 0] : memref<?x40xf64>
              %4 = arith.divf %2, %3 : f64
              affine.store %4, %arg1[%1, 0] : memref<?x40xf64>
              affine.for %arg6 = 0 to #map26(%arg2, %1) {
                %5 = affine.apply #map(%arg6)
                affine.for %arg7 = 0 to #map10(%5) {
                  %9 = affine.apply #map2(%1, %arg7)
                  %10 = affine.load %arg1[%1, %5] : memref<?x40xf64>
                  %11 = affine.load %arg1[%1, -%1 + %9] : memref<?x40xf64>
                  %12 = affine.load %arg1[-%1 + %9, %5] : memref<?x40xf64>
                  %13 = arith.mulf %11, %12 : f64
                  %14 = arith.subf %10, %13 : f64
                  affine.store %14, %arg1[%1, %5] : memref<?x40xf64>
                }
                %6 = affine.load %arg1[%1, %5] : memref<?x40xf64>
                %7 = affine.load %arg1[%5, %5] : memref<?x40xf64>
                %8 = arith.divf %6, %7 : f64
                affine.store %8, %arg1[%1, %5] : memref<?x40xf64>
              }
              affine.for %arg6 = 0 to min #map27(%1, %arg2) {
                %5 = affine.apply #map28(%arg2, %1, %arg6)
                affine.for %arg7 = 0 to #map18(%arg2, %1) {
                  %6 = affine.apply #map2(%1, %arg7)
                  %7 = affine.load %arg1[%1, %5] : memref<?x40xf64>
                  %8 = affine.load %arg1[%1, -%1 + %6] : memref<?x40xf64>
                  %9 = affine.load %arg1[-%1 + %6, %5] : memref<?x40xf64>
                  %10 = arith.mulf %8, %9 : f64
                  %11 = arith.subf %7, %10 : f64
                  affine.store %11, %arg1[%1, %5] : memref<?x40xf64>
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

