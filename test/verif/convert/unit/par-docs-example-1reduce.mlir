// RUN: verif-opt --verif-lower-to-async %s | FileCheck %s

module {
    %buffer = memref.alloc() : memref<100xf32>
    %init = arith.constant 0.5 : f32
    %lb = arith.constant 0 : index
    %ub = arith.constant 32 : index
    %step = arith.constant 8 : index
// CHECK: [[INIT:%.*]] = arith.constant 5.
// CHECK: [[LB:%.*]] = arith.constant 0
// CHECK: [[UB:%.*]] = arith.constant 32
// CHECK: [[STEP:%.*]] = arith.constant 8
// CHECK: [[INDEX_INIT:%.*]] = arith.constant 0
// CHECK: scf.for [[ITER:%.*]] = [[LB]] to [[UB]] step [[STEP]] iter_args([[IA:.*]] = [[INDEX_INIT]])
    %r = scf.parallel (%iv) = (%lb) to (%ub) step (%step) init (%init) -> f32 {
// CHECK: async.execute
        %elem_to_reduce = memref.load %buffer[%iv] : memref<100xf32>
// CHECK: memref.store{{.*}}[[[IA]]]
        scf.reduce(%elem_to_reduce : f32) {
            ^bb0(%lhs : f32, %rhs: f32):
            %res = arith.mulf %lhs, %rhs : f32
            scf.reduce.return %res : f32
        }
//CHECK scf.yield [[IA]]
    }
    memref.store %r, %buffer[%lb] : memref<100xf32>
}
