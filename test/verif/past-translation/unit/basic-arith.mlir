// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: int [[A:.*]] = 0;
    %0 = arith.constant 0 : i32
// CHECK: int [[B:.*]] = 2;
    %2 = arith.constant 2 : i32
// CHECK: int [[RESULT:.*]] = ([[A]] + [[B]]);
    %1 = arith.addi %0, %2 : i32
}