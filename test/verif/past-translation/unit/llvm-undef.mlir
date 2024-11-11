// RUN: verif-translate --translate-to-past %s | FileCheck %s

module {
// CHECK: double [[F:.*]];
    %0 = llvm.mlir.undef : f64
}
