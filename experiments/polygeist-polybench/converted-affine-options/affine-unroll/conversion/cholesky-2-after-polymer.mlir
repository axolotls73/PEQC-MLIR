#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0)>
#map2 = affine_map<(d0) -> (d0 - 1)>
#map3 = affine_map<(d0, d1) -> (2, d0 * 32, d1 * 32 + 1)>
#map4 = affine_map<(d0, d1) -> (40, d0 * 32 + 32, d1 * 32 + 33)>
#map5 = affine_map<(d0) -> (1, d0 * 32)>
#map6 = affine_map<(d0) -> (d0 - 2)>
#set = affine_set<(d0, d1, d2) : (d0 - 1 == 0, d1 - 1 == 0, d2 == 0)>
#set1 = affine_set<(d0, d1, d2) : (d0 == 0, d1 == 0, d2 == 0)>
#set2 = affine_set<(d0, d1, d2) : (d0 - 1 == 0, d1 - 1 == 0, d2 - 1 == 0)>
#set3 = affine_set<(d0, d1) : (d0 - d1 == 0)>
#set4 = affine_set<(d0) : (d0 == 0)>
#set5 = affine_set<(d0, d1, d2) : (d0 - 1 == 0, d1 == 0, d2 == 0)>
module {
  func.func private @S0(%arg0: memref<?x40xf64>, %arg1: index, %arg2: index, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x40xf64>
    %1 = affine.load %arg0[%arg1, %arg3] : memref<?x40xf64>
    %2 = affine.load %arg0[%arg2, %arg3] : memref<?x40xf64>
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
  func.func private @S2(%arg0: memref<?x40xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg1] : memref<?x40xf64>
    %1 = affine.load %arg0[%arg1, %arg2] : memref<?x40xf64>
    %2 = arith.mulf %1, %1 : f64
    %3 = arith.subf %0, %2 : f64
    affine.store %3, %arg0[%arg1, %arg1] : memref<?x40xf64>
    return
  }
  func.func private @S3(%arg0: memref<?x40xf64>, %arg1: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg1] : memref<?x40xf64>
    %1 = math.sqrt %0 : f64
    affine.store %1, %arg0[%arg1, %arg1] : memref<?x40xf64>
    return
  }
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c39 = arith.constant 39 : index
    %c31 = arith.constant 31 : index
    %c32 = arith.constant 32 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = 0 to #map(%arg2) {
        affine.for %arg4 = 0 to #map(%arg3) {
          affine.if #set(%arg2, %arg3, %arg4) {
            affine.for %arg5 = 33 to 40 {
              affine.for %arg6 = 32 to #map1(%arg5) {
                affine.for %arg7 = 1 to 32 {
                  %0 = affine.apply #map2(%arg7)
                  func.call @S0(%arg1, %arg5, %arg6, %0) : (memref<?x40xf64>, index, index, index) -> ()
                }
              }
            }
          }
          affine.if #set1(%arg2, %arg3, %arg4) {
            func.call @S3(%arg1, %c0) : (memref<?x40xf64>, index) -> ()
            func.call @S1(%arg1, %c1, %c0) : (memref<?x40xf64>, index, index) -> ()
            func.call @S2(%arg1, %c1, %c0) : (memref<?x40xf64>, index, index) -> ()
          }
          affine.if #set2(%arg2, %arg3, %arg4) {
            func.call @S2(%arg1, %c32, %c31) : (memref<?x40xf64>, index, index) -> ()
          }
          affine.if #set3(%arg3, %arg4) {
            affine.for %arg5 = max #map3(%arg2, %arg3) to min #map4(%arg2, %arg3) {
              affine.if #set4(%arg3) {
                func.call @S1(%arg1, %arg5, %c0) : (memref<?x40xf64>, index, index) -> ()
              }
              affine.for %arg6 = max #map5(%arg3) to #map2(%arg5) {
                affine.for %arg7 = max #map5(%arg3) to #map1(%arg6) {
                  %7 = affine.apply #map2(%arg7)
                  func.call @S0(%arg1, %arg5, %arg6, %7) : (memref<?x40xf64>, index, index, index) -> ()
                }
                %5 = affine.apply #map2(%arg6)
                func.call @S2(%arg1, %arg5, %5) : (memref<?x40xf64>, index, index) -> ()
                %6 = affine.apply #map2(%arg6)
                func.call @S0(%arg1, %arg5, %arg6, %6) : (memref<?x40xf64>, index, index, index) -> ()
                func.call @S1(%arg1, %arg5, %arg6) : (memref<?x40xf64>, index, index) -> ()
              }
              affine.for %arg6 = max #map5(%arg3) to #map2(%arg5) {
                %5 = affine.apply #map2(%arg5)
                %6 = affine.apply #map2(%arg6)
                func.call @S0(%arg1, %arg5, %5, %6) : (memref<?x40xf64>, index, index, index) -> ()
              }
              %0 = affine.apply #map2(%arg5)
              func.call @S3(%arg1, %0) : (memref<?x40xf64>, index) -> ()
              %1 = affine.apply #map6(%arg5)
              func.call @S2(%arg1, %arg5, %1) : (memref<?x40xf64>, index, index) -> ()
              %2 = affine.apply #map2(%arg5)
              %3 = affine.apply #map6(%arg5)
              func.call @S0(%arg1, %arg5, %2, %3) : (memref<?x40xf64>, index, index, index) -> ()
              %4 = affine.apply #map2(%arg5)
              func.call @S1(%arg1, %arg5, %4) : (memref<?x40xf64>, index, index) -> ()
              affine.if #set3(%arg2, %arg3) {
                %5 = affine.apply #map2(%arg5)
                func.call @S2(%arg1, %arg5, %5) : (memref<?x40xf64>, index, index) -> ()
              }
            }
          }
          affine.if #set5(%arg2, %arg3, %arg4) {
            affine.for %arg5 = 33 to 40 {
              func.call @S1(%arg1, %arg5, %c0) : (memref<?x40xf64>, index, index) -> ()
              affine.for %arg6 = 1 to 32 {
                affine.for %arg7 = 1 to #map1(%arg6) {
                  %2 = affine.apply #map2(%arg7)
                  func.call @S0(%arg1, %arg5, %arg6, %2) : (memref<?x40xf64>, index, index, index) -> ()
                }
                %0 = affine.apply #map2(%arg6)
                func.call @S2(%arg1, %arg5, %0) : (memref<?x40xf64>, index, index) -> ()
                %1 = affine.apply #map2(%arg6)
                func.call @S0(%arg1, %arg5, %arg6, %1) : (memref<?x40xf64>, index, index, index) -> ()
                func.call @S1(%arg1, %arg5, %arg6) : (memref<?x40xf64>, index, index) -> ()
              }
            }
          }
          affine.if #set2(%arg2, %arg3, %arg4) {
            func.call @S3(%arg1, %c39) : (memref<?x40xf64>, index) -> ()
          }
        }
      }
    }
    return
  }
}

