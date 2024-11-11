// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: int [[A:.*]] = 0
    %a = arith.constant 0 : i32
// CHECK: int [[B:.*]] = 2
    %b = arith.constant 2 : i32
// CHECK: int [[C:.*]] = 4
    %c = arith.constant 4 : i32
// CHECK: float [[F:.*]] = 0.0
    %f = arith.constant 0.0 : f32
// CHECK: float [[G:.*]] = 2.0
    %g = arith.constant 2.0 : f32
// COM: this is weird, but technically still works with C
// COM: semantics as long as you only use logical operations?
// CHECK: int [[cond:.*]] = -1
    %cond = arith.constant 1 : i1
// CHECK: = ([[A]] + [[B]])
    %2 = arith.addi %a, %b : i32
// CHECK: = ([[A]] - [[B]])
    %13 = arith.subi %a, %b : i32
// CHECK: = ([[A]] * [[B]])
    %14 = arith.muli %a, %b : i32
// CHECK: = ([[A]] / [[B]])
    %15 = arith.divsi %a, %b : i32
// CHECK: = ([[A]] / [[B]])
    %16 = arith.divui %a, %b : i32
// CHECK: = max([[A]], [[B]])
    %3 = arith.maxsi %a, %b : i32
// CHECK: = min([[A]], [[B]])
    %4 = arith.minsi %a, %b : i32
// CHECK: double {{.*}} = 5.0
    %5 = arith.constant 5.000000e+00 : f64
// CHECK: float {{.*}} = 5.0
    %6 = arith.constant 5.000000e+00 : f32
// CHECK: = ([[A]] < [[B]])
    %7 = arith.cmpi slt, %a, %b : i32
// CHECK: = ([[A]] <= [[B]])
    %8 = arith.cmpi sle, %a, %b : i32
// CHECK: = ([[A]] > [[B]])
    %9 = arith.cmpi sgt, %a, %b : i32
// CHECK: = ([[A]] >= [[B]])
    %10 = arith.cmpi sge, %a, %b : i32
// CHECK: = ([[A]] != [[B]])
    %11 = arith.cmpi ne, %a, %b : i32
// CHECK: = ([[A]] == [[B]])
    %12 = arith.cmpi eq, %a, %b : i32
// CHECK: = ([[cond]] ? [[A]] : [[B]])
    %17 = arith.select %cond, %a, %b : i32
// CHECK: float {{.*}} = ([[F]] + [[G]])
    %18 = arith.addf %f, %g : f32
// CHECK: float {{.*}} = ([[F]] - [[G]])
    %19 = arith.subf %f, %g : f32
// CHECK: float {{.*}} = ([[F]] * [[G]])
    %20 = arith.mulf %f, %g : f32
// CHECK: float {{.*}} = ([[F]] / [[G]])
    %21 = arith.divf %f, %g : f32
// CHECK: float {{.*}} = sqrt([[F]])
    %22 = math.sqrt %f : f32
// CHECK: = ([[A]] & [[B]])
    %23 = arith.andi %a, %b : i32
// CHECK: = ([[A]] | [[B]])
    %24 = arith.ori %a, %b : i32
// CHECK: = -([[F]])
    %25 = arith.negf %f : f32
// CHECK: = ([[A]] % [[B]])
    %26 = arith.remsi %a, %b : i32
}
