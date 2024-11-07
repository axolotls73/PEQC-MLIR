#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 24; 
  int arith_const_13 = 22; 
  int arith_const_14 = 20; 
  int arith_const_15 = 18; 
  double arith_const_16 = 0.000000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 16; 
  int arith_const_19 = 1; 
  for (int for_iter_20 = arith_const_17; for_iter_20 < arith_const_18; for_iter_20 += arith_const_19) {
    for (int for_iter_21 = arith_const_17; for_iter_21 < arith_const_15; for_iter_21 += arith_const_19) {
      int arith_addi_22 = (for_iter_20 + arith_const_19); 
      for (int for_iter_23 = for_iter_20; for_iter_23 < arith_addi_22; for_iter_23 += arith_const_19) {
        int arith_addi_24 = (for_iter_21 + arith_const_19); 
        for (int for_iter_25 = for_iter_21; for_iter_25 < arith_addi_24; for_iter_25 += arith_const_19) {
          func_arg_5[for_iter_23][for_iter_25] = arith_const_16; 
          for (int for_iter_26 = arith_const_17; for_iter_26 < arith_const_14; for_iter_26 += arith_const_19) {
            double memref_load_27 = func_arg_6[for_iter_23][for_iter_26]; 
            double memref_load_28 = func_arg_7[for_iter_26][for_iter_25]; 
            double arith_mulf_29 = (memref_load_27 * memref_load_28); 
            double memref_load_30 = func_arg_5[for_iter_23][for_iter_25]; 
            double arith_addf_31 = (memref_load_30 + arith_mulf_29); 
            func_arg_5[for_iter_23][for_iter_25] = arith_addf_31; 
          }
        }
      }
    }
  }
  for (int for_iter_32 = arith_const_17; for_iter_32 < arith_const_15; for_iter_32 += arith_const_19) {
    for (int for_iter_33 = arith_const_17; for_iter_33 < arith_const_13; for_iter_33 += arith_const_19) {
      int arith_addi_34 = (for_iter_32 + arith_const_19); 
      for (int for_iter_35 = for_iter_32; for_iter_35 < arith_addi_34; for_iter_35 += arith_const_19) {
        int arith_addi_36 = (for_iter_33 + arith_const_19); 
        for (int for_iter_37 = for_iter_33; for_iter_37 < arith_addi_36; for_iter_37 += arith_const_19) {
          func_arg_8[for_iter_35][for_iter_37] = arith_const_16; 
          for (int for_iter_38 = arith_const_17; for_iter_38 < arith_const_12; for_iter_38 += arith_const_19) {
            double memref_load_39 = func_arg_9[for_iter_35][for_iter_38]; 
            double memref_load_40 = func_arg_10[for_iter_38][for_iter_37]; 
            double arith_mulf_41 = (memref_load_39 * memref_load_40); 
            double memref_load_42 = func_arg_8[for_iter_35][for_iter_37]; 
            double arith_addf_43 = (memref_load_42 + arith_mulf_41); 
            func_arg_8[for_iter_35][for_iter_37] = arith_addf_43; 
          }
        }
      }
    }
  }
  for (int for_iter_44 = arith_const_17; for_iter_44 < arith_const_18; for_iter_44 += arith_const_19) {
    for (int for_iter_45 = arith_const_17; for_iter_45 < arith_const_13; for_iter_45 += arith_const_19) {
      int arith_addi_46 = (for_iter_44 + arith_const_19); 
      for (int for_iter_47 = for_iter_44; for_iter_47 < arith_addi_46; for_iter_47 += arith_const_19) {
        int arith_addi_48 = (for_iter_45 + arith_const_19); 
        for (int for_iter_49 = for_iter_45; for_iter_49 < arith_addi_48; for_iter_49 += arith_const_19) {
          func_arg_11[for_iter_47][for_iter_49] = arith_const_16; 
          for (int for_iter_50 = arith_const_17; for_iter_50 < arith_const_15; for_iter_50 += arith_const_19) {
            double memref_load_51 = func_arg_5[for_iter_47][for_iter_50]; 
            double memref_load_52 = func_arg_8[for_iter_50][for_iter_49]; 
            double arith_mulf_53 = (memref_load_51 * memref_load_52); 
            double memref_load_54 = func_arg_11[for_iter_47][for_iter_49]; 
            double arith_addf_55 = (memref_load_54 + arith_mulf_53); 
            func_arg_11[for_iter_47][for_iter_49] = arith_addf_55; 
          }
        }
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
  int nl;
  int nm;
  double* E;
  double* A;
  double* B;
  double* F;
  double* C;
  double* D;
  double* G;


  kernel_3mm(ni, nj, nk, nl, nm, E, A, B, F, C, D, G);

}

#pragma pocc-region-end
