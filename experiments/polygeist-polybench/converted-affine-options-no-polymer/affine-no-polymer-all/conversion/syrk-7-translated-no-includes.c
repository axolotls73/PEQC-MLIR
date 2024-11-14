#pragma pocc-region-start
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = -4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 4; 
  int arith_const_12 = 30; 
  int arith_const_13 = 32; 
  int arith_const_14 = 0; 
  int arith_const_15 = 1; 
  int* async_group_16; 
  int async_group_index_17 = 0; 
  int for_iter_arg_19 = arith_const_14; 
  for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_15; for_iter_18 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_20); 
    #pragma peqc async_execute
    {
      int arith_muli_21 = (for_iter_18 * arith_const_13); 
      for (int for_iter_22 = arith_const_14; for_iter_22 < arith_const_12; for_iter_22 += arith_const_15) {
        int arith_addi_23 = (arith_muli_21 + for_iter_22); 
        int arith_muli_24 = (for_iter_18 * arith_const_13); 
        int arith_addi_25 = (for_iter_22 + arith_muli_24); 
        int arith_addi_26 = (arith_addi_25 + arith_const_15); 
        int arith_cmpi_27 = (arith_addi_26 < arith_const_14); 
        int arith_subi_28 = (arith_const_10 - arith_addi_26); 
        int arith_select_29 = (arith_cmpi_27 ? arith_subi_28 : arith_addi_26); 
        int arith_divi_30 = (arith_select_29 / arith_const_11); 
        int arith_subi_31 = (arith_const_10 - arith_divi_30); 
        int arith_select_32 = (arith_cmpi_27 ? arith_subi_31 : arith_divi_30); 
        for (int for_iter_33 = arith_const_14; for_iter_33 < arith_select_32; for_iter_33 += arith_const_15) {
          int arith_muli_34 = (for_iter_33 * arith_const_11); 
          double memref_load_35 = func_arg_4[arith_addi_23][arith_muli_34]; 
          double arith_mulf_36 = (memref_load_35 * func_arg_3); 
          func_arg_4[arith_addi_23][arith_muli_34] = arith_mulf_36; 
          int arith_addi_37 = (arith_muli_34 + arith_const_15); 
          double memref_load_38 = func_arg_4[arith_addi_23][arith_addi_37]; 
          double arith_mulf_39 = (memref_load_38 * func_arg_3); 
          func_arg_4[arith_addi_23][arith_addi_37] = arith_mulf_39; 
          int arith_addi_40 = (arith_muli_34 + arith_const_9); 
          double memref_load_41 = func_arg_4[arith_addi_23][arith_addi_40]; 
          double arith_mulf_42 = (memref_load_41 * func_arg_3); 
          func_arg_4[arith_addi_23][arith_addi_40] = arith_mulf_42; 
          int arith_addi_43 = (arith_muli_34 + arith_const_8); 
          double memref_load_44 = func_arg_4[arith_addi_23][arith_addi_43]; 
          double arith_mulf_45 = (memref_load_44 * func_arg_3); 
          func_arg_4[arith_addi_23][arith_addi_43] = arith_mulf_45; 
        }
        int arith_muli_46 = (for_iter_18 * arith_const_13); 
        int arith_addi_47 = (for_iter_22 + arith_muli_46); 
        int arith_muli_48 = (for_iter_18 * arith_const_13); 
        int arith_addi_49 = (for_iter_22 + arith_muli_48); 
        int arith_addi_50 = (arith_addi_49 + arith_const_15); 
        int arith_cmpi_51 = (arith_addi_50 < arith_const_14); 
        int arith_subi_52 = (arith_const_10 - arith_addi_50); 
        int arith_select_53 = (arith_cmpi_51 ? arith_subi_52 : arith_addi_50); 
        int arith_divi_54 = (arith_select_53 / arith_const_11); 
        int arith_subi_55 = (arith_const_10 - arith_divi_54); 
        int arith_select_56 = (arith_cmpi_51 ? arith_subi_55 : arith_divi_54); 
        int arith_muli_57 = (arith_select_56 * arith_const_7); 
        int arith_addi_58 = (arith_addi_47 + arith_muli_57); 
        int arith_addi_59 = (arith_addi_58 + arith_const_15); 
        for (int for_iter_60 = arith_const_14; for_iter_60 < arith_addi_59; for_iter_60 += arith_const_15) {
          int arith_addi_61 = (arith_addi_23 + arith_const_15); 
          int arith_cmpi_62 = (arith_addi_61 < arith_const_14); 
          int arith_subi_63 = (arith_const_10 - arith_addi_61); 
          int arith_select_64 = (arith_cmpi_62 ? arith_subi_63 : arith_addi_61); 
          int arith_divi_65 = (arith_select_64 / arith_const_11); 
          int arith_subi_66 = (arith_const_10 - arith_divi_65); 
          int arith_select_67 = (arith_cmpi_62 ? arith_subi_66 : arith_divi_65); 
          int arith_muli_68 = (arith_select_67 * arith_const_11); 
          int arith_addi_69 = (for_iter_60 + arith_muli_68); 
          double memref_load_70 = func_arg_4[arith_addi_23][arith_addi_69]; 
          double arith_mulf_71 = (memref_load_70 * func_arg_3); 
          func_arg_4[arith_addi_23][arith_addi_69] = arith_mulf_71; 
        }
        for (int for_iter_72 = arith_const_14; for_iter_72 < arith_const_6; for_iter_72 += arith_const_15) {
          double memref_load_73 = func_arg_5[arith_addi_23][for_iter_72]; 
          double arith_mulf_74 = (func_arg_2 * memref_load_73); 
          double memref_load_75 = func_arg_5[arith_addi_23][for_iter_72]; 
          double arith_mulf_76 = (func_arg_2 * memref_load_75); 
          double memref_load_77 = func_arg_5[arith_addi_23][for_iter_72]; 
          double arith_mulf_78 = (func_arg_2 * memref_load_77); 
          double memref_load_79 = func_arg_5[arith_addi_23][for_iter_72]; 
          double arith_mulf_80 = (func_arg_2 * memref_load_79); 
          int arith_muli_81 = (for_iter_18 * arith_const_13); 
          int arith_addi_82 = (for_iter_22 + arith_muli_81); 
          int arith_addi_83 = (arith_addi_82 + arith_const_15); 
          int arith_cmpi_84 = (arith_addi_83 < arith_const_14); 
          int arith_subi_85 = (arith_const_10 - arith_addi_83); 
          int arith_select_86 = (arith_cmpi_84 ? arith_subi_85 : arith_addi_83); 
          int arith_divi_87 = (arith_select_86 / arith_const_11); 
          int arith_subi_88 = (arith_const_10 - arith_divi_87); 
          int arith_select_89 = (arith_cmpi_84 ? arith_subi_88 : arith_divi_87); 
          for (int for_iter_90 = arith_const_14; for_iter_90 < arith_select_89; for_iter_90 += arith_const_15) {
            int arith_muli_91 = (for_iter_90 * arith_const_11); 
            double memref_load_92 = func_arg_5[arith_muli_91][for_iter_72]; 
            double arith_mulf_93 = (arith_mulf_74 * memref_load_92); 
            double memref_load_94 = func_arg_4[arith_addi_23][arith_muli_91]; 
            double arith_addf_95 = (memref_load_94 + arith_mulf_93); 
            func_arg_4[arith_addi_23][arith_muli_91] = arith_addf_95; 
            int arith_addi_96 = (arith_muli_91 + arith_const_15); 
            double memref_load_97 = func_arg_5[arith_addi_96][for_iter_72]; 
            double arith_mulf_98 = (arith_mulf_76 * memref_load_97); 
            double memref_load_99 = func_arg_4[arith_addi_23][arith_addi_96]; 
            double arith_addf_100 = (memref_load_99 + arith_mulf_98); 
            func_arg_4[arith_addi_23][arith_addi_96] = arith_addf_100; 
            int arith_addi_101 = (arith_muli_91 + arith_const_9); 
            double memref_load_102 = func_arg_5[arith_addi_101][for_iter_72]; 
            double arith_mulf_103 = (arith_mulf_78 * memref_load_102); 
            double memref_load_104 = func_arg_4[arith_addi_23][arith_addi_101]; 
            double arith_addf_105 = (memref_load_104 + arith_mulf_103); 
            func_arg_4[arith_addi_23][arith_addi_101] = arith_addf_105; 
            int arith_addi_106 = (arith_muli_91 + arith_const_8); 
            double memref_load_107 = func_arg_5[arith_addi_106][for_iter_72]; 
            double arith_mulf_108 = (arith_mulf_80 * memref_load_107); 
            double memref_load_109 = func_arg_4[arith_addi_23][arith_addi_106]; 
            double arith_addf_110 = (memref_load_109 + arith_mulf_108); 
            func_arg_4[arith_addi_23][arith_addi_106] = arith_addf_110; 
          }
          double memref_load_111 = func_arg_5[arith_addi_23][for_iter_72]; 
          double arith_mulf_112 = (func_arg_2 * memref_load_111); 
          int arith_muli_113 = (for_iter_18 * arith_const_13); 
          int arith_addi_114 = (for_iter_22 + arith_muli_113); 
          int arith_muli_115 = (for_iter_18 * arith_const_13); 
          int arith_addi_116 = (for_iter_22 + arith_muli_115); 
          int arith_addi_117 = (arith_addi_116 + arith_const_15); 
          int arith_cmpi_118 = (arith_addi_117 < arith_const_14); 
          int arith_subi_119 = (arith_const_10 - arith_addi_117); 
          int arith_select_120 = (arith_cmpi_118 ? arith_subi_119 : arith_addi_117); 
          int arith_divi_121 = (arith_select_120 / arith_const_11); 
          int arith_subi_122 = (arith_const_10 - arith_divi_121); 
          int arith_select_123 = (arith_cmpi_118 ? arith_subi_122 : arith_divi_121); 
          int arith_muli_124 = (arith_select_123 * arith_const_7); 
          int arith_addi_125 = (arith_addi_114 + arith_muli_124); 
          int arith_addi_126 = (arith_addi_125 + arith_const_15); 
          for (int for_iter_127 = arith_const_14; for_iter_127 < arith_addi_126; for_iter_127 += arith_const_15) {
            int arith_addi_128 = (arith_addi_23 + arith_const_15); 
            int arith_cmpi_129 = (arith_addi_128 < arith_const_14); 
            int arith_subi_130 = (arith_const_10 - arith_addi_128); 
            int arith_select_131 = (arith_cmpi_129 ? arith_subi_130 : arith_addi_128); 
            int arith_divi_132 = (arith_select_131 / arith_const_11); 
            int arith_subi_133 = (arith_const_10 - arith_divi_132); 
            int arith_select_134 = (arith_cmpi_129 ? arith_subi_133 : arith_divi_132); 
            int arith_muli_135 = (arith_select_134 * arith_const_11); 
            int arith_addi_136 = (for_iter_127 + arith_muli_135); 
            double memref_load_137 = func_arg_5[arith_addi_136][for_iter_72]; 
            double arith_mulf_138 = (arith_mulf_112 * memref_load_137); 
            double memref_load_139 = func_arg_4[arith_addi_23][arith_addi_136]; 
            double arith_addf_140 = (memref_load_139 + arith_mulf_138); 
            func_arg_4[arith_addi_23][arith_addi_136] = arith_addf_140; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_20, PAST_TASK_FINISHED); 
    }
    async_group_16[async_group_index_17] = execute_token_20; 
    async_group_index_17++; 
    int arith_addi_141 = (for_iter_arg_19 + arith_const_15); 
    for_iter_arg_19 = arith_addi_141; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_16, async_group_index_17, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
