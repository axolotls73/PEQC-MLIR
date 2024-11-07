#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 3; 
  int arith_const_7 = 2; 
  int arith_const_8 = 1; 
  int arith_const_9 = 0; 
  int arith_const_10 = 40; 
  int arith_const_11 = 4; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_10; for_iter_13 += arith_const_8) {
      double memref_load_14 = func_arg_1[for_iter_12]; 
      double memref_load_15 = func_arg_5[for_iter_12][for_iter_13]; 
      double memref_load_16 = func_arg_3[for_iter_13]; 
      double arith_mulf_17 = (memref_load_15 * memref_load_16); 
      double arith_addf_18 = (memref_load_14 + arith_mulf_17); 
      func_arg_1[for_iter_12] = arith_addf_18; 
      int arith_addi_19 = (for_iter_12 + arith_const_8); 
      double memref_load_20 = func_arg_1[arith_addi_19]; 
      double memref_load_21 = func_arg_5[arith_addi_19][for_iter_13]; 
      double memref_load_22 = func_arg_3[for_iter_13]; 
      double arith_mulf_23 = (memref_load_21 * memref_load_22); 
      double arith_addf_24 = (memref_load_20 + arith_mulf_23); 
      func_arg_1[arith_addi_19] = arith_addf_24; 
      int arith_addi_25 = (for_iter_12 + arith_const_7); 
      double memref_load_26 = func_arg_1[arith_addi_25]; 
      double memref_load_27 = func_arg_5[arith_addi_25][for_iter_13]; 
      double memref_load_28 = func_arg_3[for_iter_13]; 
      double arith_mulf_29 = (memref_load_27 * memref_load_28); 
      double arith_addf_30 = (memref_load_26 + arith_mulf_29); 
      func_arg_1[arith_addi_25] = arith_addf_30; 
      int arith_addi_31 = (for_iter_12 + arith_const_6); 
      double memref_load_32 = func_arg_1[arith_addi_31]; 
      double memref_load_33 = func_arg_5[arith_addi_31][for_iter_13]; 
      double memref_load_34 = func_arg_3[for_iter_13]; 
      double arith_mulf_35 = (memref_load_33 * memref_load_34); 
      double arith_addf_36 = (memref_load_32 + arith_mulf_35); 
      func_arg_1[arith_addi_31] = arith_addf_36; 
    }
  }
  for (int for_iter_37 = arith_const_9; for_iter_37 < arith_const_10; for_iter_37 += arith_const_8) {
    for (int for_iter_38 = arith_const_9; for_iter_38 < arith_const_10; for_iter_38 += arith_const_8) {
      double memref_load_39 = func_arg_2[for_iter_37]; 
      double memref_load_40 = func_arg_5[for_iter_38][for_iter_37]; 
      double memref_load_41 = func_arg_4[for_iter_38]; 
      double arith_mulf_42 = (memref_load_40 * memref_load_41); 
      double arith_addf_43 = (memref_load_39 + arith_mulf_42); 
      func_arg_2[for_iter_37] = arith_addf_43; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* x1;
  double* x2;
  double* y_1;
  double* y_2;
  double* A;


  kernel_mvt(n, x1, x2, y_1, y_2, A);

}

#pragma pocc-region-end
