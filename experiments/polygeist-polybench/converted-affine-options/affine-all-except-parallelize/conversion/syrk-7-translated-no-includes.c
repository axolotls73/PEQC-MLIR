#pragma pocc-region-start
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 5; 
  int arith_const_7 = -4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 4; 
  int arith_const_12 = 30; 
  int arith_const_13 = 32; 
  int arith_const_14 = 0; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_14; for_iter_16 < arith_const_15; for_iter_16 += arith_const_15) {
    int arith_muli_17 = (for_iter_16 * arith_const_13); 
    for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_12; for_iter_18 += arith_const_15) {
      int arith_addi_19 = (arith_muli_17 + for_iter_18); 
      int arith_muli_20 = (for_iter_16 * arith_const_13); 
      int arith_addi_21 = (for_iter_18 + arith_muli_20); 
      int arith_addi_22 = (arith_addi_21 + arith_const_15); 
      int arith_cmpi_23 = (arith_addi_22 < arith_const_14); 
      int arith_subi_24 = (arith_const_10 - arith_addi_22); 
      int arith_select_25 = (arith_cmpi_23 ? arith_subi_24 : arith_addi_22); 
      int arith_divi_26 = (arith_select_25 / arith_const_11); 
      int arith_subi_27 = (arith_const_10 - arith_divi_26); 
      int arith_select_28 = (arith_cmpi_23 ? arith_subi_27 : arith_divi_26); 
      for (int for_iter_29 = arith_const_14; for_iter_29 < arith_select_28; for_iter_29 += arith_const_15) {
        int arith_muli_30 = (for_iter_29 * arith_const_11); 
        double memref_load_31 = func_arg_4[arith_addi_19][arith_muli_30]; 
        double arith_mulf_32 = (memref_load_31 * func_arg_3); 
        func_arg_4[arith_addi_19][arith_muli_30] = arith_mulf_32; 
        int arith_addi_33 = (arith_muli_30 + arith_const_15); 
        double memref_load_34 = func_arg_4[arith_addi_19][arith_addi_33]; 
        double arith_mulf_35 = (memref_load_34 * func_arg_3); 
        func_arg_4[arith_addi_19][arith_addi_33] = arith_mulf_35; 
        int arith_addi_36 = (arith_muli_30 + arith_const_9); 
        double memref_load_37 = func_arg_4[arith_addi_19][arith_addi_36]; 
        double arith_mulf_38 = (memref_load_37 * func_arg_3); 
        func_arg_4[arith_addi_19][arith_addi_36] = arith_mulf_38; 
        int arith_addi_39 = (arith_muli_30 + arith_const_8); 
        double memref_load_40 = func_arg_4[arith_addi_19][arith_addi_39]; 
        double arith_mulf_41 = (memref_load_40 * func_arg_3); 
        func_arg_4[arith_addi_19][arith_addi_39] = arith_mulf_41; 
      }
      int arith_muli_42 = (for_iter_16 * arith_const_13); 
      int arith_addi_43 = (for_iter_18 + arith_muli_42); 
      int arith_muli_44 = (for_iter_16 * arith_const_13); 
      int arith_addi_45 = (for_iter_18 + arith_muli_44); 
      int arith_addi_46 = (arith_addi_45 + arith_const_15); 
      int arith_cmpi_47 = (arith_addi_46 < arith_const_14); 
      int arith_subi_48 = (arith_const_10 - arith_addi_46); 
      int arith_select_49 = (arith_cmpi_47 ? arith_subi_48 : arith_addi_46); 
      int arith_divi_50 = (arith_select_49 / arith_const_11); 
      int arith_subi_51 = (arith_const_10 - arith_divi_50); 
      int arith_select_52 = (arith_cmpi_47 ? arith_subi_51 : arith_divi_50); 
      int arith_muli_53 = (arith_select_52 * arith_const_7); 
      int arith_addi_54 = (arith_addi_43 + arith_muli_53); 
      int arith_addi_55 = (arith_addi_54 + arith_const_15); 
      for (int for_iter_56 = arith_const_14; for_iter_56 < arith_addi_55; for_iter_56 += arith_const_15) {
        int arith_addi_57 = (arith_addi_19 + arith_const_15); 
        int arith_cmpi_58 = (arith_addi_57 < arith_const_14); 
        int arith_subi_59 = (arith_const_10 - arith_addi_57); 
        int arith_select_60 = (arith_cmpi_58 ? arith_subi_59 : arith_addi_57); 
        int arith_divi_61 = (arith_select_60 / arith_const_11); 
        int arith_subi_62 = (arith_const_10 - arith_divi_61); 
        int arith_select_63 = (arith_cmpi_58 ? arith_subi_62 : arith_divi_61); 
        int arith_muli_64 = (arith_select_63 * arith_const_11); 
        int arith_addi_65 = (for_iter_56 + arith_muli_64); 
        double memref_load_66 = func_arg_4[arith_addi_19][arith_addi_65]; 
        double arith_mulf_67 = (memref_load_66 * func_arg_3); 
        func_arg_4[arith_addi_19][arith_addi_65] = arith_mulf_67; 
      }
    }
  }
  for (int for_iter_68 = arith_const_14; for_iter_68 < arith_const_12; for_iter_68 += arith_const_15) {
    int arith_addi_69 = (for_iter_68 + arith_const_15); 
    for (int for_iter_70 = arith_const_14; for_iter_70 < arith_addi_69; for_iter_70 += arith_const_15) {
      for (int for_iter_71 = arith_const_14; for_iter_71 < arith_const_6; for_iter_71 += arith_const_15) {
        int arith_muli_72 = (for_iter_71 * arith_const_11); 
        double memref_load_73 = func_arg_4[for_iter_68][for_iter_70]; 
        double memref_load_74 = func_arg_5[for_iter_68][arith_muli_72]; 
        double arith_mulf_75 = (func_arg_2 * memref_load_74); 
        double memref_load_76 = func_arg_5[for_iter_70][arith_muli_72]; 
        double arith_mulf_77 = (arith_mulf_75 * memref_load_76); 
        double arith_addf_78 = (memref_load_73 + arith_mulf_77); 
        func_arg_4[for_iter_68][for_iter_70] = arith_addf_78; 
        int arith_addi_79 = (arith_muli_72 + arith_const_15); 
        double memref_load_80 = func_arg_4[for_iter_68][for_iter_70]; 
        double memref_load_81 = func_arg_5[for_iter_68][arith_addi_79]; 
        double arith_mulf_82 = (func_arg_2 * memref_load_81); 
        double memref_load_83 = func_arg_5[for_iter_70][arith_addi_79]; 
        double arith_mulf_84 = (arith_mulf_82 * memref_load_83); 
        double arith_addf_85 = (memref_load_80 + arith_mulf_84); 
        func_arg_4[for_iter_68][for_iter_70] = arith_addf_85; 
        int arith_addi_86 = (arith_muli_72 + arith_const_9); 
        double memref_load_87 = func_arg_4[for_iter_68][for_iter_70]; 
        double memref_load_88 = func_arg_5[for_iter_68][arith_addi_86]; 
        double arith_mulf_89 = (func_arg_2 * memref_load_88); 
        double memref_load_90 = func_arg_5[for_iter_70][arith_addi_86]; 
        double arith_mulf_91 = (arith_mulf_89 * memref_load_90); 
        double arith_addf_92 = (memref_load_87 + arith_mulf_91); 
        func_arg_4[for_iter_68][for_iter_70] = arith_addf_92; 
        int arith_addi_93 = (arith_muli_72 + arith_const_8); 
        double memref_load_94 = func_arg_4[for_iter_68][for_iter_70]; 
        double memref_load_95 = func_arg_5[for_iter_68][arith_addi_93]; 
        double arith_mulf_96 = (func_arg_2 * memref_load_95); 
        double memref_load_97 = func_arg_5[for_iter_70][arith_addi_93]; 
        double arith_mulf_98 = (arith_mulf_96 * memref_load_97); 
        double arith_addf_99 = (memref_load_94 + arith_mulf_98); 
        func_arg_4[for_iter_68][for_iter_70] = arith_addf_99; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
