// REQUIRES: air
// RUN: verif-opt --verif-convert-aie %s | FileCheck %s

module {
  %tile14 = aie.tile(1, 4)

// CHECK: memref.global "private" @[[BUFNAME:.*]] : memref<5xi32>
// CHECK-NOT: aie.buffer
  %buf = aie.buffer(%tile14) : memref<5xi32>

// CHECK: [[VAL:%.*]] = arith.constant
  %val = arith.constant 42 : i32
  %0 = arith.constant 0 : index
// CHECK: [[BUFVAL:%.*]] = memref.get_global @[[BUFNAME]] : memref<5xi32>
// CHECK: memref.store [[VAL]], [[BUFVAL]]
  memref.store %val, %buf[%0] : memref<5xi32>
}

