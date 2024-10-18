// RUN: split-file %s %t && \
// RUN: verif-opt --verif-air-execute-to-async --verif-scf-parallel-to-async %t/input.mlir > %t/conversion.mlir 2> %t/STDERR.txt

//--- input.mlir

// module {
//   func.func @matmul_on_memref(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>) -> memref<128x128xi32> {
//     %c64 = arith.constant 64 : index
//     %c128 = arith.constant 128 : index
//     %c0 = arith.constant 0 : index
//     %async_token, %results = air.execute -> (memref<128x128xi32>) {
//       %alloc = memref.alloc() : memref<128x128xi32>
//       air.execute_terminator %alloc : memref<128x128xi32>
//     } {id = 1 : i32}
//     %0 = scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c128, %c128) step (%c64, %c64) init (%async_token) -> !air.async.token {
//       %1 = air.wait_all async
//       scf.reduce(%1 : !air.async.token) {
//       ^bb0(%arg4: !air.async.token, %arg5: !air.async.token):
//         %2 = air.wait_all async [%arg4, %arg5]
//         scf.reduce.return %2 : !air.async.token
//       }
//     }
//     return %results : memref<128x128xi32>
//   }
// }

module {
  func.func @matmul_on_memref(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>) {
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %c0 = arith.constant 0 : index
    %async_token, %results = air.execute -> (memref<128x128xi32>) {
      %alloc = memref.alloc() : memref<128x128xi32>
      air.execute_terminator %alloc : memref<128x128xi32>
    } {id = 1 : i32}
    %0 = scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c128, %c128) step (%c64, %c64)
        init (%async_token) -> !air.async.token
        {
      // %1 = air.wait_all async
      scf.reduce(%async_token : !air.async.token) {
      ^bb0(%arg4: !air.async.token, %arg5: !air.async.token):
        // %2 = air.wait_all async [%arg4, %arg5]
        // scf.reduce.return %2 : !air.async.token
        scf.reduce.return %arg4 : !air.async.token
      }
    }
    return
  }
}

