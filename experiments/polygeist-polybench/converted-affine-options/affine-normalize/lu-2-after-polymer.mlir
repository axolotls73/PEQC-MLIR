#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0)>
#map2 = affine_map<(d0, d1) -> (-d0 + d1)>
#map3 = affine_map<(d0) -> (d0 - 1)>
#map4 = affine_map<(d0, d1) -> (1, d0 * 32, d1 * 32 - 39)>
#map5 = affine_map<(d0, d1) -> (d0 * 16 + 1, d1 * 32 + 32)>
#map6 = affine_map<(d0) -> (d0 * 32)>
#map7 = affine_map<(d0) -> (d0 + 40)>
#map8 = affine_map<(d0) -> (d0 - 33)>
#map9 = affine_map<(d0, d1, d2) -> (2, d0 * 32, d1 * 16 + 1, d1 * 32 - d2 * 32 - 30)>
#map10 = affine_map<(d0, d1) -> (40, d0 * 32 + 32, d1 * 16 + 16)>
#map11 = affine_map<(d0) -> (d0 * 2)>
#map12 = affine_map<(d0, d1) -> (d0 * 32 - d1 + 32)>
#map13 = affine_map<(d0, d1) -> (d0 * 32 + 64, d1 + 40)>
#map14 = affine_map<(d0, d1, d2) -> (1, d0 * 32, d1 * 32 - d2 + 1)>
#map15 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1)>
#map16 = affine_map<(d0, d1) -> (d0 * 32, d1)>
#map17 = affine_map<(d0, d1) -> (d0 + d1)>
#map18 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 + 40)>
#map19 = affine_map<(d0) -> (d0 * 16 + 16)>
#map20 = affine_map<(d0) -> (40, d0 * 32 + 32)>
#map21 = affine_map<(d0) -> (32, d0)>
#map22 = affine_map<(d0) -> (d0 * 32 + 32)>
#set = affine_set<(d0, d1, d2) : (d0 - 1 == 0, d1 - 1 == 0, d2 - 1 == 0)>
#set1 = affine_set<(d0, d1, d2) : (d0 == 0, d1 == 0, d2 == 0)>
#set2 = affine_set<(d0) : (d0 == 0)>
#set3 = affine_set<(d0, d1, d2) : (d0 - 1 == 0, d1 == 0, d2 - 2 == 0)>
#set4 = affine_set<(d0, d1, d2) : (d0 - (d1 - 1) == 0, d2 == 0)>
#set5 = affine_set<(d0, d1, d2) : (d0 - d1 == 0, d2 == 0)>
module {
  func.func private @S0(%arg0: memref<?x40xf64>, %arg1: index, %arg2: index, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x40xf64>
    %1 = affine.load %arg0[%arg1, %arg3] : memref<?x40xf64>
    %2 = affine.load %arg0[%arg3, %arg2] : memref<?x40xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.subf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<?x40xf64>
    return
  }
  func.func private @S1(%arg0: memref<?x40xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x40xf64>
    %1 = affine.load %arg0[%arg2, %arg2] : memref<?x40xf64>
    %2 = arith.divf %0, %1 : f64
    affine.store %2, %arg0[%arg1, %arg2] : memref<?x40xf64>
    return
  }
  func.func private @S2(%arg0: memref<?x40xf64>, %arg1: index, %arg2: index, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x40xf64>
    %1 = affine.load %arg0[%arg1, %arg3] : memref<?x40xf64>
    %2 = affine.load %arg0[%arg3, %arg2] : memref<?x40xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.subf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<?x40xf64>
    return
  }
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c31 = arith.constant 31 : index
    %c33 = arith.constant 33 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = 0 to #map(%arg2) {
        affine.for %arg4 = #map1(%arg2) to 3 {
          affine.if #set(%arg2, %arg3, %arg4) {
            affine.for %arg5 = 33 to 40 {
              affine.for %arg6 = 32 to #map1(%arg5) {
                affine.for %arg7 = #map1(%arg5) to 64 {
                  %0 = affine.apply #map2(%arg5, %arg7)
                  func.call @S0(%arg1, %arg5, %arg6, %0) : (memref<?x40xf64>, index, index, index) -> ()
                }
              }
            }
          }
          affine.if #set1(%arg2, %arg3, %arg4) {
            func.call @S1(%arg1, %c1, %c0) : (memref<?x40xf64>, index, index) -> ()
            affine.for %arg5 = 2 to 32 {
              %0 = affine.apply #map3(%arg5)
              func.call @S2(%arg1, %c1, %0, %c0) : (memref<?x40xf64>, index, index, index) -> ()
            }
          }
          affine.if #set2(%arg3) {
            affine.for %arg5 = max #map4(%arg2, %arg4) to min #map5(%arg4, %arg2) {
              affine.for %arg6 = 0 to #map1(%arg5) {
                affine.for %arg7 = #map6(%arg4) to #map7(%arg5) {
                  %0 = affine.apply #map2(%arg5, %arg7)
                  func.call @S2(%arg1, %arg5, %0, %arg6) : (memref<?x40xf64>, index, index, index) -> ()
                }
              }
            }
          }
          affine.if #set3(%arg2, %arg3, %arg4) {
            affine.for %arg5 = 0 to 31 {
              affine.for %arg6 = 66 to 73 {
                %0 = affine.apply #map8(%arg6)
                func.call @S2(%arg1, %c33, %0, %arg5) : (memref<?x40xf64>, index, index, index) -> ()
              }
            }
            func.call @S1(%arg1, %c33, %c31) : (memref<?x40xf64>, index, index) -> ()
            affine.for %arg5 = 66 to 73 {
              %0 = affine.apply #map8(%arg5)
              func.call @S2(%arg1, %c33, %0, %c31) : (memref<?x40xf64>, index, index, index) -> ()
            }
          }
          affine.for %arg5 = max #map9(%arg2, %arg4, %arg3) to min #map10(%arg2, %arg4) {
            affine.if #set1(%arg2, %arg3, %arg4) {
              func.call @S1(%arg1, %arg5, %c0) : (memref<?x40xf64>, index, index) -> ()
              affine.for %arg6 = #map11(%arg5) to 32 {
                %0 = affine.apply #map2(%arg5, %arg6)
                func.call @S2(%arg1, %arg5, %0, %c0) : (memref<?x40xf64>, index, index, index) -> ()
              }
            }
            affine.if #set4(%arg2, %arg4, %arg3) {
              affine.for %arg6 = 0 to #map12(%arg2, %arg5) {
                affine.for %arg7 = #map11(%arg5) to min #map13(%arg2, %arg5) {
                  %0 = affine.apply #map2(%arg5, %arg7)
                  func.call @S2(%arg1, %arg5, %0, %arg6) : (memref<?x40xf64>, index, index, index) -> ()
                }
              }
            }
            affine.if #set4(%arg2, %arg4, %arg3) {
              %0 = affine.apply #map12(%arg5, %arg2)
              func.call @S1(%arg1, %arg5, %0) : (memref<?x40xf64>, index, index) -> ()
              affine.for %arg6 = #map11(%arg5) to min #map13(%arg2, %arg5) {
                %1 = affine.apply #map2(%arg5, %arg6)
                %2 = affine.apply #map12(%arg5, %arg2)
                func.call @S2(%arg1, %arg5, %1, %2) : (memref<?x40xf64>, index, index, index) -> ()
              }
            }
            affine.for %arg6 = max #map14(%arg3, %arg4, %arg5) to min #map15(%arg3, %arg5) {
              affine.for %arg7 = max #map16(%arg4, %arg5) to #map17(%arg5, %arg6) {
                %0 = affine.apply #map2(%arg5, %arg7)
                func.call @S0(%arg1, %arg5, %arg6, %0) : (memref<?x40xf64>, index, index, index) -> ()
              }
              func.call @S1(%arg1, %arg5, %arg6) : (memref<?x40xf64>, index, index) -> ()
              affine.for %arg7 = #map11(%arg5) to min #map18(%arg4, %arg5) {
                %0 = affine.apply #map2(%arg5, %arg7)
                func.call @S2(%arg1, %arg5, %0, %arg6) : (memref<?x40xf64>, index, index, index) -> ()
              }
            }
          }
          affine.if #set5(%arg2, %arg4, %arg3) {
            affine.for %arg5 = #map19(%arg2) to min #map20(%arg2) {
              func.call @S1(%arg1, %arg5, %c0) : (memref<?x40xf64>, index, index) -> ()
              affine.for %arg6 = 1 to #map12(%arg2, %arg5) {
                affine.for %arg7 = #map1(%arg5) to #map17(%arg5, %arg6) {
                  %0 = affine.apply #map2(%arg5, %arg7)
                  func.call @S0(%arg1, %arg5, %arg6, %0) : (memref<?x40xf64>, index, index, index) -> ()
                }
                func.call @S1(%arg1, %arg5, %arg6) : (memref<?x40xf64>, index, index) -> ()
              }
              affine.for %arg6 = #map12(%arg2, %arg5) to min #map21(%arg5) {
                affine.for %arg7 = #map1(%arg5) to #map22(%arg2) {
                  %0 = affine.apply #map2(%arg5, %arg7)
                  func.call @S0(%arg1, %arg5, %arg6, %0) : (memref<?x40xf64>, index, index, index) -> ()
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

