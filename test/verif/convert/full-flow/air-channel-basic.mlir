
//
// air-channel-basic.mlir: This file is part of the PEQC-MLIR project.
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

// XFAIL: *
// FIX!!! semaphore conflict

// REQUIRES: air
// RUN: split-file %s %t && \
// RUN: air-opt --convert-linalg-to-affine-loops --lower-affine %t/input.mlir > %t/input-lowered.mlir
// RUN: verif-opt --verif-air-convert-channel --lower-affine %t/input-lowered.mlir > %t/conversion.mlir && \
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c A,B | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c A,B | grep YES

//--- input.mlir

module {
  memref.global "private" @A : memref<1xi32>
  memref.global "private" @B : memref<1xi32>


  air.channel @channel [1, 1]

  %a = memref.get_global @A : memref<1xi32>
  air.channel.put @channel[] (%a[] [] []) : (memref<1xi32>)

  %b = memref.get_global @B : memref<1xi32>
  air.channel.get @channel[] (%b[] [] []) : (memref<1xi32>)
}

//--- compare.c

#pragma pocc-region-start
int* A;
int* B;
{
  for (int i = 0; i < 1; i++) {
    B[i] = A[i];
  }
}
#pragma pocc-region-end
