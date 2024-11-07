#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = 0; 
  int arith_const_8 = 30; 
  int arith_const_9 = 1; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    int arith_addi_11 = (for_iter_10 + arith_const_9); 
    for (int for_iter_12 = for_iter_10; for_iter_12 < arith_addi_11; for_iter_12 += arith_const_9) {
      int arith_addi_13 = (for_iter_12 + arith_const_9); 
      for (int for_iter_14 = arith_const_7; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_9) {
        double memref_load_15 = func_arg_4[for_iter_12][for_iter_14]; 
        double arith_mulf_16 = (memref_load_15 * func_arg_3); 
        func_arg_4[for_iter_12][for_iter_14] = arith_mulf_16; 
      }
      for (int for_iter_17 = arith_const_7; for_iter_17 < arith_const_6; for_iter_17 += arith_const_9) {
        int arith_addi_18 = (for_iter_12 + arith_const_9); 
        for (int for_iter_19 = arith_const_7; for_iter_19 < arith_addi_18; for_iter_19 += arith_const_9) {
          double memref_load_20 = func_arg_5[for_iter_12][for_iter_17]; 
          double arith_mulf_21 = (func_arg_2 * memref_load_20); 
          double memref_load_22 = func_arg_5[for_iter_19][for_iter_17]; 
          double arith_mulf_23 = (arith_mulf_21 * memref_load_22); 
          double memref_load_24 = func_arg_4[for_iter_12][for_iter_19]; 
          double arith_addf_25 = (memref_load_24 + arith_mulf_23); 
          func_arg_4[for_iter_12][for_iter_19] = arith_addf_25; 
        }
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

#pragma peqc async_execute
{
  kernel_syrk(n, m, alpha, beta, C, A);
}
}

#pragma pocc-region-end
