#pragma pocc-region-start
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 27; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = 4; 
  int arith_const_11 = 32; 
  double arith_const_12 = 1.000000; 
  double arith_const_13 = 0.000000; 
  double arith_const_14 = 0.100000; 
  int arith_const_15 = 0; 
  int arith_const_16 = 28; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
    func_arg_5[for_iter_18] = arith_const_13; 
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_11; for_iter_19 += arith_const_10) {
      double memref_load_20 = func_arg_3[for_iter_19][for_iter_18]; 
      double memref_load_21 = func_arg_5[for_iter_18]; 
      double arith_addf_22 = (memref_load_21 + memref_load_20); 
      func_arg_5[for_iter_18] = arith_addf_22; 
      int arith_addi_23 = (for_iter_19 + arith_const_17); 
      double memref_load_24 = func_arg_3[arith_addi_23][for_iter_18]; 
      double memref_load_25 = func_arg_5[for_iter_18]; 
      double arith_addf_26 = (memref_load_25 + memref_load_24); 
      func_arg_5[for_iter_18] = arith_addf_26; 
      int arith_addi_27 = (for_iter_19 + arith_const_9); 
      double memref_load_28 = func_arg_3[arith_addi_27][for_iter_18]; 
      double memref_load_29 = func_arg_5[for_iter_18]; 
      double arith_addf_30 = (memref_load_29 + memref_load_28); 
      func_arg_5[for_iter_18] = arith_addf_30; 
      int arith_addi_31 = (for_iter_19 + arith_const_8); 
      double memref_load_32 = func_arg_3[arith_addi_31][for_iter_18]; 
      double memref_load_33 = func_arg_5[for_iter_18]; 
      double arith_addf_34 = (memref_load_33 + memref_load_32); 
      func_arg_5[for_iter_18] = arith_addf_34; 
    }
    double memref_load_35 = func_arg_5[for_iter_18]; 
    double arith_divf_36 = (memref_load_35 / func_arg_2); 
    func_arg_5[for_iter_18] = arith_divf_36; 
  }
  for (int for_iter_37 = arith_const_15; for_iter_37 < arith_const_16; for_iter_37 += arith_const_17) {
    func_arg_6[for_iter_37] = arith_const_13; 
    for (int for_iter_38 = arith_const_15; for_iter_38 < arith_const_11; for_iter_38 += arith_const_10) {
      double memref_load_39 = func_arg_3[for_iter_38][for_iter_37]; 
      double memref_load_40 = func_arg_5[for_iter_37]; 
      double arith_subf_41 = (memref_load_39 - memref_load_40); 
      double arith_mulf_42 = (arith_subf_41 * arith_subf_41); 
      double memref_load_43 = func_arg_6[for_iter_37]; 
      double arith_addf_44 = (memref_load_43 + arith_mulf_42); 
      func_arg_6[for_iter_37] = arith_addf_44; 
      int arith_addi_45 = (for_iter_38 + arith_const_17); 
      double memref_load_46 = func_arg_3[arith_addi_45][for_iter_37]; 
      double memref_load_47 = func_arg_5[for_iter_37]; 
      double arith_subf_48 = (memref_load_46 - memref_load_47); 
      double arith_mulf_49 = (arith_subf_48 * arith_subf_48); 
      double memref_load_50 = func_arg_6[for_iter_37]; 
      double arith_addf_51 = (memref_load_50 + arith_mulf_49); 
      func_arg_6[for_iter_37] = arith_addf_51; 
      int arith_addi_52 = (for_iter_38 + arith_const_9); 
      double memref_load_53 = func_arg_3[arith_addi_52][for_iter_37]; 
      double memref_load_54 = func_arg_5[for_iter_37]; 
      double arith_subf_55 = (memref_load_53 - memref_load_54); 
      double arith_mulf_56 = (arith_subf_55 * arith_subf_55); 
      double memref_load_57 = func_arg_6[for_iter_37]; 
      double arith_addf_58 = (memref_load_57 + arith_mulf_56); 
      func_arg_6[for_iter_37] = arith_addf_58; 
      int arith_addi_59 = (for_iter_38 + arith_const_8); 
      double memref_load_60 = func_arg_3[arith_addi_59][for_iter_37]; 
      double memref_load_61 = func_arg_5[for_iter_37]; 
      double arith_subf_62 = (memref_load_60 - memref_load_61); 
      double arith_mulf_63 = (arith_subf_62 * arith_subf_62); 
      double memref_load_64 = func_arg_6[for_iter_37]; 
      double arith_addf_65 = (memref_load_64 + arith_mulf_63); 
      func_arg_6[for_iter_37] = arith_addf_65; 
    }
    double memref_load_66 = func_arg_6[for_iter_37]; 
    double arith_divf_67 = (memref_load_66 / func_arg_2); 
    double math_sqrt_68 = sqrt(arith_divf_67); 
    int arith_cmpi_69 = (math_sqrt_68 <= arith_const_14); 
    double arith_select_70 = (arith_cmpi_69 ? arith_const_12 : math_sqrt_68); 
    func_arg_6[for_iter_37] = arith_select_70; 
  }
  double math_sqrt_71 = sqrt(func_arg_2); 
  for (int for_iter_72 = arith_const_15; for_iter_72 < arith_const_11; for_iter_72 += arith_const_17) {
    for (int for_iter_73 = arith_const_15; for_iter_73 < arith_const_16; for_iter_73 += arith_const_10) {
      double memref_load_74 = func_arg_5[for_iter_73]; 
      double memref_load_75 = func_arg_3[for_iter_72][for_iter_73]; 
      double arith_subf_76 = (memref_load_75 - memref_load_74); 
      func_arg_3[for_iter_72][for_iter_73] = arith_subf_76; 
      double memref_load_77 = func_arg_6[for_iter_73]; 
      double arith_mulf_78 = (math_sqrt_71 * memref_load_77); 
      double arith_divf_79 = (arith_subf_76 / arith_mulf_78); 
      func_arg_3[for_iter_72][for_iter_73] = arith_divf_79; 
      int arith_addi_80 = (for_iter_73 + arith_const_17); 
      double memref_load_81 = func_arg_5[arith_addi_80]; 
      double memref_load_82 = func_arg_3[for_iter_72][arith_addi_80]; 
      double arith_subf_83 = (memref_load_82 - memref_load_81); 
      func_arg_3[for_iter_72][arith_addi_80] = arith_subf_83; 
      double memref_load_84 = func_arg_6[arith_addi_80]; 
      double arith_mulf_85 = (math_sqrt_71 * memref_load_84); 
      double arith_divf_86 = (arith_subf_83 / arith_mulf_85); 
      func_arg_3[for_iter_72][arith_addi_80] = arith_divf_86; 
      int arith_addi_87 = (for_iter_73 + arith_const_9); 
      double memref_load_88 = func_arg_5[arith_addi_87]; 
      double memref_load_89 = func_arg_3[for_iter_72][arith_addi_87]; 
      double arith_subf_90 = (memref_load_89 - memref_load_88); 
      func_arg_3[for_iter_72][arith_addi_87] = arith_subf_90; 
      double memref_load_91 = func_arg_6[arith_addi_87]; 
      double arith_mulf_92 = (math_sqrt_71 * memref_load_91); 
      double arith_divf_93 = (arith_subf_90 / arith_mulf_92); 
      func_arg_3[for_iter_72][arith_addi_87] = arith_divf_93; 
      int arith_addi_94 = (for_iter_73 + arith_const_8); 
      double memref_load_95 = func_arg_5[arith_addi_94]; 
      double memref_load_96 = func_arg_3[for_iter_72][arith_addi_94]; 
      double arith_subf_97 = (memref_load_96 - memref_load_95); 
      func_arg_3[for_iter_72][arith_addi_94] = arith_subf_97; 
      double memref_load_98 = func_arg_6[arith_addi_94]; 
      double arith_mulf_99 = (math_sqrt_71 * memref_load_98); 
      double arith_divf_100 = (arith_subf_97 / arith_mulf_99); 
      func_arg_3[for_iter_72][arith_addi_94] = arith_divf_100; 
    }
  }
  for (int for_iter_101 = arith_const_15; for_iter_101 < arith_const_7; for_iter_101 += arith_const_17) {
    func_arg_4[for_iter_101][for_iter_101] = arith_const_12; 
    int arith_addi_102 = (for_iter_101 + arith_const_17); 
    for (int for_iter_103 = arith_addi_102; for_iter_103 < arith_const_16; for_iter_103 += arith_const_17) {
      func_arg_4[for_iter_101][for_iter_103] = arith_const_13; 
      for (int for_iter_104 = arith_const_15; for_iter_104 < arith_const_11; for_iter_104 += arith_const_10) {
        double memref_load_105 = func_arg_3[for_iter_104][for_iter_101]; 
        double memref_load_106 = func_arg_3[for_iter_104][for_iter_103]; 
        double arith_mulf_107 = (memref_load_105 * memref_load_106); 
        double memref_load_108 = func_arg_4[for_iter_101][for_iter_103]; 
        double arith_addf_109 = (memref_load_108 + arith_mulf_107); 
        func_arg_4[for_iter_101][for_iter_103] = arith_addf_109; 
        int arith_addi_110 = (for_iter_104 + arith_const_17); 
        double memref_load_111 = func_arg_3[arith_addi_110][for_iter_101]; 
        double memref_load_112 = func_arg_3[arith_addi_110][for_iter_103]; 
        double arith_mulf_113 = (memref_load_111 * memref_load_112); 
        double memref_load_114 = func_arg_4[for_iter_101][for_iter_103]; 
        double arith_addf_115 = (memref_load_114 + arith_mulf_113); 
        func_arg_4[for_iter_101][for_iter_103] = arith_addf_115; 
        int arith_addi_116 = (for_iter_104 + arith_const_9); 
        double memref_load_117 = func_arg_3[arith_addi_116][for_iter_101]; 
        double memref_load_118 = func_arg_3[arith_addi_116][for_iter_103]; 
        double arith_mulf_119 = (memref_load_117 * memref_load_118); 
        double memref_load_120 = func_arg_4[for_iter_101][for_iter_103]; 
        double arith_addf_121 = (memref_load_120 + arith_mulf_119); 
        func_arg_4[for_iter_101][for_iter_103] = arith_addf_121; 
        int arith_addi_122 = (for_iter_104 + arith_const_8); 
        double memref_load_123 = func_arg_3[arith_addi_122][for_iter_101]; 
        double memref_load_124 = func_arg_3[arith_addi_122][for_iter_103]; 
        double arith_mulf_125 = (memref_load_123 * memref_load_124); 
        double memref_load_126 = func_arg_4[for_iter_101][for_iter_103]; 
        double arith_addf_127 = (memref_load_126 + arith_mulf_125); 
        func_arg_4[for_iter_101][for_iter_103] = arith_addf_127; 
      }
      double memref_load_128 = func_arg_4[for_iter_101][for_iter_103]; 
      func_arg_4[for_iter_103][for_iter_101] = memref_load_128; 
    }
  }
  func_arg_4[arith_const_7][arith_const_7] = arith_const_12; 
  return; 

}
#pragma pocc-region-end
