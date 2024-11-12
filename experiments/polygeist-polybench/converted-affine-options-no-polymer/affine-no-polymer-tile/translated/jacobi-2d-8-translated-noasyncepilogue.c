#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_jacobi_2d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = -1; 
  int arith_const_5 = 29; 
  int arith_const_6 = 1; 
  double arith_const_7 = 0.200000; 
  int arith_const_8 = 0; 
  int arith_const_9 = 20; 
  int arith_const_10 = 32; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    int arith_addi_12 = (for_iter_11 + arith_const_9); 
    for (int for_iter_13 = for_iter_11; for_iter_13 < arith_addi_12; for_iter_13 += arith_const_6) {
      for (int for_iter_14 = arith_const_6; for_iter_14 < arith_const_5; for_iter_14 += arith_const_6) {
        for (int for_iter_15 = arith_const_6; for_iter_15 < arith_const_5; for_iter_15 += arith_const_6) {
          double memref_load_16 = func_arg_2[for_iter_14][for_iter_15]; 
          int arith_addi_17 = (for_iter_15 + arith_const_4); 
          double memref_load_18 = func_arg_2[for_iter_14][arith_addi_17]; 
          double arith_addf_19 = (memref_load_16 + memref_load_18); 
          int arith_addi_20 = (for_iter_15 + arith_const_6); 
          double memref_load_21 = func_arg_2[for_iter_14][arith_addi_20]; 
          double arith_addf_22 = (arith_addf_19 + memref_load_21); 
          int arith_addi_23 = (for_iter_14 + arith_const_6); 
          double memref_load_24 = func_arg_2[arith_addi_23][for_iter_15]; 
          double arith_addf_25 = (arith_addf_22 + memref_load_24); 
          int arith_addi_26 = (for_iter_14 + arith_const_4); 
          double memref_load_27 = func_arg_2[arith_addi_26][for_iter_15]; 
          double arith_addf_28 = (arith_addf_25 + memref_load_27); 
          double arith_mulf_29 = (arith_addf_28 * arith_const_7); 
          func_arg_3[for_iter_14][for_iter_15] = arith_mulf_29; 
        }
      }
      for (int for_iter_30 = arith_const_6; for_iter_30 < arith_const_5; for_iter_30 += arith_const_6) {
        for (int for_iter_31 = arith_const_6; for_iter_31 < arith_const_5; for_iter_31 += arith_const_6) {
          double memref_load_32 = func_arg_3[for_iter_30][for_iter_31]; 
          int arith_addi_33 = (for_iter_31 + arith_const_4); 
          double memref_load_34 = func_arg_3[for_iter_30][arith_addi_33]; 
          double arith_addf_35 = (memref_load_32 + memref_load_34); 
          int arith_addi_36 = (for_iter_31 + arith_const_6); 
          double memref_load_37 = func_arg_3[for_iter_30][arith_addi_36]; 
          double arith_addf_38 = (arith_addf_35 + memref_load_37); 
          int arith_addi_39 = (for_iter_30 + arith_const_6); 
          double memref_load_40 = func_arg_3[arith_addi_39][for_iter_31]; 
          double arith_addf_41 = (arith_addf_38 + memref_load_40); 
          int arith_addi_42 = (for_iter_30 + arith_const_4); 
          double memref_load_43 = func_arg_3[arith_addi_42][for_iter_31]; 
          double arith_addf_44 = (arith_addf_41 + memref_load_43); 
          double arith_mulf_45 = (arith_addf_44 * arith_const_7); 
          func_arg_2[for_iter_30][for_iter_31] = arith_mulf_45; 
        }
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


  kernel_jacobi_2d(tsteps, n, A, B);

}

#pragma pocc-region-end
