#map = affine_map<(d0, d1, d2) -> (1, d0 * 16 - 4, d1 * 16 - 4, d2 * 16 - 4)>
#map1 = affine_map<(d0, d1, d2) -> (21, d0 * 16 + 15, d1 * 16 + 15, d2 * 16 + 15)>
#map2 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 1)>
#map3 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 9)>
#map4 = affine_map<(d0, d1) -> (d0 * -2 + d1)>
#map5 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 2)>
#map6 = affine_map<(d0, d1) -> (d0 * -2 + d1 - 1)>
#map7 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 10)>
#map8 = affine_map<(d0) -> (31, d0 * 32)>
#map9 = affine_map<(d0) -> (39, d0 * 32 + 32)>
#map10 = affine_map<(d0) -> (d0 - 30)>
#set = affine_set<(d0, d1) : (d1 floordiv 16 - d0 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - (d1 - 11) ceildiv 16 >= 0)>
#set2 = affine_set<(d0, d1, d2) : (-d1 - d2 - d0 + 2 >= 0)>
module {
  func.func private @S0(%arg0: memref<?x10x10xf64>, %arg1: index, %arg2: index, %arg3: index, %arg4: memref<?x10x10xf64>) attributes {scop.stmt} {
    %cst = arith.constant 1.250000e-01 : f64
    %cst_0 = arith.constant 2.000000e+00 : f64
    %0 = affine.load %arg4[%arg1 + 1, %arg2, %arg3] : memref<?x10x10xf64>
    %1 = affine.load %arg4[%arg1 - 1, %arg2, %arg3] : memref<?x10x10xf64>
    %2 = affine.load %arg4[%arg1, %arg2 + 1, %arg3] : memref<?x10x10xf64>
    %3 = affine.load %arg4[%arg1, %arg2 - 1, %arg3] : memref<?x10x10xf64>
    %4 = affine.load %arg4[%arg1, %arg2, %arg3 + 1] : memref<?x10x10xf64>
    %5 = affine.load %arg4[%arg1, %arg2, %arg3 - 1] : memref<?x10x10xf64>
    %6 = affine.load %arg4[%arg1, %arg2, %arg3] : memref<?x10x10xf64>
    %7 = arith.mulf %6, %cst_0 : f64
    %8 = arith.subf %0, %7 : f64
    %9 = arith.addf %8, %1 : f64
    %10 = arith.mulf %9, %cst : f64
    %11 = arith.subf %2, %7 : f64
    %12 = arith.addf %11, %3 : f64
    %13 = arith.mulf %12, %cst : f64
    %14 = arith.addf %10, %13 : f64
    %15 = arith.subf %4, %7 : f64
    %16 = arith.addf %15, %5 : f64
    %17 = arith.mulf %16, %cst : f64
    %18 = arith.addf %14, %17 : f64
    %19 = arith.addf %18, %6 : f64
    affine.store %19, %arg0[%arg1, %arg2, %arg3] : memref<?x10x10xf64>
    return
  }
  func.func private @S1(%arg0: memref<?x10x10xf64>, %arg1: index, %arg2: index, %arg3: index, %arg4: memref<?x10x10xf64>) attributes {scop.stmt} {
    %cst = arith.constant 1.250000e-01 : f64
    %cst_0 = arith.constant 2.000000e+00 : f64
    %0 = affine.load %arg4[%arg1 + 1, %arg2, %arg3] : memref<?x10x10xf64>
    %1 = affine.load %arg4[%arg1 - 1, %arg2, %arg3] : memref<?x10x10xf64>
    %2 = affine.load %arg4[%arg1, %arg2 + 1, %arg3] : memref<?x10x10xf64>
    %3 = affine.load %arg4[%arg1, %arg2 - 1, %arg3] : memref<?x10x10xf64>
    %4 = affine.load %arg4[%arg1, %arg2, %arg3 + 1] : memref<?x10x10xf64>
    %5 = affine.load %arg4[%arg1, %arg2, %arg3 - 1] : memref<?x10x10xf64>
    %6 = affine.load %arg4[%arg1, %arg2, %arg3] : memref<?x10x10xf64>
    %7 = arith.mulf %6, %cst_0 : f64
    %8 = arith.subf %0, %7 : f64
    %9 = arith.addf %8, %1 : f64
    %10 = arith.mulf %9, %cst : f64
    %11 = arith.subf %2, %7 : f64
    %12 = arith.addf %11, %3 : f64
    %13 = arith.mulf %12, %cst : f64
    %14 = arith.addf %10, %13 : f64
    %15 = arith.subf %4, %7 : f64
    %16 = arith.addf %15, %5 : f64
    %17 = arith.mulf %16, %cst : f64
    %18 = arith.addf %14, %17 : f64
    %19 = arith.addf %18, %6 : f64
    affine.store %19, %arg0[%arg1, %arg2, %arg3] : memref<?x10x10xf64>
    return
  }
  func.func @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x10x10xf64>, %arg3: memref<?x10x10xf64>) {
    %c8 = arith.constant 8 : index
    %c1 = arith.constant 1 : index
    affine.for %arg4 = 0 to 2 {
      affine.for %arg5 = 0 to 2 {
        affine.for %arg6 = 0 to 2 {
          affine.for %arg7 = max #map(%arg4, %arg5, %arg6) to min #map1(%arg4, %arg5, %arg6) {
            affine.if #set(%arg4, %arg7) {
              affine.for %arg8 = max #map2(%arg5, %arg7) to min #map3(%arg5, %arg7) {
                affine.for %arg9 = max #map2(%arg6, %arg7) to min #map3(%arg6, %arg7) {
                  %0 = affine.apply #map4(%arg7, %arg8)
                  %1 = affine.apply #map4(%arg7, %arg9)
                  func.call @S0(%arg3, %c1, %0, %1, %arg2) : (memref<?x10x10xf64>, index, index, index, memref<?x10x10xf64>) -> ()
                }
              }
            }
            affine.for %arg8 = max #map5(%arg4, %arg7) to min #map3(%arg4, %arg7) {
              affine.if #set(%arg5, %arg7) {
                affine.for %arg9 = max #map2(%arg6, %arg7) to min #map3(%arg6, %arg7) {
                  %0 = affine.apply #map4(%arg7, %arg8)
                  %1 = affine.apply #map4(%arg7, %arg9)
                  func.call @S0(%arg3, %0, %c1, %1, %arg2) : (memref<?x10x10xf64>, index, index, index, memref<?x10x10xf64>) -> ()
                }
              }
              affine.for %arg9 = max #map5(%arg5, %arg7) to min #map3(%arg5, %arg7) {
                affine.if #set(%arg6, %arg7) {
                  %0 = affine.apply #map4(%arg7, %arg8)
                  %1 = affine.apply #map4(%arg7, %arg9)
                  func.call @S0(%arg3, %0, %1, %c1, %arg2) : (memref<?x10x10xf64>, index, index, index, memref<?x10x10xf64>) -> ()
                }
                affine.for %arg10 = max #map5(%arg6, %arg7) to min #map3(%arg6, %arg7) {
                  %0 = affine.apply #map4(%arg7, %arg8)
                  %1 = affine.apply #map4(%arg7, %arg9)
                  %2 = affine.apply #map4(%arg7, %arg10)
                  func.call @S0(%arg3, %0, %1, %2, %arg2) : (memref<?x10x10xf64>, index, index, index, memref<?x10x10xf64>) -> ()
                  %3 = affine.apply #map6(%arg7, %arg8)
                  %4 = affine.apply #map6(%arg7, %arg9)
                  %5 = affine.apply #map6(%arg7, %arg10)
                  func.call @S1(%arg2, %3, %4, %5, %arg3) : (memref<?x10x10xf64>, index, index, index, memref<?x10x10xf64>) -> ()
                }
                affine.if #set1(%arg6, %arg7) {
                  %0 = affine.apply #map6(%arg7, %arg8)
                  %1 = affine.apply #map6(%arg7, %arg9)
                  func.call @S1(%arg2, %0, %1, %c8, %arg3) : (memref<?x10x10xf64>, index, index, index, memref<?x10x10xf64>) -> ()
                }
              }
              affine.if #set1(%arg5, %arg7) {
                affine.for %arg9 = max #map5(%arg6, %arg7) to min #map7(%arg6, %arg7) {
                  %0 = affine.apply #map6(%arg7, %arg8)
                  %1 = affine.apply #map6(%arg7, %arg9)
                  func.call @S1(%arg2, %0, %c8, %1, %arg3) : (memref<?x10x10xf64>, index, index, index, memref<?x10x10xf64>) -> ()
                }
              }
            }
            affine.if #set1(%arg4, %arg7) {
              affine.for %arg8 = max #map5(%arg5, %arg7) to min #map7(%arg5, %arg7) {
                affine.for %arg9 = max #map5(%arg6, %arg7) to min #map7(%arg6, %arg7) {
                  %0 = affine.apply #map6(%arg7, %arg8)
                  %1 = affine.apply #map6(%arg7, %arg9)
                  func.call @S1(%arg2, %c8, %0, %1, %arg3) : (memref<?x10x10xf64>, index, index, index, memref<?x10x10xf64>) -> ()
                }
              }
            }
          }
          affine.if #set2(%arg4, %arg5, %arg6) {
            affine.for %arg7 = max #map8(%arg4) to min #map9(%arg4) {
              affine.for %arg8 = max #map8(%arg5) to min #map9(%arg5) {
                affine.for %arg9 = max #map8(%arg6) to min #map9(%arg6) {
                  %0 = affine.apply #map10(%arg7)
                  %1 = affine.apply #map10(%arg8)
                  %2 = affine.apply #map10(%arg9)
                  func.call @S0(%arg3, %0, %1, %2, %arg2) : (memref<?x10x10xf64>, index, index, index, memref<?x10x10xf64>) -> ()
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

