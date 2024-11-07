#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (40, d0 * 32 + 32)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0, d1) -> (d0 * 32, d1 * 32 + 1)>
#map4 = affine_map<(d0, d1) -> (40, d0 * 32 + 32, d1 * 32 + 33)>
#map5 = affine_map<(d0) -> (1, d0 * 32)>
#map6 = affine_map<(d0) -> (d0 - 1)>
#map7 = affine_map<(d0) -> (d0 - 2)>
#set = affine_set<(d0, d1) : (d0 - 1 == 0, d1 - 1 == 0)>
#set1 = affine_set<(d0, d1, d2) : (d0 == 0, d1 == 0, d2 - 1 == 0)>
#set2 = affine_set<(d0) : (d0 - 2 >= 0)>
#set3 = affine_set<(d0, d1) : (d0 - d1 == 0)>
#set4 = affine_set<(d0, d1) : (d0 - 1 == 0, d1 == 0)>
module {
  func.func private @S0(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg2[%arg1] : memref<?xf64>
    affine.store %0, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S1(%arg0: memref<?xf64>, %arg1: index, %arg2: index, %arg3: memref<?x40xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = affine.load %arg3[%arg1, %arg2] : memref<?x40xf64>
    %2 = affine.load %arg0[%arg2] : memref<?xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.subf %0, %3 : f64
    affine.store %4, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S2(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?x40xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = affine.load %arg2[%arg1, %arg1] : memref<?x40xf64>
    %2 = arith.divf %0, %1 : f64
    affine.store %2, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c39 = arith.constant 39 : index
    %c31 = arith.constant 31 : index
    %c32 = arith.constant 32 : index
    %c0 = arith.constant 0 : index
    affine.for %arg4 = 0 to 2 {
      affine.for %arg5 = #map(%arg4) to min #map1(%arg4) {
        func.call @S0(%arg2, %arg5, %arg3) : (memref<?xf64>, index, memref<?xf64>) -> ()
      }
    }
    affine.for %arg4 = 0 to 2 {
      affine.for %arg5 = 0 to #map2(%arg4) {
        affine.if #set(%arg4, %arg5) {
          func.call @S1(%arg2, %c32, %c31, %arg1) : (memref<?xf64>, index, index, memref<?x40xf64>) -> ()
        }
        affine.for %arg6 = max #map3(%arg4, %arg5) to min #map4(%arg4, %arg5) {
          affine.for %arg7 = max #map5(%arg5) to #map6(%arg6) {
            %0 = affine.apply #map6(%arg7)
            func.call @S1(%arg2, %arg6, %0, %arg1) : (memref<?xf64>, index, index, memref<?x40xf64>) -> ()
          }
          affine.if #set1(%arg4, %arg5, %arg6) {
            func.call @S2(%arg2, %c0, %arg1) : (memref<?xf64>, index, memref<?x40xf64>) -> ()
          }
          affine.if #set2(%arg6) {
            %0 = affine.apply #map6(%arg6)
            func.call @S2(%arg2, %0, %arg1) : (memref<?xf64>, index, memref<?x40xf64>) -> ()
            %1 = affine.apply #map7(%arg6)
            func.call @S1(%arg2, %arg6, %1, %arg1) : (memref<?xf64>, index, index, memref<?x40xf64>) -> ()
          }
          affine.if #set3(%arg4, %arg5) {
            %0 = affine.apply #map6(%arg6)
            func.call @S1(%arg2, %arg6, %0, %arg1) : (memref<?xf64>, index, index, memref<?x40xf64>) -> ()
          }
        }
        affine.if #set4(%arg4, %arg5) {
          affine.for %arg6 = 33 to 40 {
            affine.for %arg7 = 1 to 32 {
              %0 = affine.apply #map6(%arg7)
              func.call @S1(%arg2, %arg6, %0, %arg1) : (memref<?xf64>, index, index, memref<?x40xf64>) -> ()
            }
          }
        }
        affine.if #set(%arg4, %arg5) {
          func.call @S2(%arg2, %c39, %arg1) : (memref<?xf64>, index, memref<?x40xf64>) -> ()
        }
      }
    }
    return
  }
}

