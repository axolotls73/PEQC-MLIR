
//
// async-two-level-2.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// RUN: %pastchecker --enable-preprocessor %t/translation.c %t/translation.c a,b,c | grep YES

//--- input.mlir

module {
  func.func @async_test(%arg0: memref<10xi32>) -> () {
    %c0_i32 = arith.constant 0 : i32
    %c0 = arith.constant 0 : index
    %c10 = arith.constant 10 : index
    %c1 = arith.constant 1 : index
    scf.for %i = %c0 to %c10 step %c1 {
      async.execute {
        %local = memref.alloc() : memref<10xi32>
        %group = async.create_group %c10 : !async.group
        scf.for %j = %c0 to %c10 step %c1 {
          %token = async.execute {
            memref.store %c0_i32, %local[%j] : memref<10xi32>
            async.yield
          }
          async.add_to_group %token, %group : !async.token
        }
        async.await_all %group
        %s = scf.for %k = %c0 to %c10 step %c1 iter_args (%accum = %c0_i32) -> i32 {
          %l = memref.load %local[%k] : memref<10xi32>
          %s = arith.addi %accum, %l : i32
          scf.yield %s : i32
        }
        memref.store %s, %arg0[%i] : memref<10xi32>
        async.yield
      }
    }
    return
  }
}

//--- epilogue.c
{
  float* a;
  async_test(a);
}
