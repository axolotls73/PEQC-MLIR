#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0, d1) -> (2, d0 * 32, d1 * 32 + 1)>
#map2 = affine_map<(d0, d1) -> (40, d0 * 32 + 32, d1 * 32 + 33)>
#map3 = affine_map<(d0) -> (1, d0 * 32)>
#map4 = affine_map<(d0) -> (d0 - 1)>
#map5 = affine_map<(d0) -> (d0)>
#set = affine_set<(d0, d1, d2) : (d0 - 1 == 0, d1 - 1 == 0, d2 == 0)>
#set1 = affine_set<(d0, d1, d2) : (d0 == 0, d1 == 0, d2 == 0)>
#set2 = affine_set<(d0, d1, d2) : (d0 - 1 == 0, d1 - 1 == 0, d2 - 1 == 0)>
#set3 = affine_set<(d0, d1) : (d0 - d1 == 0)>
#set4 = affine_set<(d0) : (d0 == 0)>
#set5 = affine_set<(d0, d1, d2) : (d0 - 1 == 0, d1 == 0, d2 == 0)>
module {
  func.func @kernel_cholesky(%arg0: i32, %arg1: memref<?x40xf64>) {
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = 0 to #map(%arg2) {
        affine.for %arg4 = 0 to #map(%arg3) {
          affine.if #set(%arg2, %arg3, %arg4) {
            affine.for %arg5 = 0 to 7 {
              affine.for %arg6 = 0 to #map(%arg5) {
                affine.for %arg7 = 0 to 31 {
                  %0 = affine.load %arg1[%arg5 + 33, %arg6 + 32] : memref<?x40xf64>
                  %1 = affine.load %arg1[%arg5 + 33, %arg7] : memref<?x40xf64>
                  %2 = affine.load %arg1[%arg6 + 32, %arg7] : memref<?x40xf64>
                  %3 = arith.mulf %1, %2 : f64
                  %4 = arith.subf %0, %3 : f64
                  affine.store %4, %arg1[%arg5 + 33, %arg6 + 32] : memref<?x40xf64>
                }
              }
            }
          }
          affine.if #set1(%arg2, %arg3, %arg4) {
            %0 = affine.load %arg1[0, 0] : memref<?x40xf64>
            %1 = math.sqrt %0 : f64
            affine.store %1, %arg1[0, 0] : memref<?x40xf64>
            %2 = affine.load %arg1[1, 0] : memref<?x40xf64>
            %3 = affine.load %arg1[0, 0] : memref<?x40xf64>
            %4 = arith.divf %2, %3 : f64
            affine.store %4, %arg1[1, 0] : memref<?x40xf64>
            %5 = affine.load %arg1[1, 1] : memref<?x40xf64>
            %6 = affine.load %arg1[1, 0] : memref<?x40xf64>
            %7 = arith.mulf %6, %6 : f64
            %8 = arith.subf %5, %7 : f64
            affine.store %8, %arg1[1, 1] : memref<?x40xf64>
          }
          affine.if #set2(%arg2, %arg3, %arg4) {
            %0 = affine.load %arg1[32, 32] : memref<?x40xf64>
            %1 = affine.load %arg1[32, 31] : memref<?x40xf64>
            %2 = arith.mulf %1, %1 : f64
            %3 = arith.subf %0, %2 : f64
            affine.store %3, %arg1[32, 32] : memref<?x40xf64>
          }
          affine.if #set3(%arg3, %arg4) {
            affine.for %arg5 = max #map1(%arg2, %arg3) to min #map2(%arg2, %arg3) {
              affine.if #set4(%arg3) {
                %14 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
                %15 = affine.load %arg1[0, 0] : memref<?x40xf64>
                %16 = arith.divf %14, %15 : f64
                affine.store %16, %arg1[%arg5, 0] : memref<?x40xf64>
              }
              affine.for %arg6 = max #map3(%arg3) to #map4(%arg5) {
                affine.for %arg7 = max #map3(%arg3) to #map5(%arg6) {
                  %26 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %27 = affine.load %arg1[%arg5, %arg7 - 1] : memref<?x40xf64>
                  %28 = affine.load %arg1[%arg6, %arg7 - 1] : memref<?x40xf64>
                  %29 = arith.mulf %27, %28 : f64
                  %30 = arith.subf %26, %29 : f64
                  affine.store %30, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
                %14 = affine.load %arg1[%arg5, %arg5] : memref<?x40xf64>
                %15 = affine.load %arg1[%arg5, %arg6 - 1] : memref<?x40xf64>
                %16 = arith.mulf %15, %15 : f64
                %17 = arith.subf %14, %16 : f64
                affine.store %17, %arg1[%arg5, %arg5] : memref<?x40xf64>
                %18 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %19 = affine.load %arg1[%arg5, %arg6 - 1] : memref<?x40xf64>
                %20 = affine.load %arg1[%arg6, %arg6 - 1] : memref<?x40xf64>
                %21 = arith.mulf %19, %20 : f64
                %22 = arith.subf %18, %21 : f64
                affine.store %22, %arg1[%arg5, %arg6] : memref<?x40xf64>
                %23 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %24 = affine.load %arg1[%arg6, %arg6] : memref<?x40xf64>
                %25 = arith.divf %23, %24 : f64
                affine.store %25, %arg1[%arg5, %arg6] : memref<?x40xf64>
              }
              affine.for %arg6 = max #map3(%arg3) to #map4(%arg5) {
                %14 = affine.load %arg1[%arg5, %arg5 - 1] : memref<?x40xf64>
                %15 = affine.load %arg1[%arg5, %arg6 - 1] : memref<?x40xf64>
                %16 = affine.load %arg1[%arg5 - 1, %arg6 - 1] : memref<?x40xf64>
                %17 = arith.mulf %15, %16 : f64
                %18 = arith.subf %14, %17 : f64
                affine.store %18, %arg1[%arg5, %arg5 - 1] : memref<?x40xf64>
              }
              %0 = affine.load %arg1[%arg5 - 1, %arg5 - 1] : memref<?x40xf64>
              %1 = math.sqrt %0 : f64
              affine.store %1, %arg1[%arg5 - 1, %arg5 - 1] : memref<?x40xf64>
              %2 = affine.load %arg1[%arg5, %arg5] : memref<?x40xf64>
              %3 = affine.load %arg1[%arg5, %arg5 - 2] : memref<?x40xf64>
              %4 = arith.mulf %3, %3 : f64
              %5 = arith.subf %2, %4 : f64
              affine.store %5, %arg1[%arg5, %arg5] : memref<?x40xf64>
              %6 = affine.load %arg1[%arg5, %arg5 - 1] : memref<?x40xf64>
              %7 = affine.load %arg1[%arg5, %arg5 - 2] : memref<?x40xf64>
              %8 = affine.load %arg1[%arg5 - 1, %arg5 - 2] : memref<?x40xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = arith.subf %6, %9 : f64
              affine.store %10, %arg1[%arg5, %arg5 - 1] : memref<?x40xf64>
              %11 = affine.load %arg1[%arg5, %arg5 - 1] : memref<?x40xf64>
              %12 = affine.load %arg1[%arg5 - 1, %arg5 - 1] : memref<?x40xf64>
              %13 = arith.divf %11, %12 : f64
              affine.store %13, %arg1[%arg5, %arg5 - 1] : memref<?x40xf64>
              affine.if #set3(%arg2, %arg3) {
                %14 = affine.load %arg1[%arg5, %arg5] : memref<?x40xf64>
                %15 = affine.load %arg1[%arg5, %arg5 - 1] : memref<?x40xf64>
                %16 = arith.mulf %15, %15 : f64
                %17 = arith.subf %14, %16 : f64
                affine.store %17, %arg1[%arg5, %arg5] : memref<?x40xf64>
              }
            }
          }
          affine.if #set5(%arg2, %arg3, %arg4) {
            affine.for %arg5 = 0 to 7 {
              %0 = affine.load %arg1[%arg5 + 33, 0] : memref<?x40xf64>
              %1 = affine.load %arg1[0, 0] : memref<?x40xf64>
              %2 = arith.divf %0, %1 : f64
              affine.store %2, %arg1[%arg5 + 33, 0] : memref<?x40xf64>
              affine.for %arg6 = 0 to 31 {
                affine.for %arg7 = 0 to #map5(%arg6) {
                  %15 = affine.load %arg1[%arg5 + 33, %arg6 + 1] : memref<?x40xf64>
                  %16 = affine.load %arg1[%arg5 + 33, %arg7] : memref<?x40xf64>
                  %17 = affine.load %arg1[%arg6 + 1, %arg7] : memref<?x40xf64>
                  %18 = arith.mulf %16, %17 : f64
                  %19 = arith.subf %15, %18 : f64
                  affine.store %19, %arg1[%arg5 + 33, %arg6 + 1] : memref<?x40xf64>
                }
                %3 = affine.load %arg1[%arg5 + 33, %arg5 + 33] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg5 + 33, %arg6] : memref<?x40xf64>
                %5 = arith.mulf %4, %4 : f64
                %6 = arith.subf %3, %5 : f64
                affine.store %6, %arg1[%arg5 + 33, %arg5 + 33] : memref<?x40xf64>
                %7 = affine.load %arg1[%arg5 + 33, %arg6 + 1] : memref<?x40xf64>
                %8 = affine.load %arg1[%arg5 + 33, %arg6] : memref<?x40xf64>
                %9 = affine.load %arg1[%arg6 + 1, %arg6] : memref<?x40xf64>
                %10 = arith.mulf %8, %9 : f64
                %11 = arith.subf %7, %10 : f64
                affine.store %11, %arg1[%arg5 + 33, %arg6 + 1] : memref<?x40xf64>
                %12 = affine.load %arg1[%arg5 + 33, %arg6 + 1] : memref<?x40xf64>
                %13 = affine.load %arg1[%arg6 + 1, %arg6 + 1] : memref<?x40xf64>
                %14 = arith.divf %12, %13 : f64
                affine.store %14, %arg1[%arg5 + 33, %arg6 + 1] : memref<?x40xf64>
              }
            }
          }
          affine.if #set2(%arg2, %arg3, %arg4) {
            %0 = affine.load %arg1[39, 39] : memref<?x40xf64>
            %1 = math.sqrt %0 : f64
            affine.store %1, %arg1[39, 39] : memref<?x40xf64>
          }
        }
      }
    }
    return
  }
}

