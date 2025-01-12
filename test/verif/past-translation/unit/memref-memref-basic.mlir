// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {

// CHECK: void [[A:.*]];
// CHECK: float* [[SUBARR1:.*]];
// CHECK: [[A]][0][0] = [[SUBARR1]]
// CHECK: float* [[SUBARR2:.*]];
// CHECK: [[A]][0][1] = [[SUBARR2]]
  %a = memref.alloc() : memref<1x2xmemref<2x2xf32>>

}