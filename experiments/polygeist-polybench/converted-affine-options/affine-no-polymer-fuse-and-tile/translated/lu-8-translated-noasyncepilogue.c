#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_lu(int func_arg_0, double* func_arg_1)
{
  int arith_const_2 = -1; 
  int arith_const_3 = 0; 
  int arith_const_4 = 40; 
  int arith_const_5 = 1; 
  for (int for_iter_6 = arith_const_3; for_iter_6 < arith_const_4; for_iter_6 += arith_const_5) {
    for (int for_iter_7 = arith_const_3; for_iter_7 < for_iter_6; for_iter_7 += arith_const_5) {
      for (int for_iter_8 = arith_const_3; for_iter_8 < for_iter_7; for_iter_8 += arith_const_5) {
        double memref_load_9 = func_arg_1[for_iter_6][for_iter_8]; 
        double memref_load_10 = func_arg_1[for_iter_8][for_iter_7]; 
        double arith_mulf_11 = (memref_load_9 * memref_load_10); 
        double memref_load_12 = func_arg_1[for_iter_6][for_iter_7]; 
        double arith_subf_13 = (memref_load_12 - arith_mulf_11); 
        func_arg_1[for_iter_6][for_iter_7] = arith_subf_13; 
      }
      double memref_load_14 = func_arg_1[for_iter_7][for_iter_7]; 
      double memref_load_15 = func_arg_1[for_iter_6][for_iter_7]; 
      double arith_divf_16 = (memref_load_15 / memref_load_14); 
      func_arg_1[for_iter_6][for_iter_7] = arith_divf_16; 
    }
    int arith_muli_17 = (for_iter_6 * arith_const_2); 
    int arith_addi_18 = (arith_muli_17 + arith_const_4); 
    for (int for_iter_19 = arith_const_3; for_iter_19 < arith_addi_18; for_iter_19 += arith_const_5) {
      for (int for_iter_20 = arith_const_3; for_iter_20 < for_iter_6; for_iter_20 += arith_const_5) {
        double memref_load_21 = func_arg_1[for_iter_6][for_iter_20]; 
        int arith_addi_22 = (for_iter_6 + for_iter_19); 
        double memref_load_23 = func_arg_1[for_iter_20][arith_addi_22]; 
        double arith_mulf_24 = (memref_load_21 * memref_load_23); 
        int arith_addi_25 = (for_iter_6 + for_iter_19); 
        double memref_load_26 = func_arg_1[for_iter_6][arith_addi_25]; 
        double arith_subf_27 = (memref_load_26 - arith_mulf_24); 
        int arith_addi_28 = (for_iter_6 + for_iter_19); 
        func_arg_1[for_iter_6][arith_addi_28] = arith_subf_27; 
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
