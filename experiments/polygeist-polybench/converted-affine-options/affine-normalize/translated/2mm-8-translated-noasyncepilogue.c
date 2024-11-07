#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 32; 
  int arith_const_12 = 13; 
  int arith_const_13 = -1; 
  int arith_const_14 = -21; 
  int arith_const_15 = 21; 
  int arith_const_16 = 11; 
  int arith_const_17 = 22; 
  int arith_const_18 = 2; 
  int arith_const_19 = 6; 
  int arith_const_20 = 18; 
  double arith_const_21 = 0.000000; 
  int arith_const_22 = 0; 
  int arith_const_23 = 16; 
  int arith_const_24 = 1; 
  for (int for_iter_25 = arith_const_22; for_iter_25 < arith_const_23; for_iter_25 += arith_const_24) {
    for (int for_iter_26 = arith_const_22; for_iter_26 < arith_const_20; for_iter_26 += arith_const_24) {
      double memref_load_27 = func_arg_10[for_iter_25][for_iter_26]; 
      double arith_mulf_28 = (memref_load_27 * func_arg_5); 
      func_arg_10[for_iter_25][for_iter_26] = arith_mulf_28; 
      func_arg_6[for_iter_25][for_iter_26] = arith_const_21; 
    }
    for (int for_iter_29 = arith_const_22; for_iter_29 < arith_const_19; for_iter_29 += arith_const_24) {
      int arith_addi_30 = (for_iter_29 + arith_const_20); 
      double memref_load_31 = func_arg_10[for_iter_25][arith_addi_30]; 
      double arith_mulf_32 = (memref_load_31 * func_arg_5); 
      func_arg_10[for_iter_25][arith_addi_30] = arith_mulf_32; 
    }
  }
  for (int for_iter_33 = arith_const_22; for_iter_33 < arith_const_18; for_iter_33 += arith_const_24) {
    int arith_cmpi_34 = ((for_iter_33 == arith_const_22) ? 1 : 0); 
    if (arith_cmpi_34) {
      for (int for_iter_35 = arith_const_22; for_iter_35 < arith_const_23; for_iter_35 += arith_const_24) {
        for (int for_iter_36 = arith_const_22; for_iter_36 < arith_const_20; for_iter_36 += arith_const_24) {
          for (int for_iter_37 = arith_const_22; for_iter_37 < arith_const_17; for_iter_37 += arith_const_24) {
            double memref_load_38 = func_arg_6[for_iter_35][for_iter_36]; 
            double memref_load_39 = func_arg_7[for_iter_35][for_iter_37]; 
            double arith_mulf_40 = (func_arg_4 * memref_load_39); 
            double memref_load_41 = func_arg_8[for_iter_37][for_iter_36]; 
            double arith_mulf_42 = (arith_mulf_40 * memref_load_41); 
            double arith_addf_43 = (memref_load_38 + arith_mulf_42); 
            func_arg_6[for_iter_35][for_iter_36] = arith_addf_43; 
          }
          for (int for_iter_44 = arith_const_22; for_iter_44 < arith_const_16; for_iter_44 += arith_const_24) {
            int arith_addi_45 = (for_iter_44 + arith_const_15); 
            int arith_addi_46 = (arith_addi_45 + arith_const_14); 
            double memref_load_47 = func_arg_10[for_iter_35][arith_addi_46]; 
            double memref_load_48 = func_arg_6[for_iter_35][for_iter_36]; 
            int arith_addi_49 = (arith_addi_45 + arith_const_14); 
            double memref_load_50 = func_arg_9[for_iter_36][arith_addi_49]; 
            double arith_mulf_51 = (memref_load_48 * memref_load_50); 
            double arith_addf_52 = (memref_load_47 + arith_mulf_51); 
            int arith_addi_53 = (arith_addi_45 + arith_const_14); 
            func_arg_10[for_iter_35][arith_addi_53] = arith_addf_52; 
          }
        }
      }
    }
    int arith_addi_54 = (for_iter_33 + arith_const_13); 
    int arith_cmpi_55 = ((arith_addi_54 == arith_const_22) ? 1 : 0); 
    if (arith_cmpi_55) {
      for (int for_iter_56 = arith_const_22; for_iter_56 < arith_const_23; for_iter_56 += arith_const_24) {
        for (int for_iter_57 = arith_const_22; for_iter_57 < arith_const_20; for_iter_57 += arith_const_24) {
          for (int for_iter_58 = arith_const_22; for_iter_58 < arith_const_12; for_iter_58 += arith_const_24) {
            int arith_addi_59 = (for_iter_58 + arith_const_11); 
            int arith_addi_60 = (arith_addi_59 + arith_const_14); 
            double memref_load_61 = func_arg_10[for_iter_56][arith_addi_60]; 
            double memref_load_62 = func_arg_6[for_iter_56][for_iter_57]; 
            int arith_addi_63 = (arith_addi_59 + arith_const_14); 
            double memref_load_64 = func_arg_9[for_iter_57][arith_addi_63]; 
            double arith_mulf_65 = (memref_load_62 * memref_load_64); 
            double arith_addf_66 = (memref_load_61 + arith_mulf_65); 
            int arith_addi_67 = (arith_addi_59 + arith_const_14); 
            func_arg_10[for_iter_56][arith_addi_67] = arith_addf_66; 
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
  double alpha;
  double beta;
  double* tmp;
  double* A;
  double* B;
  double* C;
  double* D;


  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);

}

#pragma pocc-region-end
