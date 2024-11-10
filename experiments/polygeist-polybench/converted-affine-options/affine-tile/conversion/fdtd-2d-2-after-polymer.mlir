#map = affine_map<(d0) -> (0, d0 * 32 - 29)>
#map1 = affine_map<(d0, d1) -> (d0 * 32, d1 + 1)>
#map2 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 + 30)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (32, d0 + 20)>
#map6 = affine_map<(d0, d1) -> (-d0 + d1 - 1)>
#map7 = affine_map<(d0) -> (d0 + 20)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 == 0)>
module {
  func.func private @S0(%arg0: memref<?x30xf64>, %arg1: index, %arg2: memref<?xf64>, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg2[%arg3] : memref<?xf64>
    affine.store %0, %arg0[0, %arg1] : memref<?x30xf64>
    return
  }
  func.func private @S1(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: memref<?x30xf64>) attributes {scop.stmt} {
    %cst = arith.constant 5.000000e-01 : f64
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x30xf64>
    %1 = affine.load %arg3[%arg1, %arg2] : memref<?x30xf64>
    %2 = affine.load %arg3[%arg1 - 1, %arg2] : memref<?x30xf64>
    %3 = arith.subf %1, %2 : f64
    %4 = arith.mulf %3, %cst : f64
    %5 = arith.subf %0, %4 : f64
    affine.store %5, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func private @S2(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: memref<?x30xf64>) attributes {scop.stmt} {
    %cst = arith.constant 5.000000e-01 : f64
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x30xf64>
    %1 = affine.load %arg3[%arg1, %arg2] : memref<?x30xf64>
    %2 = affine.load %arg3[%arg1, %arg2 - 1] : memref<?x30xf64>
    %3 = arith.subf %1, %2 : f64
    %4 = arith.mulf %3, %cst : f64
    %5 = arith.subf %0, %4 : f64
    affine.store %5, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func private @S3(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>) attributes {scop.stmt} {
    %cst = arith.constant 0.69999999999999996 : f64
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x30xf64>
    %1 = affine.load %arg4[%arg1, %arg2 + 1] : memref<?x30xf64>
    %2 = affine.load %arg4[%arg1, %arg2] : memref<?x30xf64>
    %3 = arith.subf %1, %2 : f64
    %4 = affine.load %arg3[%arg1 + 1, %arg2] : memref<?x30xf64>
    %5 = arith.addf %3, %4 : f64
    %6 = affine.load %arg3[%arg1, %arg2] : memref<?x30xf64>
    %7 = arith.subf %5, %6 : f64
    %8 = arith.mulf %7, %cst : f64
    %9 = arith.subf %0, %8 : f64
    affine.store %9, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x30xf64>, %arg4: memref<?x30xf64>, %arg5: memref<?x30xf64>, %arg6: memref<?xf64>) {
    %c0 = arith.constant 0 : index
    affine.for %arg7 = 0 to 2 {
      affine.for %arg8 = 0 to 2 {
        affine.if #set(%arg8) {
          affine.for %arg9 = max #map(%arg7) to 20 {
            affine.if #set(%arg7) {
              func.call @S0(%arg4, %c0, %arg6, %arg9) : (memref<?x30xf64>, index, memref<?xf64>, index) -> ()
            }
            affine.for %arg10 = max #map1(%arg7, %arg9) to min #map2(%arg7, %arg9) {
              %0 = affine.apply #map3(%arg9, %arg10)
              func.call @S0(%arg4, %0, %arg6, %arg9) : (memref<?x30xf64>, index, memref<?xf64>, index) -> ()
              %1 = affine.apply #map3(%arg9, %arg10)
              func.call @S2(%arg3, %c0, %1, %arg5) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
            }
            affine.for %arg10 = #map4(%arg9) to min #map5(%arg9) {
              affine.if #set(%arg7) {
                %0 = affine.apply #map3(%arg10, %arg9)
                func.call @S1(%arg4, %0, %c0, %arg5) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
              }
              affine.for %arg11 = max #map1(%arg7, %arg9) to min #map2(%arg7, %arg9) {
                %0 = affine.apply #map3(%arg10, %arg9)
                %1 = affine.apply #map3(%arg9, %arg11)
                func.call @S1(%arg4, %0, %1, %arg5) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
                %2 = affine.apply #map3(%arg10, %arg9)
                %3 = affine.apply #map3(%arg9, %arg11)
                func.call @S2(%arg3, %2, %3, %arg5) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
                %4 = affine.apply #map6(%arg10, %arg9)
                %5 = affine.apply #map6(%arg9, %arg11)
                func.call @S3(%arg5, %4, %5, %arg4, %arg3) : (memref<?x30xf64>, index, index, memref<?x30xf64>, memref<?x30xf64>) -> ()
              }
            }
          }
        }
        affine.if #set1(%arg8) {
          affine.for %arg9 = 13 to 20 {
            affine.for %arg10 = 32 to #map7(%arg9) {
              affine.if #set(%arg7) {
                %0 = affine.apply #map3(%arg10, %arg9)
                func.call @S1(%arg4, %0, %c0, %arg5) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
              }
              affine.for %arg11 = max #map1(%arg7, %arg9) to min #map2(%arg7, %arg9) {
                %0 = affine.apply #map3(%arg10, %arg9)
                %1 = affine.apply #map3(%arg9, %arg11)
                func.call @S1(%arg4, %0, %1, %arg5) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
                %2 = affine.apply #map3(%arg10, %arg9)
                %3 = affine.apply #map3(%arg9, %arg11)
                func.call @S2(%arg3, %2, %3, %arg5) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
                %4 = affine.apply #map6(%arg10, %arg9)
                %5 = affine.apply #map6(%arg9, %arg11)
                func.call @S3(%arg5, %4, %5, %arg4, %arg3) : (memref<?x30xf64>, index, index, memref<?x30xf64>, memref<?x30xf64>) -> ()
              }
            }
          }
        }
      }
    }
    return
  }
}

