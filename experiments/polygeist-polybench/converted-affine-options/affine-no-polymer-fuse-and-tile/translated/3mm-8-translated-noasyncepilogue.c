#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 20; 
  int arith_const_13 = 16; 
  int arith_const_14 = 24; 
  int arith_const_15 = 1; 
  int arith_const_16 = 22; 
  int arith_const_17 = 32; 
  int arith_const_18 = 18; 
  int arith_const_19 = 0; 
  double arith_const_20 = 0.000000; 
  double* memref_alloc_21; 
  double* memref_alloc_22; 
  for (int for_iter_23 = arith_const_19; for_iter_23 < arith_const_18; for_iter_23 += arith_const_17) {
    for (int for_iter_24 = arith_const_19; for_iter_24 < arith_const_16; for_iter_24 += arith_const_17) {
      int arith_addi_25 = (for_iter_23 + arith_const_18); 
      for (int for_iter_26 = for_iter_23; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_15) {
        int arith_addi_27 = (for_iter_24 + arith_const_16); 
        for (int for_iter_28 = for_iter_24; for_iter_28 < arith_addi_27; for_iter_28 += arith_const_15) {
          func_arg_8[for_iter_26][for_iter_28] = arith_const_20; 
          for (int for_iter_29 = arith_const_19; for_iter_29 < arith_const_14; for_iter_29 += arith_const_15) {
            double memref_load_30 = func_arg_9[for_iter_26][for_iter_29]; 
            double memref_load_31 = func_arg_10[for_iter_29][for_iter_28]; 
            double arith_mulf_32 = (memref_load_30 * memref_load_31); 
            double memref_load_33 = func_arg_8[for_iter_26][for_iter_28]; 
            double arith_addf_34 = (memref_load_33 + arith_mulf_32); 
            func_arg_8[for_iter_26][for_iter_28] = arith_addf_34; 
          }
        }
      }
    }
  }
  for (int for_iter_35 = arith_const_19; for_iter_35 < arith_const_13; for_iter_35 += arith_const_17) {
    int arith_addi_36 = (for_iter_35 + arith_const_13); 
    for (int for_iter_37 = for_iter_35; for_iter_37 < arith_addi_36; for_iter_37 += arith_const_15) {
      for (int for_iter_38 = arith_const_19; for_iter_38 < arith_const_18; for_iter_38 += arith_const_15) {
        func_arg_5[for_iter_37][for_iter_38] = arith_const_20; 
        for (int for_iter_39 = arith_const_19; for_iter_39 < arith_const_12; for_iter_39 += arith_const_15) {
          double memref_load_40 = func_arg_6[for_iter_37][for_iter_39]; 
          double memref_load_41 = func_arg_7[for_iter_39][for_iter_38]; 
          double arith_mulf_42 = (memref_load_40 * memref_load_41); 
          double memref_load_43 = func_arg_5[for_iter_37][for_iter_38]; 
          double arith_addf_44 = (memref_load_43 + arith_mulf_42); 
          func_arg_5[for_iter_37][for_iter_38] = arith_addf_44; 
        }
      }
      for (int for_iter_45 = arith_const_19; for_iter_45 < arith_const_16; for_iter_45 += arith_const_15) {
        func_arg_11[for_iter_37][for_iter_45] = arith_const_20; 
        for (int for_iter_46 = arith_const_19; for_iter_46 < arith_const_18; for_iter_46 += arith_const_15) {
          memref_alloc_21[arith_const_19][arith_const_19] = arith_const_20; 
          for (int for_iter_47 = arith_const_19; for_iter_47 < arith_const_12; for_iter_47 += arith_const_15) {
            double memref_load_48 = func_arg_6[for_iter_37][for_iter_47]; 
            double memref_load_49 = func_arg_7[for_iter_47][for_iter_46]; 
            double arith_mulf_50 = (memref_load_48 * memref_load_49); 
            double memref_load_51 = memref_alloc_21[arith_const_19][arith_const_19]; 
            double arith_addf_52 = (memref_load_51 + arith_mulf_50); 
            memref_alloc_21[arith_const_19][arith_const_19] = arith_addf_52; 
          }
          memref_alloc_22[arith_const_19][arith_const_19] = arith_const_20; 
          for (int for_iter_53 = arith_const_19; for_iter_53 < arith_const_14; for_iter_53 += arith_const_15) {
            double memref_load_54 = func_arg_9[for_iter_46][for_iter_53]; 
            double memref_load_55 = func_arg_10[for_iter_53][for_iter_45]; 
            double arith_mulf_56 = (memref_load_54 * memref_load_55); 
            double memref_load_57 = memref_alloc_22[arith_const_19][arith_const_19]; 
            double arith_addf_58 = (memref_load_57 + arith_mulf_56); 
            memref_alloc_22[arith_const_19][arith_const_19] = arith_addf_58; 
          }
          double memref_load_59 = memref_alloc_21[arith_const_19][arith_const_19]; 
          double memref_load_60 = memref_alloc_22[arith_const_19][arith_const_19]; 
          double arith_mulf_61 = (memref_load_59 * memref_load_60); 
          double memref_load_62 = func_arg_11[for_iter_37][for_iter_45]; 
          double arith_addf_63 = (memref_load_62 + arith_mulf_61); 
          func_arg_11[for_iter_37][for_iter_45] = arith_addf_63; 
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
