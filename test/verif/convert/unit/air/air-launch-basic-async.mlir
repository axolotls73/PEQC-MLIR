// RUN: verif-opt --verif-air-to-scf-par %s | FileCheck %s

module {
// CHECK-DAG: [[C2:%.*]] = arith.constant 2
// CHECK-DAG: [[A:%.*]] = memref.alloc
  %c2 = arith.constant 2 : index
  %alloc = memref.alloc() : memref<1x1x64x64xi32, 1>
// CHECK: async.execute
// CHECK: scf.parallel ([[IV1:%.*]], [[IV2:%.*]]) = ({{.*}}) to ([[C2]], [[C2]])
  %token = air.launch @launch_0 async (%arg0, %arg1) in (%arg2=%c2, %arg3=%c2) args(%arg4=%alloc) : memref<1x1x64x64xi32, 1> {
    %c512_i32 = arith.constant 512 : i32
// CHECK: [[C512:%.*]] = arith.constant 512
// CHECK: memref.store [[C512]], [[A]][[[IV1]], [[IV2]], [[C2]], [[C2]]]
    memref.store %c512_i32, %arg4[%arg0, %arg1, %arg2, %arg3] : memref<1x1x64x64xi32, 1>
    air.launch_terminator
  }
  %r = air.wait_all async [%token]
}