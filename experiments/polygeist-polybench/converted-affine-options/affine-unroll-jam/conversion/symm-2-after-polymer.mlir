#map = affine_map<(d0) -> (18, d0)>
#map1 = affine_map<(d0, d1) -> (18, d0, d1 * 32)>
#map2 = affine_map<(d0) -> (523, d0 * 32 + 31)>
#map3 = affine_map<(d0) -> ((d0 - 18) ceildiv 18)>
#map4 = affine_map<(d0, d1) -> ((d0 - 17) ceildiv 18, (d0 - d1 + 1) ceildiv 18)>
#map5 = affine_map<(d0, d1) -> (d0 - d1 * 18)>
#map6 = affine_map<(d0) -> (d0 ceildiv 18)>
#map7 = affine_map<(d0) -> (18, d0 * 32)>
#map8 = affine_map<(d0) -> (d0 + 522)>
#map9 = affine_map<(d0) -> (d0 - 522)>
#map10 = affine_map<(d0, d1) -> ((-d0 + d1 * 32 + 32) ceildiv 18)>
#map11 = affine_map<(d0, d1) -> (d0 * 32 - ((d0 * 32 - d1 + 32) ceildiv 18) * 18 + 31)>
#set = affine_set<(d0) : (d0 == 0)>
#set1 = affine_set<(d0) : (d0 - 1 >= 0)>
#set2 = affine_set<(d0, d1) : (d0 == 0, d1 == 0)>
#set3 = affine_set<(d0, d1) : (d0 - 19 == 0, d1 == 0)>
#set4 = affine_set<(d0) : (-d0 + 18 >= 0)>
#set5 = affine_set<(d0) : (d0 mod 18 == 0)>
#set6 = affine_set<(d0, d1) : ((d0 - 1) floordiv 18 - (d0 - 17) ceildiv 18 >= 0, (d0 - 1) floordiv 18 - (-d1 + d0 + 1) ceildiv 18 >= 0)>
#set7 = affine_set<(d0) : (d0 - 19 == 0)>
#set8 = affine_set<(d0) : (d0 - 16 == 0)>
#set9 = affine_set<(d0, d1) : (d0 - 19 == 0, d1 - 16 == 0)>
#set10 = affine_set<(d0, d1) : (d0 - 2 >= 0, -d1 + 15 >= 0)>
#set11 = affine_set<(d0, d1) : ((d1 * 16 + 15) floordiv 9 - (-d0 + d1 * 32 + 32) ceildiv 18 >= 0)>
#set12 = affine_set<(d0, d1) : (-d0 + 18 >= 0, d1 - 16 == 0)>
module {
  func.func private @S0(%arg0: memref<f64>) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[] : memref<f64>
    return
  }
  func.func private @S1(%arg0: memref<f64>) attributes {scop.stmt} {
    %cst = arith.constant 0.000000e+00 : f64
    affine.store %cst, %arg0[] : memref<f64>
    return
  }
  func.func private @S2(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: memref<?x20xf64>, %arg4: index, %arg5: f64, %arg6: memref<?x30xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x30xf64>
    %1 = affine.load %arg6[%arg4, %arg2] : memref<?x30xf64>
    %2 = arith.mulf %arg5, %1 : f64
    %3 = affine.load %arg3[%arg4, %arg1] : memref<?x20xf64>
    %4 = arith.mulf %2, %3 : f64
    %5 = arith.addf %0, %4 : f64
    affine.store %5, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func private @S3(%arg0: memref<f64>, %arg1: memref<?x20xf64>, %arg2: index, %arg3: index, %arg4: memref<?x30xf64>, %arg5: index) attributes {scop.stmt} {
    %0 = affine.load %arg0[] : memref<f64>
    %1 = affine.load %arg4[%arg3, %arg5] : memref<?x30xf64>
    %2 = affine.load %arg1[%arg2, %arg3] : memref<?x20xf64>
    %3 = arith.mulf %1, %2 : f64
    %4 = arith.addf %0, %3 : f64
    affine.store %4, %arg0[] : memref<f64>
    return
  }
  func.func private @S4(%arg0: memref<?x30xf64>, %arg1: index, %arg2: index, %arg3: f64, %arg4: memref<f64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>, %arg7: f64) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<?x30xf64>
    %1 = arith.mulf %arg7, %0 : f64
    %2 = affine.load %arg6[%arg1, %arg2] : memref<?x30xf64>
    %3 = arith.mulf %arg3, %2 : f64
    %4 = affine.load %arg5[%arg1, %arg1] : memref<?x20xf64>
    %5 = arith.mulf %3, %4 : f64
    %6 = arith.addf %1, %5 : f64
    %7 = affine.load %arg4[] : memref<f64>
    %8 = arith.mulf %arg3, %7 : f64
    %9 = arith.addf %6, %8 : f64
    affine.store %9, %arg0[%arg1, %arg2] : memref<?x30xf64>
    return
  }
  func.func @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x30xf64>, %arg5: memref<?x20xf64>, %arg6: memref<?x30xf64>) {
    %c29 = arith.constant 29 : index
    %c1 = arith.constant 1 : index
    %c19 = arith.constant 19 : index
    %c18 = arith.constant 18 : index
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<f64>
    call @S0(%alloca) : (memref<f64>) -> ()
    affine.for %arg7 = 0 to 20 {
      affine.for %arg8 = 0 to 17 {
        affine.if #set(%arg8) {
          affine.for %arg9 = 0 to min #map(%arg7) {
            affine.if #set(%arg9) {
              func.call @S2(%arg4, %c0, %c0, %arg5, %arg7, %arg2, %arg6) : (memref<?x30xf64>, index, index, memref<?x20xf64>, index, f64, memref<?x30xf64>) -> ()
              func.call @S1(%alloca) : (memref<f64>) -> ()
              func.call @S3(%alloca, %arg5, %arg7, %c0, %arg6, %c0) : (memref<f64>, memref<?x20xf64>, index, index, memref<?x30xf64>, index) -> ()
            }
            affine.if #set1(%arg9) {
              func.call @S2(%arg4, %arg9, %c0, %arg5, %arg7, %arg2, %arg6) : (memref<?x30xf64>, index, index, memref<?x20xf64>, index, f64, memref<?x30xf64>) -> ()
              func.call @S3(%alloca, %arg5, %arg7, %arg9, %arg6, %c0) : (memref<f64>, memref<?x20xf64>, index, index, memref<?x30xf64>, index) -> ()
            }
            affine.for %arg10 = 1 to 30 {
              func.call @S2(%arg4, %arg9, %arg10, %arg5, %arg7, %arg2, %arg6) : (memref<?x30xf64>, index, index, memref<?x20xf64>, index, f64, memref<?x30xf64>) -> ()
            }
          }
        }
        affine.if #set2(%arg7, %arg8) {
          func.call @S1(%alloca) : (memref<f64>) -> ()
        }
        affine.if #set3(%arg7, %arg8) {
          func.call @S2(%arg4, %c18, %c0, %arg5, %c19, %arg2, %arg6) : (memref<?x30xf64>, index, index, memref<?x20xf64>, index, f64, memref<?x30xf64>) -> ()
          func.call @S3(%alloca, %arg5, %c19, %c18, %arg6, %c0) : (memref<f64>, memref<?x20xf64>, index, index, memref<?x30xf64>, index) -> ()
          func.call @S4(%arg4, %c19, %c0, %arg2, %alloca, %arg5, %arg6, %arg3) : (memref<?x30xf64>, index, index, f64, memref<f64>, memref<?x20xf64>, memref<?x30xf64>, f64) -> ()
          func.call @S2(%arg4, %c18, %c1, %arg5, %c19, %arg2, %arg6) : (memref<?x30xf64>, index, index, memref<?x20xf64>, index, f64, memref<?x30xf64>) -> ()
          func.call @S1(%alloca) : (memref<f64>) -> ()
          func.call @S3(%alloca, %arg5, %c19, %c0, %arg6, %c1) : (memref<f64>, memref<?x20xf64>, index, index, memref<?x30xf64>, index) -> ()
          affine.for %arg9 = 2 to 30 {
            func.call @S2(%arg4, %c18, %arg9, %arg5, %c19, %arg2, %arg6) : (memref<?x30xf64>, index, index, memref<?x20xf64>, index, f64, memref<?x30xf64>) -> ()
          }
        }
        affine.if #set1(%arg7) {
          affine.for %arg9 = max #map1(%arg7, %arg8) to min #map2(%arg8) {
            affine.if #set4(%arg7) {
              affine.if #set5(%arg9) {
                %1 = affine.apply #map3(%arg9)
                func.call @S4(%arg4, %arg7, %1, %arg2, %alloca, %arg5, %arg6, %arg3) : (memref<?x30xf64>, index, index, f64, memref<f64>, memref<?x20xf64>, memref<?x30xf64>, f64) -> ()
              }
            }
            %0 = affine.max #map4(%arg7, %arg9)
            affine.if #set6(%arg9, %arg7) {
              %1 = affine.apply #map5(%arg9, %0)
              func.call @S3(%alloca, %arg5, %arg7, %1, %arg6, %0) : (memref<f64>, memref<?x20xf64>, index, index, memref<?x30xf64>, index) -> ()
            }
            affine.if #set7(%arg7) {
              affine.if #set5(%arg9) {
                %1 = affine.apply #map3(%arg9)
                func.call @S3(%alloca, %arg5, %c19, %c18, %arg6, %1) : (memref<f64>, memref<?x20xf64>, index, index, memref<?x30xf64>, index) -> ()
                %2 = affine.apply #map3(%arg9)
                func.call @S4(%arg4, %c19, %2, %arg2, %alloca, %arg5, %arg6, %arg3) : (memref<?x30xf64>, index, index, f64, memref<f64>, memref<?x20xf64>, memref<?x30xf64>, f64) -> ()
              }
            }
            affine.if #set5(%arg9) {
              func.call @S1(%alloca) : (memref<f64>) -> ()
              %1 = affine.apply #map6(%arg9)
              func.call @S3(%alloca, %arg5, %arg7, %c0, %arg6, %1) : (memref<f64>, memref<?x20xf64>, index, index, memref<?x30xf64>, index) -> ()
            }
          }
        }
        affine.if #set(%arg7) {
          affine.for %arg9 = max #map7(%arg8) to min #map2(%arg8) {
            affine.if #set5(%arg9) {
              %0 = affine.apply #map3(%arg9)
              func.call @S4(%arg4, %c0, %0, %arg2, %alloca, %arg5, %arg6, %arg3) : (memref<?x30xf64>, index, index, f64, memref<f64>, memref<?x20xf64>, memref<?x30xf64>, f64) -> ()
            }
            affine.if #set5(%arg9) {
              func.call @S1(%alloca) : (memref<f64>) -> ()
            }
          }
        }
        affine.if #set8(%arg8) {
          affine.for %arg9 = 523 to #map8(%arg7) {
            %0 = affine.apply #map9(%arg9)
            func.call @S3(%alloca, %arg5, %arg7, %0, %arg6, %c29) : (memref<f64>, memref<?x20xf64>, index, index, memref<?x30xf64>, index) -> ()
          }
        }
        affine.if #set9(%arg7, %arg8) {
          func.call @S4(%arg4, %c19, %c29, %arg2, %alloca, %arg5, %arg6, %arg3) : (memref<?x30xf64>, index, index, f64, memref<f64>, memref<?x20xf64>, memref<?x30xf64>, f64) -> ()
        }
        affine.if #set10(%arg7, %arg8) {
          %0 = affine.apply #map10(%arg7, %arg8)
          affine.if #set11(%arg7, %arg8) {
            %1 = affine.apply #map11(%arg8, %arg7)
            func.call @S3(%alloca, %arg5, %arg7, %1, %arg6, %0) : (memref<f64>, memref<?x20xf64>, index, index, memref<?x30xf64>, index) -> ()
          }
        }
        affine.if #set12(%arg7, %arg8) {
          func.call @S4(%arg4, %arg7, %c29, %arg2, %alloca, %arg5, %arg6, %arg3) : (memref<?x30xf64>, index, index, f64, memref<f64>, memref<?x20xf64>, memref<?x30xf64>, f64) -> ()
        }
      }
    }
    return
  }
}

