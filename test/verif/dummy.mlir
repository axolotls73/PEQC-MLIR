// RUN: verif-opt %s | verif-opt | FileCheck %s

module {
    // CHECK-LABEL: func @bar()
    func.func @bar() {
        %0 = arith.constant 1 : i32
        // CHECK: %{{.*}} = verif.foo %{{.*}} : i32
        %res = verif.foo %0 : i32
        return
    }

    // CHECK-LABEL: func @verif_types(%arg0: !verif.custom<"10">)
    func.func @verif_types(%arg0: !verif.custom<"10">) {
        return
    }
}
