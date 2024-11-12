#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_jacobi_1d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = -1; 
  int arith_const_5 = 29; 
  int arith_const_6 = 1; 
  double arith_const_7 = 0.333330; 
  int arith_const_8 = 0; 
  int arith_const_9 = 20; 
  int arith_const_10 = 32; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    int arith_addi_12 = (for_iter_11 + arith_const_9); 
    for (int for_iter_13 = for_iter_11; for_iter_13 < arith_addi_12; for_iter_13 += arith_const_6) {
      for (int for_iter_14 = arith_const_6; for_iter_14 < arith_const_5; for_iter_14 += arith_const_6) {
        int arith_addi_15 = (for_iter_14 + arith_const_4); 
        double memref_load_16 = func_arg_2[arith_addi_15]; 
        double memref_load_17 = func_arg_2[for_iter_14]; 
        double arith_addf_18 = (memref_load_16 + memref_load_17); 
        int arith_addi_19 = (for_iter_14 + arith_const_6); 
        double memref_load_20 = func_arg_2[arith_addi_19]; 
        double arith_addf_21 = (arith_addf_18 + memref_load_20); 
        double arith_mulf_22 = (arith_addf_21 * arith_const_7); 
        func_arg_3[for_iter_14] = arith_mulf_22; 
      }
      for (int for_iter_23 = arith_const_6; for_iter_23 < arith_const_5; for_iter_23 += arith_const_6) {
        int arith_addi_24 = (for_iter_23 + arith_const_4); 
        double memref_load_25 = func_arg_3[arith_addi_24]; 
        double memref_load_26 = func_arg_3[for_iter_23]; 
        double arith_addf_27 = (memref_load_25 + memref_load_26); 
        int arith_addi_28 = (for_iter_23 + arith_const_6); 
        double memref_load_29 = func_arg_3[arith_addi_28]; 
        double arith_addf_30 = (arith_addf_27 + memref_load_29); 
        double arith_mulf_31 = (arith_addf_30 * arith_const_7); 
        func_arg_2[for_iter_23] = arith_mulf_31; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;


  kernel_jacobi_1d(tsteps, n, A, B);

}

#pragma pocc-region-end
