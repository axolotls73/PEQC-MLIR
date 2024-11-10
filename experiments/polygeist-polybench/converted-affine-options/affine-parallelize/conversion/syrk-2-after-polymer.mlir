#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func private @S0(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: f64) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x30xf64>
    %1 = arith.mulf %0, %arg3 : f64
    affine.store %1, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func private @S1(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: memref<?x20xf64>, %arg4: index, %arg5: f64) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x30xf64>
    %1 = affine.load %arg3[%arg1, %arg4] : memref<?x20xf64>
    %2 = arith.mulf %arg5, %1 : f64
    %3 = affine.load %arg3[%arg2, %arg4] : memref<?x20xf64>
    %4 = arith.mulf %2, %3 : f64
    %5 = arith.addf %0, %4 : f64
    affine.store %5, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>) {
    affine.for %arg6 = 0 to 30 {
      affine.for %arg7 = 0 to #map(%arg6) {
        func.call @S0(%arg4, %arg6, %arg7, %arg3) : (memref<?x30xf64>, index, index, f64) -> ()
      }
    }
    affine.for %arg6 = 0 to 30 {
      affine.for %arg7 = 0 to #map(%arg6) {
        affine.for %arg8 = 0 to 20 {
          func.call @S1(%arg4, %arg6, %arg7, %arg5, %arg8, %arg2) : (memref<?x30xf64>, index, index, memref<?x20xf64>, index, f64) -> ()
        }
      }
    }
    return
  }
}

