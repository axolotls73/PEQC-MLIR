
//
// par-token-iter.mlir: This file is part of the PEQC-MLIR project.
//
// Copyright (C) 2024 Colorado State University
//
// This program can be redistributed and/or modified under the terms
// of the license specified in the LICENSE.txt file at the root of the
// project.
//
// Contact: Louis-Noel Pouchet <pouchet@colostate.edu>
//          Emily Tucker <emily.tucker@colostate.edu>
// Author: Emily Tucker <emily.tucker@colostate.edu>
//
//

// REQUIRES: air
//XFAIL: *
// COM: not sure if we actually need to support this case: scf.parallel with
// COM: a token accumulator. weird pattern and not present in current driver
// COM: examples in ../examples/air-to-aie.
// COM: branch where i tried to implement support: scf-par-token-accumulate

// RUN: split-file %s %t && \
// RUN: verif-opt --verif-air-execute-to-async --verif-scf-parallel-to-async %t/input.mlir > %t/conversion.mlir 2> %t/STDERR.txt

//--- input.mlir

module {
  func.func @matmul_on_memref(%arg0: memref<128x128xi32>, %arg1: memref<128x128xi32>) -> memref<128x128xi32> {
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %c0 = arith.constant 0 : index
    %c32 = arith.constant 32 : index
    %c0_i32 = arith.constant 0 : i32
    %async_token, %results = air.execute -> (memref<128x128xi32>) {
      %alloc = memref.alloc() : memref<128x128xi32>
      air.execute_terminator %alloc : memref<128x128xi32>
    } {id = 1 : i32}
    %c0_0 = arith.constant 0 : index
    %c128_1 = arith.constant 128 : index
    %c1 = arith.constant 1 : index
    %3 = scf.parallel (%arg2, %arg3) = (%c0, %c0) to (%c128, %c128) step (%c64, %c64) init (%async_token) -> !air.async.token {
    %async_token_inner = air.execute {
      %alloc = memref.alloc() : memref<128x128xi32>
      air.execute_terminator
    } {id = 1 : i32}

      %6 = air.wait_all async [%async_token_inner]  {id = 17 : i32}
      scf.reduce(%6 : !air.async.token) {
      ^bb0(%arg4: !air.async.token, %arg5: !air.async.token):
        %7 = air.wait_all async [%arg4, %arg5]
        scf.reduce.return %7 : !air.async.token
      }
    }
    return %results : memref<128x128xi32>
  }
}

