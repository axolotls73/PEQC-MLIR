#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_lu(int func_arg_0, double* func_arg_1)
{
  int arith_const_2 = 0; 
  int arith_const_3 = 40; 
  int arith_const_4 = 1; 
  for (int for_iter_5 = arith_const_2; for_iter_5 < arith_const_3; for_iter_5 += arith_const_4) {
    for (int for_iter_6 = arith_const_2; for_iter_6 < for_iter_5; for_iter_6 += arith_const_4) {
      for (int for_iter_7 = arith_const_2; for_iter_7 < for_iter_6; for_iter_7 += arith_const_4) {
        double memref_load_8 = func_arg_1[for_iter_5][for_iter_7]; 
        double memref_load_9 = func_arg_1[for_iter_7][for_iter_6]; 
        double arith_mulf_10 = (memref_load_8 * memref_load_9); 
        double memref_load_11 = func_arg_1[for_iter_5][for_iter_6]; 
        double arith_subf_12 = (memref_load_11 - arith_mulf_10); 
        func_arg_1[for_iter_5][for_iter_6] = arith_subf_12; 
      }
      double memref_load_13 = func_arg_1[for_iter_6][for_iter_6]; 
      double memref_load_14 = func_arg_1[for_iter_5][for_iter_6]; 
      double arith_divf_15 = (memref_load_14 / memref_load_13); 
      func_arg_1[for_iter_5][for_iter_6] = arith_divf_15; 
    }
    for (int for_iter_16 = for_iter_5; for_iter_16 < arith_const_3; for_iter_16 += arith_const_4) {
      for (int for_iter_17 = arith_const_2; for_iter_17 < for_iter_5; for_iter_17 += arith_const_4) {
        double memref_load_18 = func_arg_1[for_iter_5][for_iter_17]; 
        double memref_load_19 = func_arg_1[for_iter_17][for_iter_16]; 
        double arith_mulf_20 = (memref_load_18 * memref_load_19); 
        double memref_load_21 = func_arg_1[for_iter_5][for_iter_16]; 
        double arith_subf_22 = (memref_load_21 - arith_mulf_20); 
        func_arg_1[for_iter_5][for_iter_16] = arith_subf_22; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* A;


  kernel_lu(n, A);

}

#pragma pocc-region-end
