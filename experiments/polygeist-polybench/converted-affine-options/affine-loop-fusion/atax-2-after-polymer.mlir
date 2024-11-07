#map = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (38, d0 * 32 + 32)>
#map2 = affine_map<(d0) -> (42, d0 * 32 + 32)>
module {
  func.func private @S0(%arg0: memref<?xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S1(%arg0: memref<?xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S2(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>, %arg3: index, %arg4: memref<?x42xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = affine.load %arg4[%arg1, %arg3] : memref<?x42xf64>
    %2 = affine.load %arg2[%arg3] : memref<?xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S3(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?xf64>, %arg3: index, %arg4: memref<?x42xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = affine.load %arg4[%arg3, %arg1] : memref<?x42xf64>
    %2 = affine.load %arg2[%arg3] : memref<?xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x42xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) {
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = #map(%arg6) to min #map1(%arg6) {
        func.call @S1(%arg5, %arg7) : (memref<?xf64>, index) -> ()
      }
    }
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = 0 to 2 {
        affine.for %arg8 = #map(%arg6) to min #map1(%arg6) {
          affine.for %arg9 = #map(%arg7) to min #map2(%arg7) {
            func.call @S2(%arg5, %arg8, %arg3, %arg9, %arg2) : (memref<?xf64>, index, memref<?xf64>, index, memref<?x42xf64>) -> ()
          }
        }
      }
    }
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = #map(%arg6) to min #map2(%arg6) {
        func.call @S0(%arg4, %arg7) : (memref<?xf64>, index) -> ()
      }
    }
    affine.for %arg6 = 0 to 2 {
      affine.for %arg7 = 0 to 2 {
        affine.for %arg8 = #map(%arg7) to min #map1(%arg7) {
          affine.for %arg9 = #map(%arg6) to min #map2(%arg6) {
            func.call @S3(%arg4, %arg9, %arg5, %arg8, %arg2) : (memref<?xf64>, index, memref<?xf64>, index, memref<?x42xf64>) -> ()
          }
        }
      }
    }
    return
  }
}

