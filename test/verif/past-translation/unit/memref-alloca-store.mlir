// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: void test_func
    func.func @test_func (%a: memref<3x3xi32>) -> () {
// CHECK-DAG: double* [[ARR:.*]];
        %alloca = memref.alloca() : memref<f64>
// CHECK-DAG: double [[cst:.*]] =
        %cst = arith.constant 0.000000e+00 : f64
// CHECK: [[ARR]][0] = [[cst]]
        memref.store %cst, %alloca[] : memref<f64>
        return
    }
}