#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 1; 
  int arith_const_7 = 0; 
  int arith_const_8 = 40; 
  int arith_const_9 = 32; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    for (int for_iter_11 = arith_const_7; for_iter_11 < arith_const_8; for_iter_11 += arith_const_9) {
      int arith_addi_12 = (for_iter_10 + arith_const_9); 
      int arith_minsi_13 = min(arith_addi_12, arith_const_8); 
      for (int for_iter_14 = for_iter_10; for_iter_14 < arith_minsi_13; for_iter_14 += arith_const_6) {
        int arith_addi_15 = (for_iter_11 + arith_const_9); 
        int arith_minsi_16 = min(arith_addi_15, arith_const_8); 
        for (int for_iter_17 = for_iter_11; for_iter_17 < arith_minsi_16; for_iter_17 += arith_const_6) {
          double memref_load_18 = func_arg_1[for_iter_14]; 
          double memref_load_19 = func_arg_5[for_iter_14][for_iter_17]; 
          double memref_load_20 = func_arg_3[for_iter_17]; 
          double arith_mulf_21 = (memref_load_19 * memref_load_20); 
          double arith_addf_22 = (memref_load_18 + arith_mulf_21); 
          func_arg_1[for_iter_14] = arith_addf_22; 
        }
      }
    }
  }
  for (int for_iter_23 = arith_const_7; for_iter_23 < arith_const_8; for_iter_23 += arith_const_9) {
    for (int for_iter_24 = arith_const_7; for_iter_24 < arith_const_8; for_iter_24 += arith_const_9) {
      int arith_addi_25 = (for_iter_23 + arith_const_9); 
      int arith_minsi_26 = min(arith_addi_25, arith_const_8); 
      for (int for_iter_27 = for_iter_23; for_iter_27 < arith_minsi_26; for_iter_27 += arith_const_6) {
        int arith_addi_28 = (for_iter_24 + arith_const_9); 
        int arith_minsi_29 = min(arith_addi_28, arith_const_8); 
        for (int for_iter_30 = for_iter_24; for_iter_30 < arith_minsi_29; for_iter_30 += arith_const_6) {
          double memref_load_31 = func_arg_2[for_iter_27]; 
          double memref_load_32 = func_arg_5[for_iter_30][for_iter_27]; 
          double memref_load_33 = func_arg_4[for_iter_30]; 
          double arith_mulf_34 = (memref_load_32 * memref_load_33); 
          double arith_addf_35 = (memref_load_31 + arith_mulf_34); 
          func_arg_2[for_iter_27] = arith_addf_35; 
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
