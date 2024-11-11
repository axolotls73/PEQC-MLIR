#map = affine_map<(d0) -> ((d0 * -32 + 40) ceildiv 4, 8)>
#map1 = affine_map<(d0, d1) -> (d0 * 32 + d1 * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0, d1) -> (d0 * 32, d1 * 32 + 1)>
#map6 = affine_map<(d0, d1) -> (40, d0 * 32 + 32, d1 * 32 + 33)>
#map7 = affine_map<(d0) -> (1, d0 * 32)>
#map8 = affine_map<(d0) -> (d0 - 1)>
#map9 = affine_map<(d0) -> (d0 + 33)>
#map10 = affine_map<(d0) -> (d0 * 4 + 1)>
#map11 = affine_map<(d0) -> (d0 + 29)>
#set = affine_set<(d0, d1) : (d0 - 1 == 0, d1 - 1 == 0)>
#set1 = affine_set<(d0, d1, d2) : (d0 == 0, d1 == 0, d2 - 1 == 0)>
#set2 = affine_set<(d0) : (d0 - 2 >= 0)>
#set3 = affine_set<(d0, d1) : (d0 - d1 == 0)>
#set4 = affine_set<(d0, d1) : (d0 - 1 == 0, d1 == 0)>
module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    affine.for %arg4 = 0 to 2 {
      affine.for %arg5 = 0 to min #map(%arg4) {
        %0 = affine.apply #map1(%arg4, %arg5)
        %1 = affine.load %arg3[%0] : memref<?xf64>
        affine.store %1, %arg2[%0] : memref<?xf64>
        %2 = affine.apply #map2(%0)
        %3 = affine.load %arg3[%2] : memref<?xf64>
        affine.store %3, %arg2[%2] : memref<?xf64>
        %4 = affine.apply #map3(%0)
        %5 = affine.load %arg3[%4] : memref<?xf64>
        affine.store %5, %arg2[%4] : memref<?xf64>
        %6 = affine.apply #map4(%0)
        %7 = affine.load %arg3[%6] : memref<?xf64>
        affine.store %7, %arg2[%6] : memref<?xf64>
      }
    }
    affine.for %arg4 = 0 to 2 {
      affine.for %arg5 = 0 to #map2(%arg4) {
        affine.if #set(%arg4, %arg5) {
          %0 = affine.load %arg2[32] : memref<?xf64>
          %1 = affine.load %arg1[32, 31] : memref<?x40xf64>
          %2 = affine.load %arg2[31] : memref<?xf64>
          %3 = arith.mulf %1, %2 : f64
          %4 = arith.subf %0, %3 : f64
          affine.store %4, %arg2[32] : memref<?xf64>
        }
        affine.for %arg6 = max #map5(%arg4, %arg5) to min #map6(%arg4, %arg5) {
          affine.for %arg7 = max #map7(%arg5) to #map8(%arg6) {
            %0 = affine.load %arg2[%arg6] : memref<?xf64>
            %1 = affine.load %arg1[%arg6, %arg7 - 1] : memref<?x40xf64>
            %2 = affine.load %arg2[%arg7 - 1] : memref<?xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.subf %0, %3 : f64
            affine.store %4, %arg2[%arg6] : memref<?xf64>
          }
          affine.if #set1(%arg4, %arg5, %arg6) {
            %0 = affine.load %arg2[0] : memref<?xf64>
            %1 = affine.load %arg1[0, 0] : memref<?x40xf64>
            %2 = arith.divf %0, %1 : f64
            affine.store %2, %arg2[0] : memref<?xf64>
          }
          affine.if #set2(%arg6) {
            %0 = affine.load %arg2[%arg6 - 1] : memref<?xf64>
            %1 = affine.load %arg1[%arg6 - 1, %arg6 - 1] : memref<?x40xf64>
            %2 = arith.divf %0, %1 : f64
            affine.store %2, %arg2[%arg6 - 1] : memref<?xf64>
            %3 = affine.load %arg2[%arg6] : memref<?xf64>
            %4 = affine.load %arg1[%arg6, %arg6 - 2] : memref<?x40xf64>
            %5 = affine.load %arg2[%arg6 - 2] : memref<?xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = arith.subf %3, %6 : f64
            affine.store %7, %arg2[%arg6] : memref<?xf64>
          }
          affine.if #set3(%arg4, %arg5) {
            %0 = affine.load %arg2[%arg6] : memref<?xf64>
            %1 = affine.load %arg1[%arg6, %arg6 - 1] : memref<?x40xf64>
            %2 = affine.load %arg2[%arg6 - 1] : memref<?xf64>
            %3 = arith.mulf %1, %2 : f64
            %4 = arith.subf %0, %3 : f64
            affine.store %4, %arg2[%arg6] : memref<?xf64>
          }
        }
        affine.if #set4(%arg4, %arg5) {
          affine.parallel (%arg6) = (0) to (7) {
            %0 = affine.apply #map9(%arg6)
            affine.for %arg7 = 0 to 7 {
              %1 = affine.apply #map10(%arg7)
              %2 = affine.load %arg2[%0] : memref<?xf64>
              %3 = affine.load %arg1[%0, %1 - 1] : memref<?x40xf64>
              %4 = affine.load %arg2[%1 - 1] : memref<?xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = arith.subf %2, %5 : f64
              affine.store %6, %arg2[%0] : memref<?xf64>
              %7 = affine.apply #map2(%1)
              %8 = affine.load %arg2[%0] : memref<?xf64>
              %9 = affine.load %arg1[%0, %7 - 1] : memref<?x40xf64>
              %10 = affine.load %arg2[%7 - 1] : memref<?xf64>
              %11 = arith.mulf %9, %10 : f64
              %12 = arith.subf %8, %11 : f64
              affine.store %12, %arg2[%0] : memref<?xf64>
              %13 = affine.apply #map3(%1)
              %14 = affine.load %arg2[%0] : memref<?xf64>
              %15 = affine.load %arg1[%0, %13 - 1] : memref<?x40xf64>
              %16 = affine.load %arg2[%13 - 1] : memref<?xf64>
              %17 = arith.mulf %15, %16 : f64
              %18 = arith.subf %14, %17 : f64
              affine.store %18, %arg2[%0] : memref<?xf64>
              %19 = affine.apply #map4(%1)
              %20 = affine.load %arg2[%0] : memref<?xf64>
              %21 = affine.load %arg1[%0, %19 - 1] : memref<?x40xf64>
              %22 = affine.load %arg2[%19 - 1] : memref<?xf64>
              %23 = arith.mulf %21, %22 : f64
              %24 = arith.subf %20, %23 : f64
              affine.store %24, %arg2[%0] : memref<?xf64>
            }
            affine.for %arg7 = 0 to 3 {
              %1 = affine.apply #map11(%arg7)
              %2 = affine.load %arg2[%0] : memref<?xf64>
              %3 = affine.load %arg1[%0, %1 - 1] : memref<?x40xf64>
              %4 = affine.load %arg2[%1 - 1] : memref<?xf64>
              %5 = arith.mulf %3, %4 : f64
              %6 = arith.subf %2, %5 : f64
              affine.store %6, %arg2[%0] : memref<?xf64>
            }
          }
        }
        affine.if #set(%arg4, %arg5) {
          %0 = affine.load %arg2[39] : memref<?xf64>
          %1 = affine.load %arg1[39, 39] : memref<?x40xf64>
          %2 = arith.divf %0, %1 : f64
          affine.store %2, %arg2[39] : memref<?xf64>
        }
      }
    }
    return
  }
}

