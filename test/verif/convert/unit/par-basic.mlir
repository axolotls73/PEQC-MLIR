// RUN: verif-opt --verif-lower-to-async %s | FileCheck %s

module {
    %c0 = arith.constant 0 : index
    %c8 = arith.constant 8 : index
    %c32 = arith.constant 32 : index
    %c64 = arith.constant 64 : index
    %a = memref.alloc() : memref<64x64xindex>
// CHECK: scf.for [[ITER1:.*]] = %c0 to %c64 step %c32
// CHECK: scf.for [[ITER2:.*]] = %c0 to %c32 step %c8
    scf.parallel (%arg5, %arg6) = (%c0, %c0) to (%c64, %c32) step (%c32, %c8) {
// CHECK: async.execute
// CHECK: memref.store %c0, %alloc[[[ITER1]], [[ITER2]]]
        memref.store %c0, %a[%arg5, %arg6] : memref<64x64xindex>
        scf.reduce
    }
}
