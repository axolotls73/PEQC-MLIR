#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 1; 
  int arith_const_13 = 0; 
  int arith_const_14 = 40; 
  int arith_const_15 = 32; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    int arith_addi_17 = (for_iter_16 + arith_const_15); 
    int arith_minsi_18 = min(arith_addi_17, arith_const_14); 
    for (int for_iter_19 = for_iter_16; for_iter_19 < arith_minsi_18; for_iter_19 += arith_const_12) {
      for (int for_iter_20 = arith_const_13; for_iter_20 < arith_const_14; for_iter_20 += arith_const_12) {
        double memref_load_21 = func_arg_3[for_iter_20][for_iter_19]; 
        double memref_load_22 = func_arg_4[for_iter_20]; 
        double memref_load_23 = func_arg_5[for_iter_19]; 
        double arith_mulf_24 = (memref_load_22 * memref_load_23); 
        double arith_addf_25 = (memref_load_21 + arith_mulf_24); 
        double memref_load_26 = func_arg_6[for_iter_20]; 
        double memref_load_27 = func_arg_7[for_iter_19]; 
        double arith_mulf_28 = (memref_load_26 * memref_load_27); 
        double arith_addf_29 = (arith_addf_25 + arith_mulf_28); 
        func_arg_3[for_iter_20][for_iter_19] = arith_addf_29; 
        double memref_load_30 = func_arg_9[for_iter_19]; 
        double memref_load_31 = func_arg_3[for_iter_20][for_iter_19]; 
        double arith_mulf_32 = (func_arg_2 * memref_load_31); 
        double memref_load_33 = func_arg_10[for_iter_20]; 
        double arith_mulf_34 = (arith_mulf_32 * memref_load_33); 
        double arith_addf_35 = (memref_load_30 + arith_mulf_34); 
        func_arg_9[for_iter_19] = arith_addf_35; 
      }
      double memref_load_36 = func_arg_9[for_iter_19]; 
      double memref_load_37 = func_arg_11[for_iter_19]; 
      double arith_addf_38 = (memref_load_36 + memref_load_37); 
      func_arg_9[for_iter_19] = arith_addf_38; 
    }
  }
  for (int for_iter_39 = arith_const_13; for_iter_39 < arith_const_14; for_iter_39 += arith_const_15) {
    for (int for_iter_40 = arith_const_13; for_iter_40 < arith_const_14; for_iter_40 += arith_const_15) {
      int arith_addi_41 = (for_iter_39 + arith_const_15); 
      int arith_minsi_42 = min(arith_addi_41, arith_const_14); 
      for (int for_iter_43 = for_iter_39; for_iter_43 < arith_minsi_42; for_iter_43 += arith_const_12) {
        int arith_addi_44 = (for_iter_40 + arith_const_15); 
        int arith_minsi_45 = min(arith_addi_44, arith_const_14); 
        for (int for_iter_46 = for_iter_40; for_iter_46 < arith_minsi_45; for_iter_46 += arith_const_12) {
          double memref_load_47 = func_arg_8[for_iter_43]; 
          double memref_load_48 = func_arg_3[for_iter_43][for_iter_46]; 
          double arith_mulf_49 = (func_arg_1 * memref_load_48); 
          double memref_load_50 = func_arg_9[for_iter_46]; 
          double arith_mulf_51 = (arith_mulf_49 * memref_load_50); 
          double arith_addf_52 = (memref_load_47 + arith_mulf_51); 
          func_arg_8[for_iter_43] = arith_addf_52; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* u1;
  double* v1;
  double* u2;
  double* v2;
  double* w;
  double* x;
  double* y;
  double* z;


  kernel_gemver(n, alpha, beta, A, u1, v1, u2, v2, w, x, y, z);

}

#pragma pocc-region-end
