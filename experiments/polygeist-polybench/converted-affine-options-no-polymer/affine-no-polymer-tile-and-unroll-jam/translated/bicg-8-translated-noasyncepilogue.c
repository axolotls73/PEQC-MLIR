#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  int arith_const_8 = 1; 
  double arith_const_9 = 0.000000; 
  int arith_const_10 = 0; 
  int arith_const_11 = 38; 
  int arith_const_12 = 32; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    int arith_addi_14 = (for_iter_13 + arith_const_12); 
    int arith_minsi_15 = min(arith_addi_14, arith_const_11); 
    for (int for_iter_16 = for_iter_13; for_iter_16 < arith_minsi_15; for_iter_16 += arith_const_8) {
      func_arg_3[for_iter_16] = arith_const_9; 
    }
  }
  for (int for_iter_17 = arith_const_10; for_iter_17 < arith_const_7; for_iter_17 += arith_const_12) {
    int arith_addi_18 = (for_iter_17 + arith_const_12); 
    int arith_minsi_19 = min(arith_addi_18, arith_const_7); 
    for (int for_iter_20 = for_iter_17; for_iter_20 < arith_minsi_19; for_iter_20 += arith_const_8) {
      func_arg_4[for_iter_20] = arith_const_9; 
      for (int for_iter_21 = arith_const_10; for_iter_21 < arith_const_11; for_iter_21 += arith_const_8) {
        double memref_load_22 = func_arg_3[for_iter_21]; 
        double memref_load_23 = func_arg_6[for_iter_20]; 
        double memref_load_24 = func_arg_2[for_iter_20][for_iter_21]; 
        double arith_mulf_25 = (memref_load_23 * memref_load_24); 
        double arith_addf_26 = (memref_load_22 + arith_mulf_25); 
        func_arg_3[for_iter_21] = arith_addf_26; 
        double memref_load_27 = func_arg_4[for_iter_20]; 
        double memref_load_28 = func_arg_2[for_iter_20][for_iter_21]; 
        double memref_load_29 = func_arg_5[for_iter_21]; 
        double arith_mulf_30 = (memref_load_28 * memref_load_29); 
        double arith_addf_31 = (memref_load_27 + arith_mulf_30); 
        func_arg_4[for_iter_20] = arith_addf_31; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double* A;
  double* s;
  double* q;
  double* p;
  double* r;


  kernel_bicg(m, n, A, s, q, p, r);

}

#pragma pocc-region-end
