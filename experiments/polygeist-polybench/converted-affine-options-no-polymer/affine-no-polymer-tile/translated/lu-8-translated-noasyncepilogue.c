#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_lu(int func_arg_0, double* func_arg_1)
{
  int arith_const_2 = 1; 
  int arith_const_3 = 0; 
  int arith_const_4 = 40; 
  int arith_const_5 = 32; 
  for (int for_iter_6 = arith_const_3; for_iter_6 < arith_const_4; for_iter_6 += arith_const_5) {
    int arith_addi_7 = (for_iter_6 + arith_const_5); 
    int arith_minsi_8 = min(arith_addi_7, arith_const_4); 
    for (int for_iter_9 = for_iter_6; for_iter_9 < arith_minsi_8; for_iter_9 += arith_const_2) {
      for (int for_iter_10 = arith_const_3; for_iter_10 < for_iter_9; for_iter_10 += arith_const_2) {
        for (int for_iter_11 = arith_const_3; for_iter_11 < for_iter_10; for_iter_11 += arith_const_2) {
          double memref_load_12 = func_arg_1[for_iter_9][for_iter_11]; 
          double memref_load_13 = func_arg_1[for_iter_11][for_iter_10]; 
          double arith_mulf_14 = (memref_load_12 * memref_load_13); 
          double memref_load_15 = func_arg_1[for_iter_9][for_iter_10]; 
          double arith_subf_16 = (memref_load_15 - arith_mulf_14); 
          func_arg_1[for_iter_9][for_iter_10] = arith_subf_16; 
        }
        double memref_load_17 = func_arg_1[for_iter_10][for_iter_10]; 
        double memref_load_18 = func_arg_1[for_iter_9][for_iter_10]; 
        double arith_divf_19 = (memref_load_18 / memref_load_17); 
        func_arg_1[for_iter_9][for_iter_10] = arith_divf_19; 
      }
      for (int for_iter_20 = for_iter_9; for_iter_20 < arith_const_4; for_iter_20 += arith_const_2) {
        for (int for_iter_21 = arith_const_3; for_iter_21 < for_iter_9; for_iter_21 += arith_const_2) {
          double memref_load_22 = func_arg_1[for_iter_9][for_iter_21]; 
          double memref_load_23 = func_arg_1[for_iter_21][for_iter_20]; 
          double arith_mulf_24 = (memref_load_22 * memref_load_23); 
          double memref_load_25 = func_arg_1[for_iter_9][for_iter_20]; 
          double arith_subf_26 = (memref_load_25 - arith_mulf_24); 
          func_arg_1[for_iter_9][for_iter_20] = arith_subf_26; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* A;


  kernel_lu(n, A);

}

#pragma pocc-region-end
