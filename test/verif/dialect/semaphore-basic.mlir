
//
// semaphore-basic.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: verif-opt %t/set.mlir
// RUN: verif-opt %t/wait.mlir
// RUN: verif-opt %t/memref.mlir

//--- set.mlir

module {
    %1 = verif.semaphore(0 : index)
    %2 = arith.constant 2 : index
    verif.semaphore.set %1, %2
}

//--- wait.mlir

module {
    %1 = verif.semaphore(0 : index)
    %2 = arith.constant 1 : index
    verif.semaphore.wait %1, %2
}

//--- memref.mlir

module {
    %mr = memref.alloc() : memref<1x!verif.semaphore>
    %1 = verif.semaphore(0 : index)
    %i = arith.constant 0 : index
    memref.store %1, %mr[%i] : memref<1x!verif.semaphore>
}

//--- acquire.mlir

module {
    %1 = verif.counting_semaphore(0 : index)
    %2 = arith.constant 1 : index
    verif.semaphore.acquire %1, %2
}

//--- release.mlir

module {
    %1 = verif.counting_semaphore(0 : index)
    %2 = arith.constant 1 : index
    verif.semaphore.release %1, %2
}
