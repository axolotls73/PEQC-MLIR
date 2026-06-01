
//
// tutorial-4.mlir: This file is part of the PEQC-MLIR project.
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

// modified from: https://github.com/Xilinx/mlir-aie/blob/8b908be190f3c2e497cbe5c1fef492ce34f8e290/mlir_tutorials/tutorial-4/aie.mlir

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
        // 2 tiles in row 4 (col 1 and col 3)
        // even rows have local memory to its left
        %tile14 = aie.tile(1, 4)
        %tile34 = aie.tile(3, 4)

        %buf14 = aie.buffer(%tile14) { sym_name = "a14" } : memref<256xi32>
        %buf34 = aie.buffer(%tile34) { sym_name = "a34" } : memref<256xi32>

        // Declare an object FIFO between the producer shim tile (7,0) and consumer tile (3,4).
        // The size of the object FIFO, i.e. its number of elements, is 1.
        // Objects, i.e. allocated memory elements, have type memref<256xi32>.
        // These tiles do not share memory between them.
        aie.objectfifo @of (%tile14, {%tile34}, 1 : i32) : !aie.objectfifo<memref<256xi32>>

        // This lock will be used to gate when our 2nd core is done
        %lock34_8 = aie.lock(%tile34, 8) { sym_name = "lock_a34_8" }

        // Define core algorithm for tile(1,4)
        // buf[3] = 14
        %core14 = aie.core(%tile14) {
            // Acquire a subview with one object from the object FIFO.
            // This is equivalent to acquiring an AIE lock before accessing an AIE buffer.
            // This core acquires objects as a Producer: this impacts the acquire value of the lock
            // that is generated through the object FIFO lowering.
            %inputSubview = aie.objectfifo.acquire @of (Produce, 1) : !aie.objectfifosubview<memref<256xi32>>

            // Access the first, and only, element of the subview.
            %input = aie.objectfifo.subview.access %inputSubview[0] : !aie.objectfifosubview<memref<256xi32>> -> memref<256xi32>

            memref.copy %buf14, %input : memref<256xi32> to memref<256xi32>

            %val = arith.constant 14 : i32
            %idx = arith.constant 3 : index
            memref.store %val, %input[%idx] : memref<256xi32>

            // Release the previously acquired object.
            // This is equivalent to releasing an AIE lock after accessing an AIE buffer.
            // This core releases objects as a Producer: this impacts the release value of the lock
            // that is generated through the object FIFO lowering.
            aie.objectfifo.release @of (Produce, 1)
            aie.end
        }

        // Define core algorithm for tile(3,4) which reads value set by tile(1,4)
        // buf[5] = buf[3] + 100
        %core34 = aie.core(%tile34) {
            // This acquire succeeds when the core is enabled
            aie.use_lock(%lock34_8, "Acquire", 0)

            %inputSubview = aie.objectfifo.acquire @of (Consume, 1) : !aie.objectfifosubview<memref<256xi32>>
            %input = aie.objectfifo.subview.access %inputSubview[0] : !aie.objectfifosubview<memref<256xi32>> -> memref<256xi32>

            %idx1 = arith.constant 3 : index
            %d1   = memref.load %input[%idx1] : memref<256xi32>
            %c1   = arith.constant 100 : i32
            %d2   = arith.addi %d1, %c1 : i32
            %idx2 = arith.constant 5 : index
            memref.store %d2, %input[%idx2] : memref<256xi32>

            memref.copy %input, %buf34 : memref<256xi32> to memref<256xi32>

            aie.objectfifo.release @of (Consume, 1)

            // This release means our 2nd core is done
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
    aie_buffer_a14[3] = 14;
    for (int i = 0; i < 256; i++) {
        aie_buffer_a34[i] = aie_buffer_a14[i];
    }
    aie_buffer_a34[5] = aie_buffer_a34[3] + 100;
}
#pragma pocc-region-end
