// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: int* [[G:.*]];
  memref.global "private" @global : memref<2xi32>

// CHECK: void test_func
    func.func @test_func (%a: memref<3x3xi32>) -> () {
// CHECK: int [[CST_0:.*]] =
        %0 = arith.constant 0 : index
// CHECK: int [[I:.*]] =
        %i = arith.constant 42 : i32

        %global = memref.get_global @global : memref<2xi32>
// CHECK: [[G]][[[CST_0]]] = [[I]]
        memref.store %i, %global[%0] : memref<2xi32>
        return
    }
}