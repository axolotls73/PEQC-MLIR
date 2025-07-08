
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

// modified from:
//https://github.com/Xilinx/mlir-aie/blob/8b908be190f3c2e497cbe5c1fef492ce34f8e290/mlir_tutorials/tutorial-4/flow/aie.mlir

// REQUIRES: air
// RUN: split-file %s %t && \
// RUN: verif-opt --verif-convert-aie --affine-expand-index-ops %t/input.mlir > %t/conversion.mlir && \
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c
// RUN: %add_epilogue %t/result.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c aie_buffer_a34,aie_buffer_a24,aie_buffer_a14 | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c aie_buffer_a34,aie_buffer_a24,aie_buffer_a14 | grep YES


//--- input.mlir

module @tutorial_4 {

    %tile14 = aie.tile(1, 4)
    %tile24 = aie.tile(2, 4)
    %tile34 = aie.tile(3, 4)

    %buf14 = aie.buffer(%tile14) { sym_name = "a14" } : memref<256xi32>
    %buf24 = aie.buffer(%tile24) { sym_name = "a24" } : memref<256xi32>
    %buf34 = aie.buffer(%tile34) { sym_name = "a34" } : memref<256xi32>

    %lock14_6 = aie.lock(%tile14, 6) { sym_name = "lock_a14_6" }
    %lock34_7 = aie.lock(%tile34, 7) { sym_name = "lock_a34_7" }
    %lock34_8 = aie.lock(%tile34, 8) { sym_name = "lock_a34_8" }
    %lock24_9 = aie.lock(%tile24, 9) { sym_name = "lock_a24_9" }
    %lock24_10 = aie.lock(%tile24, 10) { sym_name = "lock_a24_10" }

    aie.flow(%tile14, DMA: 0, %tile34, DMA:1)
    aie.flow(%tile14, DMA: 0, %tile24, DMA:1)

    %core14 = aie.core(%tile14) {
        aie.use_lock(%lock14_6, "Acquire", 0)

		%val = arith.constant 14 : i32
		%idx = arith.constant 3 : index
		memref.store %val, %buf14[%idx] : memref<256xi32>

        aie.use_lock(%lock14_6, "Release", 1)
        aie.end
    }

    %mem14 = aie.mem(%tile14) {
        aie.dma_start("MM2S", 0, ^bd0, ^end)
        ^bd0:
            aie.use_lock(%lock14_6, Acquire, 1)
            aie.dma_bd(%buf14 : memref<256xi32>, 0, 256)
            aie.use_lock(%lock14_6, Release, 0)
            aie.next_bd ^end
        ^end:
            aie.end
    }


    %core34 = aie.core(%tile34) {
        aie.use_lock(%lock34_8, "Acquire", 0)
        aie.use_lock(%lock34_7, "Acquire", 1)

        %idx1 = arith.constant 3 : index
        %d1   = memref.load %buf34[%idx1] : memref<256xi32>
        %c1   = arith.constant 100 : i32
        %d2   = arith.addi %d1, %c1 : i32
		%idx2 = arith.constant 5 : index
		memref.store %d2, %buf34[%idx2] : memref<256xi32>

        aie.use_lock(%lock34_7, "Release", 0)
        aie.use_lock(%lock34_8, "Release", 1)
        aie.end
    }

    %mem34 = aie.mem(%tile34) {
        aie.dma_start("S2MM", 1, ^bd0, ^end)
        ^bd0:
            aie.use_lock(%lock34_7, Acquire, 0)
            aie.dma_bd(%buf34 : memref<256xi32>, 0, 256)
            aie.use_lock(%lock34_7, Release, 1)
            aie.next_bd ^end
        ^end:
            aie.end
    }


    %core24 = aie.core(%tile24) {
        aie.use_lock(%lock24_10, "Acquire", 0)
        aie.use_lock(%lock24_9, "Acquire", 1)

        %idx1 = arith.constant 1 : index
        %d1   = memref.load %buf24[%idx1] : memref<256xi32>
        %c1   = arith.constant 42 : i32
        %d2   = arith.addi %d1, %c1 : i32
		%idx2 = arith.constant 8 : index
		memref.store %d2, %buf24[%idx2] : memref<256xi32>

        aie.use_lock(%lock24_9, "Release", 0)
        aie.use_lock(%lock24_10, "Release", 1)
        aie.end
    }

    %mem24 = aie.mem(%tile24) {
        aie.dma_start("S2MM", 1, ^bd0, ^end)
        ^bd0:
            aie.use_lock(%lock24_9, Acquire, 0)
            aie.dma_bd(%buf24 : memref<256xi32>, 0, 256)
            aie.use_lock(%lock24_9, Release, 1)
            aie.next_bd ^end
        ^end:
            aie.end
    }

}

//--- compare.c

#pragma pocc-region-start
int* aie_buffer_a14;
int* aie_buffer_a24;
int* aie_buffer_a34;
{
    aie_buffer_a14[3] = 14;
    for (int i = 0; i < 256; i++) {
        aie_buffer_a34[i] = aie_buffer_a14[i];
        aie_buffer_a24[i] = aie_buffer_a14[i];
    }
    aie_buffer_a34[5] = aie_buffer_a34[3] + 100;
    aie_buffer_a24[8] = aie_buffer_a34[1] + 42;
}
#pragma pocc-region-end
