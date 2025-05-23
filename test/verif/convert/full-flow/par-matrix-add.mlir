
//
// par-matrix-add.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: split-file %s %t && \
// RUN: verif-opt --verif-scf-parallel-to-async %t/input.mlir > %t/conversion.mlir && \
// RUN: verif-translate --translate-to-past %t/conversion.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// RUN: cat %t/conversion.mlir | FileCheck %s

//--- input.mlir

module {
    func.func @madd(%A: memref<128x128xi32>, %B: memref<128x128xi32>) -> (memref<128x128xi32>) {
        %C = memref.alloc() : memref<128x128xi32>
        %lb = arith.constant 0 : index
        %ub = arith.constant 128 : index
        %step = arith.constant 1 : index
// CHECK-DAG: [[LB:%.*]] = arith.constant 0
// CHECK-DAG: [[UB:%.*]] = arith.constant 128
// CHECK-DAG: [[STEP:%.*]] = arith.constant 1 :
// CHECK: scf.for [[ITER1:%.*]] = [[LB]] to [[UB]] step [[STEP]]
// CHECK: scf.for [[ITER2:%.*]] = [[LB]] to [[UB]] step [[STEP]]
        scf.parallel (%i, %j) = (%lb, %lb) to (%ub, %ub) step (%step, %step) -> () {
            %a = memref.load %A[%i, %j] : memref<128x128xi32>
            %b = memref.load %B[%i, %j] : memref<128x128xi32>
            %c = arith.addi %a, %b : i32
            memref.store %c, %C[%i, %j] : memref<128x128xi32>
        }
        return %C : memref<128x128xi32>
    }
}

//--- epilogue.c

{
  float* A;
  float* B;
  float* C;
  madd(A, B, C);
}

//--- compare.c

#pragma pocc-region-start
{
  float* A;
  float* B;
  float* C;
  for (int i = 0; i < 128; i++) {
    for (int j = 0; j < 128; j++) {
        C[i][j] + A[i][j] + B[i][j];
    }
  }
}
#pragma pocc-region-end
