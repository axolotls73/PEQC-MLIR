#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_jacobi_2d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 2; 
  int arith_const_5 = 28; 
  int arith_const_6 = 1; 
  double arith_const_7 = 0.200000; 
  int arith_const_8 = 0; 
  int arith_const_9 = 20; 
  int arith_const_10 = 32; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    int arith_addi_12 = (for_iter_11 + arith_const_9); 
    for (int for_iter_13 = for_iter_11; for_iter_13 < arith_addi_12; for_iter_13 += arith_const_6) {
      for (int for_iter_14 = arith_const_8; for_iter_14 < arith_const_5; for_iter_14 += arith_const_6) {
        for (int for_iter_15 = arith_const_8; for_iter_15 < arith_const_5; for_iter_15 += arith_const_6) {
          int arith_addi_16 = (for_iter_14 + arith_const_6); 
          int arith_addi_17 = (for_iter_15 + arith_const_6); 
          double memref_load_18 = func_arg_2[arith_addi_16][arith_addi_17]; 
          int arith_addi_19 = (for_iter_14 + arith_const_6); 
          double memref_load_20 = func_arg_2[arith_addi_19][for_iter_15]; 
          double arith_addf_21 = (memref_load_18 + memref_load_20); 
          int arith_addi_22 = (for_iter_14 + arith_const_6); 
          int arith_addi_23 = (for_iter_15 + arith_const_4); 
          double memref_load_24 = func_arg_2[arith_addi_22][arith_addi_23]; 
          double arith_addf_25 = (arith_addf_21 + memref_load_24); 
          int arith_addi_26 = (for_iter_14 + arith_const_4); 
          int arith_addi_27 = (for_iter_15 + arith_const_6); 
          double memref_load_28 = func_arg_2[arith_addi_26][arith_addi_27]; 
          double arith_addf_29 = (arith_addf_25 + memref_load_28); 
          int arith_addi_30 = (for_iter_15 + arith_const_6); 
          double memref_load_31 = func_arg_2[for_iter_14][arith_addi_30]; 
          double arith_addf_32 = (arith_addf_29 + memref_load_31); 
          double arith_mulf_33 = (arith_addf_32 * arith_const_7); 
          int arith_addi_34 = (for_iter_14 + arith_const_6); 
          int arith_addi_35 = (for_iter_15 + arith_const_6); 
          func_arg_3[arith_addi_34][arith_addi_35] = arith_mulf_33; 
        }
      }
      for (int for_iter_36 = arith_const_8; for_iter_36 < arith_const_5; for_iter_36 += arith_const_6) {
        for (int for_iter_37 = arith_const_8; for_iter_37 < arith_const_5; for_iter_37 += arith_const_6) {
          int arith_addi_38 = (for_iter_36 + arith_const_6); 
          int arith_addi_39 = (for_iter_37 + arith_const_6); 
          double memref_load_40 = func_arg_3[arith_addi_38][arith_addi_39]; 
          int arith_addi_41 = (for_iter_36 + arith_const_6); 
          double memref_load_42 = func_arg_3[arith_addi_41][for_iter_37]; 
          double arith_addf_43 = (memref_load_40 + memref_load_42); 
          int arith_addi_44 = (for_iter_36 + arith_const_6); 
          int arith_addi_45 = (for_iter_37 + arith_const_4); 
          double memref_load_46 = func_arg_3[arith_addi_44][arith_addi_45]; 
          double arith_addf_47 = (arith_addf_43 + memref_load_46); 
          int arith_addi_48 = (for_iter_36 + arith_const_4); 
          int arith_addi_49 = (for_iter_37 + arith_const_6); 
          double memref_load_50 = func_arg_3[arith_addi_48][arith_addi_49]; 
          double arith_addf_51 = (arith_addf_47 + memref_load_50); 
          int arith_addi_52 = (for_iter_37 + arith_const_6); 
          double memref_load_53 = func_arg_3[for_iter_36][arith_addi_52]; 
          double arith_addf_54 = (arith_addf_51 + memref_load_53); 
          double arith_mulf_55 = (arith_addf_54 * arith_const_7); 
          int arith_addi_56 = (for_iter_36 + arith_const_6); 
          int arith_addi_57 = (for_iter_37 + arith_const_6); 
          func_arg_2[arith_addi_56][arith_addi_57] = arith_mulf_55; 
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
