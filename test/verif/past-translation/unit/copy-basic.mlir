
//
// copy-basic.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: int* [[VAR1:.*]];
// CHECK: int* [[VAR2:.*]];
    %a = memref.alloc() : memref<2x4xi32>
    %b = memref.alloc() : memref<2x4xi32>
// CHECK: _past_array_copy_2d([[VAR1]], 0, 0, 1, 1, [[VAR2]], 0, 0, 1, 1, 2, 4)

// COM: old loop-based copy
// COM: CHECK: for ([[VARI1:.*]] =
// COM: CHECK: for ([[VARI2:.*]] =
// COM: CHECK: [[VAR2]][[[VARI1]]][[[VARI2]]] = [[VAR1]][[[VARI1]]][[[VARI2]]]
    memref.copy %a, %b : memref<2x4xi32> to memref<2x4xi32>
}
