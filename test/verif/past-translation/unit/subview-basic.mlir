// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
    %c0 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %cst = arith.constant 40 : i32
    %alloc = memref.alloc() : memref<128x128xi32>
// CHECK-DAG: int [[C0:.*]] = 0
// CHECK-DAG: int [[C32:.*]] = 32
// CHECK-DAG: int* [[ALLOC:.*]];
// CHECK-DAG: int* [[SUBVIEW:.*]];
// CHECK: _past_array_copy_2d([[ALLOC]], [[C0]], [[C32]], 1, 1, [[SUBVIEW]], 0, 0, 1, 1, 64, 64)
    %subview = memref.subview %alloc[%c0, %c32] [64, 64] [1, 1] : memref<128x128xi32> to memref<64x64xi32, strided<[128, 1], offset: ?>>
// CHECK: [[SUBVIEW]][[[C32]]][[[C32]]] =
    memref.store %cst, %subview[%c32, %c32] : memref<64x64xi32, strided<[128, 1], offset: ?>>
// CHECK: _past_array_copy_2d([[SUBVIEW]], 0, 0, 1, 1, [[ALLOC]], [[C0]], [[C32]], 1, 1, 64, 64)
}