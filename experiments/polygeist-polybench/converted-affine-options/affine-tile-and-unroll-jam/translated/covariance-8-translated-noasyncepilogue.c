#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -26; 
  int arith_const_7 = 26; 
  int arith_const_8 = 27; 
  int arith_const_9 = 31; 
  int arith_const_10 = 13; 
  int arith_const_11 = -13; 
  int arith_const_12 = 16; 
  int arith_const_13 = 23; 
  int arith_const_14 = 32; 
  int arith_const_15 = -1; 
  int arith_const_16 = 1; 
  int arith_const_17 = 28; 
  int arith_const_18 = 0; 
  double arith_const_19 = 1.000000; 
  double arith_const_20 = 0.000000; 
  double* memref_alloca_21; 
  double* memref_alloca_22; 
  for (int for_iter_23 = arith_const_18; for_iter_23 < arith_const_17; for_iter_23 += arith_const_16) {
    int arith_muli_24 = (for_iter_23 * arith_const_15); 
    int arith_addi_25 = (arith_muli_24 + arith_const_17); 
    for (int for_iter_26 = arith_const_18; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_16) {
      int arith_addi_27 = (for_iter_23 + for_iter_26); 
      func_arg_4[for_iter_23][arith_addi_27] = arith_const_20; 
    }
  }
  double arith_subf_28 = (func_arg_2 - arith_const_19); 
  memref_alloca_22[arith_const_18] = arith_subf_28; 
  for (int for_iter_29 = arith_const_18; for_iter_29 < arith_const_17; for_iter_29 += arith_const_14) {
    int arith_addi_30 = (for_iter_29 + arith_const_17); 
    for (int for_iter_31 = for_iter_29; for_iter_31 < arith_addi_30; for_iter_31 += arith_const_16) {
      func_arg_5[for_iter_31] = arith_const_20; 
    }
  }
  for (int for_iter_32 = arith_const_18; for_iter_32 < arith_const_14; for_iter_32 += arith_const_14) {
    for (int for_iter_33 = arith_const_18; for_iter_33 < arith_const_17; for_iter_33 += arith_const_14) {
      int arith_addi_34 = (for_iter_32 + arith_const_14); 
      for (int for_iter_35 = for_iter_32; for_iter_35 < arith_addi_34; for_iter_35 += arith_const_16) {
        int arith_addi_36 = (for_iter_33 + arith_const_17); 
        for (int for_iter_37 = for_iter_33; for_iter_37 < arith_addi_36; for_iter_37 += arith_const_16) {
          double memref_load_38 = func_arg_5[for_iter_37]; 
          double memref_load_39 = func_arg_3[for_iter_35][for_iter_37]; 
          double arith_addf_40 = (memref_load_38 + memref_load_39); 
          func_arg_5[for_iter_37] = arith_addf_40; 
        }
      }
    }
  }
  for (int for_iter_41 = arith_const_18; for_iter_41 < arith_const_17; for_iter_41 += arith_const_14) {
    int arith_addi_42 = (for_iter_41 + arith_const_17); 
    for (int for_iter_43 = for_iter_41; for_iter_43 < arith_addi_42; for_iter_43 += arith_const_16) {
      double memref_load_44 = func_arg_5[for_iter_43]; 
      double arith_divf_45 = (memref_load_44 / func_arg_2); 
      func_arg_5[for_iter_43] = arith_divf_45; 
    }
  }
  for (int for_iter_46 = arith_const_18; for_iter_46 < arith_const_14; for_iter_46 += arith_const_14) {
    for (int for_iter_47 = arith_const_18; for_iter_47 < arith_const_17; for_iter_47 += arith_const_14) {
      int arith_addi_48 = (for_iter_46 + arith_const_14); 
      for (int for_iter_49 = for_iter_46; for_iter_49 < arith_addi_48; for_iter_49 += arith_const_16) {
        int arith_addi_50 = (for_iter_47 + arith_const_17); 
        for (int for_iter_51 = for_iter_47; for_iter_51 < arith_addi_50; for_iter_51 += arith_const_16) {
          double memref_load_52 = func_arg_3[for_iter_49][for_iter_51]; 
          double memref_load_53 = func_arg_5[for_iter_51]; 
          double arith_subf_54 = (memref_load_52 - memref_load_53); 
          func_arg_3[for_iter_49][for_iter_51] = arith_subf_54; 
        }
      }
    }
  }
  for (int for_iter_55 = arith_const_18; for_iter_55 < arith_const_17; for_iter_55 += arith_const_16) {
    for (int for_iter_56 = arith_const_18; for_iter_56 < arith_const_14; for_iter_56 += arith_const_16) {
      int arith_muli_57 = (for_iter_55 * arith_const_15); 
      int arith_addi_58 = (arith_muli_57 + arith_const_17); 
      for (int for_iter_59 = arith_const_18; for_iter_59 < arith_addi_58; for_iter_59 += arith_const_16) {
        int arith_addi_60 = (for_iter_55 + for_iter_59); 
        double memref_load_61 = func_arg_4[for_iter_55][arith_addi_60]; 
        double memref_load_62 = func_arg_3[for_iter_56][for_iter_55]; 
        int arith_addi_63 = (for_iter_55 + for_iter_59); 
        double memref_load_64 = func_arg_3[for_iter_56][arith_addi_63]; 
        double arith_mulf_65 = (memref_load_62 * memref_load_64); 
        double arith_addf_66 = (memref_load_61 + arith_mulf_65); 
        int arith_addi_67 = (for_iter_55 + for_iter_59); 
        func_arg_4[for_iter_55][arith_addi_67] = arith_addf_66; 
      }
    }
  }
  for (int for_iter_68 = arith_const_18; for_iter_68 < arith_const_13; for_iter_68 += arith_const_16) {
    int arith_muli_69 = (for_iter_68 * arith_const_12); 
    int arith_addi_70 = (arith_muli_69 + arith_const_11); 
    int arith_cmpi_71 = (arith_addi_70 <= arith_const_18); 
    int arith_subi_72 = (arith_const_18 - arith_addi_70); 
    int arith_subi_73 = (arith_addi_70 - arith_const_16); 
    int arith_select_74 = (arith_cmpi_71 ? arith_subi_72 : arith_subi_73); 
    int arith_divi_75 = (arith_select_74 / arith_const_10); 
    int arith_subi_76 = (arith_const_18 - arith_divi_75); 
    int arith_addi_77 = (arith_divi_75 + arith_const_16); 
    int arith_select_78 = (arith_cmpi_71 ? arith_subi_76 : arith_addi_77); 
    int arith_maxsi_79 = max(arith_select_78, arith_const_18); 
    int arith_muli_80 = (for_iter_68 * arith_const_14); 
    int arith_addi_81 = (arith_muli_80 + arith_const_9); 
    int arith_cmpi_82 = (arith_addi_81 < arith_const_18); 
    int arith_subi_83 = (arith_const_15 - arith_addi_81); 
    int arith_select_84 = (arith_cmpi_82 ? arith_subi_83 : arith_addi_81); 
    int arith_divi_85 = (arith_select_84 / arith_const_8); 
    int arith_subi_86 = (arith_const_15 - arith_divi_85); 
    int arith_select_87 = (arith_cmpi_82 ? arith_subi_86 : arith_divi_85); 
    int arith_addi_88 = (arith_select_87 + arith_const_16); 
    for (int for_iter_89 = arith_maxsi_79; for_iter_89 < arith_addi_88; for_iter_89 += arith_const_16) {
      int arith_muli_90 = (for_iter_68 * arith_const_14); 
      int arith_muli_91 = (for_iter_89 * arith_const_8); 
      int arith_maxsi_92 = max(arith_muli_90, arith_muli_91); 
      int arith_muli_93 = (for_iter_68 * arith_const_14); 
      int arith_addi_94 = (arith_muli_93 + arith_const_14); 
      int arith_muli_95 = (for_iter_89 * arith_const_7); 
      int arith_addi_96 = (arith_muli_95 + arith_const_17); 
      int arith_minsi_97 = min(arith_addi_94, arith_addi_96); 
      for (int for_iter_98 = arith_maxsi_92; for_iter_98 < arith_minsi_97; for_iter_98 += arith_const_16) {
        int arith_muli_99 = (for_iter_98 * arith_const_6); 
        int arith_addi_100 = (for_iter_89 + arith_muli_99); 
        double memref_load_101 = func_arg_4[for_iter_89][arith_addi_100]; 
        double memref_load_102 = memref_alloca_22[arith_const_18]; 
        double arith_divf_103 = (memref_load_101 / memref_load_102); 
        memref_alloca_21[arith_const_18] = arith_divf_103; 
        int arith_muli_104 = (for_iter_98 * arith_const_6); 
        int arith_addi_105 = (for_iter_89 + arith_muli_104); 
        func_arg_4[for_iter_89][arith_addi_105] = arith_divf_103; 
        double memref_load_106 = memref_alloca_21[arith_const_18]; 
        int arith_muli_107 = (for_iter_98 * arith_const_6); 
        int arith_addi_108 = (arith_muli_107 + for_iter_89); 
        func_arg_4[arith_addi_108][for_iter_89] = memref_load_106; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double float_n;
  double* data;
  double* cov;
  double* mean;


  kernel_covariance(m, n, float_n, data, cov, mean);

}

#pragma pocc-region-end
