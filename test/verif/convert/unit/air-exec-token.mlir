// RUN: split-file %s %t && \
// RUN: verif-opt --verif-air-execute-to-async %t/input.mlir > %t/conversion.mlir 2> %t/STDERR.txt

// RUN: cat %t/conversion.mlir | FileCheck %s

//--- input.mlir

module {
  func.func @vadd(%arg0: memref<128xf32>, %arg1: memref<128xf32>) -> memref<128xf32> {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c128 = arith.constant 128 : index
// CHECK: [[TOKEN:%.*]] = async.execute
    %async_token, %results = air.execute -> (memref<128xf32>) {
      %alloc = memref.alloc() : memref<128xf32>
      air.execute_terminator %alloc : memref<128xf32>
    } {id = 1 : i32}
// CHECK: async.execute [[[TOKEN]]]

// COM: old impl, explicit wait
// COM: CHECK: [[GROUP:%.*]] = async.create_group
// COM: CHECK: async.add_to_group [[TOKEN]], [[GROUP]]
// COM: CHECK: async.await_all [[GROUP]]
    %0 = air.wait_all async [%async_token]  {id = 2 : i32}
    return %arg0 : memref<128xf32>
  }
}