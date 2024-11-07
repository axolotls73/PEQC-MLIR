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
    int arith_addi_11 = (for_iter_10 + arith_const_9); 
    for (int for_iter_12 = for_iter_10; for_iter_12 < arith_addi_11; for_iter_12 += arith_const_9) {
      for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_5; for_iter_13 += arith_const_9) {
        int arith_addi_14 = (for_iter_13 + arith_const_4); 
        double memref_load_15 = func_arg_2[arith_addi_14]; 
        double memref_load_16 = func_arg_2[for_iter_13]; 
        double arith_addf_17 = (memref_load_15 + memref_load_16); 
        int arith_addi_18 = (for_iter_13 + arith_const_9); 
        double memref_load_19 = func_arg_2[arith_addi_18]; 
        double arith_addf_20 = (arith_addf_17 + memref_load_19); 
        double arith_mulf_21 = (arith_addf_20 * arith_const_6); 
        func_arg_3[for_iter_13] = arith_mulf_21; 
      }
      for (int for_iter_22 = arith_const_9; for_iter_22 < arith_const_5; for_iter_22 += arith_const_9) {
        int arith_addi_23 = (for_iter_22 + arith_const_4); 
        double memref_load_24 = func_arg_3[arith_addi_23]; 
        double memref_load_25 = func_arg_3[for_iter_22]; 
        double arith_addf_26 = (memref_load_24 + memref_load_25); 
        int arith_addi_27 = (for_iter_22 + arith_const_9); 
        double memref_load_28 = func_arg_3[arith_addi_27]; 
        double arith_addf_29 = (arith_addf_26 + memref_load_28); 
        double arith_mulf_30 = (arith_addf_29 * arith_const_6); 
        func_arg_2[for_iter_22] = arith_mulf_30; 
      }
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


  kernel_jacobi_1d(tsteps, n, A, B);

}

#pragma pocc-region-end
