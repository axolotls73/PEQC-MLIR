#map = affine_map<(d0) -> (d0 + 1)>
module {
  func.func private @S0(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: index, %arg4: memref<?x20xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x30xf64>
    %1 = affine.load %arg4[%arg3, %arg1] : memref<?x20xf64>
    %2 = affine.load %arg0[%arg3, %arg2] : memref<?x30xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func private @S1(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: f64) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x30xf64>
    %1 = arith.mulf %arg3, %0 : f64
    affine.store %1, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x20xf64>, %arg4: memref<?x30xf64>) {
    affine.for %arg5 = 0 to 19 {
      affine.for %arg6 = #map(%arg5) to 20 {
        affine.for %arg7 = 0 to 30 {
          func.call @S0(%arg4, %arg5, %arg7, %arg6, %arg3) : (memref<?x30xf64>, index, index, index, memref<?x20xf64>) -> ()
        }
      }
    }
    affine.for %arg5 = 0 to 20 {
      affine.for %arg6 = 0 to 30 {
        func.call @S1(%arg4, %arg5, %arg6, %arg2) : (memref<?x30xf64>, index, index, f64) -> ()
      }
    }
    return
  }
}

