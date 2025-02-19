
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
// CHECK: int [[IFRES2:.*]];
// CHECK: if ([[cond]])
// CHECK:   int [[IFVAL:.*]] = 42
// CHECK:   int [[IFVAL2:.*]] = 47
// CHECK:   [[IFRES]] = [[IFVAL]]
// CHECK:   [[IFRES2]] = [[IFVAL2]]
// CHECK: }
    %c3, %c4 = scf.if %cond -> (i32, index) {
        %1 = arith.constant 42 : i32
        %2 = arith.constant 47 : index
        scf.yield %1, %2 : i32, index
    }
// CHECK: else {
// CHECK:   int [[ELSEVAL:.*]] = 5
// CHECK:   int [[ELSEVAL2:.*]] = 7
// CHECK:   [[IFRES]] = [[ELSEVAL]]
// CHECK:   [[IFRES2]] = [[ELSEVAL2]]
// CHECK: }
    else {
        %1 = arith.constant 5 : i32
        %2 = arith.constant 7 : index
        scf.yield %1, %2 : i32, index
    }
}