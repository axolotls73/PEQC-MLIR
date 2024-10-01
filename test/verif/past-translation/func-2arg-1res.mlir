// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: void test_func(unsigned long int [[ARG1:.*]], unsigned long int [[ARG2:.*]], unsigned long int [[ARG3:.*]])
    func.func @test_func (%a: i32, %b: i32) -> i32 {
// CHECK: [[ARG3]] = [[ARG2]]
// CHECK: return;
        return %b: i32
    }
}