
//
// air-waitall-noasync.mlir: This file is part of the PEQC-MLIR project.
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

// REQUIRES: air
// RUN: verif-opt --verif-air-execute-to-async %s | FileCheck %s

module {
// CHECK: [[TOKEN:%.*]] = async.execute
  %t = air.execute {
  }

// CHECK: [[WAIT_TOKEN:%.*]] = async.execute [[[TOKEN]]]
// CHECK: [[GROUP:%.*]] = async.create_group
// CHECK: async.add_to_group [[WAIT_TOKEN]], [[GROUP]]
// CHECK: async.await_all [[GROUP]]
// CHECK-NOT: air
  air.wait_all [%t]
}