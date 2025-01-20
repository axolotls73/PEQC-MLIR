// RUN: split-file %s %t

// RUN: not verif-translate --translate-to-past %t/mixed-ops.mlir
// RUN: not verif-translate --translate-to-past %t/main-signature-wrong.mlir
// RUN: not verif-translate --translate-to-past %t/main-signature-wrong-2.mlir


//--- mixed-ops.mlir

module {
  %1 = arith.constant 1 : index
  func.func @test () {
    %2 = arith.constant 1 : index
    return
  }
}

//--- main-signature-wrong.mlir

module {
  func.func @main () -> (index) {
    %1 = arith.constant 1 : index
    return %1 : index
  }
}

//--- main-signature-wrong-2.mlir

module {
  func.func @main (%a : index) {
    %1 = arith.constant 1 : index
    return
  }
}
