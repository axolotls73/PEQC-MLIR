
//
// if-basic.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK: int [[C1:.*]] = 1
// CHECK: int [[C2:.*]] = 2
// CHECK: int [[cond:.*]] = ([[C1]] != [[C2]])
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %cond = arith.cmpi ne, %c1, %c2 : index
// CHECK: if ([[cond]])
// CHECK: = 42
// CHECK: }
    scf.if %cond {
        %1 = arith.constant 42 : i32
    }
}