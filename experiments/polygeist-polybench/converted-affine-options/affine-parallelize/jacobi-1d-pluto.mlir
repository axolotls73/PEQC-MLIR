#map = affine_map<(d0) -> (0, d0 * 16 - 14)>
#map1 = affine_map<(d0) -> (20, d0 * 16 + 15)>
#map2 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 2)>
#map3 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 29)>
#map4 = affine_map<(d0, d1) -> (d0 * -2 + d1)>
#map5 = affine_map<(d0, d1) -> (d0 * -2 + d1 - 1)>
#set = affine_set<(d0, d1) : (d1 floordiv 16 - d0 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - (d1 - 1) ceildiv 16 >= 0)>
#set2 = affine_set<(d0) : (d0 == 0)>
module {
  func.func private @S0(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>) attributes {scop.stmt} {
    %cst = arith.constant 3.333300e-01 : f64
    %0 = affine.load %arg2[%arg1 - 1] : memref<?xf64>
    %1 = affine.load %arg2[%arg1] : memref<?xf64>
    %2 = arith.addf %0, %1 : f64
    %3 = affine.load %arg2[%arg1 + 1] : memref<?xf64>
    %4 = arith.addf %2, %3 : f64
    %5 = arith.mulf %4, %cst : f64
    affine.store %5, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S1(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>) attributes {scop.stmt} {
    %cst = arith.constant 3.333300e-01 : f64
    %0 = affine.load %arg2[%arg1 - 1] : memref<?xf64>
    %1 = affine.load %arg2[%arg1] : memref<?xf64>
    %2 = arith.addf %0, %1 : f64
    %3 = affine.load %arg2[%arg1 + 1] : memref<?xf64>
    %4 = arith.addf %2, %3 : f64
    %5 = arith.mulf %4, %cst : f64
    affine.store %5, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %c28 = arith.constant 28 : index
    %c1 = arith.constant 1 : index
    affine.for %arg4 = 0 to 3 {
      affine.for %arg5 = max #map(%arg4) to min #map1(%arg4) {
        affine.if #set(%arg4, %arg5) {
          func.call @S0(%arg3, %c1, %arg2) : (memref<?xf64>, index, memref<?xf64>) -> ()
        }
        affine.for %arg6 = max #map2(%arg4, %arg5) to min #map3(%arg4, %arg5) {
          %0 = affine.apply #map4(%arg5, %arg6)
          func.call @S0(%arg3, %0, %arg2) : (memref<?xf64>, index, memref<?xf64>) -> ()
          %1 = affine.apply #map5(%arg5, %arg6)
          func.call @S1(%arg2, %1, %arg3) : (memref<?xf64>, index, memref<?xf64>) -> ()
        }
        affine.if #set1(%arg4, %arg5) {
          func.call @S1(%arg2, %c28, %arg3) : (memref<?xf64>, index, memref<?xf64>) -> ()
        }
      }
      affine.if #set2(%arg4) {
        func.call @S0(%arg3, %c1, %arg2) : (memref<?xf64>, index, memref<?xf64>) -> ()
      }
    }
    return
  }
}

