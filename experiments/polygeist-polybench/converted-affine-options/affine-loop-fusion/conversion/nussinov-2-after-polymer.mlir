#map = affine_map<(d0, d1) -> ((d0 * 1406216 + d1 * 1409408 + 19285) ceildiv 25112, d1 + 105)>
#map1 = affine_map<(d0, d1) -> (211, d0 * 57 + 161, d1 * 57 + 161, d0 * 57 + d1 * 57 + 111)>
#map2 = affine_map<(d0, d1, d2) -> (1, d0 * 32, d1 * -32 + 29, d2 * -32 + 3390)>
#map3 = affine_map<(d0, d1, d2) -> (60, d0 * 32 + 32, d1 * -32 + 61, d2 * -32 + 3422)>
#map4 = affine_map<(d0) -> (-d0 + 60)>
#map5 = affine_map<(d0, d1) -> ((d0 * 32 - 1766) ceildiv 57, d1 * 32)>
#map6 = affine_map<(d0, d1) -> ((d0 * 32 - 3362) ceildiv 57, d1 * 32)>
#map7 = affine_map<(d0, d1, d2) -> ((d0 * 4 - 420) ceildiv 7, (d0 * 4 - d1 * 228 - 221) ceildiv 7, d2 * 32)>
#map8 = affine_map<(d0, d1, d2) -> (60, (d0 * -224 + d1 * 4 - 4) floordiv 7 + 1, d2 * 32 + 32)>
#map9 = affine_map<(d0, d1) -> ((d0 * 32 - d1 * 57 + 1) ceildiv 57)>
#map10 = affine_map<(d0, d1) -> (d0 * 32, d1 * 56 + ((d0 * 32 - d1 * 57 + 1) ceildiv 57) * 56 + 60)>
#map11 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 57 + ((d0 * 32 - d1 * 57 + 1) ceildiv 57) * 57)>
#map12 = affine_map<(d0, d1, d2) -> (d0 * -56 + d1 - ((d0 * -57 + d2 * 32 + 1) ceildiv 57) * 57)>
#map13 = affine_map<(d0, d1) -> ((d0 * 4 - d1 * 7 - 3) ceildiv 7, (d0 * 32 - d1 * 56 - 1) ceildiv 57)>
#map14 = affine_map<(d0, d1) -> ((d0 * 32 - d1 * 56 - 1) ceildiv 57)>
#map15 = affine_map<(d0, d1) -> (d0 * 56 + ((d0 * -56 + d1 * 32 - 1) ceildiv 57) * 56 + 60)>
#map16 = affine_map<(d0, d1) -> (d0 * 32 + 32, d1 * 57 + ((d0 * 32 - d1 * 56 - 1) ceildiv 57) * 57)>
#map17 = affine_map<(d0, d1, d2) -> (d0 * -56 + d1 - ((d0 * -56 + d2 * 32 - 1) ceildiv 57) * 57)>
#map18 = affine_map<(d0) -> ((d0 * 4 - 227) ceildiv 7)>
#map19 = affine_map<(d0, d1, d2) -> ((d0 * -228 + d1 * 4 - 221) ceildiv 7, d2 * 32, d1 * -32 + 3447)>
#map20 = affine_map<(d0, d1, d2) -> (60, (d0 * -228 + d1 * 4 + 3) floordiv 7 + 1, d2 * 32 + 32)>
#map21 = affine_map<(d0) -> (-d0 + 61)>
#map22 = affine_map<()[s0, s1] -> (s0 * 32, s1 * 56 + 1796)>
#map23 = affine_map<()[s0, s1] -> (s0 * 32 + 32, s1 * 57 + 1767)>
#map24 = affine_map<(d0)[s0] -> (d0 - s0 * 57 - 1736)>
#map25 = affine_map<()[s0] -> (s0 * 32)>
#map26 = affine_map<()[s0, s1] -> (s0 * 32 + 32, s1 * 57 + 3363)>
#map27 = affine_map<(d0)[s0] -> (d0 - s0 * 57 - 3304)>
#set = affine_set<(d0, d1) : (d0 == 0, d1 - 108 >= 0)>
#set1 = affine_set<(d0, d1) : ((d0 * 4 - 222) floordiv 7 - (d0 * 32 - 1766) ceildiv 57 >= 0, (d0 * 4 - 222) floordiv 7 - d1 * 32 >= 0)>
#set2 = affine_set<(d0) : (d0 - 1 == 0)>
#set3 = affine_set<(d0, d1) : ((d0 * 4 - 421) floordiv 7 - (d0 * 32 - 3362) ceildiv 57 >= 0, (d0 * 4 - 421) floordiv 7 - d1 * 32 >= 0)>
#set4 = affine_set<(d0) : (d0 - 108 >= 0)>
#set5 = affine_set<(d0, d1) : ((d0 * 4 - d1 * 7 - 4) floordiv 7 - (d0 * 32 - d1 * 57 + 1) ceildiv 57 >= 0, (d0 * 32 - d1 * 56 - 2) floordiv 57 - (d0 * 32 - d1 * 57 + 1) ceildiv 57 >= 0)>
#set6 = affine_set<(d0, d1) : ((d0 * 32 - d1 * 56 + 30) floordiv 57 - (d0 * 4 - d1 * 7 - 3) ceildiv 7 >= 0, (d0 * 32 - d1 * 56 + 30) floordiv 57 - (d0 * 32 - d1 * 56 - 1) ceildiv 57 >= 0)>
#set7 = affine_set<(d0, d1) : ((d0 * 4 - d1 * 7 - 4) floordiv 7 - (d0 * 32 - d1 * 56 - 1) ceildiv 57 >= 0)>
#set8 = affine_set<(d0, d1) : (d0 - 1 == 0, d1 - 108 >= 0)>
#set9 = affine_set<(d0, d1) : (-((d0 * 4 - 227) ceildiv 7) + 59 >= 0, (d0 * 4 - 225) floordiv 7 - (d0 * 4 - 227) ceildiv 7 >= 0, d1 * 32 - (d0 * 4 - 227) ceildiv 7 + 31 >= 0)>
#set10 = affine_set<(d0) : (-d0 + 107 >= 0)>
#set11 = affine_set<(d0, d1) : ((-d1 + 3478) floordiv 32 - d0 >= 0)>
module {
  func.func private @S0(%arg0: memref<?x60xi32>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[-%arg1 + 59, %arg2] : memref<?x60xi32>
    %1 = affine.load %arg0[-%arg1 + 59, %arg2 - 1] : memref<?x60xi32>
    %2 = arith.cmpi sge, %0, %1 : i32
    %3 = arith.select %2, %0, %1 : i32
    affine.store %3, %arg0[-%arg1 + 59, %arg2] : memref<?x60xi32>
    return
  }
  func.func private @S1(%arg0: memref<?x60xi32>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[-%arg1 + 59, %arg2] : memref<?x60xi32>
    %1 = affine.load %arg0[-%arg1 + 60, %arg2] : memref<?x60xi32>
    %2 = arith.cmpi sge, %0, %1 : i32
    %3 = arith.select %2, %0, %1 : i32
    affine.store %3, %arg0[-%arg1 + 59, %arg2] : memref<?x60xi32>
    return
  }
  func.func private @S2(%arg0: memref<?x60xi32>, %arg1: index, %arg2: index, %arg3: memref<?xi32>) attributes {scop.stmt} {
    %c3_i32 = arith.constant 3 : i32
    %0 = affine.load %arg0[-%arg1 + 59, %arg2] : memref<?x60xi32>
    %1 = affine.load %arg0[-%arg1 + 60, %arg2 - 1] : memref<?x60xi32>
    %2 = affine.load %arg3[-%arg1 + 59] : memref<?xi32>
    %3 = affine.load %arg3[%arg2] : memref<?xi32>
    %4 = arith.addi %2, %3 : i32
    %5 = arith.cmpi eq, %4, %c3_i32 : i32
    %6 = arith.extui %5 : i1 to i32
    %7 = arith.addi %1, %6 : i32
    %8 = arith.cmpi sge, %0, %7 : i32
    %9 = arith.select %8, %0, %7 : i32
    affine.store %9, %arg0[-%arg1 + 59, %arg2] : memref<?x60xi32>
    return
  }
  func.func private @S3(%arg0: memref<?x60xi32>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[-%arg1 + 59, %arg2] : memref<?x60xi32>
    %1 = affine.load %arg0[-%arg1 + 60, %arg2 - 1] : memref<?x60xi32>
    %2 = arith.cmpi sge, %0, %1 : i32
    %3 = arith.select %2, %0, %1 : i32
    affine.store %3, %arg0[-%arg1 + 59, %arg2] : memref<?x60xi32>
    return
  }
  func.func private @S4(%arg0: memref<?x60xi32>, %arg1: index, %arg2: index, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[-%arg1 + 59, %arg2] : memref<?x60xi32>
    %1 = affine.load %arg0[-%arg1 + 59, %arg3] : memref<?x60xi32>
    %2 = affine.load %arg0[%arg3 + 1, %arg2] : memref<?x60xi32>
    %3 = arith.addi %1, %2 : i32
    %4 = arith.cmpi sge, %0, %3 : i32
    %5 = arith.select %4, %0, %3 : i32
    affine.store %5, %arg0[-%arg1 + 59, %arg2] : memref<?x60xi32>
    return
  }
  func.func @kernel_nussinov(%arg0: i32, %arg1: memref<?xi32>, %arg2: memref<?x60xi32>) {
    %c32 = arith.constant 32 : index
    affine.for %arg3 = 0 to 2 {
      affine.for %arg4 = 0 to 2 {
        affine.for %arg5 = max #map(%arg3, %arg4) to min #map1(%arg3, %arg4) {
          affine.for %arg6 = max #map2(%arg3, %arg4, %arg5) to min #map3(%arg3, %arg4, %arg5) {
            %0 = affine.apply #map4(%arg6)
            func.call @S0(%arg2, %arg6, %0) : (memref<?x60xi32>, index, index) -> ()
            %1 = affine.apply #map4(%arg6)
            func.call @S1(%arg2, %arg6, %1) : (memref<?x60xi32>, index, index) -> ()
            %2 = affine.apply #map4(%arg6)
            func.call @S3(%arg2, %arg6, %2) : (memref<?x60xi32>, index, index) -> ()
          }
          affine.if #set(%arg4, %arg5) {
            %0 = affine.max #map5(%arg5, %arg3)
            affine.if #set1(%arg5, %arg3) {
              func.call @T0(%0, %arg2, %arg5) : (index, memref<?x60xi32>, index) -> ()
            }
          }
          affine.if #set2(%arg4) {
            %0 = affine.max #map6(%arg5, %arg3)
            affine.if #set3(%arg5, %arg3) {
              func.call @T1(%0, %arg2, %arg5) : (index, memref<?x60xi32>, index) -> ()
            }
          }
          affine.if #set4(%arg5) {
            affine.for %arg6 = max #map7(%arg5, %arg4, %arg3) to min #map8(%arg4, %arg5, %arg3) {
              %0 = affine.apply #map9(%arg5, %arg6)
              affine.if #set5(%arg5, %arg6) {
                affine.for %arg7 = max #map10(%arg5, %arg6) to min #map11(%arg5, %arg6) {
                  %3 = affine.apply #map12(%arg6, %arg7, %arg5)
                  func.call @S4(%arg2, %arg6, %0, %3) : (memref<?x60xi32>, index, index, index) -> ()
                }
              }
              %1 = affine.max #map13(%arg5, %arg6)
              affine.if #set6(%arg5, %arg6) {
                func.call @S0(%arg2, %arg6, %1) : (memref<?x60xi32>, index, index) -> ()
                func.call @S1(%arg2, %arg6, %1) : (memref<?x60xi32>, index, index) -> ()
                func.call @S2(%arg2, %arg6, %1, %arg1) : (memref<?x60xi32>, index, index, memref<?xi32>) -> ()
              }
              %2 = affine.apply #map14(%arg5, %arg6)
              affine.if #set7(%arg5, %arg6) {
                func.call @S0(%arg2, %arg6, %2) : (memref<?x60xi32>, index, index) -> ()
                func.call @S1(%arg2, %arg6, %2) : (memref<?x60xi32>, index, index) -> ()
                func.call @S2(%arg2, %arg6, %2, %arg1) : (memref<?x60xi32>, index, index, memref<?xi32>) -> ()
                affine.for %arg7 = #map15(%arg6, %arg5) to min #map16(%arg5, %arg6) {
                  %3 = affine.apply #map17(%arg6, %arg7, %arg5)
                  func.call @S4(%arg2, %arg6, %2, %3) : (memref<?x60xi32>, index, index, index) -> ()
                }
              }
            }
          }
          affine.if #set8(%arg4, %arg5) {
            %0 = affine.apply #map18(%arg5)
            affine.if #set9(%arg5, %arg3) {
              func.call @S0(%arg2, %0, %c32) : (memref<?x60xi32>, index, index) -> ()
              func.call @S1(%arg2, %0, %c32) : (memref<?x60xi32>, index, index) -> ()
              func.call @S2(%arg2, %0, %c32, %arg1) : (memref<?x60xi32>, index, index, memref<?xi32>) -> ()
            }
          }
          affine.if #set10(%arg5) {
            affine.for %arg6 = max #map19(%arg4, %arg5, %arg3) to min #map20(%arg4, %arg5, %arg3) {
              affine.if #set11(%arg5, %arg6) {
                %0 = affine.apply #map21(%arg6)
                func.call @S0(%arg2, %arg6, %0) : (memref<?x60xi32>, index, index) -> ()
                %1 = affine.apply #map21(%arg6)
                func.call @S1(%arg2, %arg6, %1) : (memref<?x60xi32>, index, index) -> ()
                %2 = affine.apply #map21(%arg6)
                func.call @S2(%arg2, %arg6, %2, %arg1) : (memref<?x60xi32>, index, index, memref<?xi32>) -> ()
              }
            }
          }
        }
      }
    }
    return
  }
  func.func @T0(%arg0: index, %arg1: memref<?x60xi32>, %arg2: index) {
    %c31 = arith.constant 31 : index
    affine.for %arg3 = max #map22()[%arg2, %arg0] to min #map23()[%arg2, %arg0] {
      %0 = affine.apply #map24(%arg3)[%arg0]
      func.call @S4(%arg1, %arg0, %c31, %0) : (memref<?x60xi32>, index, index, index) -> ()
    }
    return
  }
  func.func @T1(%arg0: index, %arg1: memref<?x60xi32>, %arg2: index) {
    %c59 = arith.constant 59 : index
    affine.for %arg3 = #map25()[%arg2] to min #map26()[%arg2, %arg0] {
      %0 = affine.apply #map27(%arg3)[%arg0]
      func.call @S4(%arg1, %arg0, %c59, %0) : (memref<?x60xi32>, index, index, index) -> ()
    }
    return
  }
}

