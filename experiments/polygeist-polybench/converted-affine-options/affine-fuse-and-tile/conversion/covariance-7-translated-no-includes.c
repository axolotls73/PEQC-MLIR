#pragma pocc-region-start
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
      for (int for_iter_32 = arith_const_18; for_iter_32 < arith_const_14; for_iter_32 += arith_const_16) {
        double memref_load_33 = func_arg_5[for_iter_31]; 
        double memref_load_34 = func_arg_3[for_iter_32][for_iter_31]; 
        double arith_addf_35 = (memref_load_33 + memref_load_34); 
        func_arg_5[for_iter_31] = arith_addf_35; 
      }
      double memref_load_36 = func_arg_5[for_iter_31]; 
      double arith_divf_37 = (memref_load_36 / func_arg_2); 
      func_arg_5[for_iter_31] = arith_divf_37; 
    }
  }
  for (int for_iter_38 = arith_const_18; for_iter_38 < arith_const_14; for_iter_38 += arith_const_14) {
    for (int for_iter_39 = arith_const_18; for_iter_39 < arith_const_17; for_iter_39 += arith_const_14) {
      int arith_addi_40 = (for_iter_38 + arith_const_14); 
      for (int for_iter_41 = for_iter_38; for_iter_41 < arith_addi_40; for_iter_41 += arith_const_16) {
        int arith_addi_42 = (for_iter_39 + arith_const_17); 
        for (int for_iter_43 = for_iter_39; for_iter_43 < arith_addi_42; for_iter_43 += arith_const_16) {
          double memref_load_44 = func_arg_3[for_iter_41][for_iter_43]; 
          double memref_load_45 = func_arg_5[for_iter_43]; 
          double arith_subf_46 = (memref_load_44 - memref_load_45); 
          func_arg_3[for_iter_41][for_iter_43] = arith_subf_46; 
        }
      }
    }
  }
  for (int for_iter_47 = arith_const_18; for_iter_47 < arith_const_17; for_iter_47 += arith_const_16) {
    int arith_muli_48 = (for_iter_47 * arith_const_15); 
    int arith_addi_49 = (arith_muli_48 + arith_const_17); 
    for (int for_iter_50 = arith_const_18; for_iter_50 < arith_addi_49; for_iter_50 += arith_const_16) {
      for (int for_iter_51 = arith_const_18; for_iter_51 < arith_const_14; for_iter_51 += arith_const_16) {
        int arith_addi_52 = (for_iter_47 + for_iter_50); 
        double memref_load_53 = func_arg_4[for_iter_47][arith_addi_52]; 
        double memref_load_54 = func_arg_3[for_iter_51][for_iter_47]; 
        int arith_addi_55 = (for_iter_47 + for_iter_50); 
        double memref_load_56 = func_arg_3[for_iter_51][arith_addi_55]; 
        double arith_mulf_57 = (memref_load_54 * memref_load_56); 
        double arith_addf_58 = (memref_load_53 + arith_mulf_57); 
        int arith_addi_59 = (for_iter_47 + for_iter_50); 
        func_arg_4[for_iter_47][arith_addi_59] = arith_addf_58; 
      }
    }
  }
  for (int for_iter_60 = arith_const_18; for_iter_60 < arith_const_13; for_iter_60 += arith_const_16) {
    int arith_muli_61 = (for_iter_60 * arith_const_12); 
    int arith_addi_62 = (arith_muli_61 + arith_const_11); 
    int arith_cmpi_63 = (arith_addi_62 <= arith_const_18); 
    int arith_subi_64 = (arith_const_18 - arith_addi_62); 
    int arith_subi_65 = (arith_addi_62 - arith_const_16); 
    int arith_select_66 = (arith_cmpi_63 ? arith_subi_64 : arith_subi_65); 
    int arith_divi_67 = (arith_select_66 / arith_const_10); 
    int arith_subi_68 = (arith_const_18 - arith_divi_67); 
    int arith_addi_69 = (arith_divi_67 + arith_const_16); 
    int arith_select_70 = (arith_cmpi_63 ? arith_subi_68 : arith_addi_69); 
    int arith_maxsi_71 = max(arith_select_70, arith_const_18); 
    int arith_muli_72 = (for_iter_60 * arith_const_14); 
    int arith_addi_73 = (arith_muli_72 + arith_const_9); 
    int arith_cmpi_74 = (arith_addi_73 < arith_const_18); 
    int arith_subi_75 = (arith_const_15 - arith_addi_73); 
    int arith_select_76 = (arith_cmpi_74 ? arith_subi_75 : arith_addi_73); 
    int arith_divi_77 = (arith_select_76 / arith_const_8); 
    int arith_subi_78 = (arith_const_15 - arith_divi_77); 
    int arith_select_79 = (arith_cmpi_74 ? arith_subi_78 : arith_divi_77); 
    int arith_addi_80 = (arith_select_79 + arith_const_16); 
    for (int for_iter_81 = arith_maxsi_71; for_iter_81 < arith_addi_80; for_iter_81 += arith_const_16) {
      int arith_muli_82 = (for_iter_60 * arith_const_14); 
      int arith_muli_83 = (for_iter_81 * arith_const_8); 
      int arith_maxsi_84 = max(arith_muli_82, arith_muli_83); 
      int arith_muli_85 = (for_iter_60 * arith_const_14); 
      int arith_addi_86 = (arith_muli_85 + arith_const_14); 
      int arith_muli_87 = (for_iter_81 * arith_const_7); 
      int arith_addi_88 = (arith_muli_87 + arith_const_17); 
      int arith_minsi_89 = min(arith_addi_86, arith_addi_88); 
      for (int for_iter_90 = arith_maxsi_84; for_iter_90 < arith_minsi_89; for_iter_90 += arith_const_16) {
        int arith_muli_91 = (for_iter_90 * arith_const_6); 
        int arith_addi_92 = (for_iter_81 + arith_muli_91); 
        double memref_load_93 = func_arg_4[for_iter_81][arith_addi_92]; 
        double memref_load_94 = memref_alloca_22[arith_const_18]; 
        double arith_divf_95 = (memref_load_93 / memref_load_94); 
        memref_alloca_21[arith_const_18] = arith_divf_95; 
        int arith_muli_96 = (for_iter_90 * arith_const_6); 
        int arith_addi_97 = (for_iter_81 + arith_muli_96); 
        func_arg_4[for_iter_81][arith_addi_97] = arith_divf_95; 
        double memref_load_98 = memref_alloca_21[arith_const_18]; 
        int arith_muli_99 = (for_iter_90 * arith_const_6); 
        int arith_addi_100 = (arith_muli_99 + for_iter_81); 
        func_arg_4[arith_addi_100][for_iter_81] = memref_load_98; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
