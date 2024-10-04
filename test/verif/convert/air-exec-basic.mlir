// RUN: verif-opt --verif-lower-to-async %s | FileCheck %s

module {
// CHECK: async.execute
    %async_token_12, %a = air.execute -> (memref<64x64xf32, 1>) {
        %alloc = memref.alloc() : memref<64x64xf32, 1>
        air.execute_terminator %alloc : memref<64x64xf32, 1>
    } {id = 5 : i32}
    %0 = arith.constant 0. : f32
    %1 = arith.constant 0 : index
    memref.store %0, %a[%1, %1] : memref<64x64xf32, 1>
}
