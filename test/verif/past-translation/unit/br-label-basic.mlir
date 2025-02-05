
//
// br-label-basic.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: verif-translate --translate-to-past %s

module {

// CHECK void f(
  func.func @f(%a : index) {

    %5 = arith.constant 5 : index
// CHECK: goto ^[[BLOCK:.*]];
    cf.br ^b2

    ^b1:
// CHECK: goto ^[[BLOCK]];
      cf.br ^b2

// CHECK: [[BLOCK]]:
    ^b2:
// CHECK: return
      return
  }

}