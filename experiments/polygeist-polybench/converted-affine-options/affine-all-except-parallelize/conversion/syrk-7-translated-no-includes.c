#pragma pocc-region-start
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 5; 
  int arith_const_7 = -4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 4; 
  int arith_const_12 = 0; 
  int arith_const_13 = 30; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_14; for_iter_16 += arith_const_14) {
      int arith_addi_17 = (for_iter_15 + for_iter_16); 
      int arith_addi_18 = (for_iter_15 + for_iter_16); 
      int arith_addi_19 = (arith_addi_18 + arith_const_14); 
      int arith_cmpi_20 = (arith_addi_19 < arith_const_12); 
      int arith_subi_21 = (arith_const_10 - arith_addi_19); 
      int arith_select_22 = (arith_cmpi_20 ? arith_subi_21 : arith_addi_19); 
      int arith_divi_23 = (arith_select_22 / arith_const_11); 
      int arith_subi_24 = (arith_const_10 - arith_divi_23); 
      int arith_select_25 = (arith_cmpi_20 ? arith_subi_24 : arith_divi_23); 
      for (int for_iter_26 = arith_const_12; for_iter_26 < arith_select_25; for_iter_26 += arith_const_14) {
        int arith_muli_27 = (for_iter_26 * arith_const_11); 
        double memref_load_28 = func_arg_4[arith_addi_17][arith_muli_27]; 
        double arith_mulf_29 = (memref_load_28 * func_arg_3); 
        func_arg_4[arith_addi_17][arith_muli_27] = arith_mulf_29; 
        int arith_addi_30 = (arith_muli_27 + arith_const_14); 
        double memref_load_31 = func_arg_4[arith_addi_17][arith_addi_30]; 
        double arith_mulf_32 = (memref_load_31 * func_arg_3); 
        func_arg_4[arith_addi_17][arith_addi_30] = arith_mulf_32; 
        int arith_addi_33 = (arith_muli_27 + arith_const_9); 
        double memref_load_34 = func_arg_4[arith_addi_17][arith_addi_33]; 
        double arith_mulf_35 = (memref_load_34 * func_arg_3); 
        func_arg_4[arith_addi_17][arith_addi_33] = arith_mulf_35; 
        int arith_addi_36 = (arith_muli_27 + arith_const_8); 
        double memref_load_37 = func_arg_4[arith_addi_17][arith_addi_36]; 
        double arith_mulf_38 = (memref_load_37 * func_arg_3); 
        func_arg_4[arith_addi_17][arith_addi_36] = arith_mulf_38; 
      }
      int arith_addi_39 = (for_iter_15 + for_iter_16); 
      int arith_addi_40 = (for_iter_15 + for_iter_16); 
      int arith_addi_41 = (arith_addi_40 + arith_const_14); 
      int arith_cmpi_42 = (arith_addi_41 < arith_const_12); 
      int arith_subi_43 = (arith_const_10 - arith_addi_41); 
      int arith_select_44 = (arith_cmpi_42 ? arith_subi_43 : arith_addi_41); 
      int arith_divi_45 = (arith_select_44 / arith_const_11); 
      int arith_subi_46 = (arith_const_10 - arith_divi_45); 
      int arith_select_47 = (arith_cmpi_42 ? arith_subi_46 : arith_divi_45); 
      int arith_muli_48 = (arith_select_47 * arith_const_7); 
      int arith_addi_49 = (arith_addi_39 + arith_muli_48); 
      int arith_addi_50 = (arith_addi_49 + arith_const_14); 
      for (int for_iter_51 = arith_const_12; for_iter_51 < arith_addi_50; for_iter_51 += arith_const_14) {
        int arith_addi_52 = (arith_addi_17 + arith_const_14); 
        int arith_cmpi_53 = (arith_addi_52 < arith_const_12); 
        int arith_subi_54 = (arith_const_10 - arith_addi_52); 
        int arith_select_55 = (arith_cmpi_53 ? arith_subi_54 : arith_addi_52); 
        int arith_divi_56 = (arith_select_55 / arith_const_11); 
        int arith_subi_57 = (arith_const_10 - arith_divi_56); 
        int arith_select_58 = (arith_cmpi_53 ? arith_subi_57 : arith_divi_56); 
        int arith_muli_59 = (arith_select_58 * arith_const_11); 
        int arith_addi_60 = (for_iter_51 + arith_muli_59); 
        double memref_load_61 = func_arg_4[arith_addi_17][arith_addi_60]; 
        double arith_mulf_62 = (memref_load_61 * func_arg_3); 
        func_arg_4[arith_addi_17][arith_addi_60] = arith_mulf_62; 
      }
    }
  }
  for (int for_iter_63 = arith_const_12; for_iter_63 < arith_const_13; for_iter_63 += arith_const_14) {
    int arith_addi_64 = (for_iter_63 + arith_const_14); 
    for (int for_iter_65 = arith_const_12; for_iter_65 < arith_addi_64; for_iter_65 += arith_const_14) {
      for (int for_iter_66 = arith_const_12; for_iter_66 < arith_const_6; for_iter_66 += arith_const_14) {
        int arith_muli_67 = (for_iter_66 * arith_const_11); 
        double memref_load_68 = func_arg_4[for_iter_63][for_iter_65]; 
        double memref_load_69 = func_arg_5[for_iter_63][arith_muli_67]; 
        double arith_mulf_70 = (func_arg_2 * memref_load_69); 
        double memref_load_71 = func_arg_5[for_iter_65][arith_muli_67]; 
        double arith_mulf_72 = (arith_mulf_70 * memref_load_71); 
        double arith_addf_73 = (memref_load_68 + arith_mulf_72); 
        func_arg_4[for_iter_63][for_iter_65] = arith_addf_73; 
        int arith_addi_74 = (arith_muli_67 + arith_const_14); 
        double memref_load_75 = func_arg_4[for_iter_63][for_iter_65]; 
        double memref_load_76 = func_arg_5[for_iter_63][arith_addi_74]; 
        double arith_mulf_77 = (func_arg_2 * memref_load_76); 
        double memref_load_78 = func_arg_5[for_iter_65][arith_addi_74]; 
        double arith_mulf_79 = (arith_mulf_77 * memref_load_78); 
        double arith_addf_80 = (memref_load_75 + arith_mulf_79); 
        func_arg_4[for_iter_63][for_iter_65] = arith_addf_80; 
        int arith_addi_81 = (arith_muli_67 + arith_const_9); 
        double memref_load_82 = func_arg_4[for_iter_63][for_iter_65]; 
        double memref_load_83 = func_arg_5[for_iter_63][arith_addi_81]; 
        double arith_mulf_84 = (func_arg_2 * memref_load_83); 
        double memref_load_85 = func_arg_5[for_iter_65][arith_addi_81]; 
        double arith_mulf_86 = (arith_mulf_84 * memref_load_85); 
        double arith_addf_87 = (memref_load_82 + arith_mulf_86); 
        func_arg_4[for_iter_63][for_iter_65] = arith_addf_87; 
        int arith_addi_88 = (arith_muli_67 + arith_const_8); 
        double memref_load_89 = func_arg_4[for_iter_63][for_iter_65]; 
        double memref_load_90 = func_arg_5[for_iter_63][arith_addi_88]; 
        double arith_mulf_91 = (func_arg_2 * memref_load_90); 
        double memref_load_92 = func_arg_5[for_iter_65][arith_addi_88]; 
        double arith_mulf_93 = (arith_mulf_91 * memref_load_92); 
        double arith_addf_94 = (memref_load_89 + arith_mulf_93); 
        func_arg_4[for_iter_63][for_iter_65] = arith_addf_94; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
