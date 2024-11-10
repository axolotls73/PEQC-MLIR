#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 9; 
  int arith_const_13 = -1; 
  int arith_const_14 = 13; 
  int arith_const_15 = 20; 
  int arith_const_16 = 24; 
  int arith_const_17 = 18; 
  int arith_const_18 = 2; 
  int arith_const_19 = 1; 
  int arith_const_20 = 22; 
  double arith_const_21 = 0.000000; 
  int arith_const_22 = 0; 
  int arith_const_23 = 16; 
  int arith_const_24 = 32; 
  for (int for_iter_25 = arith_const_22; for_iter_25 < arith_const_23; for_iter_25 += arith_const_24) {
    for (int for_iter_26 = arith_const_22; for_iter_26 < arith_const_20; for_iter_26 += arith_const_24) {
      int arith_addi_27 = (for_iter_25 + arith_const_23); 
      for (int for_iter_28 = for_iter_25; for_iter_28 < arith_addi_27; for_iter_28 += arith_const_19) {
        int arith_addi_29 = (for_iter_26 + arith_const_20); 
        for (int for_iter_30 = for_iter_26; for_iter_30 < arith_addi_29; for_iter_30 += arith_const_19) {
          func_arg_11[for_iter_28][for_iter_30] = arith_const_21; 
          func_arg_8[for_iter_28][for_iter_30] = arith_const_21; 
        }
      }
    }
  }
  for (int for_iter_31 = arith_const_22; for_iter_31 < arith_const_18; for_iter_31 += arith_const_24) {
    for (int for_iter_32 = arith_const_22; for_iter_32 < arith_const_20; for_iter_32 += arith_const_24) {
      int arith_addi_33 = (for_iter_31 + arith_const_18); 
      for (int for_iter_34 = for_iter_31; for_iter_34 < arith_addi_33; for_iter_34 += arith_const_19) {
        int arith_addi_35 = (for_iter_32 + arith_const_20); 
        for (int for_iter_36 = for_iter_32; for_iter_36 < arith_addi_35; for_iter_36 += arith_const_19) {
          int arith_addi_37 = (for_iter_34 + arith_const_23); 
          func_arg_8[arith_addi_37][for_iter_36] = arith_const_21; 
        }
      }
    }
  }
  for (int for_iter_38 = arith_const_22; for_iter_38 < arith_const_17; for_iter_38 += arith_const_24) {
    for (int for_iter_39 = arith_const_22; for_iter_39 < arith_const_16; for_iter_39 += arith_const_24) {
      for (int for_iter_40 = arith_const_22; for_iter_40 < arith_const_20; for_iter_40 += arith_const_24) {
        int arith_addi_41 = (for_iter_38 + arith_const_17); 
        for (int for_iter_42 = for_iter_38; for_iter_42 < arith_addi_41; for_iter_42 += arith_const_19) {
          int arith_addi_43 = (for_iter_39 + arith_const_16); 
          for (int for_iter_44 = for_iter_39; for_iter_44 < arith_addi_43; for_iter_44 += arith_const_19) {
            int arith_addi_45 = (for_iter_40 + arith_const_20); 
            for (int for_iter_46 = for_iter_40; for_iter_46 < arith_addi_45; for_iter_46 += arith_const_19) {
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
  for (int for_iter_52 = arith_const_22; for_iter_52 < arith_const_23; for_iter_52 += arith_const_24) {
    for (int for_iter_53 = arith_const_22; for_iter_53 < arith_const_17; for_iter_53 += arith_const_24) {
      int arith_addi_54 = (for_iter_52 + arith_const_23); 
      for (int for_iter_55 = for_iter_52; for_iter_55 < arith_addi_54; for_iter_55 += arith_const_19) {
        int arith_addi_56 = (for_iter_53 + arith_const_17); 
        for (int for_iter_57 = for_iter_53; for_iter_57 < arith_addi_56; for_iter_57 += arith_const_19) {
          func_arg_5[for_iter_55][for_iter_57] = arith_const_21; 
        }
      }
    }
  }
  for (int for_iter_58 = arith_const_22; for_iter_58 < arith_const_18; for_iter_58 += arith_const_24) {
    int arith_addi_59 = (for_iter_58 + arith_const_18); 
    for (int for_iter_60 = for_iter_58; for_iter_60 < arith_addi_59; for_iter_60 += arith_const_19) {
      int arith_cmpi_61 = (for_iter_60 == arith_const_22); 
      if (arith_cmpi_61) {
        for (int for_iter_62 = arith_const_22; for_iter_62 < arith_const_23; for_iter_62 += arith_const_19) {
          for (int for_iter_63 = arith_const_22; for_iter_63 < arith_const_17; for_iter_63 += arith_const_19) {
            for (int for_iter_64 = arith_const_22; for_iter_64 < arith_const_15; for_iter_64 += arith_const_19) {
              double memref_load_65 = func_arg_5[for_iter_62][for_iter_63]; 
              double memref_load_66 = func_arg_6[for_iter_62][for_iter_64]; 
              double memref_load_67 = func_arg_7[for_iter_64][for_iter_63]; 
              double arith_mulf_68 = (memref_load_66 * memref_load_67); 
              double arith_addf_69 = (memref_load_65 + arith_mulf_68); 
              func_arg_5[for_iter_62][for_iter_63] = arith_addf_69; 
            }
            for (int for_iter_70 = arith_const_22; for_iter_70 < arith_const_14; for_iter_70 += arith_const_19) {
              double memref_load_71 = func_arg_11[for_iter_62][for_iter_70]; 
              double memref_load_72 = func_arg_5[for_iter_62][for_iter_63]; 
              double memref_load_73 = func_arg_8[for_iter_63][for_iter_70]; 
              double arith_mulf_74 = (memref_load_72 * memref_load_73); 
              double arith_addf_75 = (memref_load_71 + arith_mulf_74); 
              func_arg_11[for_iter_62][for_iter_70] = arith_addf_75; 
            }
          }
        }
      }
      int arith_addi_76 = (for_iter_60 + arith_const_13); 
      int arith_cmpi_77 = (arith_addi_76 == arith_const_22); 
      if (arith_cmpi_77) {
        for (int for_iter_78 = arith_const_22; for_iter_78 < arith_const_23; for_iter_78 += arith_const_19) {
          for (int for_iter_79 = arith_const_22; for_iter_79 < arith_const_17; for_iter_79 += arith_const_19) {
            for (int for_iter_80 = arith_const_22; for_iter_80 < arith_const_12; for_iter_80 += arith_const_19) {
              int arith_addi_81 = (for_iter_80 + arith_const_14); 
              double memref_load_82 = func_arg_11[for_iter_78][arith_addi_81]; 
              double memref_load_83 = func_arg_5[for_iter_78][for_iter_79]; 
              int arith_addi_84 = (for_iter_80 + arith_const_14); 
              double memref_load_85 = func_arg_8[for_iter_79][arith_addi_84]; 
              double arith_mulf_86 = (memref_load_83 * memref_load_85); 
              double arith_addf_87 = (memref_load_82 + arith_mulf_86); 
              int arith_addi_88 = (for_iter_80 + arith_const_14); 
              func_arg_11[for_iter_78][arith_addi_88] = arith_addf_87; 
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
