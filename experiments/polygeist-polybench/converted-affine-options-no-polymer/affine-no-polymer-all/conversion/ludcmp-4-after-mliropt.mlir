#map = affine_map<(d0) -> (d0 * 4)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0) -> (d0)>
#map3 = affine_map<(d0) -> (d0 floordiv 4)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (d0 mod 4)>
#map8 = affine_map<(d0, d1) -> (d1 + (d0 floordiv 4) * 4)>
#map9 = affine_map<(d0) -> (-d0 + 40)>
#map10 = affine_map<(d0, d1) -> (-d0 + d1 * 4 + 40)>
#map11 = affine_map<(d0, d1) -> (-d0 + d1 + (d0 floordiv 4) * 4 + 40)>
module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 10 {
      %1 = affine.apply #map(%arg5)
      affine.for %arg6 = 0 to 4 {
        %2 = affine.apply #map1(%1, %arg6)
        affine.for %arg7 = 0 to #map2(%2) {
          %3 = affine.load %arg1[%2, %arg7] : memref<?x40xf64>
          affine.store %3, %alloca[] : memref<f64>
          affine.for %arg8 = 0 to #map3(%arg7) {
            %7 = affine.apply #map(%arg8)
            %8 = affine.load %arg1[%2, %7] : memref<?x40xf64>
            %9 = affine.load %arg1[%7, %arg7] : memref<?x40xf64>
            %10 = arith.mulf %8, %9 : f64
            %11 = affine.load %alloca[] : memref<f64>
            %12 = arith.subf %11, %10 : f64
            affine.store %12, %alloca[] : memref<f64>
            %13 = affine.apply #map4(%7)
            %14 = affine.load %arg1[%2, %13] : memref<?x40xf64>
            %15 = affine.load %arg1[%13, %arg7] : memref<?x40xf64>
            %16 = arith.mulf %14, %15 : f64
            %17 = affine.load %alloca[] : memref<f64>
            %18 = arith.subf %17, %16 : f64
            affine.store %18, %alloca[] : memref<f64>
            %19 = affine.apply #map5(%7)
            %20 = affine.load %arg1[%2, %19] : memref<?x40xf64>
            %21 = affine.load %arg1[%19, %arg7] : memref<?x40xf64>
            %22 = arith.mulf %20, %21 : f64
            %23 = affine.load %alloca[] : memref<f64>
            %24 = arith.subf %23, %22 : f64
            affine.store %24, %alloca[] : memref<f64>
            %25 = affine.apply #map6(%7)
            %26 = affine.load %arg1[%2, %25] : memref<?x40xf64>
            %27 = affine.load %arg1[%25, %arg7] : memref<?x40xf64>
            %28 = arith.mulf %26, %27 : f64
            %29 = affine.load %alloca[] : memref<f64>
            %30 = arith.subf %29, %28 : f64
            affine.store %30, %alloca[] : memref<f64>
          }
          affine.for %arg8 = 0 to #map7(%arg7) {
            %7 = affine.apply #map8(%arg7, %arg8)
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
        affine.for %arg7 = 0 to #map9(%2) {
          %3 = affine.apply #map1(%2, %arg7)
          %4 = affine.load %arg1[%2, %3] : memref<?x40xf64>
          affine.store %4, %alloca[] : memref<f64>
          affine.for %arg8 = 0 to #map3(%2) {
            %6 = affine.apply #map(%arg8)
            %7 = affine.load %arg1[%2, %6] : memref<?x40xf64>
            %8 = affine.load %arg1[%6, %3] : memref<?x40xf64>
            %9 = arith.mulf %7, %8 : f64
            %10 = affine.load %alloca[] : memref<f64>
            %11 = arith.subf %10, %9 : f64
            affine.store %11, %alloca[] : memref<f64>
            %12 = affine.apply #map4(%6)
            %13 = affine.load %arg1[%2, %12] : memref<?x40xf64>
            %14 = affine.load %arg1[%12, %3] : memref<?x40xf64>
            %15 = arith.mulf %13, %14 : f64
            %16 = affine.load %alloca[] : memref<f64>
            %17 = arith.subf %16, %15 : f64
            affine.store %17, %alloca[] : memref<f64>
            %18 = affine.apply #map5(%6)
            %19 = affine.load %arg1[%2, %18] : memref<?x40xf64>
            %20 = affine.load %arg1[%18, %3] : memref<?x40xf64>
            %21 = arith.mulf %19, %20 : f64
            %22 = affine.load %alloca[] : memref<f64>
            %23 = arith.subf %22, %21 : f64
            affine.store %23, %alloca[] : memref<f64>
            %24 = affine.apply #map6(%6)
            %25 = affine.load %arg1[%2, %24] : memref<?x40xf64>
            %26 = affine.load %arg1[%24, %3] : memref<?x40xf64>
            %27 = arith.mulf %25, %26 : f64
            %28 = affine.load %alloca[] : memref<f64>
            %29 = arith.subf %28, %27 : f64
            affine.store %29, %alloca[] : memref<f64>
          }
          affine.for %arg8 = 0 to #map7(%2) {
            %6 = affine.apply #map8(%2, %arg8)
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
    affine.for %arg5 = 0 to 40 {
      affine.parallel (%arg6) = (0) to (1) {
        %1 = affine.apply #map1(%arg5, %arg6)
        %2 = affine.load %arg2[%1] : memref<?xf64>
        affine.store %2, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map3(%1) {
          %4 = affine.apply #map(%arg7)
          %5 = affine.load %arg1[%1, %4] : memref<?x40xf64>
          %6 = affine.load %arg4[%4] : memref<?xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %alloca[] : memref<f64>
          %9 = arith.subf %8, %7 : f64
          affine.store %9, %alloca[] : memref<f64>
          %10 = affine.apply #map4(%4)
          %11 = affine.load %arg1[%1, %10] : memref<?x40xf64>
          %12 = affine.load %arg4[%10] : memref<?xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = affine.load %alloca[] : memref<f64>
          %15 = arith.subf %14, %13 : f64
          affine.store %15, %alloca[] : memref<f64>
          %16 = affine.apply #map5(%4)
          %17 = affine.load %arg1[%1, %16] : memref<?x40xf64>
          %18 = affine.load %arg4[%16] : memref<?xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = affine.load %alloca[] : memref<f64>
          %21 = arith.subf %20, %19 : f64
          affine.store %21, %alloca[] : memref<f64>
          %22 = affine.apply #map6(%4)
          %23 = affine.load %arg1[%1, %22] : memref<?x40xf64>
          %24 = affine.load %arg4[%22] : memref<?xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = affine.load %alloca[] : memref<f64>
          %27 = arith.subf %26, %25 : f64
          affine.store %27, %alloca[] : memref<f64>
        }
        affine.for %arg7 = 0 to #map7(%1) {
          %4 = affine.apply #map8(%1, %arg7)
          %5 = affine.load %arg1[%1, %4] : memref<?x40xf64>
          %6 = affine.load %arg4[%4] : memref<?xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %alloca[] : memref<f64>
          %9 = arith.subf %8, %7 : f64
          affine.store %9, %alloca[] : memref<f64>
        }
        %3 = affine.load %alloca[] : memref<f64>
        affine.store %3, %arg4[%1] : memref<?xf64>
      }
    }
    affine.for %arg5 = 0 to 40 {
      affine.parallel (%arg6) = (0) to (1) {
        %1 = affine.apply #map1(%arg5, %arg6)
        %2 = affine.load %arg4[-%1 + 39] : memref<?xf64>
        affine.store %2, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map3(%1) {
          %6 = affine.apply #map10(%1, %arg7)
          %7 = affine.load %arg1[-%1 + 39, %6] : memref<?x40xf64>
          %8 = affine.load %arg3[%6] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = affine.load %alloca[] : memref<f64>
          %11 = arith.subf %10, %9 : f64
          affine.store %11, %alloca[] : memref<f64>
          %12 = affine.apply #map4(%6)
          %13 = affine.load %arg1[-%1 + 39, %12] : memref<?x40xf64>
          %14 = affine.load %arg3[%12] : memref<?xf64>
          %15 = arith.mulf %13, %14 : f64
          %16 = affine.load %alloca[] : memref<f64>
          %17 = arith.subf %16, %15 : f64
          affine.store %17, %alloca[] : memref<f64>
          %18 = affine.apply #map5(%6)
          %19 = affine.load %arg1[-%1 + 39, %18] : memref<?x40xf64>
          %20 = affine.load %arg3[%18] : memref<?xf64>
          %21 = arith.mulf %19, %20 : f64
          %22 = affine.load %alloca[] : memref<f64>
          %23 = arith.subf %22, %21 : f64
          affine.store %23, %alloca[] : memref<f64>
          %24 = affine.apply #map6(%6)
          %25 = affine.load %arg1[-%1 + 39, %24] : memref<?x40xf64>
          %26 = affine.load %arg3[%24] : memref<?xf64>
          %27 = arith.mulf %25, %26 : f64
          %28 = affine.load %alloca[] : memref<f64>
          %29 = arith.subf %28, %27 : f64
          affine.store %29, %alloca[] : memref<f64>
        }
        affine.for %arg7 = 0 to #map7(%1) {
          %6 = affine.apply #map11(%1, %arg7)
          %7 = affine.load %arg1[-%1 + 39, %6] : memref<?x40xf64>
          %8 = affine.load %arg3[%6] : memref<?xf64>
          %9 = arith.mulf %7, %8 : f64
          %10 = affine.load %alloca[] : memref<f64>
          %11 = arith.subf %10, %9 : f64
          affine.store %11, %alloca[] : memref<f64>
        }
        %3 = affine.load %alloca[] : memref<f64>
        %4 = affine.load %arg1[-%1 + 39, -%1 + 39] : memref<?x40xf64>
        %5 = arith.divf %3, %4 : f64
        affine.store %5, %arg3[-%1 + 39] : memref<?xf64>
      }
    }
    return
  }
}

