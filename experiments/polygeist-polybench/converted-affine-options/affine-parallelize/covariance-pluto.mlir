#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (0, (d0 * 16 - 13) ceildiv 13)>
#map2 = affine_map<(d0) -> ((d0 * 32 + 31) floordiv 27 + 1)>
#map3 = affine_map<(d0, d1) -> (d0 * 32, d1 * 27)>
#map4 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 26 + 28)>
#map5 = affine_map<(d0, d1) -> (d0 * -26 + d1)>
module {
  func.func private @S0(%arg0: memref<?xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S1(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?x28xf64>, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = affine.load %arg2[%arg3, %arg1] : memref<?x28xf64>
    %2 = arith.addf %0, %1 : f64
    affine.store %2, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S2(%arg0: memref<?xf64>, %arg1: index, %arg2: f64) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = arith.divf %0, %arg2 : f64
    affine.store %1, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S3(%arg0: memref<?x28xf64>, %arg1: index, %arg2: index, %arg3: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x28xf64>
    %1 = affine.load %arg3[%arg2] : memref<?xf64>
    %2 = arith.subf %0, %1 : f64
    affine.store %2, %arg0[%arg1, %arg2] : memref<?x28xf64>
    return
  }
  func.func private @S4(%arg0: memref<1xf64>, %arg1: f64) attributes {scop.stmt} {
    %cst = arith.constant 1.000000e+00 : f64
    %0 = arith.subf %arg1, %cst : f64
    affine.store %0, %arg0[0] : memref<1xf64>
    return
  }
  func.func private @S5(%arg0: memref<?x28xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg2] : memref<?x28xf64>
    return
  }
  func.func private @S6(%arg0: memref<?x28xf64>, %arg1: index, %arg2: index, %arg3: memref<?x28xf64>, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x28xf64>
    %1 = affine.load %arg3[%arg4, %arg1] : memref<?x28xf64>
    %2 = affine.load %arg3[%arg4, %arg2] : memref<?x28xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<?x28xf64>
    return
  }
  func.func private @S7(%arg0: memref<?x28xf64>, %arg1: index, %arg2: index, %arg3: memref<1xf64>, %arg4: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x28xf64>
    %1 = affine.load %arg3[0] : memref<1xf64>
    %2 = arith.divf %0, %1 : f64
    affine.store %2, %arg4[0] : memref<1xf64>
    affine.store %2, %arg0[%arg1, %arg2] : memref<?x28xf64>
    return
  }
  func.func private @S8(%arg0: memref<?x28xf64>, %arg1: index, %arg2: index, %arg3: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg3[0] : memref<1xf64>
    affine.store %0, %arg0[%arg1, %arg2] : memref<?x28xf64>
    return
  }
  func.func @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x28xf64>, %arg4: memref<?x28xf64>, %arg5: memref<?xf64>) {
    %alloca = memref.alloca() : memref<1xf64>
    %alloca_0 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    affine.for %arg6 = 0 to 28 {
      affine.for %arg7 = #map(%arg6) to 28 {
        func.call @S5(%arg4, %arg6, %arg7) : (memref<?x28xf64>, index, index) -> ()
      }
    }
    call @S4(%alloca_0, %arg2) : (memref<1xf64>, f64) -> ()
    affine.for %arg6 = 0 to 28 {
      func.call @S0(%arg5, %arg6) : (memref<?xf64>, index) -> ()
    }
    affine.for %arg6 = 0 to 32 {
      affine.for %arg7 = 0 to 28 {
        func.call @S1(%arg5, %arg7, %arg3, %arg6) : (memref<?xf64>, index, memref<?x28xf64>, index) -> ()
      }
    }
    affine.for %arg6 = 0 to 28 {
      func.call @S2(%arg5, %arg6, %arg2) : (memref<?xf64>, index, f64) -> ()
    }
    affine.for %arg6 = 0 to 32 {
      affine.for %arg7 = 0 to 28 {
        func.call @S3(%arg3, %arg6, %arg7, %arg5) : (memref<?x28xf64>, index, index, memref<?xf64>) -> ()
      }
    }
    affine.for %arg6 = 0 to 28 {
      affine.for %arg7 = 0 to 32 {
        affine.for %arg8 = #map(%arg6) to 28 {
          func.call @S6(%arg4, %arg6, %arg8, %arg3, %arg7) : (memref<?x28xf64>, index, index, memref<?x28xf64>, index) -> ()
        }
      }
    }
    affine.for %arg6 = 0 to 23 {
      affine.for %arg7 = max #map1(%arg6) to #map2(%arg6) {
        affine.for %arg8 = max #map3(%arg6, %arg7) to min #map4(%arg6, %arg7) {
          %0 = affine.apply #map5(%arg8, %arg7)
          func.call @S7(%arg4, %arg7, %0, %alloca_0, %alloca) : (memref<?x28xf64>, index, index, memref<1xf64>, memref<1xf64>) -> ()
          %1 = affine.apply #map5(%arg8, %arg7)
          func.call @S8(%arg4, %1, %arg7, %alloca) : (memref<?x28xf64>, index, index, memref<1xf64>) -> ()
        }
      }
    }
    return
  }
}

