
//
// air-channel-basic-async.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK-NOT: air.channel
  air.channel @channel [1, 1]

// CHECK: [[A:%.*]] = memref.alloc() : memref<1xi32>
  %a = memref.alloc() : memref<1xi32>

  %t = air.execute {
    air.execute_terminator
  }
  %t2 = air.execute {
    air.execute_terminator
  }

// CHECK-DAG: async.execute
// CHECK-NOT: air.channel.put
  %p = air.channel.put async [%t, %t2] @channel[] (%a[] [] []) : (memref<1xi32>)

// CHECK-DAG: async.execute
// CHECK-NOT: air.channel.get
  %g = air.channel.get async [%p] @channel[] (%a[] [] []) : (memref<1xi32>)

  air.execute [%g] {
    air.execute_terminator
  }
}

