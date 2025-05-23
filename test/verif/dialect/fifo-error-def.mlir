
//
// fifo-error-def.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: split-file %s %t

// RUN: not verif-opt %t/read.mlir

// RUN: not verif-opt %t/write.mlir

//--- read.mlir

module {
    %1 = arith.constant 1 : index
    %2 = verif.fifo.read %1 : memref<1xf32>
}

//--- write.mlir
module {
    %1 = arith.constant 1 : index
    %a = memref.alloc() : memref<1xf32>
    verif.fifo.write %1, %a : memref<1xf32>
}
