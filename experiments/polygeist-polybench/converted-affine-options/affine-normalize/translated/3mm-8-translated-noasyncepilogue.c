#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 32; 
  int arith_const_13 = 9; 
  int arith_const_14 = -1; 
  int arith_const_15 = -19; 
  int arith_const_16 = 19; 
  int arith_const_17 = 13; 
  int arith_const_18 = 20; 
  int arith_const_19 = 24; 
  int arith_const_20 = 18; 
  int arith_const_21 = 2; 
  int arith_const_22 = 22; 
  double arith_const_23 = 0.000000; 
  int arith_const_24 = 0; 
  int arith_const_25 = 16; 
  int arith_const_26 = 1; 
  for (int for_iter_27 = arith_const_24; for_iter_27 < arith_const_25; for_iter_27 += arith_const_26) {
    for (int for_iter_28 = arith_const_24; for_iter_28 < arith_const_22; for_iter_28 += arith_const_26) {
      func_arg_11[for_iter_27][for_iter_28] = arith_const_23; 
      func_arg_8[for_iter_27][for_iter_28] = arith_const_23; 
    }
  }
  for (int for_iter_29 = arith_const_24; for_iter_29 < arith_const_21; for_iter_29 += arith_const_26) {
    int arith_addi_30 = (for_iter_29 + arith_const_25); 
    for (int for_iter_31 = arith_const_24; for_iter_31 < arith_const_22; for_iter_31 += arith_const_26) {
      func_arg_8[arith_addi_30][for_iter_31] = arith_const_23; 
    }
  }
  for (int for_iter_32 = arith_const_24; for_iter_32 < arith_const_20; for_iter_32 += arith_const_26) {
    for (int for_iter_33 = arith_const_24; for_iter_33 < arith_const_19; for_iter_33 += arith_const_26) {
      for (int for_iter_34 = arith_const_24; for_iter_34 < arith_const_22; for_iter_34 += arith_const_26) {
        double memref_load_35 = func_arg_8[for_iter_32][for_iter_34]; 
        double memref_load_36 = func_arg_9[for_iter_32][for_iter_33]; 
        double memref_load_37 = func_arg_10[for_iter_33][for_iter_34]; 
        double arith_mulf_38 = (memref_load_36 * memref_load_37); 
        double arith_addf_39 = (memref_load_35 + arith_mulf_38); 
        func_arg_8[for_iter_32][for_iter_34] = arith_addf_39; 
      }
    }
  }
  for (int for_iter_40 = arith_const_24; for_iter_40 < arith_const_25; for_iter_40 += arith_const_26) {
    for (int for_iter_41 = arith_const_24; for_iter_41 < arith_const_20; for_iter_41 += arith_const_26) {
      func_arg_5[for_iter_40][for_iter_41] = arith_const_23; 
    }
  }
  for (int for_iter_42 = arith_const_24; for_iter_42 < arith_const_21; for_iter_42 += arith_const_26) {
    int arith_cmpi_43 = ((for_iter_42 == arith_const_24) ? 1 : 0); 
    if (arith_cmpi_43) {
      for (int for_iter_44 = arith_const_24; for_iter_44 < arith_const_25; for_iter_44 += arith_const_26) {
        for (int for_iter_45 = arith_const_24; for_iter_45 < arith_const_20; for_iter_45 += arith_const_26) {
          for (int for_iter_46 = arith_const_24; for_iter_46 < arith_const_18; for_iter_46 += arith_const_26) {
            double memref_load_47 = func_arg_5[for_iter_44][for_iter_45]; 
            double memref_load_48 = func_arg_6[for_iter_44][for_iter_46]; 
            double memref_load_49 = func_arg_7[for_iter_46][for_iter_45]; 
            double arith_mulf_50 = (memref_load_48 * memref_load_49); 
            double arith_addf_51 = (memref_load_47 + arith_mulf_50); 
            func_arg_5[for_iter_44][for_iter_45] = arith_addf_51; 
          }
          for (int for_iter_52 = arith_const_24; for_iter_52 < arith_const_17; for_iter_52 += arith_const_26) {
            int arith_addi_53 = (for_iter_52 + arith_const_16); 
            int arith_addi_54 = (arith_addi_53 + arith_const_15); 
            double memref_load_55 = func_arg_11[for_iter_44][arith_addi_54]; 
            double memref_load_56 = func_arg_5[for_iter_44][for_iter_45]; 
            int arith_addi_57 = (arith_addi_53 + arith_const_15); 
            double memref_load_58 = func_arg_8[for_iter_45][arith_addi_57]; 
            double arith_mulf_59 = (memref_load_56 * memref_load_58); 
            double arith_addf_60 = (memref_load_55 + arith_mulf_59); 
            int arith_addi_61 = (arith_addi_53 + arith_const_15); 
            func_arg_11[for_iter_44][arith_addi_61] = arith_addf_60; 
          }
        }
      }
    }
    int arith_addi_62 = (for_iter_42 + arith_const_14); 
    int arith_cmpi_63 = ((arith_addi_62 == arith_const_24) ? 1 : 0); 
    if (arith_cmpi_63) {
      for (int for_iter_64 = arith_const_24; for_iter_64 < arith_const_25; for_iter_64 += arith_const_26) {
        for (int for_iter_65 = arith_const_24; for_iter_65 < arith_const_20; for_iter_65 += arith_const_26) {
          for (int for_iter_66 = arith_const_24; for_iter_66 < arith_const_13; for_iter_66 += arith_const_26) {
            int arith_addi_67 = (for_iter_66 + arith_const_12); 
            int arith_addi_68 = (arith_addi_67 + arith_const_15); 
            double memref_load_69 = func_arg_11[for_iter_64][arith_addi_68]; 
            double memref_load_70 = func_arg_5[for_iter_64][for_iter_65]; 
            int arith_addi_71 = (arith_addi_67 + arith_const_15); 
            double memref_load_72 = func_arg_8[for_iter_65][arith_addi_71]; 
            double arith_mulf_73 = (memref_load_70 * memref_load_72); 
            double arith_addf_74 = (memref_load_69 + arith_mulf_73); 
            int arith_addi_75 = (arith_addi_67 + arith_const_15); 
            func_arg_11[for_iter_64][arith_addi_75] = arith_addf_74; 
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
