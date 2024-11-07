#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 1; 
  int arith_const_12 = 25; 
  int arith_const_13 = 0; 
  int arith_const_14 = 20; 
  int arith_const_15 = 4; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    for (int for_iter_17 = arith_const_13; for_iter_17 < arith_const_12; for_iter_17 += arith_const_11) {
      double memref_load_18 = func_arg_5[for_iter_16][for_iter_17]; 
      double arith_mulf_19 = (memref_load_18 * func_arg_4); 
      func_arg_5[for_iter_16][for_iter_17] = arith_mulf_19; 
      int arith_addi_20 = (for_iter_16 + arith_const_11); 
      double memref_load_21 = func_arg_5[arith_addi_20][for_iter_17]; 
      double arith_mulf_22 = (memref_load_21 * func_arg_4); 
      func_arg_5[arith_addi_20][for_iter_17] = arith_mulf_22; 
      int arith_addi_23 = (for_iter_16 + arith_const_10); 
      double memref_load_24 = func_arg_5[arith_addi_23][for_iter_17]; 
      double arith_mulf_25 = (memref_load_24 * func_arg_4); 
      func_arg_5[arith_addi_23][for_iter_17] = arith_mulf_25; 
      int arith_addi_26 = (for_iter_16 + arith_const_9); 
      double memref_load_27 = func_arg_5[arith_addi_26][for_iter_17]; 
      double arith_mulf_28 = (memref_load_27 * func_arg_4); 
      func_arg_5[arith_addi_26][for_iter_17] = arith_mulf_28; 
    }
    for (int for_iter_29 = arith_const_13; for_iter_29 < arith_const_8; for_iter_29 += arith_const_11) {
      for (int for_iter_30 = arith_const_13; for_iter_30 < arith_const_12; for_iter_30 += arith_const_11) {
        double memref_load_31 = func_arg_6[for_iter_16][for_iter_29]; 
        double arith_mulf_32 = (func_arg_3 * memref_load_31); 
        double memref_load_33 = func_arg_7[for_iter_29][for_iter_30]; 
        double arith_mulf_34 = (arith_mulf_32 * memref_load_33); 
        double memref_load_35 = func_arg_5[for_iter_16][for_iter_30]; 
        double arith_addf_36 = (memref_load_35 + arith_mulf_34); 
        func_arg_5[for_iter_16][for_iter_30] = arith_addf_36; 
        int arith_addi_37 = (for_iter_16 + arith_const_11); 
        double memref_load_38 = func_arg_6[arith_addi_37][for_iter_29]; 
        double arith_mulf_39 = (func_arg_3 * memref_load_38); 
        double memref_load_40 = func_arg_7[for_iter_29][for_iter_30]; 
        double arith_mulf_41 = (arith_mulf_39 * memref_load_40); 
        double memref_load_42 = func_arg_5[arith_addi_37][for_iter_30]; 
        double arith_addf_43 = (memref_load_42 + arith_mulf_41); 
        func_arg_5[arith_addi_37][for_iter_30] = arith_addf_43; 
        int arith_addi_44 = (for_iter_16 + arith_const_10); 
        double memref_load_45 = func_arg_6[arith_addi_44][for_iter_29]; 
        double arith_mulf_46 = (func_arg_3 * memref_load_45); 
        double memref_load_47 = func_arg_7[for_iter_29][for_iter_30]; 
        double arith_mulf_48 = (arith_mulf_46 * memref_load_47); 
        double memref_load_49 = func_arg_5[arith_addi_44][for_iter_30]; 
        double arith_addf_50 = (memref_load_49 + arith_mulf_48); 
        func_arg_5[arith_addi_44][for_iter_30] = arith_addf_50; 
        int arith_addi_51 = (for_iter_16 + arith_const_9); 
        double memref_load_52 = func_arg_6[arith_addi_51][for_iter_29]; 
        double arith_mulf_53 = (func_arg_3 * memref_load_52); 
        double memref_load_54 = func_arg_7[for_iter_29][for_iter_30]; 
        double arith_mulf_55 = (arith_mulf_53 * memref_load_54); 
        double memref_load_56 = func_arg_5[arith_addi_51][for_iter_30]; 
        double arith_addf_57 = (memref_load_56 + arith_mulf_55); 
        func_arg_5[arith_addi_51][for_iter_30] = arith_addf_57; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int ni;
  int nj;
  int nk;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_gemm(ni, nj, nk, alpha, beta, C, A, B);

}

#pragma pocc-region-end
