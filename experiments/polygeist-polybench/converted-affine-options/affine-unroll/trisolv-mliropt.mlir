#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (40, d0 * 32 + 32)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0, d1) -> (d0 * 32, d1 * 32 + 1)>
#map6 = affine_map<(d0, d1) -> (40, d0 * 32 + 32, d1 * 32 + 33)>
#map7 = affine_map<(d0) -> (1, d0 * 32)>
#map8 = affine_map<(d0) -> (d0 - 1)>
#set = affine_set<(d0, d1) : (d0 - 1 == 0, d1 - 1 == 0)>
#set1 = affine_set<(d0, d1, d2) : (d0 == 0, d1 == 0, d2 - 1 == 0)>
#set2 = affine_set<(d0) : (d0 - 2 >= 0)>
#set3 = affine_set<(d0, d1) : (d0 - d1 == 0)>
#set4 = affine_set<(d0, d1) : (d0 - 1 == 0, d1 == 0)>
module {
  func.func @kernel_trisolv(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>) {
    affine.for %arg4 = 0 to 2 {
      affine.for %arg5 = #map(%arg4) to min #map1(%arg4) step 4 {
        %0 = affine.load %arg3[%arg5] : memref<?xf64>
        affine.store %0, %arg2[%arg5] : memref<?xf64>
        %1 = affine.apply #map2(%arg5)
        %2 = affine.load %arg3[%1] : memref<?xf64>
        affine.store %2, %arg2[%1] : memref<?xf64>
        %3 = affine.apply #map3(%arg5)
        %4 = affine.load %arg3[%3] : memref<?xf64>
        affine.store %4, %arg2[%3] : memref<?xf64>
        %5 = affine.apply #map4(%arg5)
        %6 = affine.load %arg3[%5] : memref<?xf64>
        affine.store %6, %arg2[%5] : memref<?xf64>
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
          affine.for %arg6 = 33 to 40 {
            affine.for %arg7 = 1 to 29 step 4 {
              %0 = affine.load %arg2[%arg6] : memref<?xf64>
              %1 = affine.load %arg1[%arg6, %arg7 - 1] : memref<?x40xf64>
              %2 = affine.load %arg2[%arg7 - 1] : memref<?xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = arith.subf %0, %3 : f64
              affine.store %4, %arg2[%arg6] : memref<?xf64>
              %5 = affine.apply #map2(%arg7)
              %6 = affine.load %arg2[%arg6] : memref<?xf64>
              %7 = affine.load %arg1[%arg6, %5 - 1] : memref<?x40xf64>
              %8 = affine.load %arg2[%5 - 1] : memref<?xf64>
              %9 = arith.mulf %7, %8 : f64
              %10 = arith.subf %6, %9 : f64
              affine.store %10, %arg2[%arg6] : memref<?xf64>
              %11 = affine.apply #map3(%arg7)
              %12 = affine.load %arg2[%arg6] : memref<?xf64>
              %13 = affine.load %arg1[%arg6, %11 - 1] : memref<?x40xf64>
              %14 = affine.load %arg2[%11 - 1] : memref<?xf64>
              %15 = arith.mulf %13, %14 : f64
              %16 = arith.subf %12, %15 : f64
              affine.store %16, %arg2[%arg6] : memref<?xf64>
              %17 = affine.apply #map4(%arg7)
              %18 = affine.load %arg2[%arg6] : memref<?xf64>
              %19 = affine.load %arg1[%arg6, %17 - 1] : memref<?x40xf64>
              %20 = affine.load %arg2[%17 - 1] : memref<?xf64>
              %21 = arith.mulf %19, %20 : f64
              %22 = arith.subf %18, %21 : f64
              affine.store %22, %arg2[%arg6] : memref<?xf64>
            }
            affine.for %arg7 = 29 to 32 {
              %0 = affine.load %arg2[%arg6] : memref<?xf64>
              %1 = affine.load %arg1[%arg6, %arg7 - 1] : memref<?x40xf64>
              %2 = affine.load %arg2[%arg7 - 1] : memref<?xf64>
              %3 = arith.mulf %1, %2 : f64
              %4 = arith.subf %0, %3 : f64
              affine.store %4, %arg2[%arg6] : memref<?xf64>
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

