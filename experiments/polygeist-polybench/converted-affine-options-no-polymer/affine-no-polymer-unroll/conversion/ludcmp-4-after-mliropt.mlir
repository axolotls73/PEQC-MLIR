#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> ((d0 floordiv 4) * 4)>
#map2 = affine_map<(d0) -> (d0 + 1)>
#map3 = affine_map<(d0) -> (d0 + 2)>
#map4 = affine_map<(d0) -> (d0 + 3)>
#map5 = affine_map<(d0) -> (-d0 + 40)>
#map6 = affine_map<(d0) -> (-d0 + (d0 floordiv 4) * 4 + 40)>
module {
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %alloca = memref.alloca() : memref<f64>
    %0 = llvm.mlir.undef : f64
    affine.store %0, %alloca[] : memref<f64>
    affine.for %arg5 = 0 to 40 {
      affine.for %arg6 = 0 to #map(%arg5) {
        %1 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        affine.store %1, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map1(%arg6) step 4 {
          %5 = affine.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %6 = affine.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %alloca[] : memref<f64>
          %9 = arith.subf %8, %7 : f64
          affine.store %9, %alloca[] : memref<f64>
          %10 = affine.apply #map2(%arg7)
          %11 = affine.load %arg1[%arg5, %10] : memref<?x40xf64>
          %12 = affine.load %arg1[%10, %arg6] : memref<?x40xf64>
          %13 = arith.mulf %11, %12 : f64
          %14 = affine.load %alloca[] : memref<f64>
          %15 = arith.subf %14, %13 : f64
          affine.store %15, %alloca[] : memref<f64>
          %16 = affine.apply #map3(%arg7)
          %17 = affine.load %arg1[%arg5, %16] : memref<?x40xf64>
          %18 = affine.load %arg1[%16, %arg6] : memref<?x40xf64>
          %19 = arith.mulf %17, %18 : f64
          %20 = affine.load %alloca[] : memref<f64>
          %21 = arith.subf %20, %19 : f64
          affine.store %21, %alloca[] : memref<f64>
          %22 = affine.apply #map4(%arg7)
          %23 = affine.load %arg1[%arg5, %22] : memref<?x40xf64>
          %24 = affine.load %arg1[%22, %arg6] : memref<?x40xf64>
          %25 = arith.mulf %23, %24 : f64
          %26 = affine.load %alloca[] : memref<f64>
          %27 = arith.subf %26, %25 : f64
          affine.store %27, %alloca[] : memref<f64>
        }
        affine.for %arg7 = #map1(%arg6) to #map(%arg6) {
          %5 = affine.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %6 = affine.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = affine.load %alloca[] : memref<f64>
          %9 = arith.subf %8, %7 : f64
          affine.store %9, %alloca[] : memref<f64>
        }
        %2 = affine.load %alloca[] : memref<f64>
        %3 = affine.load %arg1[%arg6, %arg6] : memref<?x40xf64>
        %4 = arith.divf %2, %3 : f64
        affine.store %4, %arg1[%arg5, %arg6] : memref<?x40xf64>
      }
      affine.for %arg6 = #map(%arg5) to 40 {
        %1 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        affine.store %1, %alloca[] : memref<f64>
        affine.for %arg7 = 0 to #map1(%arg5) step 4 {
          %3 = affine.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %4 = affine.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %alloca[] : memref<f64>
          %7 = arith.subf %6, %5 : f64
          affine.store %7, %alloca[] : memref<f64>
          %8 = affine.apply #map2(%arg7)
          %9 = affine.load %arg1[%arg5, %8] : memref<?x40xf64>
          %10 = affine.load %arg1[%8, %arg6] : memref<?x40xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = affine.load %alloca[] : memref<f64>
          %13 = arith.subf %12, %11 : f64
          affine.store %13, %alloca[] : memref<f64>
          %14 = affine.apply #map3(%arg7)
          %15 = affine.load %arg1[%arg5, %14] : memref<?x40xf64>
          %16 = affine.load %arg1[%14, %arg6] : memref<?x40xf64>
          %17 = arith.mulf %15, %16 : f64
          %18 = affine.load %alloca[] : memref<f64>
          %19 = arith.subf %18, %17 : f64
          affine.store %19, %alloca[] : memref<f64>
          %20 = affine.apply #map4(%arg7)
          %21 = affine.load %arg1[%arg5, %20] : memref<?x40xf64>
          %22 = affine.load %arg1[%20, %arg6] : memref<?x40xf64>
          %23 = arith.mulf %21, %22 : f64
          %24 = affine.load %alloca[] : memref<f64>
          %25 = arith.subf %24, %23 : f64
          affine.store %25, %alloca[] : memref<f64>
        }
        affine.for %arg7 = #map1(%arg5) to #map(%arg5) {
          %3 = affine.load %arg1[%arg5, %arg7] : memref<?x40xf64>
          %4 = affine.load %arg1[%arg7, %arg6] : memref<?x40xf64>
          %5 = arith.mulf %3, %4 : f64
          %6 = affine.load %alloca[] : memref<f64>
          %7 = arith.subf %6, %5 : f64
          affine.store %7, %alloca[] : memref<f64>
        }
        %2 = affine.load %alloca[] : memref<f64>
        affine.store %2, %arg1[%arg5, %arg6] : memref<?x40xf64>
      }
    }
    affine.for %arg5 = 0 to 40 {
      %1 = affine.load %arg2[%arg5] : memref<?xf64>
      affine.store %1, %alloca[] : memref<f64>
      affine.for %arg6 = 0 to #map1(%arg5) step 4 {
        %3 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        %4 = affine.load %arg4[%arg6] : memref<?xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = affine.load %alloca[] : memref<f64>
        %7 = arith.subf %6, %5 : f64
        affine.store %7, %alloca[] : memref<f64>
        %8 = affine.apply #map2(%arg6)
        %9 = affine.load %arg1[%arg5, %8] : memref<?x40xf64>
        %10 = affine.load %arg4[%8] : memref<?xf64>
        %11 = arith.mulf %9, %10 : f64
        %12 = affine.load %alloca[] : memref<f64>
        %13 = arith.subf %12, %11 : f64
        affine.store %13, %alloca[] : memref<f64>
        %14 = affine.apply #map3(%arg6)
        %15 = affine.load %arg1[%arg5, %14] : memref<?x40xf64>
        %16 = affine.load %arg4[%14] : memref<?xf64>
        %17 = arith.mulf %15, %16 : f64
        %18 = affine.load %alloca[] : memref<f64>
        %19 = arith.subf %18, %17 : f64
        affine.store %19, %alloca[] : memref<f64>
        %20 = affine.apply #map4(%arg6)
        %21 = affine.load %arg1[%arg5, %20] : memref<?x40xf64>
        %22 = affine.load %arg4[%20] : memref<?xf64>
        %23 = arith.mulf %21, %22 : f64
        %24 = affine.load %alloca[] : memref<f64>
        %25 = arith.subf %24, %23 : f64
        affine.store %25, %alloca[] : memref<f64>
      }
      affine.for %arg6 = #map1(%arg5) to #map(%arg5) {
        %3 = affine.load %arg1[%arg5, %arg6] : memref<?x40xf64>
        %4 = affine.load %arg4[%arg6] : memref<?xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = affine.load %alloca[] : memref<f64>
        %7 = arith.subf %6, %5 : f64
        affine.store %7, %alloca[] : memref<f64>
      }
      %2 = affine.load %alloca[] : memref<f64>
      affine.store %2, %arg4[%arg5] : memref<?xf64>
    }
    affine.for %arg5 = 0 to 40 {
      %1 = affine.load %arg4[-%arg5 + 39] : memref<?xf64>
      affine.store %1, %alloca[] : memref<f64>
      affine.for %arg6 = #map5(%arg5) to #map6(%arg5) step 4 {
        %5 = affine.load %arg1[-%arg5 + 39, %arg6] : memref<?x40xf64>
        %6 = affine.load %arg3[%arg6] : memref<?xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = affine.load %alloca[] : memref<f64>
        %9 = arith.subf %8, %7 : f64
        affine.store %9, %alloca[] : memref<f64>
        %10 = affine.apply #map2(%arg6)
        %11 = affine.load %arg1[-%arg5 + 39, %10] : memref<?x40xf64>
        %12 = affine.load %arg3[%10] : memref<?xf64>
        %13 = arith.mulf %11, %12 : f64
        %14 = affine.load %alloca[] : memref<f64>
        %15 = arith.subf %14, %13 : f64
        affine.store %15, %alloca[] : memref<f64>
        %16 = affine.apply #map3(%arg6)
        %17 = affine.load %arg1[-%arg5 + 39, %16] : memref<?x40xf64>
        %18 = affine.load %arg3[%16] : memref<?xf64>
        %19 = arith.mulf %17, %18 : f64
        %20 = affine.load %alloca[] : memref<f64>
        %21 = arith.subf %20, %19 : f64
        affine.store %21, %alloca[] : memref<f64>
        %22 = affine.apply #map4(%arg6)
        %23 = affine.load %arg1[-%arg5 + 39, %22] : memref<?x40xf64>
        %24 = affine.load %arg3[%22] : memref<?xf64>
        %25 = arith.mulf %23, %24 : f64
        %26 = affine.load %alloca[] : memref<f64>
        %27 = arith.subf %26, %25 : f64
        affine.store %27, %alloca[] : memref<f64>
      }
      affine.for %arg6 = #map6(%arg5) to 40 {
        %5 = affine.load %arg1[-%arg5 + 39, %arg6] : memref<?x40xf64>
        %6 = affine.load %arg3[%arg6] : memref<?xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = affine.load %alloca[] : memref<f64>
        %9 = arith.subf %8, %7 : f64
        affine.store %9, %alloca[] : memref<f64>
      }
      %2 = affine.load %alloca[] : memref<f64>
      %3 = affine.load %arg1[-%arg5 + 39, -%arg5 + 39] : memref<?x40xf64>
      %4 = arith.divf %2, %3 : f64
      affine.store %4, %arg3[-%arg5 + 39] : memref<?xf64>
    }
    return
  }
}

