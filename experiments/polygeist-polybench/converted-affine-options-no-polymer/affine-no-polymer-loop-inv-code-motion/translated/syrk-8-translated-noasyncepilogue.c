#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = 0; 
  int arith_const_8 = 30; 
  int arith_const_9 = 1; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    int arith_addi_11 = (for_iter_10 + arith_const_9); 
    for (int for_iter_12 = arith_const_7; for_iter_12 < arith_addi_11; for_iter_12 += arith_const_9) {
      double memref_load_13 = func_arg_4[for_iter_10][for_iter_12]; 
      double arith_mulf_14 = (memref_load_13 * func_arg_3); 
      func_arg_4[for_iter_10][for_iter_12] = arith_mulf_14; 
    }
    for (int for_iter_15 = arith_const_7; for_iter_15 < arith_const_6; for_iter_15 += arith_const_9) {
      double memref_load_16 = func_arg_5[for_iter_10][for_iter_15]; 
      double arith_mulf_17 = (func_arg_2 * memref_load_16); 
      int arith_addi_18 = (for_iter_10 + arith_const_9); 
      for (int for_iter_19 = arith_const_7; for_iter_19 < arith_addi_18; for_iter_19 += arith_const_9) {
        double memref_load_20 = func_arg_5[for_iter_19][for_iter_15]; 
        double arith_mulf_21 = (arith_mulf_17 * memref_load_20); 
        double memref_load_22 = func_arg_4[for_iter_10][for_iter_19]; 
        double arith_addf_23 = (memref_load_22 + arith_mulf_21); 
        func_arg_4[for_iter_10][for_iter_19] = arith_addf_23; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  int m;
  double alpha;
  double beta;
  double* C;
  double* A;


  kernel_syrk(n, m, alpha, beta, C, A);

}

#pragma pocc-region-end
