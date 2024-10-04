module {
    %buffer = memref.alloc() : memref<100xf32>
    %init = arith.constant 0.5 : f32
    %lb = arith.constant 0 : index
    %ub = arith.constant 32 : index
    %step = arith.constant 8 : index
    %r = scf.parallel (%iv) = (%lb) to (%ub) step (%step) init (%init) -> f32 {
        %elem_to_reduce = memref.load %buffer[%iv] : memref<100xf32>
        scf.reduce(%elem_to_reduce : f32) {
            ^bb0(%lhs : f32, %rhs: f32):
            %res = arith.mulf %lhs, %rhs : f32
            scf.reduce.return %res : f32
        }
    }
    memref.store %r, %buffer[%lb] : memref<100xf32>
}
