
//
// async-basic-wait.mlir: This file is part of the PEQC-MLIR project.
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

// COM: interpreter issue -- catching false conflict

// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// RUN: cat %t/result.c | FileCheck %t/input.mlir

// RUN: %pastchecker %t/translation.c %t/translation.c res | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c res | grep YES

// RUN: %pastchecker %t/translation.c %t/compare-bug.c res | not grep YES


//--- input.mlir

module {
    func.func @async_test () -> i32 {
        %a = memref.alloc() : memref<1xi32>
        %0 = arith.constant 0 : index
        %1 = arith.constant 1 : index
// CHECK: #pragma peqc async_execute
        %token = async.execute {
            %5 = arith.constant 30 : i32
            memref.store %5, %a[%0] : memref<1xi32>
            async.yield
        }
        %group = async.create_group %1 : !async.group
        async.add_to_group %token, %group : !async.token
        async.await_all %group
        %ret = memref.load %a[%0] : memref<1xi32>
        return %ret : i32
    }
}

//--- epilogue.c

{
  #pragma peqc async_execute
  {
    int* res_arr;
    async_test(res_arr);
    int res = res_arr[0];
  }
}

//--- compare.c

#pragma pocc-region-start
{
  int res = 30;
}
#pragma pocc-region-end

//--- compare-bug.c

#pragma pocc-region-start
{
  res = 31;
}
#pragma pocc-region-end
