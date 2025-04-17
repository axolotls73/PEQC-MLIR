
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

// RUN: split-file %s %t

// RUN: verif-opt %t/simple.mlir

//--- simple.mlir
%0 = arith.constant 0 : index
%2 = arith.constant 2 : i32

"verif.undef"(%0, %2) <{name = "beep boop"}> : (index, i32) -> ()
%4 = "verif.undef"() <{name = "beep boop"}> : () -> (index)
