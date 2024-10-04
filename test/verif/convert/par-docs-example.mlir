// RUN: verif-opt --verif-lower-to-async %s | FileCheck %s

// RUN: verif-opt --verif-lower-to-async %s | verif-translate --translate-to-past > %t && \
// RUN: pastchecker %t %t
// XFAIL: *

module {
    %buffer = memref.alloc() : memref<100xf32>
    %init = arith.constant 0.0 : f32
    %lb = arith.constant 0 : index
    %ub = arith.constant 32 : index
    %step = arith.constant 8 : index
    %res1, %res2 = scf.parallel (%iv) = (%lb) to (%ub) step (%step) init (%init, %init) -> (f32, f32) {
// CHECK: async.execute
        %elem_to_reduce1 = memref.load %buffer[%iv] : memref<100xf32>
        %elem_to_reduce2 = memref.load %buffer[%iv] : memref<100xf32>
        scf.reduce(%elem_to_reduce1, %elem_to_reduce2 : f32, f32) {
            ^bb0(%lhs : f32, %rhs: f32):
            %res = arith.addf %lhs, %rhs : f32
            scf.reduce.return %res : f32
        }, {
            ^bb0(%lhs : f32, %rhs: f32):
            %res = arith.mulf %lhs, %rhs : f32
            scf.reduce.return %res : f32
        }
    }
}