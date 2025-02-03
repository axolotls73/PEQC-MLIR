// REQUIRES: air
// RUN: verif-opt --verif-convert-aie %s | FileCheck %s

module {
  %tile14 = aie.tile(1, 4)
// CHECK: async.execute
  aie.core(%tile14) {

    %a = memref.alloc() : memref<1xindex>
    %i = arith.constant 0 : index
    memref.store %i, %a[%i] : memref<1xindex>

    aie.end
  }
}

