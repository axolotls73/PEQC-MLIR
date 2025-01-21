// RUN: verif-translate --translate-to-past %s

module {

// CHECK void f(
  func.func @f(%a : index) {

    %5 = arith.constant 5 : index
// CHECK: goto ^[[BLOCK:.*]];
    cf.br ^b2

    ^b1:
// CHECK: goto ^[[BLOCK]];
      cf.br ^b2

// CHECK: [[BLOCK]]:
    ^b2:
// CHECK: return
      return
  }

}