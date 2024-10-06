// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %testroot/add_epilogue.sh %t/result.c %t/epilogue.c %t/translation.c && \
// RUN: pastchecker %t/translation.c %t/translation.c

// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %testroot/add_epilogue.sh %t/result.c %t/epilogue.c %t/translation.c && \
// RUN: pastchecker %t/translation.c %t/compare.c

//--- input.mlir

module {
    func.func @func_test () -> i32 {
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
  func_test(res_arr);
  res = res_arr[0];
}

//--- compare.c

#pragma pocc-region-start
{
  res = 9;
}
#pragma pocc-region-end