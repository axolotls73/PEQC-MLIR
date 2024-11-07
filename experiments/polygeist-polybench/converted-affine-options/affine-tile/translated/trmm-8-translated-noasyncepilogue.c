#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 32; 
  int arith_const_6 = 30; 
  int arith_const_7 = 20; 
  int arith_const_8 = 0; 
  int arith_const_9 = 19; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    int arith_addi_12 = (for_iter_11 + arith_const_10); 
    for (int for_iter_13 = arith_addi_12; for_iter_13 < arith_const_7; for_iter_13 += arith_const_10) {
      for (int for_iter_14 = arith_const_8; for_iter_14 < arith_const_6; for_iter_14 += arith_const_10) {
        double memref_load_15 = func_arg_4[for_iter_11][for_iter_14]; 
        double memref_load_16 = func_arg_3[for_iter_13][for_iter_11]; 
        double memref_load_17 = func_arg_4[for_iter_13][for_iter_14]; 
        double arith_mulf_18 = (memref_load_16 * memref_load_17); 
        double arith_addf_19 = (memref_load_15 + arith_mulf_18); 
        func_arg_4[for_iter_11][for_iter_14] = arith_addf_19; 
      }
    }
  }
  for (int for_iter_20 = arith_const_8; for_iter_20 < arith_const_7; for_iter_20 += arith_const_5) {
    for (int for_iter_21 = arith_const_8; for_iter_21 < arith_const_6; for_iter_21 += arith_const_5) {
      int arith_addi_22 = (for_iter_20 + arith_const_7); 
      for (int for_iter_23 = for_iter_20; for_iter_23 < arith_addi_22; for_iter_23 += arith_const_10) {
        int arith_addi_24 = (for_iter_21 + arith_const_6); 
        for (int for_iter_25 = for_iter_21; for_iter_25 < arith_addi_24; for_iter_25 += arith_const_10) {
          double memref_load_26 = func_arg_4[for_iter_23][for_iter_25]; 
          double arith_mulf_27 = (func_arg_2 * memref_load_26); 
          func_arg_4[for_iter_23][for_iter_25] = arith_mulf_27; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double alpha;
  double* A;
  double* B;


  kernel_trmm(m, n, alpha, A, B);

}

#pragma pocc-region-end
