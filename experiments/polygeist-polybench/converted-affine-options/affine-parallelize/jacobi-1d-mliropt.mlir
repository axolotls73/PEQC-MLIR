#map = affine_map<(d0) -> (0, d0 * 16 - 14)>
#map1 = affine_map<(d0) -> (20, d0 * 16 + 15)>
#map2 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 2)>
#map3 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 29)>
#set = affine_set<(d0, d1) : (d1 floordiv 16 - d0 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - (d1 - 1) ceildiv 16 >= 0)>
#set2 = affine_set<(d0) : (d0 == 0)>
module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    affine.for %arg4 = 0 to 3 {
      affine.for %arg5 = max #map(%arg4) to min #map1(%arg4) {
        affine.if #set(%arg4, %arg5) {
          %0 = affine.load %arg2[0] : memref<?xf64>
          %1 = affine.load %arg2[1] : memref<?xf64>
          %2 = arith.addf %0, %1 : f64
          %3 = affine.load %arg2[2] : memref<?xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = arith.mulf %4, %cst : f64
          affine.store %5, %arg3[1] : memref<?xf64>
        }
        affine.for %arg6 = max #map2(%arg4, %arg5) to min #map3(%arg4, %arg5) {
          %0 = affine.load %arg2[%arg5 * -2 + %arg6 - 1] : memref<?xf64>
          %1 = affine.load %arg2[%arg5 * -2 + %arg6] : memref<?xf64>
          %2 = arith.addf %0, %1 : f64
          %3 = affine.load %arg2[%arg5 * -2 + %arg6 + 1] : memref<?xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = arith.mulf %4, %cst : f64
          affine.store %5, %arg3[%arg5 * -2 + %arg6] : memref<?xf64>
          %6 = affine.load %arg3[%arg5 * -2 + %arg6 - 2] : memref<?xf64>
          %7 = affine.load %arg3[%arg5 * -2 + %arg6 - 1] : memref<?xf64>
          %8 = arith.addf %6, %7 : f64
          %9 = affine.load %arg3[%arg5 * -2 + %arg6] : memref<?xf64>
          %10 = arith.addf %8, %9 : f64
          %11 = arith.mulf %10, %cst : f64
          affine.store %11, %arg2[%arg5 * -2 + %arg6 - 1] : memref<?xf64>
        }
        affine.if #set1(%arg4, %arg5) {
          %0 = affine.load %arg3[27] : memref<?xf64>
          %1 = affine.load %arg3[28] : memref<?xf64>
          %2 = arith.addf %0, %1 : f64
          %3 = affine.load %arg3[29] : memref<?xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = arith.mulf %4, %cst : f64
          affine.store %5, %arg2[28] : memref<?xf64>
        }
      }
      affine.if #set2(%arg4) {
        %0 = affine.load %arg2[0] : memref<?xf64>
        %1 = affine.load %arg2[1] : memref<?xf64>
        %2 = arith.addf %0, %1 : f64
        %3 = affine.load %arg2[2] : memref<?xf64>
        %4 = arith.addf %2, %3 : f64
        %5 = arith.mulf %4, %cst : f64
        affine.store %5, %arg3[1] : memref<?xf64>
      }
    }
    return
  }
}

