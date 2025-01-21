// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {

// CHECK: void f1()
// CHECK: return
  func.func @f1 () {
    return
  }

// CHECK: f1();
  func.call @f1() : () -> ()


// CHECK: void f2(int* {{.*}}, int* {{.*}})
// CHECK: return
  func.func @f2 () -> (i32, i32) {
    %5 = arith.constant 5 : i32
    %7 = arith.constant 7 : i32
    return %5, %7 : i32, i32
  }

// CHECK: int* [[R1ARR:.*]];
// CHECK: int* [[R2ARR:.*]];
// CHECK: f2([[R1ARR]], [[R2ARR]]);
// CHECK: int [[R1:.*]] = [[R1ARR]][0]
// CHECK: int [[R2:.*]] = [[R2ARR]][0]
  %r1, %r2 = func.call @f2() : () -> (i32, i32)


// CHECK: void f3(int {{.*}})
// CHECK: return
  func.func @f3 (%a : i32) {
      return
  }

// CHECK: f3([[R1]])
  func.call @f3(%r1) : (i32) -> ()

// CHECK: void f4(int* {{.*}}, int* {{.*}})
// CHECK: return
  func.func @f4 (%c : memref<1xi32>) -> (memref<1xi32>) {
    %a = memref.alloc() : memref<1xi32>
    return %a : memref<1xi32>
  }

// CHECK: int* [[B:.*]];
  %b = memref.alloc() : memref<1xi32>
// CHECK: int* [[CALLVAR:.*]];
  %c = func.call @f4(%b) : (memref<1xi32>) -> (memref<1xi32>)

// CHECK: int [[I:.*]] =
  %i = arith.constant 0 : index
  %int = arith.constant 0 : i32
// CHECK: [[CALLVAR]][[[I]]]
  memref.store %int, %c[%i] : memref<1xi32>
}