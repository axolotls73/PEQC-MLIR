
//
// tutorial-3.mlir: This file is part of the PEQC-MLIR project.
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

// taken from:
//https://github.com/Xilinx/mlir-aie/blob/a60888210c76266cc932d5a0cc922fceef0322f0/mlir_tutorials/tutorial-3/aie.mlir

// REQUIRES: air
// RUN: split-file %s %t && \
// RUN: verif-opt --verif-convert-aie %t/input.mlir > %t/conversion.mlir && \
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c aie_buffer_a24 | grep YES

// RUN: %pastchecker %t/compare.c %t/translation.c aie_buffer_a24 | grep YES

//--- input.mlir

module @tutorial_3 {

    %tile14 = aie.tile(1, 4)
    %tile24 = aie.tile(2, 4)

    %buf = aie.buffer(%tile24) { sym_name = "a24" } : memref<256xi32>

    %lock24_1 = aie.lock(%tile24, 1) { sym_name = "lock_a24_1" }
    %lock24_2 = aie.lock(%tile24, 2) { sym_name = "lock_a24_2" }

    %core14 = aie.core(%tile14) {
        aie.use_lock(%lock24_1, "Acquire", 0)

        %val = arith.constant 14 : i32
        %idx = arith.constant 3 : index
        memref.store %val, %buf[%idx] : memref<256xi32>

        aie.use_lock(%lock24_1, "Release", 1)
        aie.end
    }

    %core24 = aie.core(%tile24) {
        aie.use_lock(%lock24_2, "Acquire", 0)
        aie.use_lock(%lock24_1, "Acquire", 1)

        %idx1 = arith.constant 3 : index
        %d1   = memref.load %buf[%idx1] : memref<256xi32>
        %c1   = arith.constant 100 : i32
        %d2   = arith.addi %d1, %c1 : i32
        %idx2 = arith.constant 5 : index
        memref.store %d2, %buf[%idx2] : memref<256xi32>

        aie.use_lock(%lock24_2, "Release", 1)
        aie.end
    }
}

//--- compare.c

#pragma pocc-region-start
{
    int* aie_buffer_a24;
    aie_buffer_a24[3] = 14;
    aie_buffer_a24[5] = aie_buffer_a24[3] + 100;
}
#pragma pocc-region-end
