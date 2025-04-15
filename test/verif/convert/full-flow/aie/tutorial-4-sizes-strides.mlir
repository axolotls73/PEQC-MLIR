
//
// tutorial-4.mlir: This file is part of the PEQC-MLIR project.
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

//XFAIL:*
// modified from:
//https://github.com/Xilinx/mlir-aie/blob/8b908be190f3c2e497cbe5c1fef492ce34f8e290/mlir_tutorials/tutorial-4/flow/aie.mlir

// RUN: split-file %s %t && \
// RUN: verif-opt --verif-convert-aie --affine-expand-index-ops --lower-affine %t/input.mlir > %t/conversion.mlir && \
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c
// RUN: %add_epilogue %t/result.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c buffer_a34,buffer_a14 2>&1

// RUN: %pastchecker %t/translation.c %t/compare.c buffer_a34,buffer_a14 2>&1


//--- input.mlir

module @tutorial_4 {

    %tile14 = aie.tile(1, 4)
    %tile34 = aie.tile(3, 4)

    %buf14 = aie.buffer(%tile14) { sym_name = "a14" } : memref<128xi32>
    %buf34 = aie.buffer(%tile34) { sym_name = "a34" } : memref<128xi32>

    %lock14_6 = aie.lock(%tile14, 6) { sym_name = "lock_a14_6" }
    %lock34_7 = aie.lock(%tile34, 7) { sym_name = "lock_a34_7" }

    %lock34_8 = aie.lock(%tile34, 8) { sym_name = "lock_a34_8" }

    aie.flow(%tile14, DMA: 0, %tile34, DMA:1)

    %core14 = aie.core(%tile14) {
        aie.use_lock(%lock14_6, "Acquire", 0)

		%val = arith.constant 14 : i32
		%idx = arith.constant 3 : index
		memref.store %val, %buf14[%idx] : memref<128xi32>

        aie.use_lock(%lock14_6, "Release", 1)
        aie.end
    }

    %mem14 = aie.mem(%tile14) {
        aie.dma_start("MM2S", 0, ^bd0, ^end)
        ^bd0:
            aie.use_lock(%lock14_6, Acquire, 1)
            // aie.dma_bd(%buf14 : memref<128xi32>, 0, 128)
            aie.dma_bd(%buf14 : memref<128xi32>, 0, 128, [<size = 16, stride =8>, <size = 4, stride =2>, <size = 2, stride =1>])
            aie.use_lock(%lock14_6, Release, 0)
            aie.next_bd ^end
        ^end:
            aie.end
    }


    %core34 = aie.core(%tile34) {
        aie.use_lock(%lock34_8, "Acquire", 0)
        aie.use_lock(%lock34_7, "Acquire", 1)

        %idx1 = arith.constant 3 : index
        %d1   = memref.load %buf34[%idx1] : memref<128xi32>
        %c1   = arith.constant 100 : i32
        %d2   = arith.addi %d1, %c1 : i32
		%idx2 = arith.constant 5 : index
		memref.store %d2, %buf34[%idx2] : memref<128xi32>

        aie.use_lock(%lock34_7, "Release", 0)
        aie.use_lock(%lock34_8, "Release", 1)
        aie.end
    }

    %mem34 = aie.mem(%tile34) {
        aie.dma_start("S2MM", 1, ^bd0, ^end)
        ^bd0:
            aie.use_lock(%lock34_7, Acquire, 0)
            aie.dma_bd(%buf34 : memref<128xi32>, 0, 128, [<size = 2, stride =64>, <size = 16, stride =4>, <size = 4, stride =1>])
            aie.use_lock(%lock34_7, Release, 1)
            aie.next_bd ^end
        ^end:
            aie.end
    }

}

//--- compare.c

#pragma pocc-region-start
int* buffer_a14;
int* buffer_a34;
{
    buffer_a14[3] = 14;
    for (int i = 0; i < 128; i++) {
        buffer_a34[i] = buffer_a14[i];
    }
    buffer_a34[5] = buffer_a34[3] + 100;
}
#pragma pocc-region-end
