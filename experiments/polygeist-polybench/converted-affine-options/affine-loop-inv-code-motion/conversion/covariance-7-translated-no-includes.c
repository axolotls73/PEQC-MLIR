#pragma pocc-region-start
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -26; 
  int arith_const_7 = 26; 
  int arith_const_8 = -1; 
  int arith_const_9 = 27; 
  int arith_const_10 = 31; 
  int arith_const_11 = 13; 
  int arith_const_12 = -13; 
  int arith_const_13 = 16; 
  int arith_const_14 = 23; 
  int arith_const_15 = 32; 
  int arith_const_16 = 1; 
  int arith_const_17 = 28; 
  int arith_const_18 = 0; 
  double arith_const_19 = 1.000000; 
  double arith_const_20 = 0.000000; 
  double* memref_alloca_21; 
  double* memref_alloca_22; 
  for (int for_iter_23 = arith_const_18; for_iter_23 < arith_const_17; for_iter_23 += arith_const_16) {
    for (int for_iter_24 = for_iter_23; for_iter_24 < arith_const_17; for_iter_24 += arith_const_16) {
      func_arg_4[for_iter_23][for_iter_24] = arith_const_20; 
    }
  }
  double arith_subf_25 = (func_arg_2 - arith_const_19); 
  memref_alloca_22[arith_const_18] = arith_subf_25; 
  for (int for_iter_26 = arith_const_18; for_iter_26 < arith_const_17; for_iter_26 += arith_const_16) {
    func_arg_5[for_iter_26] = arith_const_20; 
  }
  for (int for_iter_27 = arith_const_18; for_iter_27 < arith_const_15; for_iter_27 += arith_const_16) {
    for (int for_iter_28 = arith_const_18; for_iter_28 < arith_const_17; for_iter_28 += arith_const_16) {
      double memref_load_29 = func_arg_5[for_iter_28]; 
      double memref_load_30 = func_arg_3[for_iter_27][for_iter_28]; 
      double arith_addf_31 = (memref_load_29 + memref_load_30); 
      func_arg_5[for_iter_28] = arith_addf_31; 
    }
  }
  for (int for_iter_32 = arith_const_18; for_iter_32 < arith_const_17; for_iter_32 += arith_const_16) {
    double memref_load_33 = func_arg_5[for_iter_32]; 
    double arith_divf_34 = (memref_load_33 / func_arg_2); 
    func_arg_5[for_iter_32] = arith_divf_34; 
  }
  for (int for_iter_35 = arith_const_18; for_iter_35 < arith_const_15; for_iter_35 += arith_const_16) {
    for (int for_iter_36 = arith_const_18; for_iter_36 < arith_const_17; for_iter_36 += arith_const_16) {
      double memref_load_37 = func_arg_3[for_iter_35][for_iter_36]; 
      double memref_load_38 = func_arg_5[for_iter_36]; 
      double arith_subf_39 = (memref_load_37 - memref_load_38); 
      func_arg_3[for_iter_35][for_iter_36] = arith_subf_39; 
    }
  }
  for (int for_iter_40 = arith_const_18; for_iter_40 < arith_const_17; for_iter_40 += arith_const_16) {
    for (int for_iter_41 = arith_const_18; for_iter_41 < arith_const_15; for_iter_41 += arith_const_16) {
      double memref_load_42 = func_arg_3[for_iter_41][for_iter_40]; 
      for (int for_iter_43 = for_iter_40; for_iter_43 < arith_const_17; for_iter_43 += arith_const_16) {
        double memref_load_44 = func_arg_4[for_iter_40][for_iter_43]; 
        double memref_load_45 = func_arg_3[for_iter_41][for_iter_43]; 
        double arith_mulf_46 = (memref_load_42 * memref_load_45); 
        double arith_addf_47 = (memref_load_44 + arith_mulf_46); 
        func_arg_4[for_iter_40][for_iter_43] = arith_addf_47; 
      }
    }
  }
  double memref_load_48 = memref_alloca_22[arith_const_18]; 
  for (int for_iter_49 = arith_const_18; for_iter_49 < arith_const_14; for_iter_49 += arith_const_16) {
    int arith_muli_50 = (for_iter_49 * arith_const_13); 
    int arith_addi_51 = (arith_muli_50 + arith_const_12); 
    int arith_cmpi_52 = (arith_addi_51 <= arith_const_18); 
    int arith_subi_53 = (arith_const_18 - arith_addi_51); 
    int arith_subi_54 = (arith_addi_51 - arith_const_16); 
    int arith_select_55 = (arith_cmpi_52 ? arith_subi_53 : arith_subi_54); 
    int arith_divi_56 = (arith_select_55 / arith_const_11); 
    int arith_subi_57 = (arith_const_18 - arith_divi_56); 
    int arith_addi_58 = (arith_divi_56 + arith_const_16); 
    int arith_select_59 = (arith_cmpi_52 ? arith_subi_57 : arith_addi_58); 
    int arith_maxsi_60 = max(arith_select_59, arith_const_18); 
    int arith_muli_61 = (for_iter_49 * arith_const_15); 
    int arith_addi_62 = (arith_muli_61 + arith_const_10); 
    int arith_cmpi_63 = (arith_addi_62 < arith_const_18); 
    int arith_subi_64 = (arith_const_8 - arith_addi_62); 
    int arith_select_65 = (arith_cmpi_63 ? arith_subi_64 : arith_addi_62); 
    int arith_divi_66 = (arith_select_65 / arith_const_9); 
    int arith_subi_67 = (arith_const_8 - arith_divi_66); 
    int arith_select_68 = (arith_cmpi_63 ? arith_subi_67 : arith_divi_66); 
    int arith_addi_69 = (arith_select_68 + arith_const_16); 
    for (int for_iter_70 = arith_maxsi_60; for_iter_70 < arith_addi_69; for_iter_70 += arith_const_16) {
      int arith_muli_71 = (for_iter_49 * arith_const_15); 
      int arith_muli_72 = (for_iter_70 * arith_const_9); 
      int arith_maxsi_73 = max(arith_muli_71, arith_muli_72); 
      int arith_muli_74 = (for_iter_49 * arith_const_15); 
      int arith_addi_75 = (arith_muli_74 + arith_const_15); 
      int arith_muli_76 = (for_iter_70 * arith_const_7); 
      int arith_addi_77 = (arith_muli_76 + arith_const_17); 
      int arith_minsi_78 = min(arith_addi_75, arith_addi_77); 
      for (int for_iter_79 = arith_maxsi_73; for_iter_79 < arith_minsi_78; for_iter_79 += arith_const_16) {
        int arith_muli_80 = (for_iter_79 * arith_const_6); 
        int arith_addi_81 = (arith_muli_80 + for_iter_70); 
        double memref_load_82 = func_arg_4[for_iter_70][arith_addi_81]; 
        double arith_divf_83 = (memref_load_82 / memref_load_48); 
        memref_alloca_21[arith_const_18] = arith_divf_83; 
        int arith_muli_84 = (for_iter_79 * arith_const_6); 
        int arith_addi_85 = (arith_muli_84 + for_iter_70); 
        func_arg_4[for_iter_70][arith_addi_85] = arith_divf_83; 
        double memref_load_86 = memref_alloca_21[arith_const_18]; 
        int arith_muli_87 = (for_iter_79 * arith_const_6); 
        int arith_addi_88 = (arith_muli_87 + for_iter_70); 
        func_arg_4[arith_addi_88][for_iter_70] = memref_load_86; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
