#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_jacobi_2d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = -1; 
  int arith_const_5 = 29; 
  double arith_const_6 = 0.200000; 
  int arith_const_7 = 0; 
  int arith_const_8 = 20; 
  int arith_const_9 = 1; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    for (int for_iter_11 = arith_const_9; for_iter_11 < arith_const_5; for_iter_11 += arith_const_9) {
      for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_5; for_iter_12 += arith_const_9) {
        double memref_load_13 = func_arg_2[for_iter_11][for_iter_12]; 
        int arith_addi_14 = (for_iter_12 + arith_const_4); 
        double memref_load_15 = func_arg_2[for_iter_11][arith_addi_14]; 
        double arith_addf_16 = (memref_load_13 + memref_load_15); 
        int arith_addi_17 = (for_iter_12 + arith_const_9); 
        double memref_load_18 = func_arg_2[for_iter_11][arith_addi_17]; 
        double arith_addf_19 = (arith_addf_16 + memref_load_18); 
        int arith_addi_20 = (for_iter_11 + arith_const_9); 
        double memref_load_21 = func_arg_2[arith_addi_20][for_iter_12]; 
        double arith_addf_22 = (arith_addf_19 + memref_load_21); 
        int arith_addi_23 = (for_iter_11 + arith_const_4); 
        double memref_load_24 = func_arg_2[arith_addi_23][for_iter_12]; 
        double arith_addf_25 = (arith_addf_22 + memref_load_24); 
        double arith_mulf_26 = (arith_addf_25 * arith_const_6); 
        func_arg_3[for_iter_11][for_iter_12] = arith_mulf_26; 
      }
    }
    for (int for_iter_27 = arith_const_9; for_iter_27 < arith_const_5; for_iter_27 += arith_const_9) {
      for (int for_iter_28 = arith_const_9; for_iter_28 < arith_const_5; for_iter_28 += arith_const_9) {
        double memref_load_29 = func_arg_3[for_iter_27][for_iter_28]; 
        int arith_addi_30 = (for_iter_28 + arith_const_4); 
        double memref_load_31 = func_arg_3[for_iter_27][arith_addi_30]; 
        double arith_addf_32 = (memref_load_29 + memref_load_31); 
        int arith_addi_33 = (for_iter_28 + arith_const_9); 
        double memref_load_34 = func_arg_3[for_iter_27][arith_addi_33]; 
        double arith_addf_35 = (arith_addf_32 + memref_load_34); 
        int arith_addi_36 = (for_iter_27 + arith_const_9); 
        double memref_load_37 = func_arg_3[arith_addi_36][for_iter_28]; 
        double arith_addf_38 = (arith_addf_35 + memref_load_37); 
        int arith_addi_39 = (for_iter_27 + arith_const_4); 
        double memref_load_40 = func_arg_3[arith_addi_39][for_iter_28]; 
        double arith_addf_41 = (arith_addf_38 + memref_load_40); 
        double arith_mulf_42 = (arith_addf_41 * arith_const_6); 
        func_arg_2[for_iter_27][for_iter_28] = arith_mulf_42; 
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


  kernel_jacobi_2d(tsteps, n, A, B);

}

#pragma pocc-region-end
