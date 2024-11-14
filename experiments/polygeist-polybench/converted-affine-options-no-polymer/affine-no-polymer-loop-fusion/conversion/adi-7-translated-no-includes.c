#pragma pocc-region-start
void kernel_adi(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = -1; 
  int arith_const_8 = 0; 
  int arith_const_9 = 19; 
  double arith_const_10 = 10.000000; 
  double arith_const_11 = -19.000000; 
  double arith_const_12 = -39.000000; 
  double arith_const_13 = -10.000000; 
  double arith_const_14 = -20.000000; 
  double arith_const_15 = 21.000000; 
  double arith_const_16 = 41.000000; 
  double arith_const_17 = 20.000000; 
  double arith_const_18 = 0.000000; 
  double arith_const_19 = 1.000000; 
  int arith_const_20 = 1; 
  int arith_const_21 = 21; 
  for (int for_iter_22 = arith_const_20; for_iter_22 < arith_const_21; for_iter_22 += arith_const_20) {
    for (int for_iter_23 = arith_const_20; for_iter_23 < arith_const_9; for_iter_23 += arith_const_20) {
      func_arg_3[arith_const_8][for_iter_23] = arith_const_19; 
      func_arg_4[for_iter_23][arith_const_8] = arith_const_18; 
      double memref_load_24 = func_arg_3[arith_const_8][for_iter_23]; 
      func_arg_5[for_iter_23][arith_const_8] = memref_load_24; 
      for (int for_iter_25 = arith_const_20; for_iter_25 < arith_const_9; for_iter_25 += arith_const_20) {
        int arith_addi_26 = (for_iter_25 + arith_const_7); 
        double memref_load_27 = func_arg_4[for_iter_23][arith_addi_26]; 
        double arith_mulf_28 = (memref_load_27 * arith_const_14); 
        double arith_addf_29 = (arith_mulf_28 + arith_const_16); 
        double arith_divf_30 = (arith_const_17 / arith_addf_29); 
        func_arg_4[for_iter_23][for_iter_25] = arith_divf_30; 
        int arith_addi_31 = (for_iter_23 + arith_const_7); 
        double memref_load_32 = func_arg_2[for_iter_25][arith_addi_31]; 
        double arith_mulf_33 = (memref_load_32 * arith_const_10); 
        double memref_load_34 = func_arg_2[for_iter_25][for_iter_23]; 
        double arith_mulf_35 = (memref_load_34 * arith_const_11); 
        double arith_addf_36 = (arith_mulf_33 + arith_mulf_35); 
        int arith_addi_37 = (for_iter_23 + arith_const_20); 
        double memref_load_38 = func_arg_2[for_iter_25][arith_addi_37]; 
        double arith_mulf_39 = (memref_load_38 * arith_const_13); 
        double arith_subf_40 = (arith_addf_36 - arith_mulf_39); 
        int arith_addi_41 = (for_iter_25 + arith_const_7); 
        double memref_load_42 = func_arg_5[for_iter_23][arith_addi_41]; 
        double arith_mulf_43 = (memref_load_42 * arith_const_14); 
        double arith_subf_44 = (arith_subf_40 - arith_mulf_43); 
        double arith_divf_45 = (arith_subf_44 / arith_addf_29); 
        func_arg_5[for_iter_23][for_iter_25] = arith_divf_45; 
      }
      func_arg_3[arith_const_9][for_iter_23] = arith_const_19; 
      for (int for_iter_46 = arith_const_20; for_iter_46 < arith_const_9; for_iter_46 += arith_const_20) {
        int arith_muli_47 = (for_iter_46 * arith_const_7); 
        int arith_addi_48 = (arith_muli_47 + arith_const_9); 
        int arith_addi_49 = (arith_addi_48 + arith_const_7); 
        double memref_load_50 = func_arg_4[for_iter_23][arith_addi_49]; 
        double arith_mulf_51 = (memref_load_50 * arith_const_14); 
        double arith_addf_52 = (arith_mulf_51 + arith_const_16); 
        double arith_divf_53 = (arith_const_17 / arith_addf_52); 
        func_arg_4[for_iter_23][arith_addi_48] = arith_divf_53; 
        int arith_addi_54 = (for_iter_23 + arith_const_7); 
        double memref_load_55 = func_arg_2[arith_addi_48][arith_addi_54]; 
        double arith_mulf_56 = (memref_load_55 * arith_const_10); 
        double memref_load_57 = func_arg_2[arith_addi_48][for_iter_23]; 
        double arith_mulf_58 = (memref_load_57 * arith_const_11); 
        double arith_addf_59 = (arith_mulf_56 + arith_mulf_58); 
        int arith_addi_60 = (for_iter_23 + arith_const_20); 
        double memref_load_61 = func_arg_2[arith_addi_48][arith_addi_60]; 
        double arith_mulf_62 = (memref_load_61 * arith_const_13); 
        double arith_subf_63 = (arith_addf_59 - arith_mulf_62); 
        int arith_addi_64 = (arith_addi_48 + arith_const_7); 
        double memref_load_65 = func_arg_5[for_iter_23][arith_addi_64]; 
        double arith_mulf_66 = (memref_load_65 * arith_const_14); 
        double arith_subf_67 = (arith_subf_63 - arith_mulf_66); 
        double arith_divf_68 = (arith_subf_67 / arith_addf_52); 
        func_arg_5[for_iter_23][arith_addi_48] = arith_divf_68; 
        int arith_muli_69 = (for_iter_46 * arith_const_7); 
        int arith_addi_70 = (arith_muli_69 + arith_const_9); 
        double memref_load_71 = func_arg_4[for_iter_23][arith_addi_70]; 
        int arith_muli_72 = (for_iter_46 * arith_const_7); 
        int arith_addi_73 = (arith_muli_72 + arith_const_6); 
        double memref_load_74 = func_arg_3[arith_addi_73][for_iter_23]; 
        double arith_mulf_75 = (memref_load_71 * memref_load_74); 
        int arith_muli_76 = (for_iter_46 * arith_const_7); 
        int arith_addi_77 = (arith_muli_76 + arith_const_9); 
        double memref_load_78 = func_arg_5[for_iter_23][arith_addi_77]; 
        double arith_addf_79 = (arith_mulf_75 + memref_load_78); 
        int arith_muli_80 = (for_iter_46 * arith_const_7); 
        int arith_addi_81 = (arith_muli_80 + arith_const_9); 
        func_arg_3[arith_addi_81][for_iter_23] = arith_addf_79; 
      }
    }
    for (int for_iter_82 = arith_const_20; for_iter_82 < arith_const_9; for_iter_82 += arith_const_20) {
      func_arg_2[for_iter_82][arith_const_8] = arith_const_19; 
      func_arg_4[for_iter_82][arith_const_8] = arith_const_18; 
      double memref_load_83 = func_arg_2[for_iter_82][arith_const_8]; 
      func_arg_5[for_iter_82][arith_const_8] = memref_load_83; 
      for (int for_iter_84 = arith_const_20; for_iter_84 < arith_const_9; for_iter_84 += arith_const_20) {
        int arith_addi_85 = (for_iter_84 + arith_const_7); 
        double memref_load_86 = func_arg_4[for_iter_82][arith_addi_85]; 
        double arith_mulf_87 = (memref_load_86 * arith_const_13); 
        double arith_addf_88 = (arith_mulf_87 + arith_const_15); 
        double arith_divf_89 = (arith_const_10 / arith_addf_88); 
        func_arg_4[for_iter_82][for_iter_84] = arith_divf_89; 
        int arith_addi_90 = (for_iter_82 + arith_const_7); 
        double memref_load_91 = func_arg_3[arith_addi_90][for_iter_84]; 
        double arith_mulf_92 = (memref_load_91 * arith_const_17); 
        double memref_load_93 = func_arg_3[for_iter_82][for_iter_84]; 
        double arith_mulf_94 = (memref_load_93 * arith_const_12); 
        double arith_addf_95 = (arith_mulf_92 + arith_mulf_94); 
        int arith_addi_96 = (for_iter_82 + arith_const_20); 
        double memref_load_97 = func_arg_3[arith_addi_96][for_iter_84]; 
        double arith_mulf_98 = (memref_load_97 * arith_const_14); 
        double arith_subf_99 = (arith_addf_95 - arith_mulf_98); 
        int arith_addi_100 = (for_iter_84 + arith_const_7); 
        double memref_load_101 = func_arg_5[for_iter_82][arith_addi_100]; 
        double arith_mulf_102 = (memref_load_101 * arith_const_13); 
        double arith_subf_103 = (arith_subf_99 - arith_mulf_102); 
        double arith_divf_104 = (arith_subf_103 / arith_addf_88); 
        func_arg_5[for_iter_82][for_iter_84] = arith_divf_104; 
      }
      func_arg_2[for_iter_82][arith_const_9] = arith_const_19; 
      for (int for_iter_105 = arith_const_20; for_iter_105 < arith_const_9; for_iter_105 += arith_const_20) {
        int arith_muli_106 = (for_iter_105 * arith_const_7); 
        int arith_addi_107 = (arith_muli_106 + arith_const_9); 
        int arith_addi_108 = (arith_addi_107 + arith_const_7); 
        double memref_load_109 = func_arg_4[for_iter_82][arith_addi_108]; 
        double arith_mulf_110 = (memref_load_109 * arith_const_13); 
        double arith_addf_111 = (arith_mulf_110 + arith_const_15); 
        double arith_divf_112 = (arith_const_10 / arith_addf_111); 
        func_arg_4[for_iter_82][arith_addi_107] = arith_divf_112; 
        int arith_addi_113 = (for_iter_82 + arith_const_7); 
        double memref_load_114 = func_arg_3[arith_addi_113][arith_addi_107]; 
        double arith_mulf_115 = (memref_load_114 * arith_const_17); 
        double memref_load_116 = func_arg_3[for_iter_82][arith_addi_107]; 
        double arith_mulf_117 = (memref_load_116 * arith_const_12); 
        double arith_addf_118 = (arith_mulf_115 + arith_mulf_117); 
        int arith_addi_119 = (for_iter_82 + arith_const_20); 
        double memref_load_120 = func_arg_3[arith_addi_119][arith_addi_107]; 
        double arith_mulf_121 = (memref_load_120 * arith_const_14); 
        double arith_subf_122 = (arith_addf_118 - arith_mulf_121); 
        int arith_addi_123 = (arith_addi_107 + arith_const_7); 
        double memref_load_124 = func_arg_5[for_iter_82][arith_addi_123]; 
        double arith_mulf_125 = (memref_load_124 * arith_const_13); 
        double arith_subf_126 = (arith_subf_122 - arith_mulf_125); 
        double arith_divf_127 = (arith_subf_126 / arith_addf_111); 
        func_arg_5[for_iter_82][arith_addi_107] = arith_divf_127; 
        int arith_muli_128 = (for_iter_105 * arith_const_7); 
        int arith_addi_129 = (arith_muli_128 + arith_const_9); 
        double memref_load_130 = func_arg_4[for_iter_82][arith_addi_129]; 
        int arith_muli_131 = (for_iter_105 * arith_const_7); 
        int arith_addi_132 = (arith_muli_131 + arith_const_6); 
        double memref_load_133 = func_arg_2[for_iter_82][arith_addi_132]; 
        double arith_mulf_134 = (memref_load_130 * memref_load_133); 
        int arith_muli_135 = (for_iter_105 * arith_const_7); 
        int arith_addi_136 = (arith_muli_135 + arith_const_9); 
        double memref_load_137 = func_arg_5[for_iter_82][arith_addi_136]; 
        double arith_addf_138 = (arith_mulf_134 + memref_load_137); 
        int arith_muli_139 = (for_iter_105 * arith_const_7); 
        int arith_addi_140 = (arith_muli_139 + arith_const_9); 
        func_arg_2[for_iter_82][arith_addi_140] = arith_addf_138; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
