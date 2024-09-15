// RUN: mlir-opt %s --load-dialect-plugin=%verif_libs/VerifPlugin%shlibext --pass-pipeline="builtin.module(verif-switch-bar-foo)" | FileCheck %s

module {
  // CHECK-LABEL: func @foo()
  func.func @bar() {
    return
  }

  // CHECK-LABEL: func @verif_types(%arg0: !verif.custom<"10">)
  func.func @verif_types(%arg0: !verif.custom<"10">) {
    return
  }
}
