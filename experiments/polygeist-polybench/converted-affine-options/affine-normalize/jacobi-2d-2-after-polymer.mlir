#map = affine_map<(d0) -> (0, d0 - 1)>
#map1 = affine_map<(d0) -> (3, d0 + 2)>
#map2 = affine_map<(d0, d1) -> (0, d0 * 16 - 14, d1 * 16 - 14)>
#map3 = affine_map<(d0, d1) -> (20, d0 * 16 + 15, d1 * 16 + 15)>
#map4 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 1)>
#map5 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 29)>
#map6 = affine_map<(d0, d1) -> (d0 * -2 + d1)>
#map7 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 2)>
#map8 = affine_map<(d0, d1) -> (d0 * -2 + d1 - 1)>
#map9 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 30)>
#map10 = affine_map<(d0) -> (31, d0 * 32)>
#map11 = affine_map<(d0) -> (59, d0 * 32 + 32)>
#map12 = affine_map<(d0) -> (d0 - 30)>
#set = affine_set<(d0, d1) : (d1 floordiv 16 - d0 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - (d1 - 1) ceildiv 16 >= 0)>
#set2 = affine_set<(d0, d1) : (-d1 - d0 + 1 >= 0)>
module {
  func.func private @S0(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: memref<?x30xf64>) attributes {scop.stmt} {
    %cst = arith.constant 2.000000e-01 : f64
    %0 = affine.load %arg3[%arg1, %arg2] : memref<?x30xf64>
    %1 = affine.load %arg3[%arg1, %arg2 - 1] : memref<?x30xf64>
    %2 = arith.addf %0, %1 : f64
    %3 = affine.load %arg3[%arg1, %arg2 + 1] : memref<?x30xf64>
    %4 = arith.addf %2, %3 : f64
    %5 = affine.load %arg3[%arg1 + 1, %arg2] : memref<?x30xf64>
    %6 = arith.addf %4, %5 : f64
    %7 = affine.load %arg3[%arg1 - 1, %arg2] : memref<?x30xf64>
    %8 = arith.addf %6, %7 : f64
    %9 = arith.mulf %8, %cst : f64
    affine.store %9, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func private @S1(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: memref<?x30xf64>) attributes {scop.stmt} {
    %cst = arith.constant 2.000000e-01 : f64
    %0 = affine.load %arg3[%arg1, %arg2] : memref<?x30xf64>
    %1 = affine.load %arg3[%arg1, %arg2 - 1] : memref<?x30xf64>
    %2 = arith.addf %0, %1 : f64
    %3 = affine.load %arg3[%arg1, %arg2 + 1] : memref<?x30xf64>
    %4 = arith.addf %2, %3 : f64
    %5 = affine.load %arg3[%arg1 + 1, %arg2] : memref<?x30xf64>
    %6 = arith.addf %4, %5 : f64
    %7 = affine.load %arg3[%arg1 - 1, %arg2] : memref<?x30xf64>
    %8 = arith.addf %6, %7 : f64
    %9 = arith.mulf %8, %cst : f64
    affine.store %9, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x30xf64>, %arg3: memref<?x30xf64>) {
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    affine.for %arg4 = 0 to 3 {
      affine.for %arg5 = max #map(%arg4) to min #map1(%arg4) {
        affine.for %arg6 = max #map2(%arg4, %arg5) to min #map3(%arg4, %arg5) {
          affine.if #set(%arg4, %arg6) {
            affine.for %arg7 = max #map4(%arg5, %arg6) to min #map5(%arg5, %arg6) {
              %0 = affine.apply #map6(%arg6, %arg7)
              func.call @S0(%arg3, %c1, %0, %arg2) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
            }
          }
          affine.for %arg7 = max #map7(%arg4, %arg6) to min #map5(%arg4, %arg6) {
            affine.if #set(%arg5, %arg6) {
              %0 = affine.apply #map6(%arg7, %arg6)
              func.call @S0(%arg3, %0, %c1, %arg2) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
            }
            affine.for %arg8 = max #map7(%arg5, %arg6) to min #map5(%arg5, %arg6) {
              %0 = affine.apply #map6(%arg7, %arg6)
              %1 = affine.apply #map6(%arg6, %arg8)
              func.call @S0(%arg3, %0, %1, %arg2) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
              %2 = affine.apply #map8(%arg7, %arg6)
              %3 = affine.apply #map8(%arg6, %arg8)
              func.call @S1(%arg2, %2, %3, %arg3) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
            }
            affine.if #set1(%arg5, %arg6) {
              %0 = affine.apply #map8(%arg7, %arg6)
              func.call @S1(%arg2, %0, %c28, %arg3) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
            }
          }
          affine.if #set1(%arg4, %arg6) {
            affine.for %arg7 = max #map7(%arg5, %arg6) to min #map9(%arg5, %arg6) {
              %0 = affine.apply #map8(%arg6, %arg7)
              func.call @S1(%arg2, %c28, %0, %arg3) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
            }
          }
        }
        affine.if #set2(%arg4, %arg5) {
          affine.for %arg6 = max #map10(%arg4) to min #map11(%arg4) {
            affine.for %arg7 = max #map10(%arg5) to min #map11(%arg5) {
              %0 = affine.apply #map12(%arg6)
              %1 = affine.apply #map12(%arg7)
              func.call @S0(%arg3, %0, %1, %arg2) : (memref<?x30xf64>, index, index, memref<?x30xf64>) -> ()
            }
          }
        }
      }
    }
    return
  }
}

