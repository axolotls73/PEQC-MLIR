#pragma pocc-region-start
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 20; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 4; 
  int arith_const_12 = 0; 
  int arith_const_13 = 30; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    int arith_addi_16 = (for_iter_15 + arith_const_14); 
    int arith_cmpi_17 = ((arith_addi_16 < arith_const_12) ? 1 : 0); 
    int arith_subi_18 = (arith_const_10 - arith_addi_16); 
    int arith_select_19 = (arith_cmpi_17 ? arith_subi_18 : arith_addi_16); 
    int arith_divi_20 = (arith_select_19 / arith_const_11); 
    int arith_subi_21 = (arith_const_10 - arith_divi_20); 
    int arith_select_22 = (arith_cmpi_17 ? arith_subi_21 : arith_divi_20); 
    int arith_muli_23 = (arith_select_22 * arith_const_11); 
    for (int for_iter_24 = arith_const_12; for_iter_24 < arith_muli_23; for_iter_24 += arith_const_11) {
      double memref_load_25 = func_arg_4[for_iter_15][for_iter_24]; 
      double arith_mulf_26 = (memref_load_25 * func_arg_3); 
      func_arg_4[for_iter_15][for_iter_24] = arith_mulf_26; 
      int arith_addi_27 = (for_iter_24 + arith_const_14); 
      double memref_load_28 = func_arg_4[for_iter_15][arith_addi_27]; 
      double arith_mulf_29 = (memref_load_28 * func_arg_3); 
      func_arg_4[for_iter_15][arith_addi_27] = arith_mulf_29; 
      int arith_addi_30 = (for_iter_24 + arith_const_9); 
      double memref_load_31 = func_arg_4[for_iter_15][arith_addi_30]; 
      double arith_mulf_32 = (memref_load_31 * func_arg_3); 
      func_arg_4[for_iter_15][arith_addi_30] = arith_mulf_32; 
      int arith_addi_33 = (for_iter_24 + arith_const_8); 
      double memref_load_34 = func_arg_4[for_iter_15][arith_addi_33]; 
      double arith_mulf_35 = (memref_load_34 * func_arg_3); 
      func_arg_4[for_iter_15][arith_addi_33] = arith_mulf_35; 
    }
    int arith_addi_36 = (for_iter_15 + arith_const_14); 
    int arith_cmpi_37 = ((arith_addi_36 < arith_const_12) ? 1 : 0); 
    int arith_subi_38 = (arith_const_10 - arith_addi_36); 
    int arith_select_39 = (arith_cmpi_37 ? arith_subi_38 : arith_addi_36); 
    int arith_divi_40 = (arith_select_39 / arith_const_11); 
    int arith_subi_41 = (arith_const_10 - arith_divi_40); 
    int arith_select_42 = (arith_cmpi_37 ? arith_subi_41 : arith_divi_40); 
    int arith_muli_43 = (arith_select_42 * arith_const_11); 
    int arith_addi_44 = (for_iter_15 + arith_const_14); 
    for (int for_iter_45 = arith_muli_43; for_iter_45 < arith_addi_44; for_iter_45 += arith_const_14) {
      double memref_load_46 = func_arg_4[for_iter_15][for_iter_45]; 
      double arith_mulf_47 = (memref_load_46 * func_arg_3); 
      func_arg_4[for_iter_15][for_iter_45] = arith_mulf_47; 
    }
  }
  for (int for_iter_48 = arith_const_12; for_iter_48 < arith_const_13; for_iter_48 += arith_const_14) {
    int arith_addi_49 = (for_iter_48 + arith_const_14); 
    for (int for_iter_50 = arith_const_12; for_iter_50 < arith_addi_49; for_iter_50 += arith_const_14) {
      for (int for_iter_51 = arith_const_12; for_iter_51 < arith_const_7; for_iter_51 += arith_const_11) {
        double memref_load_52 = func_arg_4[for_iter_48][for_iter_50]; 
        double memref_load_53 = func_arg_5[for_iter_50][for_iter_51]; 
        double arith_mulf_54 = (memref_load_53 * func_arg_2); 
        double memref_load_55 = func_arg_6[for_iter_48][for_iter_51]; 
        double arith_mulf_56 = (arith_mulf_54 * memref_load_55); 
        double memref_load_57 = func_arg_6[for_iter_50][for_iter_51]; 
        double arith_mulf_58 = (memref_load_57 * func_arg_2); 
        double memref_load_59 = func_arg_5[for_iter_48][for_iter_51]; 
        double arith_mulf_60 = (arith_mulf_58 * memref_load_59); 
        double arith_addf_61 = (arith_mulf_56 + arith_mulf_60); 
        double arith_addf_62 = (memref_load_52 + arith_addf_61); 
        func_arg_4[for_iter_48][for_iter_50] = arith_addf_62; 
        int arith_addi_63 = (for_iter_51 + arith_const_14); 
        double memref_load_64 = func_arg_4[for_iter_48][for_iter_50]; 
        double memref_load_65 = func_arg_5[for_iter_50][arith_addi_63]; 
        double arith_mulf_66 = (memref_load_65 * func_arg_2); 
        double memref_load_67 = func_arg_6[for_iter_48][arith_addi_63]; 
        double arith_mulf_68 = (arith_mulf_66 * memref_load_67); 
        double memref_load_69 = func_arg_6[for_iter_50][arith_addi_63]; 
        double arith_mulf_70 = (memref_load_69 * func_arg_2); 
        double memref_load_71 = func_arg_5[for_iter_48][arith_addi_63]; 
        double arith_mulf_72 = (arith_mulf_70 * memref_load_71); 
        double arith_addf_73 = (arith_mulf_68 + arith_mulf_72); 
        double arith_addf_74 = (memref_load_64 + arith_addf_73); 
        func_arg_4[for_iter_48][for_iter_50] = arith_addf_74; 
        int arith_addi_75 = (for_iter_51 + arith_const_9); 
        double memref_load_76 = func_arg_4[for_iter_48][for_iter_50]; 
        double memref_load_77 = func_arg_5[for_iter_50][arith_addi_75]; 
        double arith_mulf_78 = (memref_load_77 * func_arg_2); 
        double memref_load_79 = func_arg_6[for_iter_48][arith_addi_75]; 
        double arith_mulf_80 = (arith_mulf_78 * memref_load_79); 
        double memref_load_81 = func_arg_6[for_iter_50][arith_addi_75]; 
        double arith_mulf_82 = (memref_load_81 * func_arg_2); 
        double memref_load_83 = func_arg_5[for_iter_48][arith_addi_75]; 
        double arith_mulf_84 = (arith_mulf_82 * memref_load_83); 
        double arith_addf_85 = (arith_mulf_80 + arith_mulf_84); 
        double arith_addf_86 = (memref_load_76 + arith_addf_85); 
        func_arg_4[for_iter_48][for_iter_50] = arith_addf_86; 
        int arith_addi_87 = (for_iter_51 + arith_const_8); 
        double memref_load_88 = func_arg_4[for_iter_48][for_iter_50]; 
        double memref_load_89 = func_arg_5[for_iter_50][arith_addi_87]; 
        double arith_mulf_90 = (memref_load_89 * func_arg_2); 
        double memref_load_91 = func_arg_6[for_iter_48][arith_addi_87]; 
        double arith_mulf_92 = (arith_mulf_90 * memref_load_91); 
        double memref_load_93 = func_arg_6[for_iter_50][arith_addi_87]; 
        double arith_mulf_94 = (memref_load_93 * func_arg_2); 
        double memref_load_95 = func_arg_5[for_iter_48][arith_addi_87]; 
        double arith_mulf_96 = (arith_mulf_94 * memref_load_95); 
        double arith_addf_97 = (arith_mulf_92 + arith_mulf_96); 
        double arith_addf_98 = (memref_load_88 + arith_addf_97); 
        func_arg_4[for_iter_48][for_iter_50] = arith_addf_98; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
