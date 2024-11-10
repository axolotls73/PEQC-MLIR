#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 41; 
  int arith_const_13 = -1; 
  int arith_const_14 = -19; 
  int arith_const_15 = 19; 
  int arith_const_16 = 20; 
  int arith_const_17 = 24; 
  int arith_const_18 = 2; 
  int arith_const_19 = 18; 
  int arith_const_20 = 1; 
  int arith_const_21 = 22; 
  double arith_const_22 = 0.000000; 
  int arith_const_23 = 0; 
  int arith_const_24 = 16; 
  int arith_const_25 = 32; 
  for (int for_iter_26 = arith_const_23; for_iter_26 < arith_const_24; for_iter_26 += arith_const_25) {
    for (int for_iter_27 = arith_const_23; for_iter_27 < arith_const_21; for_iter_27 += arith_const_25) {
      int arith_addi_28 = (for_iter_26 + arith_const_24); 
      for (int for_iter_29 = for_iter_26; for_iter_29 < arith_addi_28; for_iter_29 += arith_const_20) {
        int arith_addi_30 = (for_iter_27 + arith_const_21); 
        for (int for_iter_31 = for_iter_27; for_iter_31 < arith_addi_30; for_iter_31 += arith_const_20) {
          func_arg_11[for_iter_29][for_iter_31] = arith_const_22; 
          func_arg_8[for_iter_29][for_iter_31] = arith_const_22; 
        }
      }
    }
  }
  for (int for_iter_32 = arith_const_24; for_iter_32 < arith_const_19; for_iter_32 += arith_const_25) {
    for (int for_iter_33 = arith_const_23; for_iter_33 < arith_const_21; for_iter_33 += arith_const_25) {
      int arith_addi_34 = (for_iter_32 + arith_const_18); 
      for (int for_iter_35 = for_iter_32; for_iter_35 < arith_addi_34; for_iter_35 += arith_const_20) {
        int arith_addi_36 = (for_iter_33 + arith_const_21); 
        for (int for_iter_37 = for_iter_33; for_iter_37 < arith_addi_36; for_iter_37 += arith_const_20) {
          func_arg_8[for_iter_35][for_iter_37] = arith_const_22; 
        }
      }
    }
  }
  for (int for_iter_38 = arith_const_23; for_iter_38 < arith_const_19; for_iter_38 += arith_const_25) {
    for (int for_iter_39 = arith_const_23; for_iter_39 < arith_const_17; for_iter_39 += arith_const_25) {
      for (int for_iter_40 = arith_const_23; for_iter_40 < arith_const_21; for_iter_40 += arith_const_25) {
        int arith_addi_41 = (for_iter_38 + arith_const_19); 
        for (int for_iter_42 = for_iter_38; for_iter_42 < arith_addi_41; for_iter_42 += arith_const_20) {
          int arith_addi_43 = (for_iter_39 + arith_const_17); 
          for (int for_iter_44 = for_iter_39; for_iter_44 < arith_addi_43; for_iter_44 += arith_const_20) {
            int arith_addi_45 = (for_iter_40 + arith_const_21); 
            for (int for_iter_46 = for_iter_40; for_iter_46 < arith_addi_45; for_iter_46 += arith_const_20) {
              double memref_load_47 = func_arg_8[for_iter_42][for_iter_46]; 
              double memref_load_48 = func_arg_9[for_iter_42][for_iter_44]; 
              double memref_load_49 = func_arg_10[for_iter_44][for_iter_46]; 
              double arith_mulf_50 = (memref_load_48 * memref_load_49); 
              double arith_addf_51 = (memref_load_47 + arith_mulf_50); 
              func_arg_8[for_iter_42][for_iter_46] = arith_addf_51; 
            }
          }
        }
      }
    }
  }
  for (int for_iter_52 = arith_const_23; for_iter_52 < arith_const_24; for_iter_52 += arith_const_25) {
    for (int for_iter_53 = arith_const_23; for_iter_53 < arith_const_19; for_iter_53 += arith_const_25) {
      int arith_addi_54 = (for_iter_52 + arith_const_24); 
      for (int for_iter_55 = for_iter_52; for_iter_55 < arith_addi_54; for_iter_55 += arith_const_20) {
        int arith_addi_56 = (for_iter_53 + arith_const_19); 
        for (int for_iter_57 = for_iter_53; for_iter_57 < arith_addi_56; for_iter_57 += arith_const_20) {
          func_arg_5[for_iter_55][for_iter_57] = arith_const_22; 
        }
      }
    }
  }
  for (int for_iter_58 = arith_const_23; for_iter_58 < arith_const_18; for_iter_58 += arith_const_25) {
    int arith_addi_59 = (for_iter_58 + arith_const_18); 
    for (int for_iter_60 = for_iter_58; for_iter_60 < arith_addi_59; for_iter_60 += arith_const_20) {
      int arith_cmpi_61 = (for_iter_60 == arith_const_23); 
      if (arith_cmpi_61) {
        for (int for_iter_62 = arith_const_23; for_iter_62 < arith_const_24; for_iter_62 += arith_const_20) {
          for (int for_iter_63 = arith_const_23; for_iter_63 < arith_const_19; for_iter_63 += arith_const_20) {
            for (int for_iter_64 = arith_const_23; for_iter_64 < arith_const_16; for_iter_64 += arith_const_20) {
              double memref_load_65 = func_arg_5[for_iter_62][for_iter_63]; 
              double memref_load_66 = func_arg_6[for_iter_62][for_iter_64]; 
              double memref_load_67 = func_arg_7[for_iter_64][for_iter_63]; 
              double arith_mulf_68 = (memref_load_66 * memref_load_67); 
              double arith_addf_69 = (memref_load_65 + arith_mulf_68); 
              func_arg_5[for_iter_62][for_iter_63] = arith_addf_69; 
            }
            for (int for_iter_70 = arith_const_15; for_iter_70 < arith_const_25; for_iter_70 += arith_const_20) {
              int arith_addi_71 = (for_iter_70 + arith_const_14); 
              double memref_load_72 = func_arg_11[for_iter_62][arith_addi_71]; 
              double memref_load_73 = func_arg_5[for_iter_62][for_iter_63]; 
              int arith_addi_74 = (for_iter_70 + arith_const_14); 
              double memref_load_75 = func_arg_8[for_iter_63][arith_addi_74]; 
              double arith_mulf_76 = (memref_load_73 * memref_load_75); 
              double arith_addf_77 = (memref_load_72 + arith_mulf_76); 
              int arith_addi_78 = (for_iter_70 + arith_const_14); 
              func_arg_11[for_iter_62][arith_addi_78] = arith_addf_77; 
            }
          }
        }
      }
      int arith_addi_79 = (for_iter_60 + arith_const_13); 
      int arith_cmpi_80 = (arith_addi_79 == arith_const_23); 
      if (arith_cmpi_80) {
        for (int for_iter_81 = arith_const_23; for_iter_81 < arith_const_24; for_iter_81 += arith_const_20) {
          for (int for_iter_82 = arith_const_23; for_iter_82 < arith_const_19; for_iter_82 += arith_const_20) {
            for (int for_iter_83 = arith_const_25; for_iter_83 < arith_const_12; for_iter_83 += arith_const_20) {
              int arith_addi_84 = (for_iter_83 + arith_const_14); 
              double memref_load_85 = func_arg_11[for_iter_81][arith_addi_84]; 
              double memref_load_86 = func_arg_5[for_iter_81][for_iter_82]; 
              int arith_addi_87 = (for_iter_83 + arith_const_14); 
              double memref_load_88 = func_arg_8[for_iter_82][arith_addi_87]; 
              double arith_mulf_89 = (memref_load_86 * memref_load_88); 
              double arith_addf_90 = (memref_load_85 + arith_mulf_89); 
              int arith_addi_91 = (for_iter_83 + arith_const_14); 
              func_arg_11[for_iter_81][arith_addi_91] = arith_addf_90; 
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
