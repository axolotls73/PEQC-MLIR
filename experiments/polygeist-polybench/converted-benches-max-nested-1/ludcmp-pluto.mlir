#map = affine_map<(d0) -> ((d0 - 1) floordiv 32 + 1)>
#map1 = affine_map<(d0) -> (d0 * 37 + 1)>
#map2 = affine_map<(d0, d1) -> ((d0 * 19) floordiv 16 + 1, d1 * 38 + 39)>
#map3 = affine_map<(d0) -> (d0 - 1407)>
#map4 = affine_map<(d0) -> ((d0 * 16 - 19) ceildiv 19)>
#map5 = affine_map<(d0) -> ((d0 * 16 - 18) ceildiv 19)>
#map6 = affine_map<(d0) -> (d0 * 32)>
#map7 = affine_map<(d0) -> (((d0 * 16 - 18) ceildiv 19) * 38 + 38)>
#map8 = affine_map<(d0, d1) -> (d0 * -37 + (d1 * 16 - 18) ceildiv 19 - 38)>
#map9 = affine_map<(d0) -> ((d0 * 16 - 3) ceildiv 19, (d0 * 32 - 38) ceildiv 37)>
#map10 = affine_map<(d0) -> (1, (d0 * 32 - 38) ceildiv 37)>
#map11 = affine_map<(d0) -> ((d0 - 31) ceildiv 32)>
#map12 = affine_map<(d0, d1) -> ((d0 * 28557 - 23281) ceildiv 24032, (d0 * 589 + d1 * 913216 - 23281) ceildiv 24032)>
#map13 = affine_map<(d0, d1) -> ((d0 + 1482) floordiv 32 + 1, (d0 + d1 * 1216 + 1178) floordiv 32 + 1)>
#map14 = affine_map<(d0) -> ((d0 * 16 + 15) floordiv 19)>
#map15 = affine_map<(d0, d1) -> ((-d0 + d1 * 32) ceildiv 38)>
#map16 = affine_map<(d0) -> (d0 - 1406)>
#map17 = affine_map<(d0, d1) -> ((-d0 + d1 * 32 + 1) ceildiv 38, d0)>
#map18 = affine_map<(d0, d1) -> ((d0 * 16) ceildiv 19, (d0 * 32 - d1 + 32) ceildiv 38)>
#map19 = affine_map<(d0) -> ((d0 * 16) ceildiv 19)>
#map20 = affine_map<(d0) -> (((d0 * 16) ceildiv 19) * 38)>
#map21 = affine_map<(d0, d1) -> (d0 + ((d1 * 16) ceildiv 19) * 38)>
#map22 = affine_map<(d0, d1) -> (d0 * -38 + (d1 * 16) ceildiv 19)>
#map23 = affine_map<(d0) -> (d0)>
#map24 = affine_map<(d0) -> (-d0 + 40)>
#map25 = affine_map<()[s0] -> (s0 * 37 + 38)>
#map26 = affine_map<()[s0] -> (s0 * 32 + 32)>
#map27 = affine_map<(d0)[s0] -> (d0 * -37 + s0 - 38)>
#map28 = affine_map<()[s0] -> (s0 * 38 + 38)>
#map29 = affine_map<()[s0] -> (s0 * 32)>
#map30 = affine_map<()[s0, s1] -> (s0 + s1 * 38)>
#map31 = affine_map<(d0)[s0] -> (d0 * -38 + s0)>
#map32 = affine_map<()[s0] -> (s0 * 38)>
#set = affine_set<(d0, d1) : (d0 == 0, d1 - 1 == 0)>
#set1 = affine_set<(d0, d1) : (d0 - 1 == 0, d1 - 44 == 0)>
#set2 = affine_set<(d0) : (d0 == 0)>
#set3 = affine_set<(d0) : ((d0 * 16) mod 19 == 0)>
#set4 = affine_set<(d0) : ((d0 * 16 - 4) floordiv 19 - (d0 * 16 - 18) ceildiv 19 >= 0, (d0 * 32 - 39) floordiv 37 - (d0 * 16 - 18) ceildiv 19 >= 0)>
#set5 = affine_set<(d0, d1, d2) : ((d0 * 32 - 7) floordiv 37 - (d0 * 16 - 3) ceildiv 19 >= 0, (d0 * 32 - 7) floordiv 37 - (d0 * 32 - 38) ceildiv 37 >= 0, d1 - (d0 * 16 - 3) ceildiv 19 - 1 >= 0, d1 - (d0 * 32 - 38) ceildiv 37 - 1 >= 0, d2 * 32 - (d0 * 16 - 3) ceildiv 19 + 31 >= 0, d2 * 32 - (d0 * 32 - 38) ceildiv 37 + 31 >= 0)>
#set6 = affine_set<(d0) : ((d0 * 16 - 4) floordiv 19 - 1 >= 0, (d0 * 16 - 4) floordiv 19 - (d0 * 32 - 38) ceildiv 37 >= 0)>
#set7 = affine_set<(d0) : (-((d0 * 16 + 15) mod 19) + 15 >= 0)>
#set8 = affine_set<(d0, d1) : (d0 - 2 >= 0, (d1 * 32) floordiv 39 - d0 >= 0)>
#set9 = affine_set<(d0, d1) : ((d0 * 37 + d1 * 32) mod 38 == 0)>
#set10 = affine_set<(d0, d1, d2) : (d0 - 34 >= 0, d1 - 1 == 0, d2 - 44 == 0)>
#set11 = affine_set<(d0, d1) : ((d1 * 16 - 1) floordiv 19 - (-d0 + d1 * 32 + 1) ceildiv 38 >= 0, (d1 * 16 - 1) floordiv 19 - d0 >= 0, (-d0 + d1 * 32 + 31) floordiv 38 - (-d0 + d1 * 32 + 1) ceildiv 38 >= 0, (-d0 + d1 * 32 + 31) floordiv 38 - d0 >= 0)>
#set12 = affine_set<(d0, d1) : (-((d0 * 16) ceildiv 19) + 39 >= 0, -((-d1 + d0 * 32 + 32) ceildiv 38) + 39 >= 0, (d0 * 16 + 15) floordiv 19 - (d0 * 16) ceildiv 19 >= 0, (d0 * 16 + 15) floordiv 19 - (-d1 + d0 * 32 + 32) ceildiv 38 >= 0)>
#set13 = affine_set<(d0) : (d0 - 1 >= 0)>
#set14 = affine_set<(d0, d1) : ((-d1 + d0 * 32 + 31) floordiv 38 - (d0 * 16) ceildiv 19 >= 0)>
module {
  func.func private @S0(%arg0: memref<f64>) attributes {scop.stmt} {
    %0 = llvm.mlir.undef : f64
    affine.store %0, %arg0[] : memref<f64>
    return
  }
  func.func private @S1(%arg0: memref<f64>, %arg1: memref<?x40xf64>, %arg2: index, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
    affine.store %0, %arg0[] : memref<f64>
    return
  }
  func.func private @S2(%arg0: memref<f64>, %arg1: memref<?x40xf64>, %arg2: index, %arg3: index, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[] : memref<f64>
    %1 = affine.load %arg1[%arg4, %arg2] : memref<?x40xf64>
    %2 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.subf %0, %3 : f64
    affine.store %4, %arg0[] : memref<f64>
    return
  }
  func.func private @S3(%arg0: memref<?x40xf64>, %arg1: index, %arg2: index, %arg3: memref<f64>) attributes {scop.stmt} {
    %0 = affine.load %arg3[] : memref<f64>
    %1 = affine.load %arg0[%arg2, %arg2] : memref<?x40xf64>
    %2 = arith.divf %0, %1 : f64
    affine.store %2, %arg0[%arg1, %arg2] : memref<?x40xf64>
    return
  }
  func.func private @S4(%arg0: memref<f64>, %arg1: memref<?x40xf64>, %arg2: index, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
    affine.store %0, %arg0[] : memref<f64>
    return
  }
  func.func private @S5(%arg0: memref<f64>, %arg1: memref<?x40xf64>, %arg2: index, %arg3: index, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[] : memref<f64>
    %1 = affine.load %arg1[%arg4, %arg2] : memref<?x40xf64>
    %2 = affine.load %arg1[%arg2, %arg3] : memref<?x40xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.subf %0, %3 : f64
    affine.store %4, %arg0[] : memref<f64>
    return
  }
  func.func private @S6(%arg0: memref<?x40xf64>, %arg1: index, %arg2: index, %arg3: memref<f64>) attributes {scop.stmt} {
    %0 = affine.load %arg3[] : memref<f64>
    affine.store %0, %arg0[%arg1, %arg2] : memref<?x40xf64>
    return
  }
  func.func private @S7(%arg0: memref<f64>, %arg1: memref<?xf64>, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg1[%arg2] : memref<?xf64>
    affine.store %0, %arg0[] : memref<f64>
    return
  }
  func.func private @S8(%arg0: memref<f64>, %arg1: memref<?xf64>, %arg2: index, %arg3: memref<?x40xf64>, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[] : memref<f64>
    %1 = affine.load %arg3[%arg4, %arg2] : memref<?x40xf64>
    %2 = affine.load %arg1[%arg2] : memref<?xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.subf %0, %3 : f64
    affine.store %4, %arg0[] : memref<f64>
    return
  }
  func.func private @S9(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<f64>) attributes {scop.stmt} {
    %0 = affine.load %arg2[] : memref<f64>
    affine.store %0, %arg0[%arg1] : memref<?xf64>
    return
  }
  func.func private @S10(%arg0: memref<f64>, %arg1: memref<?xf64>, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg1[-%arg2 + 39] : memref<?xf64>
    affine.store %0, %arg0[] : memref<f64>
    return
  }
  func.func private @S11(%arg0: memref<f64>, %arg1: memref<?xf64>, %arg2: index, %arg3: memref<?x40xf64>, %arg4: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[] : memref<f64>
    %1 = affine.load %arg3[-%arg4 + 39, %arg2] : memref<?x40xf64>
    %2 = affine.load %arg1[%arg2] : memref<?xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.subf %0, %3 : f64
    affine.store %4, %arg0[] : memref<f64>
    return
  }
  func.func private @S12(%arg0: memref<?xf64>, %arg1: index, %arg2: memref<?x40xf64>, %arg3: memref<f64>) attributes {scop.stmt} {
    %0 = affine.load %arg3[] : memref<f64>
    %1 = affine.load %arg2[-%arg1 + 39, -%arg1 + 39] : memref<?x40xf64>
    %2 = arith.divf %0, %1 : f64
    affine.store %2, %arg0[-%arg1 + 39] : memref<?xf64>
    return
  }
  func.func @kernel_ludcmp(%arg0: i32, %arg1: memref<?x40xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>) {
    %c37 = arith.constant 37 : index
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<f64>
    call @S0(%alloca) : (memref<f64>) -> ()
    affine.for %arg5 = 0 to 40 {
      affine.for %arg6 = 0 to #map(%arg5) {
        affine.for %arg7 = #map1(%arg6) to min #map2(%arg5, %arg6) {
          affine.if #set(%arg6, %arg7) {
            func.call @S1(%alloca, %arg1, %arg5, %c0) : (memref<f64>, memref<?x40xf64>, index, index) -> ()
            func.call @S3(%arg1, %arg5, %c0, %alloca) : (memref<?x40xf64>, index, index, memref<f64>) -> ()
          }
          affine.if #set1(%arg6, %arg7) {
            affine.for %arg8 = 1408 to 1440 {
              %2 = affine.apply #map3(%arg8)
              func.call @S2(%alloca, %arg1, %2, %c37, %arg5) : (memref<f64>, memref<?x40xf64>, index, index, index) -> ()
            }
          }
          affine.if #set2(%arg6) {
            affine.if #set3(%arg7) {
              %2 = affine.apply #map4(%arg7)
              func.call @S3(%arg1, %arg5, %2, %alloca) : (memref<?x40xf64>, index, index, memref<f64>) -> ()
            }
          }
          %0 = affine.apply #map5(%arg7)
          affine.if #set4(%arg7) {
            affine.for %arg8 = #map6(%arg7) to #map7(%arg7) {
              %2 = affine.apply #map8(%arg8, %arg7)
              func.call @S2(%alloca, %arg1, %2, %0, %arg5) : (memref<f64>, memref<?x40xf64>, index, index, index) -> ()
            }
            func.call @S3(%arg1, %arg5, %0, %alloca) : (memref<?x40xf64>, index, index, memref<f64>) -> ()
          }
          %1 = affine.max #map9(%arg7)
          affine.if #set5(%arg7, %arg5, %arg6) {
            func.call @S1(%alloca, %arg1, %arg5, %1) : (memref<f64>, memref<?x40xf64>, index, index) -> ()
            func.call @T0(%1, %arg5, %alloca, %arg1, %arg7) : (index, index, memref<f64>, memref<?x40xf64>, index) -> ()
          }
          affine.if #set2(%arg6) {
            %2 = affine.max #map10(%arg7)
            affine.if #set6(%arg7) {
              func.call @S1(%alloca, %arg1, %arg5, %2) : (memref<f64>, memref<?x40xf64>, index, index) -> ()
              func.call @T1(%2, %arg5, %alloca, %arg1) : (index, index, memref<f64>, memref<?x40xf64>) -> ()
              func.call @S3(%arg1, %arg5, %2, %alloca) : (memref<?x40xf64>, index, index, memref<f64>) -> ()
            }
          }
        }
      }
      affine.for %arg6 = #map11(%arg5) to 2 {
        affine.for %arg7 = max #map12(%arg5, %arg6) to min #map13(%arg5, %arg6) {
          affine.if #set2(%arg5) {
            affine.if #set7(%arg7) {
              %2 = affine.apply #map14(%arg7)
              func.call @S4(%alloca, %arg1, %c0, %2) : (memref<f64>, memref<?x40xf64>, index, index) -> ()
              func.call @S6(%arg1, %c0, %2, %alloca) : (memref<?x40xf64>, index, index, memref<f64>) -> ()
            }
          }
          affine.if #set8(%arg5, %arg7) {
            affine.if #set9(%arg5, %arg7) {
              %2 = affine.apply #map15(%arg7, %arg5)
              func.call @S6(%arg1, %arg5, %2, %alloca) : (memref<?x40xf64>, index, index, memref<f64>) -> ()
            }
          }
          affine.if #set10(%arg5, %arg6, %arg7) {
            affine.for %arg8 = 1408 to 1440 {
              %2 = affine.apply #map16(%arg8)
              func.call @S5(%alloca, %arg1, %2, %c37, %arg5) : (memref<f64>, memref<?x40xf64>, index, index, index) -> ()
            }
          }
          %0 = affine.max #map17(%arg7, %arg5)
          affine.if #set11(%arg5, %arg7) {
            func.call @T2(%0, %arg5, %alloca, %arg1, %arg7) : (index, index, memref<f64>, memref<?x40xf64>, index) -> ()
            func.call @S6(%arg1, %arg5, %0, %alloca) : (memref<?x40xf64>, index, index, memref<f64>) -> ()
          }
          %1 = affine.max #map18(%arg7, %arg5)
          affine.if #set12(%arg7, %arg5) {
            func.call @S4(%alloca, %arg1, %arg5, %1) : (memref<f64>, memref<?x40xf64>, index, index) -> ()
            func.call @T3(%1, %arg5, %alloca, %arg1, %arg7) : (index, index, memref<f64>, memref<?x40xf64>, index) -> ()
          }
          affine.if #set13(%arg5) {
            %2 = affine.apply #map19(%arg7)
            affine.if #set14(%arg7, %arg5) {
              func.call @S4(%alloca, %arg1, %arg5, %2) : (memref<f64>, memref<?x40xf64>, index, index) -> ()
              affine.for %arg8 = #map20(%arg7) to #map21(%arg5, %arg7) {
                %3 = affine.apply #map22(%arg8, %arg7)
                func.call @S5(%alloca, %arg1, %3, %2, %arg5) : (memref<f64>, memref<?x40xf64>, index, index, index) -> ()
              }
              func.call @S6(%arg1, %arg5, %2, %alloca) : (memref<?x40xf64>, index, index, memref<f64>) -> ()
            }
          }
        }
      }
    }
    call @S7(%alloca, %arg2, %c0) : (memref<f64>, memref<?xf64>, index) -> ()
    call @S9(%arg4, %c0, %alloca) : (memref<?xf64>, index, memref<f64>) -> ()
    affine.for %arg5 = 1 to 40 {
      func.call @S7(%alloca, %arg2, %arg5) : (memref<f64>, memref<?xf64>, index) -> ()
      affine.for %arg6 = 0 to #map23(%arg5) {
        func.call @S8(%alloca, %arg4, %arg6, %arg1, %arg5) : (memref<f64>, memref<?xf64>, index, memref<?x40xf64>, index) -> ()
      }
      func.call @S9(%arg4, %arg5, %alloca) : (memref<?xf64>, index, memref<f64>) -> ()
    }
    call @S10(%alloca, %arg4, %c0) : (memref<f64>, memref<?xf64>, index) -> ()
    call @S12(%arg3, %c0, %arg1, %alloca) : (memref<?xf64>, index, memref<?x40xf64>, memref<f64>) -> ()
    affine.for %arg5 = 1 to 40 {
      func.call @S10(%alloca, %arg4, %arg5) : (memref<f64>, memref<?xf64>, index) -> ()
      affine.for %arg6 = #map24(%arg5) to 40 {
        func.call @S11(%alloca, %arg3, %arg6, %arg1, %arg5) : (memref<f64>, memref<?xf64>, index, memref<?x40xf64>, index) -> ()
      }
      func.call @S12(%arg3, %arg5, %arg1, %alloca) : (memref<?xf64>, index, memref<?x40xf64>, memref<f64>) -> ()
    }
    return
  }
  func.func @T0(%arg0: index, %arg1: index, %arg2: memref<f64>, %arg3: memref<?x40xf64>, %arg4: index) {
    affine.for %arg5 = #map25()[%arg0] to #map26()[%arg4] {
      %0 = affine.apply #map27(%arg5)[%arg0]
      func.call @S2(%arg2, %arg3, %0, %arg0, %arg1) : (memref<f64>, memref<?x40xf64>, index, index, index) -> ()
    }
    return
  }
  func.func @T1(%arg0: index, %arg1: index, %arg2: memref<f64>, %arg3: memref<?x40xf64>) {
    affine.for %arg4 = #map25()[%arg0] to #map28()[%arg0] {
      %0 = affine.apply #map27(%arg4)[%arg0]
      func.call @S2(%arg2, %arg3, %0, %arg0, %arg1) : (memref<f64>, memref<?x40xf64>, index, index, index) -> ()
    }
    return
  }
  func.func @T2(%arg0: index, %arg1: index, %arg2: memref<f64>, %arg3: memref<?x40xf64>, %arg4: index) {
    affine.for %arg5 = #map29()[%arg4] to #map30()[%arg1, %arg0] {
      %0 = affine.apply #map31(%arg5)[%arg0]
      func.call @S5(%arg2, %arg3, %0, %arg0, %arg1) : (memref<f64>, memref<?x40xf64>, index, index, index) -> ()
    }
    return
  }
  func.func @T3(%arg0: index, %arg1: index, %arg2: memref<f64>, %arg3: memref<?x40xf64>, %arg4: index) {
    affine.for %arg5 = #map32()[%arg0] to #map26()[%arg4] {
      %0 = affine.apply #map31(%arg5)[%arg0]
      func.call @S5(%arg2, %arg3, %0, %arg0, %arg1) : (memref<f64>, memref<?x40xf64>, index, index, index) -> ()
    }
    return
  }
}

