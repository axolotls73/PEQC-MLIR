#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 33)>
#map2 = affine_map<(d0) -> (d0 - 32)>
#map3 = affine_map<(d0) -> (d0 + 32)>
#map4 = affine_map<(d0) -> (d0 * 4 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (d0 + 29)>
#map8 = affine_map<(d0, d1) -> (2, d0 * 32, d1 * 32 + 1)>
#map9 = affine_map<(d0, d1) -> (40, d0 * 32 + 32, d1 * 32 + 33)>
#map10 = affine_map<(d0) -> (1, d0 * 32)>
#map11 = affine_map<(d0) -> (d0 - 1)>
#map12 = affine_map<(d0) -> (d0)>
#map13 = affine_map<(d0) -> ((d0 - 1) floordiv 4)>
#map14 = affine_map<(d0) -> (d0 - ((d0 - 1) floordiv 4) * 4 - 1)>
#map15 = affine_map<(d0, d1) -> (d1 + ((d0 - 1) floordiv 4) * 4 + 1)>
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
            affine.parallel (%arg5) = (0) to (7) {
              %0 = affine.apply #map1(%arg5)
              affine.for %arg6 = 0 to #map2(%0) {
                %1 = affine.apply #map3(%arg6)
                affine.for %arg7 = 0 to 7 {
                  %2 = affine.apply #map4(%arg7)
                  %3 = affine.load %arg1[%0, %1] : memref<?x40xf64>
                  %4 = affine.load %arg1[%0, %2 - 1] : memref<?x40xf64>
                  %5 = affine.load %arg1[%1, %2 - 1] : memref<?x40xf64>
                  %6 = arith.mulf %4, %5 : f64
                  %7 = arith.subf %3, %6 : f64
                  affine.store %7, %arg1[%0, %1] : memref<?x40xf64>
                  %8 = affine.apply #map(%2)
                  %9 = affine.load %arg1[%0, %1] : memref<?x40xf64>
                  %10 = affine.load %arg1[%0, %8 - 1] : memref<?x40xf64>
                  %11 = affine.load %arg1[%1, %8 - 1] : memref<?x40xf64>
                  %12 = arith.mulf %10, %11 : f64
                  %13 = arith.subf %9, %12 : f64
                  affine.store %13, %arg1[%0, %1] : memref<?x40xf64>
                  %14 = affine.apply #map5(%2)
                  %15 = affine.load %arg1[%0, %1] : memref<?x40xf64>
                  %16 = affine.load %arg1[%0, %14 - 1] : memref<?x40xf64>
                  %17 = affine.load %arg1[%1, %14 - 1] : memref<?x40xf64>
                  %18 = arith.mulf %16, %17 : f64
                  %19 = arith.subf %15, %18 : f64
                  affine.store %19, %arg1[%0, %1] : memref<?x40xf64>
                  %20 = affine.apply #map6(%2)
                  %21 = affine.load %arg1[%0, %1] : memref<?x40xf64>
                  %22 = affine.load %arg1[%0, %20 - 1] : memref<?x40xf64>
                  %23 = affine.load %arg1[%1, %20 - 1] : memref<?x40xf64>
                  %24 = arith.mulf %22, %23 : f64
                  %25 = arith.subf %21, %24 : f64
                  affine.store %25, %arg1[%0, %1] : memref<?x40xf64>
                }
                affine.for %arg7 = 0 to 3 {
                  %2 = affine.apply #map7(%arg7)
                  %3 = affine.load %arg1[%0, %1] : memref<?x40xf64>
                  %4 = affine.load %arg1[%0, %2 - 1] : memref<?x40xf64>
                  %5 = affine.load %arg1[%1, %2 - 1] : memref<?x40xf64>
                  %6 = arith.mulf %4, %5 : f64
                  %7 = arith.subf %3, %6 : f64
                  affine.store %7, %arg1[%0, %1] : memref<?x40xf64>
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
            affine.for %arg5 = max #map8(%arg2, %arg3) to min #map9(%arg2, %arg3) {
              affine.if #set4(%arg3) {
                %14 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
                %15 = affine.load %arg1[0, 0] : memref<?x40xf64>
                %16 = arith.divf %14, %15 : f64
                affine.store %16, %arg1[%arg5, 0] : memref<?x40xf64>
              }
              affine.for %arg6 = max #map10(%arg3) to #map11(%arg5) {
                affine.for %arg7 = max #map10(%arg3) to #map12(%arg6) {
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
              affine.for %arg6 = max #map10(%arg3) to #map11(%arg5) {
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
            affine.parallel (%arg5) = (0) to (7) {
              %0 = affine.apply #map1(%arg5)
              %1 = affine.load %arg1[%0, 0] : memref<?x40xf64>
              %2 = affine.load %arg1[0, 0] : memref<?x40xf64>
              %3 = arith.divf %1, %2 : f64
              affine.store %3, %arg1[%0, 0] : memref<?x40xf64>
              affine.for %arg6 = 0 to 31 {
                %4 = affine.apply #map(%arg6)
                affine.for %arg7 = 0 to #map13(%4) {
                  %17 = affine.apply #map4(%arg7)
                  %18 = affine.load %arg1[%0, %4] : memref<?x40xf64>
                  %19 = affine.load %arg1[%0, %17 - 1] : memref<?x40xf64>
                  %20 = affine.load %arg1[%4, %17 - 1] : memref<?x40xf64>
                  %21 = arith.mulf %19, %20 : f64
                  %22 = arith.subf %18, %21 : f64
                  affine.store %22, %arg1[%0, %4] : memref<?x40xf64>
                  %23 = affine.apply #map(%17)
                  %24 = affine.load %arg1[%0, %4] : memref<?x40xf64>
                  %25 = affine.load %arg1[%0, %23 - 1] : memref<?x40xf64>
                  %26 = affine.load %arg1[%4, %23 - 1] : memref<?x40xf64>
                  %27 = arith.mulf %25, %26 : f64
                  %28 = arith.subf %24, %27 : f64
                  affine.store %28, %arg1[%0, %4] : memref<?x40xf64>
                  %29 = affine.apply #map5(%17)
                  %30 = affine.load %arg1[%0, %4] : memref<?x40xf64>
                  %31 = affine.load %arg1[%0, %29 - 1] : memref<?x40xf64>
                  %32 = affine.load %arg1[%4, %29 - 1] : memref<?x40xf64>
                  %33 = arith.mulf %31, %32 : f64
                  %34 = arith.subf %30, %33 : f64
                  affine.store %34, %arg1[%0, %4] : memref<?x40xf64>
                  %35 = affine.apply #map6(%17)
                  %36 = affine.load %arg1[%0, %4] : memref<?x40xf64>
                  %37 = affine.load %arg1[%0, %35 - 1] : memref<?x40xf64>
                  %38 = affine.load %arg1[%4, %35 - 1] : memref<?x40xf64>
                  %39 = arith.mulf %37, %38 : f64
                  %40 = arith.subf %36, %39 : f64
                  affine.store %40, %arg1[%0, %4] : memref<?x40xf64>
                }
                affine.for %arg7 = 0 to #map14(%4) {
                  %17 = affine.apply #map15(%4, %arg7)
                  %18 = affine.load %arg1[%0, %4] : memref<?x40xf64>
                  %19 = affine.load %arg1[%0, %17 - 1] : memref<?x40xf64>
                  %20 = affine.load %arg1[%4, %17 - 1] : memref<?x40xf64>
                  %21 = arith.mulf %19, %20 : f64
                  %22 = arith.subf %18, %21 : f64
                  affine.store %22, %arg1[%0, %4] : memref<?x40xf64>
                }
                %5 = affine.load %arg1[%0, %0] : memref<?x40xf64>
                %6 = affine.load %arg1[%0, %4 - 1] : memref<?x40xf64>
                %7 = arith.mulf %6, %6 : f64
                %8 = arith.subf %5, %7 : f64
                affine.store %8, %arg1[%0, %0] : memref<?x40xf64>
                %9 = affine.load %arg1[%0, %4] : memref<?x40xf64>
                %10 = affine.load %arg1[%0, %4 - 1] : memref<?x40xf64>
                %11 = affine.load %arg1[%4, %4 - 1] : memref<?x40xf64>
                %12 = arith.mulf %10, %11 : f64
                %13 = arith.subf %9, %12 : f64
                affine.store %13, %arg1[%0, %4] : memref<?x40xf64>
                %14 = affine.load %arg1[%0, %4] : memref<?x40xf64>
                %15 = affine.load %arg1[%4, %4] : memref<?x40xf64>
                %16 = arith.divf %14, %15 : f64
                affine.store %16, %arg1[%0, %4] : memref<?x40xf64>
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

