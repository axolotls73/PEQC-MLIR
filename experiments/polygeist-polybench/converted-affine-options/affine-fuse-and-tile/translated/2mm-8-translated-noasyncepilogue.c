#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 13; 
  int arith_const_12 = -1; 
  int arith_const_13 = 11; 
  int arith_const_14 = 22; 
  int arith_const_15 = 2; 
  int arith_const_16 = 6; 
  int arith_const_17 = 18; 
  int arith_const_18 = 1; 
  double arith_const_19 = 0.000000; 
  int arith_const_20 = 0; 
  int arith_const_21 = 16; 
  int arith_const_22 = 32; 
  for (int for_iter_23 = arith_const_20; for_iter_23 < arith_const_21; for_iter_23 += arith_const_22) {
    int arith_addi_24 = (for_iter_23 + arith_const_21); 
    for (int for_iter_25 = for_iter_23; for_iter_25 < arith_addi_24; for_iter_25 += arith_const_18) {
      for (int for_iter_26 = arith_const_20; for_iter_26 < arith_const_17; for_iter_26 += arith_const_18) {
        double memref_load_27 = func_arg_10[for_iter_25][for_iter_26]; 
        double arith_mulf_28 = (memref_load_27 * func_arg_5); 
        func_arg_10[for_iter_25][for_iter_26] = arith_mulf_28; 
        func_arg_6[for_iter_25][for_iter_26] = arith_const_19; 
      }
      for (int for_iter_29 = arith_const_20; for_iter_29 < arith_const_16; for_iter_29 += arith_const_18) {
        int arith_addi_30 = (for_iter_29 + arith_const_17); 
        double memref_load_31 = func_arg_10[for_iter_25][arith_addi_30]; 
        double arith_mulf_32 = (memref_load_31 * func_arg_5); 
        int arith_addi_33 = (for_iter_29 + arith_const_17); 
        func_arg_10[for_iter_25][arith_addi_33] = arith_mulf_32; 
      }
    }
  }
  for (int for_iter_34 = arith_const_20; for_iter_34 < arith_const_15; for_iter_34 += arith_const_22) {
    int arith_addi_35 = (for_iter_34 + arith_const_15); 
    for (int for_iter_36 = for_iter_34; for_iter_36 < arith_addi_35; for_iter_36 += arith_const_18) {
      int arith_cmpi_37 = (for_iter_36 == arith_const_20); 
      if (arith_cmpi_37) {
        for (int for_iter_38 = arith_const_20; for_iter_38 < arith_const_21; for_iter_38 += arith_const_18) {
          for (int for_iter_39 = arith_const_20; for_iter_39 < arith_const_17; for_iter_39 += arith_const_18) {
            for (int for_iter_40 = arith_const_20; for_iter_40 < arith_const_14; for_iter_40 += arith_const_18) {
              double memref_load_41 = func_arg_6[for_iter_38][for_iter_39]; 
              double memref_load_42 = func_arg_7[for_iter_38][for_iter_40]; 
              double arith_mulf_43 = (func_arg_4 * memref_load_42); 
              double memref_load_44 = func_arg_8[for_iter_40][for_iter_39]; 
              double arith_mulf_45 = (arith_mulf_43 * memref_load_44); 
              double arith_addf_46 = (memref_load_41 + arith_mulf_45); 
              func_arg_6[for_iter_38][for_iter_39] = arith_addf_46; 
            }
            for (int for_iter_47 = arith_const_20; for_iter_47 < arith_const_13; for_iter_47 += arith_const_18) {
              double memref_load_48 = func_arg_10[for_iter_38][for_iter_47]; 
              double memref_load_49 = func_arg_6[for_iter_38][for_iter_39]; 
              double memref_load_50 = func_arg_9[for_iter_39][for_iter_47]; 
              double arith_mulf_51 = (memref_load_49 * memref_load_50); 
              double arith_addf_52 = (memref_load_48 + arith_mulf_51); 
              func_arg_10[for_iter_38][for_iter_47] = arith_addf_52; 
            }
          }
        }
      }
      int arith_addi_53 = (for_iter_36 + arith_const_12); 
      int arith_cmpi_54 = (arith_addi_53 == arith_const_20); 
      if (arith_cmpi_54) {
        for (int for_iter_55 = arith_const_20; for_iter_55 < arith_const_21; for_iter_55 += arith_const_18) {
          for (int for_iter_56 = arith_const_20; for_iter_56 < arith_const_17; for_iter_56 += arith_const_18) {
            for (int for_iter_57 = arith_const_20; for_iter_57 < arith_const_11; for_iter_57 += arith_const_18) {
              int arith_addi_58 = (for_iter_57 + arith_const_13); 
              double memref_load_59 = func_arg_10[for_iter_55][arith_addi_58]; 
              double memref_load_60 = func_arg_6[for_iter_55][for_iter_56]; 
              int arith_addi_61 = (for_iter_57 + arith_const_13); 
              double memref_load_62 = func_arg_9[for_iter_56][arith_addi_61]; 
              double arith_mulf_63 = (memref_load_60 * memref_load_62); 
              double arith_addf_64 = (memref_load_59 + arith_mulf_63); 
              int arith_addi_65 = (for_iter_57 + arith_const_13); 
              func_arg_10[for_iter_55][arith_addi_65] = arith_addf_64; 
            }
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
