// RUN: split-file %s %t && \
// RUN: verif-translate --translate-to-past %t/input.mlir > %t/result.c && \
// RUN: bash %testroot/add_epilogue.sh %t/result.c %t/epilogue.c %t/translation.c %testroot/..

// RUN: %pastchecker %t/translation.c %t/translation.c res1,res2 | grep YES

// RUN: %pastchecker %t/translation.c %t/compare.c res1,res2 | grep YES



//--- input.mlir

module {
    func.func @func_test () -> (i32, i32) {
        %c_0 = arith.constant 0 : i32
        %c_1 = arith.constant 1 : i32
        %c_2 = arith.constant 2 : i32
        %c_0i = arith.constant 0 : index
        %c_1i = arith.constant 1 : index
        %c_8i = arith.constant 8 : index
        %res1, %res2 = scf.for %iter = %c_0i to %c_8i step %c_1i iter_args (%var1 = %c_0, %var2 = %c_0) -> (i32, i32) {
          %incr1 = arith.addi %var1, %c_1 : i32
          %incr2 = arith.addi %var2, %c_2 : i32
          scf.yield %incr1, %incr2 : i32, i32
        }
        return %res1, %res2 : i32, i32
    }
}

//--- epilogue.c

{
  func_test(res1_arr, res2_arr);
  res1 = res1_arr[0];
  res2 = res2_arr[0];
}

//--- compare.c

#pragma pocc-region-start
{
  res1 = 8;
  res2 = 16;
}
#pragma pocc-region-end