// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: void test_func(int [[ARG1:.*]], int [[ARG2:.*]])
    func.func @test_func (%a: i32) -> i32 {
// CHECK: [[ARG2]]{{.*}}={{.*}}[[ARG1]]
// CHECK: return;
        return %a: i32
    }
}