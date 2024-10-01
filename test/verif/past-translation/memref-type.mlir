// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: void test_func
    func.func @test_func (%a: memref<3x3xi32>) -> () {
        return
    }
}