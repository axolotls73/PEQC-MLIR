#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_trisolv(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 0; 
  int arith_const_5 = 40; 
  int arith_const_6 = 1; 
  for (int for_iter_7 = arith_const_4; for_iter_7 < arith_const_5; for_iter_7 += arith_const_6) {
    int arith_addi_8 = (for_iter_7 + arith_const_6); 
    for (int for_iter_9 = for_iter_7; for_iter_9 < arith_addi_8; for_iter_9 += arith_const_6) {
      double memref_load_10 = func_arg_3[for_iter_9]; 
      func_arg_2[for_iter_9] = memref_load_10; 
      for (int for_iter_11 = arith_const_4; for_iter_11 < for_iter_9; for_iter_11 += arith_const_6) {
        double memref_load_12 = func_arg_1[for_iter_9][for_iter_11]; 
        double memref_load_13 = func_arg_2[for_iter_11]; 
        double arith_mulf_14 = (memref_load_12 * memref_load_13); 
        double memref_load_15 = func_arg_2[for_iter_9]; 
        double arith_subf_16 = (memref_load_15 - arith_mulf_14); 
        func_arg_2[for_iter_9] = arith_subf_16; 
      }
      double memref_load_17 = func_arg_2[for_iter_9]; 
      double memref_load_18 = func_arg_1[for_iter_9][for_iter_9]; 
      double arith_divf_19 = (memref_load_17 / memref_load_18); 
      func_arg_2[for_iter_9] = arith_divf_19; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* L;
  double* x;
  double* b;


  kernel_trisolv(n, L, x, b);

}

#pragma pocc-region-end
