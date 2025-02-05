
//
// air-channel-subview-async.mlir: This file is part of the PEQC-MLIR project.
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
// RUN: verif-opt --verif-air-convert-channel %s | FileCheck %s

// CHECK: module
module {
// CHECK-DAG: memref.global "private" @[[BUF_ARR:.*]] : memref<1x1xmemref<?xi32>>
// CHECK-NOT: air.channel
  air.channel @channel [1, 1]

// CHECK: [[A:%.*]] = memref.alloc() : memref<10xi32>
  %a = memref.alloc() : memref<10xi32>

  %t = air.execute {
    air.execute_terminator
  }
  %t2 = air.execute {
    air.execute_terminator
  }

// CHECK: [[CST_2:%.*]] = arith.constant 2
// CHECK: [[CST_1:%.*]] = arith.constant 1
  %2 = arith.constant 2 : index
  %1 = arith.constant 1 : index

// CHECK-DAG: [[PUT_CST0:%.*]] = arith.constant 0 : index
// CHECK-DAG: [[PUT_CST1:%.*]] = arith.constant 1 : index
// CHECK-DAG: [[BUF_ARR_PUT:%.*]] = memref.get_global @[[BUF_ARR]]
// CHECK: async.execute
// CHECK: [[SUBVIEW:%.*]] = memref.subview [[A]][2] [2] [1]
// CHECK: [[PUTBUFFER:%.*]] = memref.load [[BUF_ARR_PUT]][[[PUT_CST0]], [[PUT_CST0]]]
// CHECK: [[PBUF:%.*]] = {{.*}}cast [[PUTBUFFER]]
// CHECK: memref.copy [[SUBVIEW]], [[PBUF]]
// CHECK-NOT: air.channel.put
  %p = air.channel.put async [%t, %t2] @channel[] (%a[%2] [%2] [%1]) : (memref<10xi32>)

}

