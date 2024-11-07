#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_trisolv(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 1; 
  int arith_const_5 = 0; 
  int arith_const_6 = 40; 
  int arith_const_7 = 32; 
  for (int for_iter_8 = arith_const_5; for_iter_8 < arith_const_6; for_iter_8 += arith_const_7) {
    int arith_addi_9 = (for_iter_8 + arith_const_7); 
    int arith_minsi_10 = min(arith_addi_9, arith_const_6); 
    for (int for_iter_11 = for_iter_8; for_iter_11 < arith_minsi_10; for_iter_11 += arith_const_4) {
      double memref_load_12 = func_arg_3[for_iter_11]; 
      func_arg_2[for_iter_11] = memref_load_12; 
      for (int for_iter_13 = arith_const_5; for_iter_13 < for_iter_11; for_iter_13 += arith_const_4) {
        double memref_load_14 = func_arg_1[for_iter_11][for_iter_13]; 
        double memref_load_15 = func_arg_2[for_iter_13]; 
        double arith_mulf_16 = (memref_load_14 * memref_load_15); 
        double memref_load_17 = func_arg_2[for_iter_11]; 
        double arith_subf_18 = (memref_load_17 - arith_mulf_16); 
        func_arg_2[for_iter_11] = arith_subf_18; 
      }
      double memref_load_19 = func_arg_2[for_iter_11]; 
      double memref_load_20 = func_arg_1[for_iter_11][for_iter_11]; 
      double arith_divf_21 = (memref_load_19 / memref_load_20); 
      func_arg_2[for_iter_11] = arith_divf_21; 
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
