#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 30; 
  int arith_const_6 = 0; 
  int arith_const_7 = 20; 
  int arith_const_8 = 1; 
  for (int for_iter_9 = arith_const_6; for_iter_9 < arith_const_7; for_iter_9 += arith_const_8) {
    for (int for_iter_10 = arith_const_6; for_iter_10 < arith_const_5; for_iter_10 += arith_const_8) {
      int arith_addi_11 = (for_iter_9 + arith_const_8); 
      for (int for_iter_12 = for_iter_9; for_iter_12 < arith_addi_11; for_iter_12 += arith_const_8) {
        int arith_addi_13 = (for_iter_10 + arith_const_8); 
        for (int for_iter_14 = for_iter_10; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_8) {
          int arith_addi_15 = (for_iter_12 + arith_const_8); 
          for (int for_iter_16 = arith_addi_15; for_iter_16 < arith_const_7; for_iter_16 += arith_const_8) {
            double memref_load_17 = func_arg_3[for_iter_16][for_iter_12]; 
            double memref_load_18 = func_arg_4[for_iter_16][for_iter_14]; 
            double arith_mulf_19 = (memref_load_17 * memref_load_18); 
            double memref_load_20 = func_arg_4[for_iter_12][for_iter_14]; 
            double arith_addf_21 = (memref_load_20 + arith_mulf_19); 
            func_arg_4[for_iter_12][for_iter_14] = arith_addf_21; 
          }
          double memref_load_22 = func_arg_4[for_iter_12][for_iter_14]; 
          double arith_mulf_23 = (func_arg_2 * memref_load_22); 
          func_arg_4[for_iter_12][for_iter_14] = arith_mulf_23; 
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
