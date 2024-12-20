// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// cat %t/result.c | FileCheck %s

// RUN: %pastchecker %t/translation.c %t/translation.c res | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c res | grep YES

//--- input.mlir

module {
// CHECK: void for_loop_carried
    func.func @for_loop_carried () -> i32 {
        %c_0 = arith.constant 0 : i32
        %c_1 = arith.constant 1 : i32
        %c_0i = arith.constant 0 : index
        %c_1i = arith.constant 1 : index
        %c_8i = arith.constant 8 : index
        %res = scf.for %iter = %c_0i to %c_8i step %c_1i iter_args (%var = %c_0) -> i32 {
          %incr = arith.addi %var, %c_1 : i32
          scf.yield %incr : i32
        }
        return %res : i32
    }
}

//--- epilogue.c

{
  for_loop_carried(res_arr);
  res = res_arr[0];
}

//--- compare.c

#pragma pocc-region-start
{
  res = 8;
}
#pragma pocc-region-end