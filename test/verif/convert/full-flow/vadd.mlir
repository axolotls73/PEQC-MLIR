
//
// vadd.mlir: This file is part of the PEQC-MLIR project.
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
//XFAIL: *
// RUN: split-file %s %t

// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c x,y,z | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c x,y,z | grep YES

// RUN: air-opt %t/input.mlir --air-dependency > %t/air-dep-convert.mlir && \
// RUN: verif-opt %t/air-dep-convert.mlir --verif-air-execute-to-async > %t/air-dep-convert-async.mlir && \
// RUN: verif-translate --translate-to-past %t/air-dep-convert-async.mlir > %t/air-dep-result.c && \
// RUN: %add_epilogue %t/air-dep-result.c %t/epilogue.c %t/air-dep-translation.c

// COM: expect this to be an incorrect parallelization
// RUN: not %pastchecker %t/air-dep-translation.c %t/air-dep-translation.c x,y,z 2>&1 | grep conflict

//--- input.mlir

module {
    func.func @vadd (%x : memref<128xf32>, %y : memref<128xf32>) -> (memref<128xf32>) {
        %c_0 = arith.constant 0 : index
        %c_1 = arith.constant 1 : index
        %c_128 = arith.constant 128 : index
        %z = memref.alloc() : memref<128xf32>
        scf.for %i = %c_0 to %c_128 step %c_1 {
            %x_i = memref.load %x[%i] : memref<128xf32>
            %y_i = memref.load %y[%i] : memref<128xf32>
            %z_i = arith.addf %x_i, %y_i : f32
            memref.store %z_i, %z[%i] : memref<128xf32>

            scf.yield
        }
        return %z : memref<128xf32>
    }
}

//--- epilogue.c

{
    float* x;
    float* y;
    float* z;
    vadd(x, y, z);
}

//--- compare.c

#pragma pocc-region-start
{
    float* x;
    float* y;
    float* z;
    for (int i = 0; i < 128; i++) {
        z[i] = x[i] + y[i];
    }
}
#pragma pocc-region-end
