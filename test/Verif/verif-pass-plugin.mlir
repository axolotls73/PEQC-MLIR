// RUN: mlir-opt %s --load-pass-plugin=%verif_libs/VerifPlugin%shlibext --pass-pipeline="builtin.module(verif-switch-bar-foo)" | FileCheck %s

module {
  // CHECK-LABEL: func @foo()
  func.func @bar() {
    return
  }

  // CHECK-LABEL: func @abar()
  func.func @abar() {
    return
  }
}
