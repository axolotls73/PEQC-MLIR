// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: %add_epilogue %t/result.c %t/epilogue.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/translation.c

// RUN: %pastchecker %t/translation.c %t/compare.c

//--- input.mlir

module {
    func.func @func_test () -> i32 {
        %c = arith.constant 5 : i32
        return %c : i32
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
  res = 5;
}
#pragma pocc-region-end