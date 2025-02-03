// REQUIRES: air
// RUN: split-file %s %t && \
// RUN: verif-opt --verif-air-execute-to-async %t/input.mlir > %t/conversion.mlir 2> %t/STDERR.txt

// RUN: cat %t/conversion.mlir | FileCheck %s

//--- input.mlir

module {
    %alloc = memref.alloc() : memref<64x64xf32>
// CHECK: [[BUFFER:%.*]] = memref.alloc() : memref<1xindex>
// CHECK: async.execute
// CHECK: memref.store {{.*}}, [[BUFFER]][
// CHECK: async.yield
    %async_token_12, %a = air.execute -> (index) {
        %i = arith.constant 30 : index
        air.execute_terminator %i : index
    } {id = 5 : i32}
    %0 = arith.constant 0. : f32
    %1 = arith.constant 0 : index
    memref.store %0, %alloc[%a, %a] : memref<64x64xf32>
}
