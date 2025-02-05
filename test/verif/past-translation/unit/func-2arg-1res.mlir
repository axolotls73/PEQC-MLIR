
//
// func-2arg-1res.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK: void test_func(int [[ARG1:.*]], int [[ARG2:.*]], int* [[ARG3:.*]])
    func.func @test_func (%a: i32, %b: i32) -> i32 {
// CHECK: [[ARG3]]{{.*}}={{.*}}[[ARG2]]
// CHECK: return;
        return %b: i32
    }
}