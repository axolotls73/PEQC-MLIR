
//
// air-channel-launch.mlir: This file is part of the PEQC-MLIR project.
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
  %c32 = arith.constant 32 : index
  %alloc = memref.alloc() : memref<2048x2048xi32>
  air.launch @launch_0 (%arg3, %arg4) in (%arg5=%c32, %arg6=%c32) args(%al=%alloc) : memref<2048x2048xi32> {
    air.segment @segment_0  args(%as=%al) : memref<2048x2048xi32> {
        %c2 = arith.constant 2 : index
      air.herd @herd_0  tile (%arg15, %arg16) in (%arg17=%c2, %arg18=%c2) args(%ah=%as) : memref<2048x2048xi32> {

        %a = memref.alloc() : memref<1xi32>

      // CHECK-NOT: air.channel.put
        air.channel.put @channel[] (%a[] [] []) : (memref<1xi32>)
      // CHECK-NOT: air.channel.get
        air.channel.get @channel[] (%a[] [] []) : (memref<1xi32>)
      }
    }
  }
}

