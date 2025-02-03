// REQUIRES: air
// RUN: verif-opt --verif-air-dma-to-memref %s | FileCheck %s

module {
    func.func @dmatest(%a: memref<16xi32>, %b: memref<8xi32>) -> () {
// CHECK: dmatest([[A:%.+]]: memref<16xi32>, [[B:%.+]]:
        %c8 = arith.constant 8 : index
        %c0 = arith.constant 0 : index
        %c1 = arith.constant 1 : index
// CHECK: async.execute
// CHECK: [[SUBV:%.*]] = memref.subview [[A]][0] [8] [1]
// CHECK: memref.copy [[SUBV]], [[B]]
        %token = air.dma_memcpy_nd async (%b[] [] [], %a[%c0] [%c8] [%c1]) : (memref<8xi32>, memref<16xi32>)
        %r = air.wait_all async [%token]
        return
    }
}