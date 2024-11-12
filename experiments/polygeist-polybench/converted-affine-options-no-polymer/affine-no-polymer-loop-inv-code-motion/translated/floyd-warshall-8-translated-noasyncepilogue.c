#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_floyd_warshall(int func_arg_0, int* func_arg_1)
{
  int arith_const_2 = 0; 
  int arith_const_3 = 60; 
  int arith_const_4 = 1; 
  for (int for_iter_5 = arith_const_2; for_iter_5 < arith_const_3; for_iter_5 += arith_const_4) {
    for (int for_iter_6 = arith_const_2; for_iter_6 < arith_const_3; for_iter_6 += arith_const_4) {
      for (int for_iter_7 = arith_const_2; for_iter_7 < arith_const_3; for_iter_7 += arith_const_4) {
        int memref_load_8 = func_arg_1[for_iter_6][for_iter_7]; 
        int memref_load_9 = func_arg_1[for_iter_6][for_iter_5]; 
        int memref_load_10 = func_arg_1[for_iter_5][for_iter_7]; 
        int arith_addi_11 = (memref_load_9 + memref_load_10); 
        int arith_cmpi_12 = (memref_load_8 < arith_addi_11); 
        int arith_select_13 = (arith_cmpi_12 ? memref_load_8 : arith_addi_11); 
        func_arg_1[for_iter_6][for_iter_7] = arith_select_13; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  int* path;


  kernel_floyd_warshall(n, path);

}

#pragma pocc-region-end
