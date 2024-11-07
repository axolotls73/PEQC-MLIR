#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_jacobi_1d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = -1; 
  int arith_const_5 = 29; 
  double arith_const_6 = 0.333330; 
  int arith_const_7 = 0; 
  int arith_const_8 = 20; 
  int arith_const_9 = 1; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    for (int for_iter_11 = arith_const_9; for_iter_11 < arith_const_5; for_iter_11 += arith_const_9) {
      int arith_addi_12 = (for_iter_11 + arith_const_4); 
      double memref_load_13 = func_arg_2[arith_addi_12]; 
      double memref_load_14 = func_arg_2[for_iter_11]; 
      double arith_addf_15 = (memref_load_13 + memref_load_14); 
      int arith_addi_16 = (for_iter_11 + arith_const_9); 
      double memref_load_17 = func_arg_2[arith_addi_16]; 
      double arith_addf_18 = (arith_addf_15 + memref_load_17); 
      double arith_mulf_19 = (arith_addf_18 * arith_const_6); 
      func_arg_3[for_iter_11] = arith_mulf_19; 
    }
    for (int for_iter_20 = arith_const_9; for_iter_20 < arith_const_5; for_iter_20 += arith_const_9) {
      int arith_addi_21 = (for_iter_20 + arith_const_4); 
      double memref_load_22 = func_arg_3[arith_addi_21]; 
      double memref_load_23 = func_arg_3[for_iter_20]; 
      double arith_addf_24 = (memref_load_22 + memref_load_23); 
      int arith_addi_25 = (for_iter_20 + arith_const_9); 
      double memref_load_26 = func_arg_3[arith_addi_25]; 
      double arith_addf_27 = (arith_addf_24 + memref_load_26); 
      double arith_mulf_28 = (arith_addf_27 * arith_const_6); 
      func_arg_2[for_iter_20] = arith_mulf_28; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_jacobi_1d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
