
//
// allow-unsupported-ops.mlir: This file is part of the PEQC-MLIR project.
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

// RUN: verif-translate --translate-to-past --allow-unregistered-dialect --verif-allow-unsupported-ops %s | FileCheck %s

module {
    // CHECK: int [[C0:.*]] =
    %0 = arith.constant 0 : index
    // CHECK: int [[C2:.*]] =
    %2 = arith.constant 2 : i32

    // CHECK: OPERATION_NAME();
    "OPERATION.NAME"() : () -> ()

    // attributes unsupported
    // CHECK: OPERATION([[C0]], [[C2]]);
    "OPERATION"(%0, %2) <{attribute = "UNDEF1"}> : (index, i32) -> ()

    // results unsupported
    // CHECK: OPERATION([[C0]], [[C2]]);
    %3 = "OPERATION"(%0, %2) : (index, i32) -> (i32)

    // region is just a block after the function call
    // CHECK: OP_WITH_REGION();
    // CHECK: {
    // CHECK:   int {{.*}} = 5
    // CHECK: }
    "OP_WITH_REGION"() ({
        %5 = arith.constant 5 : index
    }) : () -> ()

}