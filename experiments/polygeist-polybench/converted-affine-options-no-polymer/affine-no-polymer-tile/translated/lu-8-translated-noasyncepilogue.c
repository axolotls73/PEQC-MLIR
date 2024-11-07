#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_lu(int func_arg_0, double* func_arg_1)
{
  int arith_const_2 = 1; 
  int arith_const_3 = 0; 
  int arith_const_4 = 40; 
  int arith_const_5 = 4; 
  for (int for_iter_6 = arith_const_3; for_iter_6 < arith_const_4; for_iter_6 += arith_const_5) {
    int arith_addi_7 = (for_iter_6 + arith_const_5); 
    for (int for_iter_8 = for_iter_6; for_iter_8 < arith_addi_7; for_iter_8 += arith_const_2) {
      for (int for_iter_9 = arith_const_3; for_iter_9 < for_iter_8; for_iter_9 += arith_const_2) {
        for (int for_iter_10 = arith_const_3; for_iter_10 < for_iter_9; for_iter_10 += arith_const_2) {
          double memref_load_11 = func_arg_1[for_iter_8][for_iter_10]; 
          double memref_load_12 = func_arg_1[for_iter_10][for_iter_9]; 
          double arith_mulf_13 = (memref_load_11 * memref_load_12); 
          double memref_load_14 = func_arg_1[for_iter_8][for_iter_9]; 
          double arith_subf_15 = (memref_load_14 - arith_mulf_13); 
          func_arg_1[for_iter_8][for_iter_9] = arith_subf_15; 
        }
        double memref_load_16 = func_arg_1[for_iter_9][for_iter_9]; 
        double memref_load_17 = func_arg_1[for_iter_8][for_iter_9]; 
        double arith_divf_18 = (memref_load_17 / memref_load_16); 
        func_arg_1[for_iter_8][for_iter_9] = arith_divf_18; 
      }
      for (int for_iter_19 = for_iter_8; for_iter_19 < arith_const_4; for_iter_19 += arith_const_2) {
        for (int for_iter_20 = arith_const_3; for_iter_20 < for_iter_8; for_iter_20 += arith_const_2) {
          double memref_load_21 = func_arg_1[for_iter_8][for_iter_20]; 
          double memref_load_22 = func_arg_1[for_iter_20][for_iter_19]; 
          double arith_mulf_23 = (memref_load_21 * memref_load_22); 
          double memref_load_24 = func_arg_1[for_iter_8][for_iter_19]; 
          double arith_subf_25 = (memref_load_24 - arith_mulf_23); 
          func_arg_1[for_iter_8][for_iter_19] = arith_subf_25; 
        }
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
