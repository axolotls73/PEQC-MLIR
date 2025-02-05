
//
// air-channel-noerror.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: verif-opt --verif-air-convert-channel %t/put-allow-no-indices-broadcast.mlir


//--- put-allow-no-indices-broadcast.mlir

module {
  air.channel @channel_7 [1, 1] {broadcast_shape = [1, 2]}

  %a = memref.alloc() : memref<1xi64>
  air.channel.put @channel_7[] (%a[] [] []) : (memref<1xi64>)
}

