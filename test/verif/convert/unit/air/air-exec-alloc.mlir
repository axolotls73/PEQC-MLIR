// REQUIRES: air
// RUN: split-file %s %t && \
// RUN: verif-opt --verif-air-execute-to-async %t/input.mlir > %t/conversion.mlir 2> %t/STDERR.txt

// RUN: cat %t/conversion.mlir | FileCheck %s

//--- input.mlir

module {
// COM: alloc is moved OUTSIDE of the async part
// CHECK: [[ALLOC:%.*]] = memref.alloc
// CHECK: async.execute
    %async_token_12, %a = air.execute -> (memref<64x64xf32, 1>) {
        %alloc = memref.alloc() : memref<64x64xf32, 1>
        air.execute_terminator %alloc : memref<64x64xf32, 1>
    } {id = 5 : i32}
    %0 = arith.constant 0. : f32
    %1 = arith.constant 0 : index
// CHECK: memref.store {{.*}}, [[ALLOC]][{{.*}}] :
    memref.store %0, %a[%1, %1] : memref<64x64xf32, 1>
}
