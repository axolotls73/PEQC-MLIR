// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: int [[C1:.*]] = 1
// CHECK: int [[C2:.*]] = 2
// CHECK: int [[cond:.*]] = ([[C1]] != [[C2]])
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %cond = arith.cmpi ne, %c1, %c2 : index
// CHECK: if ([[cond]])
// CHECK: = 42
// CHECK: }
    scf.if %cond {
        %1 = arith.constant 42 : i32
    }
// CHECK: else
// CHECK: = 50
// CHECK: }
    else {
        %1 = arith.constant 50 : i32
    }
}