
//
// semaphore-basic.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK: int [[C0:.*]] = 0
// CHECK: int [[C1:.*]] = 1
// CHECK: PAST_NEW_SEMAPHORE([[SEM:.*]], 1)
  %0 = arith.constant 0 : index
  %1 = arith.constant 1 : index
  %sem = verif.semaphore(1 : index)

// CHECK: PAST_WAIT_SEMAPHORE([[SEM]], [[C0]])
  verif.semaphore.wait %sem, %0

// CHECK: PAST_SET_SEMAPHORE([[SEM]], [[C1]])
  verif.semaphore.set %sem, %1
}