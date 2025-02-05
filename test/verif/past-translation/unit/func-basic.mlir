
//
// func-basic.mlir: This file is part of the PEQC-MLIR project.
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
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/compare.c

//--- input.mlir

module {
    func.func @func_test () -> i32 {
        %c = arith.constant 5 : i32
        return %c : i32
    }
}

//--- epilogue.c

{
  func_test(res_arr);
  res = res_arr[0];
}

//--- compare.c

#pragma pocc-region-start
{
  res = 5;
}
#pragma pocc-region-end