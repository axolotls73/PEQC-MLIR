#map = affine_map<(d0) -> (0, (d0 * 32 - 7) ceildiv 7)>
#map1 = affine_map<(d0) -> (10, (d0 * 32 + 31) floordiv 7 + 1)>
#map2 = affine_map<(d0, d1) -> (d0 * 32, d1 * 7)>
#map3 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 7 + 8)>
#map4 = affine_map<(d0, d1) -> (d0 * -7 + d1)>
module {
  func.func private @S0(%arg0: memref<?xf64>, %arg1: index) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S1(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?x12xf64>, %arg3: index, %arg4: memref<?x8x12xf64>, %arg5: index, %arg6: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1] : memref<?xf64>
    %1 = affine.load %arg4[%arg5, %arg6, %arg3] : memref<?x8x12xf64>
    %2 = affine.load %arg2[%arg3, %arg1] : memref<?x12xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S2(%arg0: memref<?x8x12xf64>, %arg1: index, %arg2: index, %arg3: index, %arg4: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg4[%arg3] : memref<?xf64>
    affine.store %0, %arg0[%arg1, %arg2, %arg3] : memref<?x8x12xf64>
    return
  }
  func.func @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x8x12xf64>, %arg4: memref<?x12xf64>, %arg5: memref<?xf64>) {
    affine.for %arg6 = 0 to 3 {
      affine.for %arg7 = max #map(%arg6) to min #map1(%arg6) {
        affine.for %arg8 = max #map2(%arg6, %arg7) to min #map3(%arg6, %arg7) {
          affine.for %arg9 = 0 to 12 {
            func.call @S0(%arg5, %arg9) : (memref<?xf64>, index) -> ()
          }
          affine.for %arg9 = 0 to 12 {
            affine.for %arg10 = 0 to 12 {
              %0 = affine.apply #map4(%arg7, %arg8)
              func.call @S1(%arg5, %arg10, %arg4, %arg9, %arg3, %arg7, %0) : (memref<?xf64>, index, memref<?x12xf64>, index, memref<?x8x12xf64>, index, index) -> ()
            }
          }
          affine.for %arg9 = 0 to 12 {
            %0 = affine.apply #map4(%arg7, %arg8)
            func.call @S2(%arg3, %arg7, %0, %arg9, %arg5) : (memref<?x8x12xf64>, index, index, index, memref<?xf64>) -> ()
          }
        }
      }
    }
    return
  }
}

