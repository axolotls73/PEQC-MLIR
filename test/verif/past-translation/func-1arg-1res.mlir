// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: int test_func
    func.func @test_func (%a: i32) -> i32 {
        return %a: i32
    }
}