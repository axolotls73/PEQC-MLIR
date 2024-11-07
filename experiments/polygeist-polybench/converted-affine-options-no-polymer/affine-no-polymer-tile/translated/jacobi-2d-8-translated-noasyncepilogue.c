#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_jacobi_2d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = -1; 
  int arith_const_5 = 29; 
  double arith_const_6 = 0.200000; 
  int arith_const_7 = 0; 
  int arith_const_8 = 20; 
  int arith_const_9 = 1; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    int arith_addi_11 = (for_iter_10 + arith_const_9); 
    for (int for_iter_12 = for_iter_10; for_iter_12 < arith_addi_11; for_iter_12 += arith_const_9) {
      for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_5; for_iter_13 += arith_const_9) {
        for (int for_iter_14 = arith_const_9; for_iter_14 < arith_const_5; for_iter_14 += arith_const_9) {
          double memref_load_15 = func_arg_2[for_iter_13][for_iter_14]; 
          int arith_addi_16 = (for_iter_14 + arith_const_4); 
          double memref_load_17 = func_arg_2[for_iter_13][arith_addi_16]; 
          double arith_addf_18 = (memref_load_15 + memref_load_17); 
          int arith_addi_19 = (for_iter_14 + arith_const_9); 
          double memref_load_20 = func_arg_2[for_iter_13][arith_addi_19]; 
          double arith_addf_21 = (arith_addf_18 + memref_load_20); 
          int arith_addi_22 = (for_iter_13 + arith_const_9); 
          double memref_load_23 = func_arg_2[arith_addi_22][for_iter_14]; 
          double arith_addf_24 = (arith_addf_21 + memref_load_23); 
          int arith_addi_25 = (for_iter_13 + arith_const_4); 
          double memref_load_26 = func_arg_2[arith_addi_25][for_iter_14]; 
          double arith_addf_27 = (arith_addf_24 + memref_load_26); 
          double arith_mulf_28 = (arith_addf_27 * arith_const_6); 
          func_arg_3[for_iter_13][for_iter_14] = arith_mulf_28; 
        }
      }
      for (int for_iter_29 = arith_const_9; for_iter_29 < arith_const_5; for_iter_29 += arith_const_9) {
        for (int for_iter_30 = arith_const_9; for_iter_30 < arith_const_5; for_iter_30 += arith_const_9) {
          double memref_load_31 = func_arg_3[for_iter_29][for_iter_30]; 
          int arith_addi_32 = (for_iter_30 + arith_const_4); 
          double memref_load_33 = func_arg_3[for_iter_29][arith_addi_32]; 
          double arith_addf_34 = (memref_load_31 + memref_load_33); 
          int arith_addi_35 = (for_iter_30 + arith_const_9); 
          double memref_load_36 = func_arg_3[for_iter_29][arith_addi_35]; 
          double arith_addf_37 = (arith_addf_34 + memref_load_36); 
          int arith_addi_38 = (for_iter_29 + arith_const_9); 
          double memref_load_39 = func_arg_3[arith_addi_38][for_iter_30]; 
          double arith_addf_40 = (arith_addf_37 + memref_load_39); 
          int arith_addi_41 = (for_iter_29 + arith_const_4); 
          double memref_load_42 = func_arg_3[arith_addi_41][for_iter_30]; 
          double arith_addf_43 = (arith_addf_40 + memref_load_42); 
          double arith_mulf_44 = (arith_addf_43 * arith_const_6); 
          func_arg_2[for_iter_29][for_iter_30] = arith_mulf_44; 
        }
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
