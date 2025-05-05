
//
// vadd-dep.mlir: This file is part of the PEQC-MLIR project.
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
// RUN: split-file %s %t

// RUN: verif-opt %t/input.mlir --verif-air-execute-to-async > %t/conversion.mlir && \
// RUN: sed -i 's/!air.async.token/!async.token/g' %t/conversion.mlir && \
//      ^ quick and dirty solution until i make a pass to remove unrealized_conversion_casts
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// expect a conflict on %results_1
// RUN: not %pastchecker %t/translation.c %t/translation.c x,y,z 2>&1 | grep conflict

//--- input.mlir

// created from /test/verif/past-translation/full-flow/vadd.mlir
// by running air-opt --air-dependency vadd.mlir

module {
  func.func @vadd(%arg0: memref<128xf32>, %arg1: memref<128xf32>) -> memref<128xf32> {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c128 = arith.constant 128 : index
    %async_token, %results = air.execute -> (memref<128xf32>) {
      %alloc = memref.alloc() : memref<128xf32>
      air.execute_terminator %alloc : memref<128xf32>
    } {id = 1 : i32}
    %0 = air.wait_all async [%async_token]  {id = 2 : i32}
    %1 = scf.for %arg2 = %c0 to %c128 step %c1 iter_args(%arg3 = %0) -> (!air.async.token) {
      %async_token_0, %results_1 = air.execute [%arg3] -> (f32) {
        %4 = memref.load %arg0[%arg2] : memref<128xf32>
        air.execute_terminator %4 : f32
      } {id = 2 : i32}
      %async_token_2, %results_3 = air.execute [%arg3] -> (f32) {
        %4 = memref.load %arg1[%arg2] : memref<128xf32>
        air.execute_terminator %4 : f32
      } {id = 3 : i32}
      %2 = arith.addf %results_1, %results_3 : f32
      %async_token_4 = air.execute [%arg3] {
        memref.store %2, %results[%arg2] : memref<128xf32>
      } {id = 4 : i32}
      %3 = air.wait_all async [%arg3, %async_token_0, %async_token_2, %async_token_4]  {id = 1 : i32}
      scf.yield %3 : !air.async.token
    }
    return %results : memref<128xf32>
  }
}

//--- epilogue.c

{
    float* x;
    float* y;
    float* z;
    vadd(x, y, z);
}

//--- compare.c

#pragma pocc-region-start
{
    float* x;
    float* y;
    float* z;
    for (int i = 0; i < 128; i++) {
        z[i] = x[i] + y[i];
    }
}
#pragma pocc-region-end
