// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: int* global;
  memref.global "private" @global : memref<2xi32>

// CHECK-NOT: main
// CHECK: {
    func.func @main () -> () {
// CHECK: int {{.*}};
        %0 = arith.constant 0 : index
        return
    }
// CHECK: }
}