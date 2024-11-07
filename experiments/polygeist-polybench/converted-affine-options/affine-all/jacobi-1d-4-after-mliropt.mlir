#map = affine_map<(d0, d1) -> (d0 + d1)>
#map1 = affine_map<(d0) -> (0, d0 * 16 - 14)>
#map2 = affine_map<(d0) -> (20, d0 * 16 + 15)>
#map3 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 2)>
#map4 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 29)>
#set = affine_set<(d0, d1) : (d1 floordiv 16 - d0 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - (d1 - 1) ceildiv 16 >= 0)>
#set2 = affine_set<(d0) : (d0 == 0)>
module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    affine.for %arg4 = 0 to 3 {
      affine.parallel (%arg5) = (0) to (1) {
        %0 = affine.apply #map(%arg4, %arg5)
        affine.for %arg6 = max #map1(%0) to min #map2(%0) {
          affine.if #set(%0, %arg6) {
            %1 = affine.load %arg2[0] : memref<?xf64>
            %2 = affine.load %arg2[1] : memref<?xf64>
            %3 = arith.addf %1, %2 : f64
            %4 = affine.load %arg2[2] : memref<?xf64>
            %5 = arith.addf %3, %4 : f64
            %6 = arith.mulf %5, %cst : f64
            affine.store %6, %arg3[1] : memref<?xf64>
          }
          affine.for %arg7 = max #map3(%0, %arg6) to min #map4(%0, %arg6) {
            %1 = affine.load %arg2[%arg6 * -2 + %arg7 - 1] : memref<?xf64>
            %2 = affine.load %arg2[%arg6 * -2 + %arg7] : memref<?xf64>
            %3 = arith.addf %1, %2 : f64
            %4 = affine.load %arg2[%arg6 * -2 + %arg7 + 1] : memref<?xf64>
            %5 = arith.addf %3, %4 : f64
            %6 = arith.mulf %5, %cst : f64
            affine.store %6, %arg3[%arg6 * -2 + %arg7] : memref<?xf64>
            %7 = affine.load %arg3[%arg6 * -2 + %arg7 - 2] : memref<?xf64>
            %8 = affine.load %arg3[%arg6 * -2 + %arg7 - 1] : memref<?xf64>
            %9 = arith.addf %7, %8 : f64
            %10 = affine.load %arg3[%arg6 * -2 + %arg7] : memref<?xf64>
            %11 = arith.addf %9, %10 : f64
            %12 = arith.mulf %11, %cst : f64
            affine.store %12, %arg2[%arg6 * -2 + %arg7 - 1] : memref<?xf64>
          }
          affine.if #set1(%0, %arg6) {
            %1 = affine.load %arg3[27] : memref<?xf64>
            %2 = affine.load %arg3[28] : memref<?xf64>
            %3 = arith.addf %1, %2 : f64
            %4 = affine.load %arg3[29] : memref<?xf64>
            %5 = arith.addf %3, %4 : f64
            %6 = arith.mulf %5, %cst : f64
            affine.store %6, %arg2[28] : memref<?xf64>
          }
        }
        affine.if #set2(%0) {
          %1 = affine.load %arg2[0] : memref<?xf64>
          %2 = affine.load %arg2[1] : memref<?xf64>
          %3 = arith.addf %1, %2 : f64
          %4 = affine.load %arg2[2] : memref<?xf64>
          %5 = arith.addf %3, %4 : f64
          %6 = arith.mulf %5, %cst : f64
          affine.store %6, %arg3[1] : memref<?xf64>
        }
      }
    }
    return
  }
}

