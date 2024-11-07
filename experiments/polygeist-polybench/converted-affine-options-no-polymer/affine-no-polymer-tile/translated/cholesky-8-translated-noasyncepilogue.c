#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_cholesky(int func_arg_0, double* func_arg_1)
{
  int arith_const_2 = 0; 
  int arith_const_3 = 40; 
  int arith_const_4 = 1; 
  for (int for_iter_5 = arith_const_2; for_iter_5 < arith_const_3; for_iter_5 += arith_const_4) {
    int arith_addi_6 = (for_iter_5 + arith_const_4); 
    for (int for_iter_7 = for_iter_5; for_iter_7 < arith_addi_6; for_iter_7 += arith_const_4) {
      for (int for_iter_8 = arith_const_2; for_iter_8 < for_iter_7; for_iter_8 += arith_const_4) {
        for (int for_iter_9 = arith_const_2; for_iter_9 < for_iter_8; for_iter_9 += arith_const_4) {
          double memref_load_10 = func_arg_1[for_iter_7][for_iter_9]; 
          double memref_load_11 = func_arg_1[for_iter_8][for_iter_9]; 
          double arith_mulf_12 = (memref_load_10 * memref_load_11); 
          double memref_load_13 = func_arg_1[for_iter_7][for_iter_8]; 
          double arith_subf_14 = (memref_load_13 - arith_mulf_12); 
          func_arg_1[for_iter_7][for_iter_8] = arith_subf_14; 
        }
        double memref_load_15 = func_arg_1[for_iter_8][for_iter_8]; 
        double memref_load_16 = func_arg_1[for_iter_7][for_iter_8]; 
        double arith_divf_17 = (memref_load_16 / memref_load_15); 
        func_arg_1[for_iter_7][for_iter_8] = arith_divf_17; 
      }
      for (int for_iter_18 = arith_const_2; for_iter_18 < for_iter_7; for_iter_18 += arith_const_4) {
        double memref_load_19 = func_arg_1[for_iter_7][for_iter_18]; 
        double arith_mulf_20 = (memref_load_19 * memref_load_19); 
        double memref_load_21 = func_arg_1[for_iter_7][for_iter_7]; 
        double arith_subf_22 = (memref_load_21 - arith_mulf_20); 
        func_arg_1[for_iter_7][for_iter_7] = arith_subf_22; 
      }
      double memref_load_23 = func_arg_1[for_iter_7][for_iter_7]; 
      double math_sqrt_24 = sqrt(memref_load_23); 
      func_arg_1[for_iter_7][for_iter_7] = math_sqrt_24; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* A;


  kernel_cholesky(n, A);

}

#pragma pocc-region-end
