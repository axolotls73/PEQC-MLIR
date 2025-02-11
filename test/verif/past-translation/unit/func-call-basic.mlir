
//
// func-call-basic.mlir: This file is part of the PEQC-MLIR project.
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

// CHECK: void f1()
// CHECK: return
  func.func @f1 () {
    return
  }

// CHECK: void f2(int* {{.*}}, int* {{.*}})
// CHECK: return
  func.func @f2 () -> (i32, i32) {
    %5 = arith.constant 5 : i32
    %7 = arith.constant 7 : i32
    return %5, %7 : i32, i32
  }

// CHECK: void f3(int {{.*}})
// CHECK: return
  func.func @f3 (%a : i32) {
      return
  }

// CHECK: void f4(int* {{.*}}, int* {{.*}})
// CHECK: return
  func.func @f4 (%c : memref<1xi32>) -> (memref<1xi32>) {
    %a = memref.alloc() : memref<1xi32>
    return %a : memref<1xi32>
  }



// CHECK: f1();
  func.call @f1() : () -> ()

// CHECK: int* [[R1ARR:.*]];
// CHECK: int* [[R2ARR:.*]];
// CHECK: f2([[R1ARR]], [[R2ARR]]);
// CHECK: int [[R1:.*]] = [[R1ARR]][0]
// CHECK: int [[R2:.*]] = [[R2ARR]][0]
  %r1, %r2 = func.call @f2() : () -> (i32, i32)

// CHECK: f3([[R1]])
  func.call @f3(%r1) : (i32) -> ()

// CHECK: int* [[B:.*]];
  %b = memref.alloc() : memref<1xi32>
// CHECK: int* [[CALLVAR:.*]];
  %c = func.call @f4(%b) : (memref<1xi32>) -> (memref<1xi32>)

// CHECK: int [[I:.*]] =
  %i = arith.constant 0 : index
  %int = arith.constant 0 : i32
// CHECK: [[CALLVAR]][[[I]]]
  memref.store %int, %c[%i] : memref<1xi32>
}