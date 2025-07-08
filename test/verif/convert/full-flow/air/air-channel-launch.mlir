
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
// RUN: split-file %s %t && \
// RUN: air-opt --convert-linalg-to-affine-loops --lower-affine %t/input.mlir > %t/input-lowered.mlir
// RUN: verif-opt --verif-air-convert-channel --lower-affine --verif-air-to-scf-par --verif-scf-parallel-to-async --lower-affine %t/input-lowered.mlir > %t/conversion.mlir && \
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c A,B | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c A,B | grep YES

//--- input.mlir

module {
  memref.global "private" @A : memref<1xi32>
  memref.global "private" @B : memref<2xi32>


  air.channel @channel [1, 1]

  %alloc = memref.alloc() : memref<2048x2048xi32>
  %c2 = arith.constant 2 : index
  %c1 = arith.constant 1 : index
  %t = air.launch async[] (%arg3, %arg4) in (%arg5=%c1, %arg6=%c2) args(%al=%alloc) : memref<2048x2048xi32> {
    %c0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    %a = memref.get_global @A : memref<1xi32>
    %t = air.channel.put async @channel[] (%a[] [] []) : (memref<1xi32>)

    %b = memref.get_global @B : memref<2xi32>
    %t2 = air.channel.get async @channel[] (%b[%arg4] [%c1_1] [%c1_1]) : (memref<2xi32>)
  }
}

//--- compare.c

#pragma pocc-region-start
int* A;
int* B;
{
  for (int i = 0; i < 2; i++) {
    B[i] = A[0];
  }
}
#pragma pocc-region-end
