// REQUIRES: air
// RUN: verif-opt --verif-air-to-scf-par %s | FileCheck %s

module {
// CHECK-DAG: [[A:%.*]] = memref.alloc
  %alloc = memref.alloc() : memref<1x1x64x64xi32, 1>
// CHECK-NOT: scf.parallel
  %token = air.segment @segment_0 async args(%arg4=%alloc) : memref<1x1x64x64xi32, 1> {
    %c512_i32 = arith.constant 512 : i32
    %c2 = arith.constant 2 : index
// CHECK: [[C512:%.*]] = arith.constant 512
// CHECK: memref.store [[C512]], [[A]]
    memref.store %c512_i32, %arg4[%c2, %c2, %c2, %c2] : memref<1x1x64x64xi32, 1>
    air.segment_terminator
  }
  %r = air.wait_all async [%token]
}