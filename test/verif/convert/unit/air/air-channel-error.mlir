
//
// air-channel-error.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: not verif-opt --verif-air-convert-channel %t/size-not2.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/size-not2-2.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/type-mismatch.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/indices-mismatch-put.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/indices-mismatch-get.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/indices-mismatch-get-2.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/dynamic-size.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/unranked.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/diff-launch.mlir
// RUN: not verif-opt --verif-air-convert-channel %t/diff-launch2.mlir


//--- size-not2.mlir

module {
  air.channel @channel_7 [1]
}

//--- size-not2-2.mlir

module {
  air.channel @channel_7 [1, 2, 3]
}

//--- type-mismatch.mlir

module {
  air.channel @channel_7 [1, 1]

  %a = memref.alloc() : memref<1xi64>
  air.channel.put @channel_7[] (%a[] [] []) : (memref<1xi64>)
  %b = memref.alloc() : memref<1xi32>
  air.channel.put @channel_7[] (%a[] [] []) : (memref<1xi32>)
}

//--- size-stride-offset-mismatch-put.mlir

module {
  air.channel @channel_7 [1, 1]

  %a = memref.alloc() : memref<1xi64>
  %i = arith.constant 0 : index
  air.channel.put @channel_7[] (%a[%i] [] []) : (memref<1xi64>)
}

//--- size-stride-offset-mismatch-get.mlir

module {
  air.channel @channel_7 [1, 1]

  %a = memref.alloc() : memref<1xi64>
  %i = arith.constant 0 : index
  air.channel.put @channel_7[] (%a[] [%i] []) : (memref<1xi64>)
}

//--- indices-mismatch-put.mlir

module {
  air.channel @channel_7 [1, 2]

  %a = memref.alloc() : memref<1xi64>
  air.channel.put @channel_7[] (%a[] [] []) : (memref<1xi64>)
}

//--- indices-mismatch-get.mlir

module {
  air.channel @channel_7 [1, 2]

  %a = memref.alloc() : memref<1xi64>
  air.channel.put @channel_7[] (%a[] [] []) : (memref<1xi64>)
}

//--- indices-mismatch-get-2.mlir

module {
  air.channel @channel_7 [1, 1] {broadcast_shape = [1, 2]}

  %a = memref.alloc() : memref<1xi64>
  air.channel.get @channel_7[] (%a[] [] []) : (memref<1xi64>)
}

//--- dynamic-size.mlir

module {
  air.channel @channel_7 [1, 1]

  %c = arith.constant 1 : index
  %a = memref.alloc(%c) : memref<?xi32>
  air.channel.get @channel_7[] (%a[] [] []) : (memref<?xi32>)
}

//--- unranked.mlir

module {
  air.channel @channel_7 [1, 1]

  %a = memref.alloc() : memref<5xi32>
  %b = memref.cast %a : memref<5xi32> to memref<*xi32>
  air.channel.put @channel_7[] (%a[] [] []) : (memref<*xi32>)
}

//--- diff-launch.mlir

module {
  air.channel @channel_7 [1, 1]

  %a = memref.alloc() : memref<1xi32>
  air.channel.put @channel_7[] (%a[] [] []) : (memref<1xi32>)
  %c2 = arith.constant 2 : index
  air.launch (%arg0, %arg1) in (%arg2=%c2, %arg3=%c2) {
    %a2 = memref.alloc() : memref<1xi32>
    air.channel.get @channel_7[] (%a2[] [] []) : (memref<1xi32>)
  }
}

//--- diff-launch-2.mlir

module {
  air.channel @channel_7 [1, 1]

  %a = memref.alloc() : memref<1xi32>
  %c2 = arith.constant 2 : index
  air.launch (%arg0, %arg1) in (%arg2=%c2, %arg3=%c2) {
    air.channel.put @channel_7[] (%a[] [] []) : (memref<1xi32>)
  }
  air.launch (%arg0, %arg1) in (%arg2=%c2, %arg3=%c2) {
    %a2 = memref.alloc() : memref<1xi32>
    air.channel.get @channel_7[] (%a2[] [] []) : (memref<1xi32>)
  }
}

