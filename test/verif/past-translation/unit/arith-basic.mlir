// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: int [[A:.*]] = 0
    %a = arith.constant 0 : i32
// CHECK: int [[B:.*]] = 2
    %b = arith.constant 2 : i32
// CHECK: = ([[A]] + [[B]])
    %2 = arith.addi %a, %b : i32
// CHECK: = max([[A]], [[B]])
    %3 = arith.maxsi %a, %b : i32
// CHECK: = min([[A]], [[B]])
    %4 = arith.minsi %a, %b : i32
// CHECK: double {{.*}} = 5.0
    %5 = arith.constant 5.000000e+00 : f64
// CHECK: float {{.*}} = 5.0
    %6 = arith.constant 5.000000e+00 : f32
}