// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: void test_func(int [[ARG1:.*]], int [[ARG2:.*]], int* [[ARG3:.*]], int* [[ARG4:.*]])
    func.func @test_func (%a: i32, %b: i32) -> (i32, i32) {
// CHECK: [[ARG3]]{{.*}}={{.*}}[[ARG1]]
// CHECK: [[ARG4]]{{.*}}={{.*}}[[ARG2]]
// CHECK: return;
        return %a, %b : i32, i32
    }
}