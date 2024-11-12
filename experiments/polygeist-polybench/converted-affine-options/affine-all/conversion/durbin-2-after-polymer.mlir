#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 37)>
#map2 = affine_map<(d0) -> (d0 - 38)>
#map3 = affine_map<(d0) -> (d0 - 1)>
#map4 = affine_map<(d0) -> (d0 + 38)>
#map5 = affine_map<(d0) -> (d0 * 2 + 37)>
#map6 = affine_map<(d0, d1) -> (-d0 + d1 - 37)>
#set = affine_set<(d0) : (d0 - 1 == 0)>
#set1 = affine_set<(d0) : (d0 - 2 >= 0)>
module {
  func.func private @S0(%arg0: memref<f64>) attributes {scop.stmt} {
    %0 = llvm.mlir.undef : f64
    affine.store %0, %arg0[] : memref<f64>
    return
  }
  func.func private @S1(%arg0: memref<f64>) attributes {scop.stmt} {
    %0 = llvm.mlir.undef : f64
    affine.store %0, %arg0[] : memref<f64>
    return
  }
  func.func private @S2(%arg0: memref<f64>) attributes {scop.stmt} {
    %0 = llvm.mlir.undef : f64
    affine.store %0, %arg0[] : memref<f64>
    return
  }
  func.func private @S3(%arg0: memref<?xf64>, %arg1: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg1[0] : memref<?xf64>
    %1 = arith.negf %0 : f64
    affine.store %1, %arg0[0] : memref<?xf64>
    return
  }
  func.func private @S4(%arg0: memref<f64>) attributes {scop.stmt} {
    %cst = arith.constant 1.000000e+00 : f64
    affine.store %cst, %arg0[] : memref<f64>
    return
  }
  func.func private @S5(%arg0: memref<f64>, %arg1: memref<?xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg1[0] : memref<?xf64>
    %1 = arith.negf %0 : f64
    affine.store %1, %arg0[] : memref<f64>
    return
  }
  func.func private @S6(%arg0: memref<f64>, %arg1: memref<f64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[] : memref<f64>
    %1 = affine.load %arg1[] : memref<f64>
    %2 = arith.mulf %1, %1 : f64
    %3 = arith.subf %0, %2 : f64
    %4 = affine.load %arg0[] : memref<f64>
    %5 = arith.mulf %3, %4 : f64
    affine.store %5, %arg0[] : memref<f64>
    return
  }
  func.func private @S7(%arg0: memref<f64>) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[] : memref<f64>
    return
  }
  func.func private @S8(%arg0: memref<f64>, %arg1: memref<?xf64>, %arg2: index, %arg3: memref<?xf64>, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[] : memref<f64>
    %1 = affine.load %arg3[%arg4 - %arg2 - 1] : memref<?xf64>
    %2 = affine.load %arg1[%arg2] : memref<?xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[] : memref<f64>
    return
  }
  func.func private @S9(%arg0: memref<1xf64>, %arg1: memref<f64>, %arg2: memref<f64>, %arg3: memref<?xf64>, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg3[%arg4] : memref<?xf64>
    %1 = affine.load %arg2[] : memref<f64>
    %2 = arith.addf %0, %1 : f64
    %3 = arith.negf %2 : f64
    %4 = affine.load %arg1[] : memref<f64>
    %5 = arith.divf %3, %4 : f64
    affine.store %5, %arg0[0] : memref<1xf64>
    return
  }
  func.func private @S10(%arg0: memref<f64>, %arg1: memref<1xf64>, %arg2: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg1[0] : memref<1xf64>
    affine.store %0, %arg2[0] : memref<1xf64>
    affine.store %0, %arg0[] : memref<f64>
    return
  }
  func.func private @S11(%arg0: index, %arg1: memref<40xf64>, %arg2: memref<?xf64>, %arg3: index, %arg4: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg2[%arg0] : memref<?xf64>
    %1 = affine.load %arg4[0] : memref<1xf64>
    %2 = affine.load %arg2[%arg3 - %arg0 - 1] : memref<?xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg1[%arg0] : memref<40xf64>
    return
  }
  func.func private @S12(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<40xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg2[%arg1] : memref<40xf64>
    affine.store %0, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S13(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<1xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg2[0] : memref<1xf64>
    affine.store %0, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<f64>
    %alloca_0 = memref.alloca() {scop.scratchpad} : memref<1xf64>
    %alloca_1 = memref.alloca() : memref<40xf64>
    %alloca_2 = memref.alloca() : memref<f64>
    %alloca_3 = memref.alloca() : memref<f64>
    %alloca_4 = memref.alloca() : memref<1xf64>
    call @S3(%arg2, %arg1) : (memref<?xf64>, memref<?xf64>) -> ()
    call @S2(%alloca_3) : (memref<f64>) -> ()
    call @S5(%alloca_3, %arg1) : (memref<f64>, memref<?xf64>) -> ()
    call @S1(%alloca_2) : (memref<f64>) -> ()
    call @S4(%alloca_2) : (memref<f64>) -> ()
    call @S0(%alloca) : (memref<f64>) -> ()
    affine.for %arg3 = 1 to 40 {
      func.call @S7(%alloca) : (memref<f64>) -> ()
      func.call @S8(%alloca, %arg2, %c0, %arg1, %arg3) : (memref<f64>, memref<?xf64>, index, memref<?xf64>, index) -> ()
      func.call @S6(%alloca_2, %alloca_3) : (memref<f64>, memref<f64>) -> ()
      affine.for %arg4 = 1 to #map(%arg3) {
        func.call @S8(%alloca, %arg2, %arg4, %arg1, %arg3) : (memref<f64>, memref<?xf64>, index, memref<?xf64>, index) -> ()
      }
      affine.if #set(%arg3) {
        func.call @S9(%alloca_0, %alloca_2, %alloca, %arg1, %c1) : (memref<1xf64>, memref<f64>, memref<f64>, memref<?xf64>, index) -> ()
        func.call @S11(%c0, %alloca_1, %arg2, %c1, %alloca_0) : (index, memref<40xf64>, memref<?xf64>, index, memref<1xf64>) -> ()
        func.call @S12(%arg2, %c0, %alloca_1) : (memref<?xf64>, index, memref<40xf64>) -> ()
        func.call @S10(%alloca_3, %alloca_0, %alloca_4) : (memref<f64>, memref<1xf64>, memref<1xf64>) -> ()
        func.call @S13(%arg2, %c1, %alloca_4) : (memref<?xf64>, index, memref<1xf64>) -> ()
      }
      affine.if #set1(%arg3) {
        func.call @S9(%alloca_0, %alloca_2, %alloca, %arg1, %arg3) : (memref<1xf64>, memref<f64>, memref<f64>, memref<?xf64>, index) -> ()
        func.call @S11(%c0, %alloca_1, %arg2, %arg3, %alloca_0) : (index, memref<40xf64>, memref<?xf64>, index, memref<1xf64>) -> ()
        func.call @S10(%alloca_3, %alloca_0, %alloca_4) : (memref<f64>, memref<1xf64>, memref<1xf64>) -> ()
        func.call @S13(%arg2, %arg3, %alloca_4) : (memref<?xf64>, index, memref<1xf64>) -> ()
      }
      affine.for %arg4 = 39 to #map1(%arg3) {
        %0 = affine.apply #map2(%arg4)
        func.call @S11(%0, %alloca_1, %arg2, %arg3, %alloca_0) : (index, memref<40xf64>, memref<?xf64>, index, memref<1xf64>) -> ()
      }
      affine.if #set1(%arg3) {
        %0 = affine.apply #map3(%arg3)
        func.call @S11(%0, %alloca_1, %arg2, %arg3, %alloca_0) : (index, memref<40xf64>, memref<?xf64>, index, memref<1xf64>) -> ()
        func.call @S12(%arg2, %c0, %alloca_1) : (memref<?xf64>, index, memref<40xf64>) -> ()
      }
      affine.for %arg4 = #map4(%arg3) to #map5(%arg3) {
        %0 = affine.apply #map6(%arg3, %arg4)
        func.call @S12(%arg2, %0, %alloca_1) : (memref<?xf64>, index, memref<40xf64>) -> ()
      }
    }
    return
  }
}

