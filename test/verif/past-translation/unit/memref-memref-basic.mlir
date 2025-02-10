
//
// memref-memref-basic.mlir: This file is part of the PEQC-MLIR project.
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

// CHECK: void [[A:.*]];
// CHECK: float* [[SUBARR1:.*]];
// CHECK: [[A]][0][0] = [[SUBARR1]]
// CHECK: float* [[SUBARR2:.*]];
// CHECK: [[A]][0][1] = [[SUBARR2]]
  %a = memref.alloc() : memref<1x2xmemref<2x2xf32>>

// CHECK: void [[B:.*]];
// CHECK: float* [[SUBARR3:.*]];
// CHECK: [[B]][0] = [[SUBARR3]]
// CHECK: float* [[SUBARR4:.*]];
// CHECK: [[B]][1] = [[SUBARR4]]
// CHECK: float* [[SUBARR4:.*]];
// CHECK: [[B]][2] = [[SUBARR4]]
  %b = memref.alloc() : memref<3xmemref<1xf32>>

// CHECK: void [[C:.*]];
// CHECK: float* [[SUBARR5:.*]];
// CHECK: [[C]][0][0][0] = [[SUBARR5]]
// CHECK: float* [[SUBARR6:.*]];
// CHECK: [[C]][0][0][1] = [[SUBARR6]]
  %c = memref.alloc() : memref<1x1x2xmemref<?xf32>>
}