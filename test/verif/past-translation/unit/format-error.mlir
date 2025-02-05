
//
// format-error.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: not verif-translate --translate-to-past %t/mixed-ops.mlir
// RUN: not verif-translate --translate-to-past %t/main-signature-wrong.mlir
// RUN: not verif-translate --translate-to-past %t/main-signature-wrong-2.mlir


//--- mixed-ops.mlir

module {
  %1 = arith.constant 1 : index
  func.func @test () {
    %2 = arith.constant 1 : index
    return
  }
}

//--- main-signature-wrong.mlir

module {
  func.func @main () -> (index) {
    %1 = arith.constant 1 : index
    return %1 : index
  }
}

//--- main-signature-wrong-2.mlir

module {
  func.func @main (%a : index) {
    %1 = arith.constant 1 : index
    return
  }
}
