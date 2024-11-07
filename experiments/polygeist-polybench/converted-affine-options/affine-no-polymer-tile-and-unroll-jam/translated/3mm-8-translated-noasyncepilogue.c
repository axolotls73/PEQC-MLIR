#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 24; 
  int arith_const_13 = 22; 
  int arith_const_14 = 20; 
  int arith_const_15 = 1; 
  int arith_const_16 = 18; 
  double arith_const_17 = 0.000000; 
  int arith_const_18 = 0; 
  int arith_const_19 = 16; 
  int arith_const_20 = 32; 
  for (int for_iter_21 = arith_const_18; for_iter_21 < arith_const_19; for_iter_21 += arith_const_20) {
    for (int for_iter_22 = arith_const_18; for_iter_22 < arith_const_16; for_iter_22 += arith_const_20) {
      int arith_addi_23 = (for_iter_21 + arith_const_19); 
      for (int for_iter_24 = for_iter_21; for_iter_24 < arith_addi_23; for_iter_24 += arith_const_15) {
        int arith_addi_25 = (for_iter_22 + arith_const_16); 
        for (int for_iter_26 = for_iter_22; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_15) {
          func_arg_5[for_iter_24][for_iter_26] = arith_const_17; 
          for (int for_iter_27 = arith_const_18; for_iter_27 < arith_const_14; for_iter_27 += arith_const_15) {
            double memref_load_28 = func_arg_6[for_iter_24][for_iter_27]; 
            double memref_load_29 = func_arg_7[for_iter_27][for_iter_26]; 
            double arith_mulf_30 = (memref_load_28 * memref_load_29); 
            double memref_load_31 = func_arg_5[for_iter_24][for_iter_26]; 
            double arith_addf_32 = (memref_load_31 + arith_mulf_30); 
            func_arg_5[for_iter_24][for_iter_26] = arith_addf_32; 
          }
        }
      }
    }
  }
  for (int for_iter_33 = arith_const_18; for_iter_33 < arith_const_16; for_iter_33 += arith_const_20) {
    for (int for_iter_34 = arith_const_18; for_iter_34 < arith_const_13; for_iter_34 += arith_const_20) {
      int arith_addi_35 = (for_iter_33 + arith_const_16); 
      for (int for_iter_36 = for_iter_33; for_iter_36 < arith_addi_35; for_iter_36 += arith_const_15) {
        int arith_addi_37 = (for_iter_34 + arith_const_13); 
        for (int for_iter_38 = for_iter_34; for_iter_38 < arith_addi_37; for_iter_38 += arith_const_15) {
          func_arg_8[for_iter_36][for_iter_38] = arith_const_17; 
          for (int for_iter_39 = arith_const_18; for_iter_39 < arith_const_12; for_iter_39 += arith_const_15) {
            double memref_load_40 = func_arg_9[for_iter_36][for_iter_39]; 
            double memref_load_41 = func_arg_10[for_iter_39][for_iter_38]; 
            double arith_mulf_42 = (memref_load_40 * memref_load_41); 
            double memref_load_43 = func_arg_8[for_iter_36][for_iter_38]; 
            double arith_addf_44 = (memref_load_43 + arith_mulf_42); 
            func_arg_8[for_iter_36][for_iter_38] = arith_addf_44; 
          }
        }
      }
    }
  }
  for (int for_iter_45 = arith_const_18; for_iter_45 < arith_const_19; for_iter_45 += arith_const_20) {
    for (int for_iter_46 = arith_const_18; for_iter_46 < arith_const_13; for_iter_46 += arith_const_20) {
      int arith_addi_47 = (for_iter_45 + arith_const_19); 
      for (int for_iter_48 = for_iter_45; for_iter_48 < arith_addi_47; for_iter_48 += arith_const_15) {
        int arith_addi_49 = (for_iter_46 + arith_const_13); 
        for (int for_iter_50 = for_iter_46; for_iter_50 < arith_addi_49; for_iter_50 += arith_const_15) {
          func_arg_11[for_iter_48][for_iter_50] = arith_const_17; 
          for (int for_iter_51 = arith_const_18; for_iter_51 < arith_const_16; for_iter_51 += arith_const_15) {
            double memref_load_52 = func_arg_5[for_iter_48][for_iter_51]; 
            double memref_load_53 = func_arg_8[for_iter_51][for_iter_50]; 
            double arith_mulf_54 = (memref_load_52 * memref_load_53); 
            double memref_load_55 = func_arg_11[for_iter_48][for_iter_50]; 
            double arith_addf_56 = (memref_load_55 + arith_mulf_54); 
            func_arg_11[for_iter_48][for_iter_50] = arith_addf_56; 
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
