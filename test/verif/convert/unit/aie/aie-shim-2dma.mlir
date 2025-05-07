
//
// aie-shim-2dma.mlir: This file is part of the PEQC-MLIR project.
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
  aie.device(npu1_4col) {
    memref.global "private" @A : memref<16x16xi32>

    func.func @main () -> () {
      %a = memref.get_global @A : memref<16x16xi32>

// CHECK-NOT: aiex.npu.dma_memcpy_nd
      aiex.npu.dma_memcpy_nd(%a[0, 0, 0, 0][2, 1, 8, 16][0, 1, 16, 1]) {id = 0 : i64, metadata = @airMemcpyId4} : memref<16x16xi32>
// CHECK-NOT: aiex.npu.dma_memcpy_nd
      aiex.npu.dma_memcpy_nd(%a[0, 0, 0, 0][2, 1, 8, 16][0, 1, 16, 1]) {id = 0 : i64, metadata = @airMemcpyId4} : memref<16x16xi32>
      return
    }

    %tile_0_0 = aie.tile(0, 0)
    %tile_1_2 = aie.tile(1, 2)
    aie.flow(%tile_0_0, DMA : 0, %tile_1_2, DMA : 0)
// CHECK: async.execute

// want them both in the same one
// CHECK-NOT: async.execute

// CHECK-NOT: aie.shim_dma_allocation
    aie.shim_dma_allocation @airMemcpyId4(MM2S, 0, 0)
  }
}

