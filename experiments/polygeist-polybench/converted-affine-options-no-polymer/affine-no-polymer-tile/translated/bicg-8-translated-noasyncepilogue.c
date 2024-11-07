#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 38; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    int arith_addi_13 = (for_iter_12 + arith_const_11); 
    for (int for_iter_14 = for_iter_12; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_11) {
      func_arg_3[for_iter_14] = arith_const_8; 
    }
  }
  for (int for_iter_15 = arith_const_9; for_iter_15 < arith_const_7; for_iter_15 += arith_const_11) {
    int arith_addi_16 = (for_iter_15 + arith_const_11); 
    for (int for_iter_17 = for_iter_15; for_iter_17 < arith_addi_16; for_iter_17 += arith_const_11) {
      func_arg_4[for_iter_17] = arith_const_8; 
      for (int for_iter_18 = arith_const_9; for_iter_18 < arith_const_10; for_iter_18 += arith_const_11) {
        double memref_load_19 = func_arg_3[for_iter_18]; 
        double memref_load_20 = func_arg_6[for_iter_17]; 
        double memref_load_21 = func_arg_2[for_iter_17][for_iter_18]; 
        double arith_mulf_22 = (memref_load_20 * memref_load_21); 
        double arith_addf_23 = (memref_load_19 + arith_mulf_22); 
        func_arg_3[for_iter_18] = arith_addf_23; 
        double memref_load_24 = func_arg_4[for_iter_17]; 
        double memref_load_25 = func_arg_2[for_iter_17][for_iter_18]; 
        double memref_load_26 = func_arg_5[for_iter_18]; 
        double arith_mulf_27 = (memref_load_25 * memref_load_26); 
        double arith_addf_28 = (memref_load_24 + arith_mulf_27); 
        func_arg_4[for_iter_17] = arith_addf_28; 
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
