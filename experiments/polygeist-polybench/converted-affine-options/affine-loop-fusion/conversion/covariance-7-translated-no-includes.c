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
    for (int for_iter_27 = arith_const_18; for_iter_27 < arith_const_15; for_iter_27 += arith_const_16) {
      double memref_load_28 = func_arg_5[for_iter_26]; 
      double memref_load_29 = func_arg_3[for_iter_27][for_iter_26]; 
      double arith_addf_30 = (memref_load_28 + memref_load_29); 
      func_arg_5[for_iter_26] = arith_addf_30; 
    }
    double memref_load_31 = func_arg_5[for_iter_26]; 
    double arith_divf_32 = (memref_load_31 / func_arg_2); 
    func_arg_5[for_iter_26] = arith_divf_32; 
  }
  for (int for_iter_33 = arith_const_18; for_iter_33 < arith_const_15; for_iter_33 += arith_const_16) {
    for (int for_iter_34 = arith_const_18; for_iter_34 < arith_const_17; for_iter_34 += arith_const_16) {
      double memref_load_35 = func_arg_3[for_iter_33][for_iter_34]; 
      double memref_load_36 = func_arg_5[for_iter_34]; 
      double arith_subf_37 = (memref_load_35 - memref_load_36); 
      func_arg_3[for_iter_33][for_iter_34] = arith_subf_37; 
    }
  }
  for (int for_iter_38 = arith_const_18; for_iter_38 < arith_const_17; for_iter_38 += arith_const_16) {
    for (int for_iter_39 = for_iter_38; for_iter_39 < arith_const_17; for_iter_39 += arith_const_16) {
      for (int for_iter_40 = arith_const_18; for_iter_40 < arith_const_15; for_iter_40 += arith_const_16) {
        double memref_load_41 = func_arg_4[for_iter_38][for_iter_39]; 
        double memref_load_42 = func_arg_3[for_iter_40][for_iter_38]; 
        double memref_load_43 = func_arg_3[for_iter_40][for_iter_39]; 
        double arith_mulf_44 = (memref_load_42 * memref_load_43); 
        double arith_addf_45 = (memref_load_41 + arith_mulf_44); 
        func_arg_4[for_iter_38][for_iter_39] = arith_addf_45; 
      }
    }
  }
  for (int for_iter_46 = arith_const_18; for_iter_46 < arith_const_14; for_iter_46 += arith_const_16) {
    int arith_muli_47 = (for_iter_46 * arith_const_13); 
    int arith_addi_48 = (arith_muli_47 + arith_const_12); 
    int arith_cmpi_49 = (arith_addi_48 <= arith_const_18); 
    int arith_subi_50 = (arith_const_18 - arith_addi_48); 
    int arith_subi_51 = (arith_addi_48 - arith_const_16); 
    int arith_select_52 = (arith_cmpi_49 ? arith_subi_50 : arith_subi_51); 
    int arith_divi_53 = (arith_select_52 / arith_const_11); 
    int arith_subi_54 = (arith_const_18 - arith_divi_53); 
    int arith_addi_55 = (arith_divi_53 + arith_const_16); 
    int arith_select_56 = (arith_cmpi_49 ? arith_subi_54 : arith_addi_55); 
    int arith_maxsi_57 = max(arith_select_56, arith_const_18); 
    int arith_muli_58 = (for_iter_46 * arith_const_15); 
    int arith_addi_59 = (arith_muli_58 + arith_const_10); 
    int arith_cmpi_60 = (arith_addi_59 < arith_const_18); 
    int arith_subi_61 = (arith_const_8 - arith_addi_59); 
    int arith_select_62 = (arith_cmpi_60 ? arith_subi_61 : arith_addi_59); 
    int arith_divi_63 = (arith_select_62 / arith_const_9); 
    int arith_subi_64 = (arith_const_8 - arith_divi_63); 
    int arith_select_65 = (arith_cmpi_60 ? arith_subi_64 : arith_divi_63); 
    int arith_addi_66 = (arith_select_65 + arith_const_16); 
    for (int for_iter_67 = arith_maxsi_57; for_iter_67 < arith_addi_66; for_iter_67 += arith_const_16) {
      int arith_muli_68 = (for_iter_46 * arith_const_15); 
      int arith_muli_69 = (for_iter_67 * arith_const_9); 
      int arith_maxsi_70 = max(arith_muli_68, arith_muli_69); 
      int arith_muli_71 = (for_iter_46 * arith_const_15); 
      int arith_addi_72 = (arith_muli_71 + arith_const_15); 
      int arith_muli_73 = (for_iter_67 * arith_const_7); 
      int arith_addi_74 = (arith_muli_73 + arith_const_17); 
      int arith_minsi_75 = min(arith_addi_72, arith_addi_74); 
      for (int for_iter_76 = arith_maxsi_70; for_iter_76 < arith_minsi_75; for_iter_76 += arith_const_16) {
        int arith_muli_77 = (for_iter_76 * arith_const_6); 
        int arith_addi_78 = (arith_muli_77 + for_iter_67); 
        double memref_load_79 = func_arg_4[for_iter_67][arith_addi_78]; 
        double memref_load_80 = memref_alloca_22[arith_const_18]; 
        double arith_divf_81 = (memref_load_79 / memref_load_80); 
        memref_alloca_21[arith_const_18] = arith_divf_81; 
        int arith_muli_82 = (for_iter_76 * arith_const_6); 
        int arith_addi_83 = (arith_muli_82 + for_iter_67); 
        func_arg_4[for_iter_67][arith_addi_83] = arith_divf_81; 
        double memref_load_84 = memref_alloca_21[arith_const_18]; 
        int arith_muli_85 = (for_iter_76 * arith_const_6); 
        int arith_addi_86 = (arith_muli_85 + for_iter_67); 
        func_arg_4[arith_addi_86][for_iter_67] = memref_load_84; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
