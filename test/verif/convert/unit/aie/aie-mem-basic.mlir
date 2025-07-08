
//
// aie-mem-basic.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK: func.func @[[MEM_FUNC_1:.*]]()
// CHECK:   cf.br ^[[BD0_1:.*]]
// CHECK: ^[[BD0_1]]:
// CHECK:   cf.br ^[[END_1:.*]]
// CHECK: ^[[END_1]]:
// CHECK:   return

// CHECK: async.execute
// CHECK: func.call @[[MEM_FUNC_1]]
// CHECK: }

// CHECK-NOT: aie.mem
  %mem14 = aie.mem(%tile14) {

    aie.dma_start("MM2S", 0, ^bd0, ^end)

    ^bd0:
        aie.next_bd ^end
    ^end:
        aie.end
  }
}
// CHECK: }

