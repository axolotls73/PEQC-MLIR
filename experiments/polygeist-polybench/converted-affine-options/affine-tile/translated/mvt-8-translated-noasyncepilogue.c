#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 40; 
  int arith_const_7 = 32; 
  int arith_const_8 = 0; 
  int arith_const_9 = 2; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    for (int for_iter_12 = arith_const_8; for_iter_12 < arith_const_9; for_iter_12 += arith_const_10) {
      int arith_muli_13 = (for_iter_11 * arith_const_7); 
      int arith_muli_14 = (for_iter_11 * arith_const_7); 
      int arith_addi_15 = (arith_muli_14 + arith_const_7); 
      int arith_minsi_16 = min(arith_addi_15, arith_const_6); 
      for (int for_iter_17 = arith_muli_13; for_iter_17 < arith_minsi_16; for_iter_17 += arith_const_10) {
        int arith_muli_18 = (for_iter_12 * arith_const_7); 
        int arith_muli_19 = (for_iter_12 * arith_const_7); 
        int arith_addi_20 = (arith_muli_19 + arith_const_7); 
        int arith_minsi_21 = min(arith_addi_20, arith_const_6); 
        for (int for_iter_22 = arith_muli_18; for_iter_22 < arith_minsi_21; for_iter_22 += arith_const_10) {
          double memref_load_23 = func_arg_1[for_iter_17]; 
          double memref_load_24 = func_arg_5[for_iter_17][for_iter_22]; 
          double memref_load_25 = func_arg_3[for_iter_22]; 
          double arith_mulf_26 = (memref_load_24 * memref_load_25); 
          double arith_addf_27 = (memref_load_23 + arith_mulf_26); 
          func_arg_1[for_iter_17] = arith_addf_27; 
          double memref_load_28 = func_arg_2[for_iter_17]; 
          double memref_load_29 = func_arg_5[for_iter_22][for_iter_17]; 
          double memref_load_30 = func_arg_4[for_iter_22]; 
          double arith_mulf_31 = (memref_load_29 * memref_load_30); 
          double arith_addf_32 = (memref_load_28 + arith_mulf_31); 
          func_arg_2[for_iter_17] = arith_addf_32; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* x1;
  double* x2;
  double* y_1;
  double* y_2;
  double* A;


  kernel_mvt(n, x1, x2, y_1, y_2, A);

}

#pragma pocc-region-end
