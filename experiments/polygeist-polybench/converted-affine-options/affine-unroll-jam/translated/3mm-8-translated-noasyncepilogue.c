#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 41; 
  int arith_const_13 = -1; 
  int arith_const_14 = -19; 
  int arith_const_15 = 32; 
  int arith_const_16 = 19; 
  int arith_const_17 = 20; 
  int arith_const_18 = 2; 
  int arith_const_19 = 24; 
  int arith_const_20 = 18; 
  int arith_const_21 = 22; 
  double arith_const_22 = 0.000000; 
  int arith_const_23 = 0; 
  int arith_const_24 = 16; 
  int arith_const_25 = 1; 
  for (int for_iter_26 = arith_const_23; for_iter_26 < arith_const_24; for_iter_26 += arith_const_25) {
    for (int for_iter_27 = arith_const_23; for_iter_27 < arith_const_21; for_iter_27 += arith_const_25) {
      func_arg_11[for_iter_26][for_iter_27] = arith_const_22; 
      func_arg_8[for_iter_26][for_iter_27] = arith_const_22; 
    }
  }
  for (int for_iter_28 = arith_const_24; for_iter_28 < arith_const_20; for_iter_28 += arith_const_25) {
    for (int for_iter_29 = arith_const_23; for_iter_29 < arith_const_21; for_iter_29 += arith_const_25) {
      func_arg_8[for_iter_28][for_iter_29] = arith_const_22; 
    }
  }
  for (int for_iter_30 = arith_const_23; for_iter_30 < arith_const_20; for_iter_30 += arith_const_25) {
    for (int for_iter_31 = arith_const_23; for_iter_31 < arith_const_19; for_iter_31 += arith_const_25) {
      for (int for_iter_32 = arith_const_23; for_iter_32 < arith_const_21; for_iter_32 += arith_const_25) {
        double memref_load_33 = func_arg_8[for_iter_30][for_iter_32]; 
        double memref_load_34 = func_arg_9[for_iter_30][for_iter_31]; 
        double memref_load_35 = func_arg_10[for_iter_31][for_iter_32]; 
        double arith_mulf_36 = (memref_load_34 * memref_load_35); 
        double arith_addf_37 = (memref_load_33 + arith_mulf_36); 
        func_arg_8[for_iter_30][for_iter_32] = arith_addf_37; 
      }
    }
  }
  for (int for_iter_38 = arith_const_23; for_iter_38 < arith_const_24; for_iter_38 += arith_const_25) {
    for (int for_iter_39 = arith_const_23; for_iter_39 < arith_const_20; for_iter_39 += arith_const_25) {
      func_arg_5[for_iter_38][for_iter_39] = arith_const_22; 
    }
  }
  for (int for_iter_40 = arith_const_23; for_iter_40 < arith_const_18; for_iter_40 += arith_const_25) {
    int arith_cmpi_41 = (for_iter_40 == arith_const_23); 
    if (arith_cmpi_41) {
      for (int for_iter_42 = arith_const_23; for_iter_42 < arith_const_24; for_iter_42 += arith_const_25) {
        for (int for_iter_43 = arith_const_23; for_iter_43 < arith_const_20; for_iter_43 += arith_const_25) {
          for (int for_iter_44 = arith_const_23; for_iter_44 < arith_const_17; for_iter_44 += arith_const_25) {
            double memref_load_45 = func_arg_5[for_iter_42][for_iter_43]; 
            double memref_load_46 = func_arg_6[for_iter_42][for_iter_44]; 
            double memref_load_47 = func_arg_7[for_iter_44][for_iter_43]; 
            double arith_mulf_48 = (memref_load_46 * memref_load_47); 
            double arith_addf_49 = (memref_load_45 + arith_mulf_48); 
            func_arg_5[for_iter_42][for_iter_43] = arith_addf_49; 
          }
          for (int for_iter_50 = arith_const_16; for_iter_50 < arith_const_15; for_iter_50 += arith_const_25) {
            int arith_addi_51 = (for_iter_50 + arith_const_14); 
            double memref_load_52 = func_arg_11[for_iter_42][arith_addi_51]; 
            double memref_load_53 = func_arg_5[for_iter_42][for_iter_43]; 
            int arith_addi_54 = (for_iter_50 + arith_const_14); 
            double memref_load_55 = func_arg_8[for_iter_43][arith_addi_54]; 
            double arith_mulf_56 = (memref_load_53 * memref_load_55); 
            double arith_addf_57 = (memref_load_52 + arith_mulf_56); 
            int arith_addi_58 = (for_iter_50 + arith_const_14); 
            func_arg_11[for_iter_42][arith_addi_58] = arith_addf_57; 
          }
        }
      }
    }
    int arith_addi_59 = (for_iter_40 + arith_const_13); 
    int arith_cmpi_60 = (arith_addi_59 == arith_const_23); 
    if (arith_cmpi_60) {
      for (int for_iter_61 = arith_const_23; for_iter_61 < arith_const_24; for_iter_61 += arith_const_25) {
        for (int for_iter_62 = arith_const_23; for_iter_62 < arith_const_20; for_iter_62 += arith_const_25) {
          for (int for_iter_63 = arith_const_15; for_iter_63 < arith_const_12; for_iter_63 += arith_const_25) {
            int arith_addi_64 = (for_iter_63 + arith_const_14); 
            double memref_load_65 = func_arg_11[for_iter_61][arith_addi_64]; 
            double memref_load_66 = func_arg_5[for_iter_61][for_iter_62]; 
            int arith_addi_67 = (for_iter_63 + arith_const_14); 
            double memref_load_68 = func_arg_8[for_iter_62][arith_addi_67]; 
            double arith_mulf_69 = (memref_load_66 * memref_load_68); 
            double arith_addf_70 = (memref_load_65 + arith_mulf_69); 
            int arith_addi_71 = (for_iter_63 + arith_const_14); 
            func_arg_11[for_iter_61][arith_addi_71] = arith_addf_70; 
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
