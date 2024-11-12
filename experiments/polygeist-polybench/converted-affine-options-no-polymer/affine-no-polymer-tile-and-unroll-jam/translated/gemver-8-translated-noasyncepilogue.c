#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 1; 
  int arith_const_13 = 0; 
  int arith_const_14 = 40; 
  int arith_const_15 = 32; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    for (int for_iter_17 = arith_const_13; for_iter_17 < arith_const_14; for_iter_17 += arith_const_15) {
      int arith_addi_18 = (for_iter_16 + arith_const_15); 
      int arith_minsi_19 = min(arith_addi_18, arith_const_14); 
      for (int for_iter_20 = for_iter_16; for_iter_20 < arith_minsi_19; for_iter_20 += arith_const_12) {
        int arith_addi_21 = (for_iter_17 + arith_const_15); 
        int arith_minsi_22 = min(arith_addi_21, arith_const_14); 
        for (int for_iter_23 = for_iter_17; for_iter_23 < arith_minsi_22; for_iter_23 += arith_const_12) {
          double memref_load_24 = func_arg_3[for_iter_20][for_iter_23]; 
          double memref_load_25 = func_arg_4[for_iter_20]; 
          double memref_load_26 = func_arg_5[for_iter_23]; 
          double arith_mulf_27 = (memref_load_25 * memref_load_26); 
          double arith_addf_28 = (memref_load_24 + arith_mulf_27); 
          double memref_load_29 = func_arg_6[for_iter_20]; 
          double memref_load_30 = func_arg_7[for_iter_23]; 
          double arith_mulf_31 = (memref_load_29 * memref_load_30); 
          double arith_addf_32 = (arith_addf_28 + arith_mulf_31); 
          func_arg_3[for_iter_20][for_iter_23] = arith_addf_32; 
        }
      }
    }
  }
  for (int for_iter_33 = arith_const_13; for_iter_33 < arith_const_14; for_iter_33 += arith_const_15) {
    for (int for_iter_34 = arith_const_13; for_iter_34 < arith_const_14; for_iter_34 += arith_const_15) {
      int arith_addi_35 = (for_iter_33 + arith_const_15); 
      int arith_minsi_36 = min(arith_addi_35, arith_const_14); 
      for (int for_iter_37 = for_iter_33; for_iter_37 < arith_minsi_36; for_iter_37 += arith_const_12) {
        int arith_addi_38 = (for_iter_34 + arith_const_15); 
        int arith_minsi_39 = min(arith_addi_38, arith_const_14); 
        for (int for_iter_40 = for_iter_34; for_iter_40 < arith_minsi_39; for_iter_40 += arith_const_12) {
          double memref_load_41 = func_arg_9[for_iter_37]; 
          double memref_load_42 = func_arg_3[for_iter_40][for_iter_37]; 
          double arith_mulf_43 = (func_arg_2 * memref_load_42); 
          double memref_load_44 = func_arg_10[for_iter_40]; 
          double arith_mulf_45 = (arith_mulf_43 * memref_load_44); 
          double arith_addf_46 = (memref_load_41 + arith_mulf_45); 
          func_arg_9[for_iter_37] = arith_addf_46; 
        }
      }
    }
  }
  for (int for_iter_47 = arith_const_13; for_iter_47 < arith_const_14; for_iter_47 += arith_const_15) {
    int arith_addi_48 = (for_iter_47 + arith_const_15); 
    int arith_minsi_49 = min(arith_addi_48, arith_const_14); 
    for (int for_iter_50 = for_iter_47; for_iter_50 < arith_minsi_49; for_iter_50 += arith_const_12) {
      double memref_load_51 = func_arg_9[for_iter_50]; 
      double memref_load_52 = func_arg_11[for_iter_50]; 
      double arith_addf_53 = (memref_load_51 + memref_load_52); 
      func_arg_9[for_iter_50] = arith_addf_53; 
    }
  }
  for (int for_iter_54 = arith_const_13; for_iter_54 < arith_const_14; for_iter_54 += arith_const_15) {
    for (int for_iter_55 = arith_const_13; for_iter_55 < arith_const_14; for_iter_55 += arith_const_15) {
      int arith_addi_56 = (for_iter_54 + arith_const_15); 
      int arith_minsi_57 = min(arith_addi_56, arith_const_14); 
      for (int for_iter_58 = for_iter_54; for_iter_58 < arith_minsi_57; for_iter_58 += arith_const_12) {
        int arith_addi_59 = (for_iter_55 + arith_const_15); 
        int arith_minsi_60 = min(arith_addi_59, arith_const_14); 
        for (int for_iter_61 = for_iter_55; for_iter_61 < arith_minsi_60; for_iter_61 += arith_const_12) {
          double memref_load_62 = func_arg_8[for_iter_58]; 
          double memref_load_63 = func_arg_3[for_iter_58][for_iter_61]; 
          double arith_mulf_64 = (func_arg_1 * memref_load_63); 
          double memref_load_65 = func_arg_9[for_iter_61]; 
          double arith_mulf_66 = (arith_mulf_64 * memref_load_65); 
          double arith_addf_67 = (memref_load_62 + arith_mulf_66); 
          func_arg_8[for_iter_58] = arith_addf_67; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
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
