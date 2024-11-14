#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (0, d0 * 16 - 14)>
#map3 = affine_map<(d0) -> (20, d0 * 16 + 15)>
#map4 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 2)>
#map5 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 2 + 29)>
#set = affine_set<(d0, d1) : (d1 floordiv 16 - d0 >= 0)>
#set1 = affine_set<(d0, d1) : (d0 - (d1 - 1) ceildiv 16 >= 0)>
#set2 = affine_set<(d0) : (d0 == 0)>
module {
  func.func @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    %cst = arith.constant 3.333300e-01 : f64
    affine.for %arg4 = 0 to 1 {
      %0 = affine.apply #map(%arg4)
      affine.for %arg5 = 0 to 3 {
        %1 = affine.apply #map1(%0, %arg5)
        affine.for %arg6 = max #map2(%1) to min #map3(%1) {
          affine.if #set(%1, %arg6) {
            %2 = affine.load %arg2[0] : memref<?xf64>
            %3 = affine.load %arg2[1] : memref<?xf64>
            %4 = arith.addf %2, %3 : f64
            %5 = affine.load %arg2[2] : memref<?xf64>
            %6 = arith.addf %4, %5 : f64
            %7 = arith.mulf %6, %cst : f64
            affine.store %7, %arg3[1] : memref<?xf64>
          }
          affine.for %arg7 = max #map4(%1, %arg6) to min #map5(%1, %arg6) {
            %2 = affine.load %arg2[%arg6 * -2 + %arg7 - 1] : memref<?xf64>
            %3 = affine.load %arg2[%arg6 * -2 + %arg7] : memref<?xf64>
            %4 = arith.addf %2, %3 : f64
            %5 = affine.load %arg2[%arg6 * -2 + %arg7 + 1] : memref<?xf64>
            %6 = arith.addf %4, %5 : f64
            %7 = arith.mulf %6, %cst : f64
            affine.store %7, %arg3[%arg6 * -2 + %arg7] : memref<?xf64>
            %8 = affine.load %arg3[%arg6 * -2 + %arg7 - 2] : memref<?xf64>
            %9 = affine.load %arg3[%arg6 * -2 + %arg7 - 1] : memref<?xf64>
            %10 = arith.addf %8, %9 : f64
            %11 = affine.load %arg3[%arg6 * -2 + %arg7] : memref<?xf64>
            %12 = arith.addf %10, %11 : f64
            %13 = arith.mulf %12, %cst : f64
            affine.store %13, %arg2[%arg6 * -2 + %arg7 - 1] : memref<?xf64>
          }
          affine.if #set1(%1, %arg6) {
            %2 = affine.load %arg3[27] : memref<?xf64>
            %3 = affine.load %arg3[28] : memref<?xf64>
            %4 = arith.addf %2, %3 : f64
            %5 = affine.load %arg3[29] : memref<?xf64>
            %6 = arith.addf %4, %5 : f64
            %7 = arith.mulf %6, %cst : f64
            affine.store %7, %arg2[28] : memref<?xf64>
          }
        }
        affine.if #set2(%1) {
          %2 = affine.load %arg2[0] : memref<?xf64>
          %3 = affine.load %arg2[1] : memref<?xf64>
          %4 = arith.addf %2, %3 : f64
          %5 = affine.load %arg2[2] : memref<?xf64>
          %6 = arith.addf %4, %5 : f64
          %7 = arith.mulf %6, %cst : f64
          affine.store %7, %arg3[1] : memref<?xf64>
        }
      }
    }
    return
  }
}

