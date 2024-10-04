// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: void test_func
    func.func @test_func (%a: memref<3x3xi32>) -> () {
// CHECK: int [[A:.*]] =
        %0 = arith.constant 0 : index
// CHECK: int [[B:.*]] =
        %1 = arith.constant 1 : index
// CHECK: int [[C:.*]] =
        %s = arith.constant 2 : i32
// CHECK: [[[A]]][[[B]]] = [[C]]
        memref.store %s, %a[%0, %1] : memref<3x3xi32>
        return
    }
}