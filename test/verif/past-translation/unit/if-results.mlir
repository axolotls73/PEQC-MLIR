
//
// if-results.mlir: This file is part of the PEQC-MLIR project.
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

// CHECK: int [[IFRES:.*]];
// CHECK: if ([[cond]])
// CHECK:   int [[IFVAL:.*]] = 42
// CHECK:   [[IFRES]] = [[IFVAL]]
// CHECK: }
    %c3 = scf.if %cond -> i32 {
        %1 = arith.constant 42 : i32
        scf.yield %1 : i32
    }
// CHECK: else {
// CHECK:   int [[ELSEVAL:.*]] = 5
// CHECK:   [[IFRES]] = [[ELSEVAL]]
// CHECK: }
    else {
        %1 = arith.constant 5 : i32
        scf.yield %1 : i32
    }
}