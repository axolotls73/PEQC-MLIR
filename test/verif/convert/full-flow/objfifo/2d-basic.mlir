
//
// 2d-basic.mlir: This file is part of the PEQC-MLIR project.
//
// Copyright (C) 2025 Colorado State University
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
// RUN: verif-opt --verif-aie-convert-objfifo %t/input.mlir > %t/objfifoconv.mlir && \
// RUN: verif-opt --verif-convert-aie --lower-affine %t/objfifoconv.mlir > %t/conversion.mlir && \
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c
// RUN: %add_epilogue %t/result.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c aie_buffer_a34 | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c aie_buffer_a34 | grep YES

//--- input.mlir

module @tutorial_4 {
    aie.device(xcvc1902) {
        %tile14 = aie.tile(1, 4)
        %tile24 = aie.tile(2, 4)
        %tile34 = aie.tile(3, 4)

        %buf14 = aie.buffer(%tile14) { sym_name = "a14" } : memref<8x8xi32>
        %buf34 = aie.buffer(%tile34) { sym_name = "a34" } : memref<8x8xi32>

        aie.objectfifo @of (%tile14, {%tile24, %tile34}, 1 : i32) : !aie.objectfifo<memref<8x8xi32>>

        %lock34_8 = aie.lock(%tile34, 8) { sym_name = "lock_a34_8" }

        %core14 = aie.core(%tile14) {
            %inputSubview = aie.objectfifo.acquire @of (Produce, 1) : !aie.objectfifosubview<memref<8x8xi32>>

            %input = aie.objectfifo.subview.access %inputSubview[0] : !aie.objectfifosubview<memref<8x8xi32>> -> memref<8x8xi32>

            memref.copy %buf14, %input : memref<8x8xi32> to memref<8x8xi32>

            aie.objectfifo.release @of (Produce, 1)
            aie.end
        }

        %core34 = aie.core(%tile34) {
            aie.use_lock(%lock34_8, "Acquire", 0)

            %inputSubview = aie.objectfifo.acquire @of (Consume, 1) : !aie.objectfifosubview<memref<8x8xi32>>
            %input = aie.objectfifo.subview.access %inputSubview[0] : !aie.objectfifosubview<memref<8x8xi32>> -> memref<8x8xi32>

            memref.copy %input, %buf34 : memref<8x8xi32> to memref<8x8xi32>

            aie.objectfifo.release @of (Consume, 1)

            aie.use_lock(%lock34_8, "Release", 1)
            aie.end
        }
    }
}

//--- compare.c

#pragma pocc-region-start
int* aie_buffer_a14;
int* aie_buffer_a34;
{
    for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 8; j++) {
            aie_buffer_a34[i][j] = aie_buffer_a14[i][j];
        }
    }
}
#pragma pocc-region-end
