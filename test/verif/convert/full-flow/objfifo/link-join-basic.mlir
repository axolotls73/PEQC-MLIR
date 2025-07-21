
//
// link-join-basic.mlir: This file is part of the PEQC-MLIR project.
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

// fix: error: ObjectFifoLinkOp join and distribute are unavailable on compute or shim tiles

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
    aie.device(npu1_4col) {
        %tile14 = aie.tile(1, 4)
        %tile24 = aie.tile(2, 4)
        %tile34 = aie.tile(3, 4)
        %tile44 = aie.tile(2, 2)
        %mem_tile_0_1 = aie.tile(0, 1)

        %buf14 = aie.buffer(%tile14) { sym_name = "a14" } : memref<8xi32>
        %buf44 = aie.buffer(%tile44) { sym_name = "a44" } : memref<8xi32>
        %buf34 = aie.buffer(%tile34) { sym_name = "a34" } : memref<16xi32>

        aie.objectfifo @ofp1 (%tile14, {%mem_tile_0_1}, 1 : i32) : !aie.objectfifo<memref<8xi32>>
        aie.objectfifo @ofp2 (%tile44, {%mem_tile_0_1}, 1 : i32) : !aie.objectfifo<memref<8xi32>>
        aie.objectfifo @ofc (%mem_tile_0_1, {%tile34}, 1 : i32) : !aie.objectfifo<memref<16xi32>>
        aie.objectfifo.link [@ofp1, @ofp2] -> [@ofc]([0, 8] [])


        %core14 = aie.core(%tile14) {

            %inputSubview = aie.objectfifo.acquire @ofp1 (Produce, 1) : !aie.objectfifosubview<memref<8xi32>>

            %input = aie.objectfifo.subview.access %inputSubview[0] : !aie.objectfifosubview<memref<8xi32>> -> memref<8xi32>

            memref.copy %buf14, %input : memref<8xi32> to memref<8xi32>

            aie.objectfifo.release @ofp1 (Produce, 1)
            aie.end
        }

        %core44 = aie.core(%tile44) {

            %inputSubview = aie.objectfifo.acquire @ofp2 (Produce, 1) : !aie.objectfifosubview<memref<8xi32>>

            %input = aie.objectfifo.subview.access %inputSubview[0] : !aie.objectfifosubview<memref<8xi32>> -> memref<8xi32>

            memref.copy %buf44, %input : memref<8xi32> to memref<8xi32>

            aie.objectfifo.release @ofp2 (Produce, 1)
            aie.end
        }

        %core34 = aie.core(%tile34) {

            %inputSubview = aie.objectfifo.acquire @ofc (Consume, 1) : !aie.objectfifosubview<memref<16xi32>>
            %input = aie.objectfifo.subview.access %inputSubview[0] : !aie.objectfifosubview<memref<16xi32>> -> memref<16xi32>

            memref.copy %input, %buf34 : memref<16xi32> to memref<16xi32>

            aie.objectfifo.release @ofc (Consume, 1)

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
        aie_buffer_a34[i] = aie_buffer_a14[i];
    }
    for (int i = 0; i < 8; i++) {
        aie_buffer_a34[i + 8] = aie_buffer_a44[i];
    }
}
#pragma pocc-region-end
