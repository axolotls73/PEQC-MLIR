
//
// aie-device.mlir: This file is part of the PEQC-MLIR project.
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
// RUN: verif-opt --verif-convert-aie %s | FileCheck %s

module {
// CHECK-NOT: aie.device
  aie.device(npu1_4col) {

    %tile14 = aie.tile(1, 4)
    %tile34 = aie.tile(3, 4)

    aie.flow(%tile14, DMA: 0, %tile34, DMA:1)

    %buf = aie.buffer(%tile14) : memref<1xi32>

    %mem14 = aie.mem(%tile14) {

      aie.dma_start("MM2S", 0, ^bd0, ^end)
      ^bd0:
          aie.dma_bd(%buf : memref<1xi32>)
          aie.next_bd ^end
      ^end:
          aie.end
    }
  }
}

