#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0)>
#map2 = affine_map<(d0) -> (d0 + ((-d0) floordiv 4) * 4 + 64)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0, d1) -> (1, d0 * 32, d1 * 32 - 39)>
#map6 = affine_map<(d0, d1) -> (d0 * 16 + 1, d1 * 32 + 32)>
#map7 = affine_map<(d0) -> (d0 * 32)>
#map8 = affine_map<(d0) -> ((d0 floordiv 4) * 4 + 40)>
#map9 = affine_map<(d0) -> (d0 + 40)>
#map10 = affine_map<(d0, d1, d2) -> (2, d0 * 32, d1 * 16 + 1, d1 * 32 - d2 * 32 - 30)>
#map11 = affine_map<(d0, d1) -> (40, d0 * 32 + 32, d1 * 16 + 16)>
#map12 = affine_map<(d0) -> (d0 * 2)>
#map13 = affine_map<(d0) -> (d0 * 2 + ((-d0) floordiv 2) * 4 + 32)>
#map14 = affine_map<(d0, d1) -> (d0 * 32 - d1 + 32)>
#map15 = affine_map<(d0, d1) -> (d0 * 32 + 64, d1 + 40)>
#map16 = affine_map<(d0, d1, d2) -> (1, d0 * 32, d1 * 32 - d2 + 1)>
#map17 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1)>
#map18 = affine_map<(d0, d1) -> (d0 * 32, d1)>
#map19 = affine_map<(d0, d1) -> (d0 + d1)>
#map20 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 + 40)>
#map21 = affine_map<(d0) -> (d0 * 16 + 16)>
#map22 = affine_map<(d0) -> (40, d0 * 32 + 32)>
#map23 = affine_map<(d0, d1) -> (d0 + (d1 floordiv 4) * 4)>
#map24 = affine_map<(d0) -> (32, d0)>
#map25 = affine_map<(d0, d1) -> (d0 + d1 * 32 + ((-d0) floordiv 4) * 4 + 32)>
#map26 = affine_map<(d0) -> (d0 * 32 + 32)>
#set = affine_set<(d0, d1, d2) : (d0 - 1 == 0, d1 - 1 == 0, d2 - 1 == 0)>
#set1 = affine_set<(d0, d1, d2) : (d0 == 0, d1 == 0, d2 == 0)>
#set2 = affine_set<(d0) : (d0 == 0)>
#set3 = affine_set<(d0, d1, d2) : (d0 - 1 == 0, d1 == 0, d2 - 2 == 0)>
#set4 = affine_set<(d0, d1, d2) : (d0 - (d1 - 1) == 0, d2 == 0)>
#set5 = affine_set<(d0, d1, d2) : (d0 - d1 == 0, d2 == 0)>
module {
  func.func @kernel_lu(%arg0: i32, %arg1: memref<?x40xf64>) {
    %c66 = arith.constant 66 : index
    %c66_0 = arith.constant 66 : index
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = 0 to #map(%arg2) {
        affine.for %arg4 = #map1(%arg2) to 3 {
          affine.if #set(%arg2, %arg3, %arg4) {
            affine.for %arg5 = 33 to 40 {
              affine.for %arg6 = 32 to #map1(%arg5) {
                affine.for %arg7 = #map1(%arg5) to #map2(%arg5) step 4 {
                  %0 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %1 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %2 = affine.load %arg1[-%arg5 + %arg7, %arg6] : memref<?x40xf64>
                  %3 = arith.mulf %1, %2 : f64
                  %4 = arith.subf %0, %3 : f64
                  affine.store %4, %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %5 = affine.apply #map(%arg7)
                  %6 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %7 = affine.load %arg1[%arg5, -%arg5 + %5] : memref<?x40xf64>
                  %8 = affine.load %arg1[-%arg5 + %5, %arg6] : memref<?x40xf64>
                  %9 = arith.mulf %7, %8 : f64
                  %10 = arith.subf %6, %9 : f64
                  affine.store %10, %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %11 = affine.apply #map3(%arg7)
                  %12 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %13 = affine.load %arg1[%arg5, -%arg5 + %11] : memref<?x40xf64>
                  %14 = affine.load %arg1[-%arg5 + %11, %arg6] : memref<?x40xf64>
                  %15 = arith.mulf %13, %14 : f64
                  %16 = arith.subf %12, %15 : f64
                  affine.store %16, %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %17 = affine.apply #map4(%arg7)
                  %18 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %19 = affine.load %arg1[%arg5, -%arg5 + %17] : memref<?x40xf64>
                  %20 = affine.load %arg1[-%arg5 + %17, %arg6] : memref<?x40xf64>
                  %21 = arith.mulf %19, %20 : f64
                  %22 = arith.subf %18, %21 : f64
                  affine.store %22, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
                affine.for %arg7 = #map2(%arg5) to 64 {
                  %0 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %1 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %2 = affine.load %arg1[-%arg5 + %arg7, %arg6] : memref<?x40xf64>
                  %3 = arith.mulf %1, %2 : f64
                  %4 = arith.subf %0, %3 : f64
                  affine.store %4, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
              }
            }
          }
          affine.if #set1(%arg2, %arg3, %arg4) {
            %0 = affine.load %arg1[1, 0] : memref<?x40xf64>
            %1 = affine.load %arg1[0, 0] : memref<?x40xf64>
            %2 = arith.divf %0, %1 : f64
            affine.store %2, %arg1[1, 0] : memref<?x40xf64>
            affine.for %arg5 = 2 to 30 step 4 {
              %3 = affine.load %arg1[1, %arg5 - 1] : memref<?x40xf64>
              %4 = affine.load %arg1[1, 0] : memref<?x40xf64>
              %5 = affine.load %arg1[0, %arg5 - 1] : memref<?x40xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = arith.subf %3, %6 : f64
              affine.store %7, %arg1[1, %arg5 - 1] : memref<?x40xf64>
              %8 = affine.apply #map(%arg5)
              %9 = affine.load %arg1[1, %8 - 1] : memref<?x40xf64>
              %10 = affine.load %arg1[1, 0] : memref<?x40xf64>
              %11 = affine.load %arg1[0, %8 - 1] : memref<?x40xf64>
              %12 = arith.mulf %10, %11 : f64
              %13 = arith.subf %9, %12 : f64
              affine.store %13, %arg1[1, %8 - 1] : memref<?x40xf64>
              %14 = affine.apply #map3(%arg5)
              %15 = affine.load %arg1[1, %14 - 1] : memref<?x40xf64>
              %16 = affine.load %arg1[1, 0] : memref<?x40xf64>
              %17 = affine.load %arg1[0, %14 - 1] : memref<?x40xf64>
              %18 = arith.mulf %16, %17 : f64
              %19 = arith.subf %15, %18 : f64
              affine.store %19, %arg1[1, %14 - 1] : memref<?x40xf64>
              %20 = affine.apply #map4(%arg5)
              %21 = affine.load %arg1[1, %20 - 1] : memref<?x40xf64>
              %22 = affine.load %arg1[1, 0] : memref<?x40xf64>
              %23 = affine.load %arg1[0, %20 - 1] : memref<?x40xf64>
              %24 = arith.mulf %22, %23 : f64
              %25 = arith.subf %21, %24 : f64
              affine.store %25, %arg1[1, %20 - 1] : memref<?x40xf64>
            }
            affine.for %arg5 = 30 to 32 {
              %3 = affine.load %arg1[1, %arg5 - 1] : memref<?x40xf64>
              %4 = affine.load %arg1[1, 0] : memref<?x40xf64>
              %5 = affine.load %arg1[0, %arg5 - 1] : memref<?x40xf64>
              %6 = arith.mulf %4, %5 : f64
              %7 = arith.subf %3, %6 : f64
              affine.store %7, %arg1[1, %arg5 - 1] : memref<?x40xf64>
            }
          }
          affine.if #set2(%arg3) {
            affine.for %arg5 = max #map5(%arg2, %arg4) to min #map6(%arg4, %arg2) {
              affine.for %arg6 = 0 to #map1(%arg5) {
                affine.for %arg7 = #map7(%arg4) to #map8(%arg5) step 4 {
                  %0 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %1 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %2 = affine.load %arg1[%arg6, -%arg5 + %arg7] : memref<?x40xf64>
                  %3 = arith.mulf %1, %2 : f64
                  %4 = arith.subf %0, %3 : f64
                  affine.store %4, %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %5 = affine.apply #map(%arg7)
                  %6 = affine.load %arg1[%arg5, -%arg5 + %5] : memref<?x40xf64>
                  %7 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %8 = affine.load %arg1[%arg6, -%arg5 + %5] : memref<?x40xf64>
                  %9 = arith.mulf %7, %8 : f64
                  %10 = arith.subf %6, %9 : f64
                  affine.store %10, %arg1[%arg5, -%arg5 + %5] : memref<?x40xf64>
                  %11 = affine.apply #map3(%arg7)
                  %12 = affine.load %arg1[%arg5, -%arg5 + %11] : memref<?x40xf64>
                  %13 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %14 = affine.load %arg1[%arg6, -%arg5 + %11] : memref<?x40xf64>
                  %15 = arith.mulf %13, %14 : f64
                  %16 = arith.subf %12, %15 : f64
                  affine.store %16, %arg1[%arg5, -%arg5 + %11] : memref<?x40xf64>
                  %17 = affine.apply #map4(%arg7)
                  %18 = affine.load %arg1[%arg5, -%arg5 + %17] : memref<?x40xf64>
                  %19 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %20 = affine.load %arg1[%arg6, -%arg5 + %17] : memref<?x40xf64>
                  %21 = arith.mulf %19, %20 : f64
                  %22 = arith.subf %18, %21 : f64
                  affine.store %22, %arg1[%arg5, -%arg5 + %17] : memref<?x40xf64>
                }
                affine.for %arg7 = #map8(%arg5) to #map9(%arg5) {
                  %0 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %1 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %2 = affine.load %arg1[%arg6, -%arg5 + %arg7] : memref<?x40xf64>
                  %3 = arith.mulf %1, %2 : f64
                  %4 = arith.subf %0, %3 : f64
                  affine.store %4, %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                }
              }
            }
          }
          affine.if #set3(%arg2, %arg3, %arg4) {
            affine.for %arg5 = 0 to 31 {
              %26 = affine.load %arg1[33, %c66_0 - 33] : memref<?x40xf64>
              %27 = affine.load %arg1[33, %arg5] : memref<?x40xf64>
              %28 = affine.load %arg1[%arg5, %c66_0 - 33] : memref<?x40xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = arith.subf %26, %29 : f64
              affine.store %30, %arg1[33, %c66_0 - 33] : memref<?x40xf64>
              %31 = affine.apply #map(%c66_0)
              %32 = affine.load %arg1[33, %31 - 33] : memref<?x40xf64>
              %33 = affine.load %arg1[33, %arg5] : memref<?x40xf64>
              %34 = affine.load %arg1[%arg5, %31 - 33] : memref<?x40xf64>
              %35 = arith.mulf %33, %34 : f64
              %36 = arith.subf %32, %35 : f64
              affine.store %36, %arg1[33, %31 - 33] : memref<?x40xf64>
              %37 = affine.apply #map3(%c66_0)
              %38 = affine.load %arg1[33, %37 - 33] : memref<?x40xf64>
              %39 = affine.load %arg1[33, %arg5] : memref<?x40xf64>
              %40 = affine.load %arg1[%arg5, %37 - 33] : memref<?x40xf64>
              %41 = arith.mulf %39, %40 : f64
              %42 = arith.subf %38, %41 : f64
              affine.store %42, %arg1[33, %37 - 33] : memref<?x40xf64>
              %43 = affine.apply #map4(%c66_0)
              %44 = affine.load %arg1[33, %43 - 33] : memref<?x40xf64>
              %45 = affine.load %arg1[33, %arg5] : memref<?x40xf64>
              %46 = affine.load %arg1[%arg5, %43 - 33] : memref<?x40xf64>
              %47 = arith.mulf %45, %46 : f64
              %48 = arith.subf %44, %47 : f64
              affine.store %48, %arg1[33, %43 - 33] : memref<?x40xf64>
              affine.for %arg6 = 70 to 73 {
                %49 = affine.load %arg1[33, %arg6 - 33] : memref<?x40xf64>
                %50 = affine.load %arg1[33, %arg5] : memref<?x40xf64>
                %51 = affine.load %arg1[%arg5, %arg6 - 33] : memref<?x40xf64>
                %52 = arith.mulf %50, %51 : f64
                %53 = arith.subf %49, %52 : f64
                affine.store %53, %arg1[33, %arg6 - 33] : memref<?x40xf64>
              }
            }
            %0 = affine.load %arg1[33, 31] : memref<?x40xf64>
            %1 = affine.load %arg1[31, 31] : memref<?x40xf64>
            %2 = arith.divf %0, %1 : f64
            affine.store %2, %arg1[33, 31] : memref<?x40xf64>
            %3 = affine.load %arg1[33, %c66 - 33] : memref<?x40xf64>
            %4 = affine.load %arg1[33, 31] : memref<?x40xf64>
            %5 = affine.load %arg1[31, %c66 - 33] : memref<?x40xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = arith.subf %3, %6 : f64
            affine.store %7, %arg1[33, %c66 - 33] : memref<?x40xf64>
            %8 = affine.apply #map(%c66)
            %9 = affine.load %arg1[33, %8 - 33] : memref<?x40xf64>
            %10 = affine.load %arg1[33, 31] : memref<?x40xf64>
            %11 = affine.load %arg1[31, %8 - 33] : memref<?x40xf64>
            %12 = arith.mulf %10, %11 : f64
            %13 = arith.subf %9, %12 : f64
            affine.store %13, %arg1[33, %8 - 33] : memref<?x40xf64>
            %14 = affine.apply #map3(%c66)
            %15 = affine.load %arg1[33, %14 - 33] : memref<?x40xf64>
            %16 = affine.load %arg1[33, 31] : memref<?x40xf64>
            %17 = affine.load %arg1[31, %14 - 33] : memref<?x40xf64>
            %18 = arith.mulf %16, %17 : f64
            %19 = arith.subf %15, %18 : f64
            affine.store %19, %arg1[33, %14 - 33] : memref<?x40xf64>
            %20 = affine.apply #map4(%c66)
            %21 = affine.load %arg1[33, %20 - 33] : memref<?x40xf64>
            %22 = affine.load %arg1[33, 31] : memref<?x40xf64>
            %23 = affine.load %arg1[31, %20 - 33] : memref<?x40xf64>
            %24 = arith.mulf %22, %23 : f64
            %25 = arith.subf %21, %24 : f64
            affine.store %25, %arg1[33, %20 - 33] : memref<?x40xf64>
            affine.for %arg5 = 70 to 73 {
              %26 = affine.load %arg1[33, %arg5 - 33] : memref<?x40xf64>
              %27 = affine.load %arg1[33, 31] : memref<?x40xf64>
              %28 = affine.load %arg1[31, %arg5 - 33] : memref<?x40xf64>
              %29 = arith.mulf %27, %28 : f64
              %30 = arith.subf %26, %29 : f64
              affine.store %30, %arg1[33, %arg5 - 33] : memref<?x40xf64>
            }
          }
          affine.for %arg5 = max #map10(%arg2, %arg4, %arg3) to min #map11(%arg2, %arg4) {
            affine.if #set1(%arg2, %arg3, %arg4) {
              %0 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
              %1 = affine.load %arg1[0, 0] : memref<?x40xf64>
              %2 = arith.divf %0, %1 : f64
              affine.store %2, %arg1[%arg5, 0] : memref<?x40xf64>
              affine.for %arg6 = #map12(%arg5) to #map13(%arg5) step 4 {
                %3 = affine.load %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
                %5 = affine.load %arg1[0, -%arg5 + %arg6] : memref<?x40xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
                %8 = affine.apply #map(%arg6)
                %9 = affine.load %arg1[%arg5, -%arg5 + %8] : memref<?x40xf64>
                %10 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
                %11 = affine.load %arg1[0, -%arg5 + %8] : memref<?x40xf64>
                %12 = arith.mulf %10, %11 : f64
                %13 = arith.subf %9, %12 : f64
                affine.store %13, %arg1[%arg5, -%arg5 + %8] : memref<?x40xf64>
                %14 = affine.apply #map3(%arg6)
                %15 = affine.load %arg1[%arg5, -%arg5 + %14] : memref<?x40xf64>
                %16 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
                %17 = affine.load %arg1[0, -%arg5 + %14] : memref<?x40xf64>
                %18 = arith.mulf %16, %17 : f64
                %19 = arith.subf %15, %18 : f64
                affine.store %19, %arg1[%arg5, -%arg5 + %14] : memref<?x40xf64>
                %20 = affine.apply #map4(%arg6)
                %21 = affine.load %arg1[%arg5, -%arg5 + %20] : memref<?x40xf64>
                %22 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
                %23 = affine.load %arg1[0, -%arg5 + %20] : memref<?x40xf64>
                %24 = arith.mulf %22, %23 : f64
                %25 = arith.subf %21, %24 : f64
                affine.store %25, %arg1[%arg5, -%arg5 + %20] : memref<?x40xf64>
              }
              affine.for %arg6 = #map13(%arg5) to 32 {
                %3 = affine.load %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
                %5 = affine.load %arg1[0, -%arg5 + %arg6] : memref<?x40xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
              }
            }
            affine.if #set4(%arg2, %arg4, %arg3) {
              affine.for %arg6 = 0 to #map14(%arg2, %arg5) {
                affine.for %arg7 = #map12(%arg5) to min #map15(%arg2, %arg5) {
                  %0 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %1 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %2 = affine.load %arg1[%arg6, -%arg5 + %arg7] : memref<?x40xf64>
                  %3 = arith.mulf %1, %2 : f64
                  %4 = arith.subf %0, %3 : f64
                  affine.store %4, %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                }
              }
            }
            affine.if #set4(%arg2, %arg4, %arg3) {
              %0 = affine.load %arg1[%arg5, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
              %1 = affine.load %arg1[%arg5 * 32 - %arg2 + 32, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
              %2 = arith.divf %0, %1 : f64
              affine.store %2, %arg1[%arg5, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
              affine.for %arg6 = #map12(%arg5) to min #map15(%arg2, %arg5) {
                %3 = affine.load %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg5, %arg5 * 32 - %arg2 + 32] : memref<?x40xf64>
                %5 = affine.load %arg1[%arg5 * 32 - %arg2 + 32, -%arg5 + %arg6] : memref<?x40xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg1[%arg5, -%arg5 + %arg6] : memref<?x40xf64>
              }
            }
            affine.for %arg6 = max #map16(%arg3, %arg4, %arg5) to min #map17(%arg3, %arg5) {
              affine.for %arg7 = max #map18(%arg4, %arg5) to #map19(%arg5, %arg6) {
                %3 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                %5 = affine.load %arg1[-%arg5 + %arg7, %arg6] : memref<?x40xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg1[%arg5, %arg6] : memref<?x40xf64>
              }
              %0 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
              %1 = affine.load %arg1[%arg6, %arg6] : memref<?x40xf64>
              %2 = arith.divf %0, %1 : f64
              affine.store %2, %arg1[%arg5, %arg6] : memref<?x40xf64>
              affine.for %arg7 = #map12(%arg5) to min #map20(%arg4, %arg5) {
                %3 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %5 = affine.load %arg1[%arg6, -%arg5 + %arg7] : memref<?x40xf64>
                %6 = arith.mulf %4, %5 : f64
                %7 = arith.subf %3, %6 : f64
                affine.store %7, %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
              }
            }
          }
          affine.if #set5(%arg2, %arg4, %arg3) {
            affine.for %arg5 = #map21(%arg2) to min #map22(%arg2) {
              %0 = affine.load %arg1[%arg5, 0] : memref<?x40xf64>
              %1 = affine.load %arg1[0, 0] : memref<?x40xf64>
              %2 = arith.divf %0, %1 : f64
              affine.store %2, %arg1[%arg5, 0] : memref<?x40xf64>
              affine.for %arg6 = 1 to #map14(%arg2, %arg5) {
                affine.for %arg7 = #map1(%arg5) to #map23(%arg5, %arg6) step 4 {
                  %6 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %7 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %8 = affine.load %arg1[-%arg5 + %arg7, %arg6] : memref<?x40xf64>
                  %9 = arith.mulf %7, %8 : f64
                  %10 = arith.subf %6, %9 : f64
                  affine.store %10, %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %11 = affine.apply #map(%arg7)
                  %12 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %13 = affine.load %arg1[%arg5, -%arg5 + %11] : memref<?x40xf64>
                  %14 = affine.load %arg1[-%arg5 + %11, %arg6] : memref<?x40xf64>
                  %15 = arith.mulf %13, %14 : f64
                  %16 = arith.subf %12, %15 : f64
                  affine.store %16, %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %17 = affine.apply #map3(%arg7)
                  %18 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %19 = affine.load %arg1[%arg5, -%arg5 + %17] : memref<?x40xf64>
                  %20 = affine.load %arg1[-%arg5 + %17, %arg6] : memref<?x40xf64>
                  %21 = arith.mulf %19, %20 : f64
                  %22 = arith.subf %18, %21 : f64
                  affine.store %22, %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %23 = affine.apply #map4(%arg7)
                  %24 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %25 = affine.load %arg1[%arg5, -%arg5 + %23] : memref<?x40xf64>
                  %26 = affine.load %arg1[-%arg5 + %23, %arg6] : memref<?x40xf64>
                  %27 = arith.mulf %25, %26 : f64
                  %28 = arith.subf %24, %27 : f64
                  affine.store %28, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
                affine.for %arg7 = #map23(%arg5, %arg6) to #map19(%arg5, %arg6) {
                  %6 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %7 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %8 = affine.load %arg1[-%arg5 + %arg7, %arg6] : memref<?x40xf64>
                  %9 = arith.mulf %7, %8 : f64
                  %10 = arith.subf %6, %9 : f64
                  affine.store %10, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
                %3 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                %4 = affine.load %arg1[%arg6, %arg6] : memref<?x40xf64>
                %5 = arith.divf %3, %4 : f64
                affine.store %5, %arg1[%arg5, %arg6] : memref<?x40xf64>
              }
              affine.for %arg6 = #map14(%arg2, %arg5) to min #map24(%arg5) {
                affine.for %arg7 = #map1(%arg5) to #map25(%arg5, %arg2) step 4 {
                  %3 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %4 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %5 = affine.load %arg1[-%arg5 + %arg7, %arg6] : memref<?x40xf64>
                  %6 = arith.mulf %4, %5 : f64
                  %7 = arith.subf %3, %6 : f64
                  affine.store %7, %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %8 = affine.apply #map(%arg7)
                  %9 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %10 = affine.load %arg1[%arg5, -%arg5 + %8] : memref<?x40xf64>
                  %11 = affine.load %arg1[-%arg5 + %8, %arg6] : memref<?x40xf64>
                  %12 = arith.mulf %10, %11 : f64
                  %13 = arith.subf %9, %12 : f64
                  affine.store %13, %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %14 = affine.apply #map3(%arg7)
                  %15 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %16 = affine.load %arg1[%arg5, -%arg5 + %14] : memref<?x40xf64>
                  %17 = affine.load %arg1[-%arg5 + %14, %arg6] : memref<?x40xf64>
                  %18 = arith.mulf %16, %17 : f64
                  %19 = arith.subf %15, %18 : f64
                  affine.store %19, %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %20 = affine.apply #map4(%arg7)
                  %21 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %22 = affine.load %arg1[%arg5, -%arg5 + %20] : memref<?x40xf64>
                  %23 = affine.load %arg1[-%arg5 + %20, %arg6] : memref<?x40xf64>
                  %24 = arith.mulf %22, %23 : f64
                  %25 = arith.subf %21, %24 : f64
                  affine.store %25, %arg1[%arg5, %arg6] : memref<?x40xf64>
                }
                affine.for %arg7 = #map25(%arg5, %arg2) to #map26(%arg2) {
                  %3 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
                  %4 = affine.load %arg1[%arg5, -%arg5 + %arg7] : memref<?x40xf64>
                  %5 = affine.load %arg1[-%arg5 + %arg7, %arg6] : memref<?x40xf64>
                  %6 = arith.mulf %4, %5 : f64
                  %7 = arith.subf %3, %6 : f64
                  affine.store %7, %arg1[%arg5, %arg6] : memref<?x40xf64>
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

