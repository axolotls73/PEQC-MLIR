
//
// undef.mlir: This file is part of the PEQC-MLIR project.
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
    // CHECK: int [[C0:.*]] =
    %0 = arith.constant 0 : index
    // CHECK: int [[C2:.*]] =
    %2 = arith.constant 2 : i32

    // CHECK: UNDEF1([[C0]], [[C2]])
    "verif.undef"(%0, %2) <{name = "UNDEF1"}> : (index, i32) -> ()
    // CHECK: UNDEF2()
    "verif.undef"() <{name = "UNDEF2"}> : () -> ()
}