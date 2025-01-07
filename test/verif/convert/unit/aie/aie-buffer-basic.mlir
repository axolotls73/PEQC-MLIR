// RUN: verif-opt --verif-convert-aie %s | FileCheck %s

module {
  %tile14 = aie.tile(1, 4)

// CHECK: [[BUF:%.*]] = memref.alloc() : memref<5xi32>
// CHECK-NOT: aie.buffer
  %buf = aie.buffer(%tile14) : memref<5xi32>

// CHECK: [[VAL:%.*]] = arith.constant
  %val = arith.constant 42 : i32
  %0 = arith.constant 0 : index
// CHECK: memref.store [[VAL]], [[BUF]]
  memref.store %val, %buf[%0] : memref<5xi32>
}

