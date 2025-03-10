
//
// aie-lock-error.mlir: This file is part of the PEQC-MLIR project.
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
// RUN: split-file %s %t
// RUN: not verif-opt --verif-convert-aie %t/module-level.mlir


//--- module-level.mlir

module {
  %tile14 = aie.tile(1, 4)
  aie.core(%tile14) {
    %lock14_6 = aie.lock(%tile14, 7)
    aie.end
  }
}
