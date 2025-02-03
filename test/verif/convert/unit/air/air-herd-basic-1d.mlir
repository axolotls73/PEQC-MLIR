// REQUIRES: air
// RUN: verif-opt --verif-air-to-scf-par %s | FileCheck %s

module {
// CHECK-DAG: [[C2:%.*]] = arith.constant 2
// CHECK-DAG: [[A:%.*]] = memref.alloc
  %c2 = arith.constant 2 : index
  %alloc = memref.alloc() : memref<1x1x64x64xi32, 1>
// CHECK: scf.parallel ([[IV1:%.*]]) = ({{.*}}) to ([[C2]])
  air.herd @herd_0  tile (%arg0) in (%arg2=%c2) args(%arg4=%alloc) : memref<1x1x64x64xi32, 1> {
    %c512_i32 = arith.constant 512 : i32
// CHECK: [[C512:%.*]] = arith.constant 512
// CHECK: memref.store [[C512]], [[A]][[[IV1]], [[IV1]], [[C2]], [[C2]]]
    memref.store %c512_i32, %arg4[%arg0, %arg0, %arg2, %arg2] : memref<1x1x64x64xi32, 1>
    air.herd_terminator
  }
}