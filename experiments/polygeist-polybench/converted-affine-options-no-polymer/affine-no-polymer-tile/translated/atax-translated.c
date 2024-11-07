#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 38; 
  double arith_const_7 = 0.000000; 
  int arith_const_8 = 0; 
  int arith_const_9 = 42; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    int arith_addi_12 = (for_iter_11 + arith_const_10); 
    for (int for_iter_13 = for_iter_11; for_iter_13 < arith_addi_12; for_iter_13 += arith_const_10) {
      func_arg_4[for_iter_13] = arith_const_7; 
    }
  }
  for (int for_iter_14 = arith_const_8; for_iter_14 < arith_const_6; for_iter_14 += arith_const_10) {
    int arith_addi_15 = (for_iter_14 + arith_const_10); 
    for (int for_iter_16 = for_iter_14; for_iter_16 < arith_addi_15; for_iter_16 += arith_const_10) {
      func_arg_5[for_iter_16] = arith_const_7; 
      for (int for_iter_17 = arith_const_8; for_iter_17 < arith_const_9; for_iter_17 += arith_const_10) {
        double memref_load_18 = func_arg_5[for_iter_16]; 
        double memref_load_19 = func_arg_2[for_iter_16][for_iter_17]; 
        double memref_load_20 = func_arg_3[for_iter_17]; 
        double arith_mulf_21 = (memref_load_19 * memref_load_20); 
        double arith_addf_22 = (memref_load_18 + arith_mulf_21); 
        func_arg_5[for_iter_16] = arith_addf_22; 
      }
      for (int for_iter_23 = arith_const_8; for_iter_23 < arith_const_9; for_iter_23 += arith_const_10) {
        double memref_load_24 = func_arg_4[for_iter_23]; 
        double memref_load_25 = func_arg_2[for_iter_16][for_iter_23]; 
        double memref_load_26 = func_arg_5[for_iter_16]; 
        double arith_mulf_27 = (memref_load_25 * memref_load_26); 
        double arith_addf_28 = (memref_load_24 + arith_mulf_27); 
        func_arg_4[for_iter_23] = arith_addf_28; 
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
  double* x;
  double* y;
  double* tmp;

#pragma peqc async_execute
{
  kernel_atax(m, n, A, x, y, tmp);
}
}

#pragma pocc-region-end
