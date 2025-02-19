
//
// arith-basic.mlir: This file is part of the PEQC-MLIR project.
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
// CHECK: int [[A:.*]] = 0
    %a = arith.constant 0 : i32
// CHECK-NEXT: int [[B:.*]] = 2
    %b = arith.constant 2 : i32
// CHECK-NEXT: int [[C:.*]] = 4
    %c = arith.constant 4 : i32
// CHECK-NEXT: float [[F:.*]] = 0.0
    %f = arith.constant 0.0 : f32
// CHECK-NEXT: float [[G:.*]] = 2.0
    %g = arith.constant 2.0 : f32
// this is weird, but technically still works with C
// semantics as long as you only use logical operations?
// CHECK-NEXT: int [[cond:.*]] = -1
    %cond = arith.constant 1 : i1
// CHECK-NEXT: = ([[A]] + [[B]])
    %2 = arith.addi %a, %b : i32
// CHECK-NEXT: = ([[A]] - [[B]])
    %13 = arith.subi %a, %b : i32
// CHECK-NEXT: = ([[A]] * [[B]])
    %14 = arith.muli %a, %b : i32
// CHECK-NEXT: = ([[A]] / [[B]])
    %15 = arith.divsi %a, %b : i32
// CHECK-NEXT: = floord([[A]], [[B]])
    %41 = arith.floordivsi %a, %b : i32
// CHECK-NEXT: = ([[A]] / [[B]])
    %16 = arith.divui %a, %b : i32
// CHECK-NEXT: = max([[A]], [[B]])
    %3 = arith.maxsi %a, %b : i32
// CHECK-NEXT: = min([[A]], [[B]])
    %4 = arith.minsi %a, %b : i32
// CHECK-NEXT: double {{.*}} = 5.0
    %5 = arith.constant 5.000000e+00 : f64
// CHECK-NEXT: float {{.*}} = 5.0
    %6 = arith.constant 5.000000e+00 : f32
// CHECK-NEXT: = ([[A]] < [[B]])
    %7 = arith.cmpi slt, %a, %b : i32
// CHECK-NEXT: = ([[A]] <= [[B]])
    %8 = arith.cmpi sle, %a, %b : i32
// CHECK-NEXT: = ([[A]] > [[B]])
    %9 = arith.cmpi sgt, %a, %b : i32
// CHECK-NEXT: = ([[A]] >= [[B]])
    %10 = arith.cmpi sge, %a, %b : i32
// CHECK-NEXT: = ([[A]] != [[B]])
    %11 = arith.cmpi ne, %a, %b : i32
// CHECK-NEXT: = ([[A]] == [[B]])
    %12 = arith.cmpi eq, %a, %b : i32
// CHECK-NEXT: = ([[F]] < [[G]])
    %27 = arith.cmpf olt, %f, %g : f32
// CHECK-NEXT: = ([[F]] < [[G]])
    %28 = arith.cmpf ult, %f, %g : f32
// CHECK-NEXT: = ([[F]] <= [[G]])
    %29 = arith.cmpf ole, %f, %g : f32
// CHECK-NEXT: = ([[F]] <= [[G]])
    %30 = arith.cmpf ule, %f, %g : f32
// CHECK-NEXT: = ([[F]] > [[G]])
    %31 = arith.cmpf ogt, %f, %g : f32
// CHECK-NEXT: = ([[F]] > [[G]])
    %32 = arith.cmpf ugt, %f, %g : f32
// CHECK-NEXT: = ([[F]] >= [[G]])
    %33 = arith.cmpf oge, %f, %g : f32
// CHECK-NEXT: = ([[F]] >= [[G]])
    %34 = arith.cmpf uge, %f, %g : f32
// CHECK-NEXT: = ([[F]] != [[G]])
    %35 = arith.cmpf one, %f, %g : f32
// CHECK-NEXT: = ([[F]] != [[G]])
    %36 = arith.cmpf une, %f, %g : f32
// CHECK-NEXT: = ([[F]] == [[G]])
    %37 = arith.cmpf oeq, %f, %g : f32
// CHECK-NEXT: = ([[F]] == [[G]])
    %38 = arith.cmpf ueq, %f, %g : f32
// CHECK-NEXT: = ([[cond]] ? [[A]] : [[B]])
    %17 = arith.select %cond, %a, %b : i32
// CHECK-NEXT: float {{.*}} = ([[F]] + [[G]])
    %18 = arith.addf %f, %g : f32
// CHECK-NEXT: float {{.*}} = ([[F]] - [[G]])
    %19 = arith.subf %f, %g : f32
// CHECK-NEXT: float {{.*}} = ([[F]] * [[G]])
    %20 = arith.mulf %f, %g : f32
// CHECK-NEXT: float {{.*}} = ([[F]] / [[G]])
    %21 = arith.divf %f, %g : f32
// CHECK-NEXT: float {{.*}} = sqrt([[F]])
    %22 = math.sqrt %f : f32
// CHECK-NEXT: = ([[A]] & [[B]])
    %23 = arith.andi %a, %b : i32
// CHECK-NEXT: = ([[A]] | [[B]])
    %24 = arith.ori %a, %b : i32
// CHECK-NEXT: = -([[F]])
    %25 = arith.negf %f : f32
// CHECK-NEXT: = ([[A]] % [[B]])
    %26 = arith.remsi %a, %b : i32
// CHECK-NEXT: = exp([[F]])
    %39 = math.exp %f : f32
// CHECK-NEXT: = pow([[F]], [[G]])
    %40 = math.powf %f, %g : f32
}
