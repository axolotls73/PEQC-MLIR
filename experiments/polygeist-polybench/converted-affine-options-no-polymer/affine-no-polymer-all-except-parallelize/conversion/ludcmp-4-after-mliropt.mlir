#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (32, -d0 + 40)>
#map2 = affine_map<(d0, d1) -> (d0 + d1)>
#map3 = affine_map<(d0) -> (d0)>
#map4 = affine_map<(d0) -> (d0 floordiv 4)>
#map5 = affine_map<(d0) -> (d0 * 4)>
#map6 = affine_map<(d0) -> (d0 + 1)>
#map7 = affine_map<(d0) -> (d0 + 2)>
#map8 = affine_map<(d0) -> (d0 + 3)>
#map9 = affine_map<(d0) -> (d0 mod 4)>
#map10 = affine_map<(d0, d1) -> (d1 + (d0 floordiv 4) * 4)>
#map11 = affine_map<(d0) -> (-d0 + 40)>
#map12 = affine_map<(d0, d1) -> (-d0 + d1 * 4 + 40)>
#map13 = affine_map<(d0, d1) -> (-d0 + d1 + (d0 floordiv 4) * 4 + 40)>
module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %0 = llvm.mlir.undef : f64
    %alloca = memref.alloca() : memref<f64>
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 2 {
      %1 = affine.apply #map(%arg5)
      affine.for %arg6 = 0 to min #map1(%1) {
        %2 = affine.apply #map2(%1, %arg6)
        affine.for %arg7 = 0 to #map3(%2) {
          %3 = affine.load %arg1[%2, %arg7] : memref<?x40xf64>
          affine.store %3, %alloca[] : memref<f64>
          affine.for %arg8 = 0 to #map4(%arg7) {
            %7 = affine.apply #map5(%arg8)
            %8 = affine.load %arg1[%2, %7] : memref<?x40xf64>
            %9 = affine.load %arg1[%7, %arg7] : memref<?x40xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = affine.load %alloca[] : memref<f64>
            %12 = arith.subf %11, %10 : f64
            affine.store %12, %alloca[] : memref<f64>
            %13 = affine.apply #map6(%7)
            %14 = affine.load %arg1[%2, %13] : memref<?x40xf64>
            %15 = affine.load %arg1[%13, %arg7] : memref<?x40xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = affine.load %alloca[] : memref<f64>
            %18 = arith.subf %17, %16 : f64
            affine.store %18, %alloca[] : memref<f64>
            %19 = affine.apply #map7(%7)
            %20 = affine.load %arg1[%2, %19] : memref<?x40xf64>
            %21 = affine.load %arg1[%19, %arg7] : memref<?x40xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = affine.load %alloca[] : memref<f64>
            %24 = arith.subf %23, %22 : f64
            affine.store %24, %alloca[] : memref<f64>
            %25 = affine.apply #map8(%7)
            %26 = affine.load %arg1[%2, %25] : memref<?x40xf64>
            %27 = affine.load %arg1[%25, %arg7] : memref<?x40xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = affine.load %alloca[] : memref<f64>
            %30 = arith.subf %29, %28 : f64
            affine.store %30, %alloca[] : memref<f64>
          }
          affine.for %arg8 = 0 to #map9(%arg7) {
            %7 = affine.apply #map10(%arg7, %arg8)
            %8 = affine.load %arg1[%2, %7] : memref<?x40xf64>
            %9 = affine.load %arg1[%7, %arg7] : memref<?x40xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = affine.load %alloca[] : memref<f64>
            %12 = arith.subf %11, %10 : f64
            affine.store %12, %alloca[] : memref<f64>
          }
          %4 = affine.load %alloca[] : memref<f64>
          %5 = affine.load %arg1[%arg7, %arg7] : memref<?x40xf64>
          %6 = arith.divf %4, %5 : f64
          affine.store %6, %arg1[%2, %arg7] : memref<?x40xf64>
        }
        affine.for %arg7 = 0 to #map11(%2) {
          %3 = affine.apply #map2(%2, %arg7)
          %4 = affine.load %arg1[%2, %3] : memref<?x40xf64>
          affine.store %4, %alloca[] : memref<f64>
          affine.for %arg8 = 0 to #map4(%2) {
            %6 = affine.apply #map5(%arg8)
            %7 = affine.load %arg1[%2, %6] : memref<?x40xf64>
            %8 = affine.load %arg1[%6, %3] : memref<?x40xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = affine.load %alloca[] : memref<f64>
            %11 = arith.subf %10, %9 : f64
            affine.store %11, %alloca[] : memref<f64>
            %12 = affine.apply #map6(%6)
            %13 = affine.load %arg1[%2, %12] : memref<?x40xf64>
            %14 = affine.load %arg1[%12, %3] : memref<?x40xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = affine.load %alloca[] : memref<f64>
            %17 = arith.subf %16, %15 : f64
            affine.store %17, %alloca[] : memref<f64>
            %18 = affine.apply #map7(%6)
            %19 = affine.load %arg1[%2, %18] : memref<?x40xf64>
            %20 = affine.load %arg1[%18, %3] : memref<?x40xf64>
            %21 = arith.mulf %19, %20 : f64
            %22 = affine.load %alloca[] : memref<f64>
            %23 = arith.subf %22, %21 : f64
            affine.store %23, %alloca[] : memref<f64>
            %24 = affine.apply #map8(%6)
            %25 = affine.load %arg1[%2, %24] : memref<?x40xf64>
            %26 = affine.load %arg1[%24, %3] : memref<?x40xf64>
            %27 = arith.mulf %25, %26 : f64
            %28 = affine.load %alloca[] : memref<f64>
            %29 = arith.subf %28, %27 : f64
            affine.store %29, %alloca[] : memref<f64>
          }
          affine.for %arg8 = 0 to #map9(%2) {
            %6 = affine.apply #map10(%2, %arg8)
            %7 = affine.load %arg1[%2, %6] : memref<?x40xf64>
            %8 = affine.load %arg1[%6, %3] : memref<?x40xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = affine.load %alloca[] : memref<f64>
            %11 = arith.subf %10, %9 : f64
            affine.store %11, %alloca[] : memref<f64>
          }
          %5 = affine.load %alloca[] : memref<f64>
          affine.store %5, %arg1[%2, %3] : memref<?x40xf64>
        }
      }
    }
    affine.for %arg5 = 0 to 2 {
      %1 = affine.apply #map(%arg5)
      affine.for %arg6 = 0 to min #map1(%1) {
        %2 = affine.apply #map2(%1, %arg6)
        %3 = affine.load %arg2[%2] : memref<?xf64>
        affine.store %3, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map4(%2) {
          %5 = affine.apply #map5(%arg7)
          %6 = affine.load %arg1[%2, %5] : memref<?x40xf64>
          %7 = affine.load %arg4[%5] : memref<?xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %alloca[] : memref<f64>
          %10 = arith.subf %9, %8 : f64
          affine.store %10, %alloca[] : memref<f64>
          %11 = affine.apply #map6(%5)
          %12 = affine.load %arg1[%2, %11] : memref<?x40xf64>
          %13 = affine.load %arg4[%11] : memref<?xf64>
          %14 = arith.mulf %12, %13 : f64
          %15 = affine.load %alloca[] : memref<f64>
          %16 = arith.subf %15, %14 : f64
          affine.store %16, %alloca[] : memref<f64>
          %17 = affine.apply #map7(%5)
          %18 = affine.load %arg1[%2, %17] : memref<?x40xf64>
          %19 = affine.load %arg4[%17] : memref<?xf64>
          %20 = arith.mulf %18, %19 : f64
          %21 = affine.load %alloca[] : memref<f64>
          %22 = arith.subf %21, %20 : f64
          affine.store %22, %alloca[] : memref<f64>
          %23 = affine.apply #map8(%5)
          %24 = affine.load %arg1[%2, %23] : memref<?x40xf64>
          %25 = affine.load %arg4[%23] : memref<?xf64>
          %26 = arith.mulf %24, %25 : f64
          %27 = affine.load %alloca[] : memref<f64>
          %28 = arith.subf %27, %26 : f64
          affine.store %28, %alloca[] : memref<f64>
        }
        affine.for %arg7 = 0 to #map9(%2) {
          %5 = affine.apply #map10(%2, %arg7)
          %6 = affine.load %arg1[%2, %5] : memref<?x40xf64>
          %7 = affine.load %arg4[%5] : memref<?xf64>
          %8 = arith.mulf %6, %7 : f64
          %9 = affine.load %alloca[] : memref<f64>
          %10 = arith.subf %9, %8 : f64
          affine.store %10, %alloca[] : memref<f64>
        }
        %4 = affine.load %alloca[] : memref<f64>
        affine.store %4, %arg4[%2] : memref<?xf64>
      }
    }
    affine.for %arg5 = 0 to 2 {
      %1 = affine.apply #map(%arg5)
      affine.for %arg6 = 0 to min #map1(%1) {
        %2 = affine.apply #map2(%1, %arg6)
        %3 = affine.load %arg4[-%2 + 39] : memref<?xf64>
        affine.store %3, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map4(%2) {
          %7 = affine.apply #map12(%2, %arg7)
          %8 = affine.load %arg1[-%2 + 39, %7] : memref<?x40xf64>
          %9 = affine.load %arg3[%7] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %alloca[] : memref<f64>
          %12 = arith.subf %11, %10 : f64
          affine.store %12, %alloca[] : memref<f64>
          %13 = affine.apply #map6(%7)
          %14 = affine.load %arg1[-%2 + 39, %13] : memref<?x40xf64>
          %15 = affine.load %arg3[%13] : memref<?xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = affine.load %alloca[] : memref<f64>
          %18 = arith.subf %17, %16 : f64
          affine.store %18, %alloca[] : memref<f64>
          %19 = affine.apply #map7(%7)
          %20 = affine.load %arg1[-%2 + 39, %19] : memref<?x40xf64>
          %21 = affine.load %arg3[%19] : memref<?xf64>
          %22 = arith.mulf %20, %21 : f64
          %23 = affine.load %alloca[] : memref<f64>
          %24 = arith.subf %23, %22 : f64
          affine.store %24, %alloca[] : memref<f64>
          %25 = affine.apply #map8(%7)
          %26 = affine.load %arg1[-%2 + 39, %25] : memref<?x40xf64>
          %27 = affine.load %arg3[%25] : memref<?xf64>
          %28 = arith.mulf %26, %27 : f64
          %29 = affine.load %alloca[] : memref<f64>
          %30 = arith.subf %29, %28 : f64
          affine.store %30, %alloca[] : memref<f64>
        }
        affine.for %arg7 = 0 to #map9(%2) {
          %7 = affine.apply #map13(%2, %arg7)
          %8 = affine.load %arg1[-%2 + 39, %7] : memref<?x40xf64>
          %9 = affine.load %arg3[%7] : memref<?xf64>
          %10 = arith.mulf %8, %9 : f64
          %11 = affine.load %alloca[] : memref<f64>
          %12 = arith.subf %11, %10 : f64
          affine.store %12, %alloca[] : memref<f64>
        }
        %4 = affine.load %alloca[] : memref<f64>
        %5 = affine.load %arg1[-%2 + 39, -%2 + 39] : memref<?x40xf64>
        %6 = arith.divf %4, %5 : f64
        affine.store %6, %arg3[-%2 + 39] : memref<?xf64>
      }
    }
    return
  }
}

