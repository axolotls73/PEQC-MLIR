
//
// aie-mem-2start.mlir: This file is part of the PEQC-MLIR project.
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
  %tile14 = aie.tile(1, 4)

// function generated for dma_start ^bd0
// CHECK: func.func @[[MEM_FUNC_BD0:.*]](
// CHECK:   call @[[MEM_FUNC_END:.*]](%
// CHECK:   async.execute
// CHECK:     call @[[MEM_FUNC_BD0]]
// CHECK: }
// after calls (end of async.execute), branch to end of func. dependent on name, fix?
// CHECK-NEXT: cf.br ^bb4

// function generated for dma_start ^start
// CHECK: func.func @[[MEM_FUNC_START:.*]](
// CHECK:   call @[[MEM_FUNC_END]]
// CHECK:   async.execute
// CHECK:     call @[[MEM_FUNC_BD0]]

// function generated for dma_start ^end
// CHECK: func.func @[[MEM_FUNC_END]](
// CHECK:   call @[[MEM_FUNC_END]]
// CHECK:   async.execute
// CHECK:     call @[[MEM_FUNC_BD0]]


// CHECK: async.execute
// CHECK-NOT: aie.mem
  %mem14 = aie.mem(%tile14) {
// CHECK:   async.execute
// CHECK:    call @[[MEM_FUNC_START]]
// CHECK:   call @[[MEM_FUNC_BD0]]
    aie.dma_start("MM2S", 0, ^bd0, ^start2)
    ^start2:
      aie.dma_start("S2MM", 1, ^end, ^bd0)
    ^bd0:
        aie.next_bd ^end
    ^end:
        aie.end
  }
}

