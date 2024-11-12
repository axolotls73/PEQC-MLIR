#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (19, d0 * 32)>
#map2 = affine_map<(d0) -> (39, d0 * 32 + 32)>
#map3 = affine_map<(d0) -> (d0 - 19)>
#map4 = affine_map<(d0) -> ((d0 * 5 + 4) ceildiv 16)>
#map5 = affine_map<(d0, d1) -> (d0 * 32, d1 * 10 + 38)>
#map6 = affine_map<(d0) -> (d0 * 32 + 31)>
#map7 = affine_map<(d0) -> ((d0 - 28) ceildiv 10)>
#map8 = affine_map<(d0) -> (20, d0 * 32)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : ((d0 + 2) mod 10 == 0)>
module {
  func.func private @S0(%arg0: memref<f64>) attributes {scop.stmt} {
    %0 = llvm.mlir.undef : f64
    affine.store %0, %arg0[] : memref<f64>
    return
  }
  func.func private @S1(%arg0: memref<f64>) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[] : memref<f64>
    return
  }
  func.func private @S2(%arg0: memref<f64>, %arg1: memref<?x30xf64>, %arg2: index, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[] : memref<f64>
    %1 = affine.load %arg1[%arg2, %arg3] : memref<?x30xf64>
    %2 = arith.mulf %1, %1 : f64
    %3 = arith.addf %0, %2 : f64
    affine.store %3, %arg0[] : memref<f64>
    return
  }
  func.func private @S3(%arg0: memref<?x30xf64>, %arg1: index, %arg2: memref<f64>) attributes {scop.stmt} {
    %0 = affine.load %arg2[] : memref<f64>
    %1 = math.sqrt %0 : f64
    affine.store %1, %arg0[%arg1, %arg1] : memref<?x30xf64>
    return
  }
  func.func private @S4(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg4[%arg1, %arg2] : memref<?x30xf64>
    %1 = affine.load %arg3[%arg2, %arg2] : memref<?x30xf64>
    %2 = arith.divf %0, %1 : f64
    affine.store %2, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func private @S5(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func private @S6(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: memref<?x30xf64>, %arg4: index, %arg5: memref<?x30xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x30xf64>
    %1 = affine.load %arg5[%arg4, %arg1] : memref<?x30xf64>
    %2 = affine.load %arg3[%arg4, %arg2] : memref<?x30xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func private @S7(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: memref<?x30xf64>, %arg4: index, %arg5: memref<?x30xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x30xf64>
    %1 = affine.load %arg5[%arg1, %arg4] : memref<?x30xf64>
    %2 = affine.load %arg3[%arg4, %arg2] : memref<?x30xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.subf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func @kernel_gramschmidt(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) {
    %c19 = arith.constant 19 : index
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<f64>
    affine.for %arg5 = 0 to 29 {
      affine.for %arg6 = #map(%arg5) to 30 {
        func.call @S5(%arg3, %arg5, %arg6) : (memref<?x30xf64>, index, index) -> ()
      }
    }
    call @S0(%alloca) : (memref<f64>) -> ()
    affine.for %arg5 = 0 to 30 {
      affine.for %arg6 = 0 to 2 {
        affine.if #set(%arg6) {
          affine.for %arg7 = 0 to 20 {
            func.call @S2(%alloca, %arg2, %arg7, %arg5) : (memref<f64>, memref<?x30xf64>, index, index) -> ()
          }
        }
        affine.for %arg7 = max #map1(%arg6) to min #map2(%arg6) {
          %0 = affine.apply #map3(%arg7)
          func.call @S4(%arg4, %0, %arg5, %arg3, %arg2) : (memref<?x30xf64>, index, index, memref<?x30xf64>, memref<?x30xf64>) -> ()
        }
        affine.if #set(%arg6) {
          func.call @S1(%alloca) : (memref<f64>) -> ()
        }
      }
      affine.for %arg6 = #map4(%arg5) to 10 {
        affine.for %arg7 = 0 to 2 {
          affine.if #set(%arg7) {
            affine.for %arg8 = 0 to 19 {
              affine.for %arg9 = max #map5(%arg6, %arg5) to #map6(%arg6) {
                affine.if #set1(%arg9) {
                  %0 = affine.apply #map7(%arg9)
                  func.call @S6(%arg3, %arg5, %0, %arg2, %arg8, %arg4) : (memref<?x30xf64>, index, index, memref<?x30xf64>, index, memref<?x30xf64>) -> ()
                }
              }
            }
          }
          affine.if #set(%arg7) {
            affine.for %arg8 = max #map5(%arg6, %arg5) to #map6(%arg6) {
              affine.if #set1(%arg8) {
                %0 = affine.apply #map7(%arg8)
                func.call @S6(%arg3, %arg5, %0, %arg2, %c19, %arg4) : (memref<?x30xf64>, index, index, memref<?x30xf64>, index, memref<?x30xf64>) -> ()
              }
              affine.if #set1(%arg8) {
                %0 = affine.apply #map7(%arg8)
                func.call @S7(%arg2, %c0, %0, %arg3, %arg5, %arg4) : (memref<?x30xf64>, index, index, memref<?x30xf64>, index, memref<?x30xf64>) -> ()
              }
            }
          }
          affine.for %arg8 = max #map8(%arg7) to min #map2(%arg7) {
            affine.for %arg9 = max #map5(%arg6, %arg5) to #map6(%arg6) {
              affine.if #set1(%arg9) {
                %0 = affine.apply #map3(%arg8)
                %1 = affine.apply #map7(%arg9)
                func.call @S7(%arg2, %0, %1, %arg3, %arg5, %arg4) : (memref<?x30xf64>, index, index, memref<?x30xf64>, index, memref<?x30xf64>) -> ()
              }
            }
          }
        }
      }
      func.call @S3(%arg3, %arg5, %alloca) : (memref<?x30xf64>, index, memref<f64>) -> ()
    }
    return
  }
}

