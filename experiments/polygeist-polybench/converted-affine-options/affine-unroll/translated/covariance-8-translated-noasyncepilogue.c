#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
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
  int arith_const_15 = 3; 
  int arith_const_16 = 2; 
  int arith_const_17 = 4; 
  int arith_const_18 = -1; 
  int arith_const_19 = 1; 
  int arith_const_20 = 28; 
  int arith_const_21 = 0; 
  double arith_const_22 = 1.000000; 
  double arith_const_23 = 0.000000; 
  double* memref_alloca_24; 
  double* memref_alloca_25; 
  for (int for_iter_26 = arith_const_21; for_iter_26 < arith_const_20; for_iter_26 += arith_const_19) {
    int arith_muli_27 = (for_iter_26 * arith_const_18); 
    int arith_cmpi_28 = (arith_muli_27 < arith_const_21); 
    int arith_subi_29 = (arith_const_18 - arith_muli_27); 
    int arith_select_30 = (arith_cmpi_28 ? arith_subi_29 : arith_muli_27); 
    int arith_divi_31 = (arith_select_30 / arith_const_17); 
    int arith_subi_32 = (arith_const_18 - arith_divi_31); 
    int arith_select_33 = (arith_cmpi_28 ? arith_subi_32 : arith_divi_31); 
    int arith_muli_34 = (arith_select_33 * arith_const_17); 
    int arith_addi_35 = (for_iter_26 + arith_muli_34); 
    int arith_addi_36 = (arith_addi_35 + arith_const_20); 
    for (int for_iter_37 = for_iter_26; for_iter_37 < arith_addi_36; for_iter_37 += arith_const_17) {
      func_arg_4[for_iter_26][for_iter_37] = arith_const_23; 
      int arith_addi_38 = (for_iter_37 + arith_const_19); 
      func_arg_4[for_iter_26][arith_addi_38] = arith_const_23; 
      int arith_addi_39 = (for_iter_37 + arith_const_16); 
      func_arg_4[for_iter_26][arith_addi_39] = arith_const_23; 
      int arith_addi_40 = (for_iter_37 + arith_const_15); 
      func_arg_4[for_iter_26][arith_addi_40] = arith_const_23; 
    }
    int arith_muli_41 = (for_iter_26 * arith_const_18); 
    int arith_cmpi_42 = (arith_muli_41 < arith_const_21); 
    int arith_subi_43 = (arith_const_18 - arith_muli_41); 
    int arith_select_44 = (arith_cmpi_42 ? arith_subi_43 : arith_muli_41); 
    int arith_divi_45 = (arith_select_44 / arith_const_17); 
    int arith_subi_46 = (arith_const_18 - arith_divi_45); 
    int arith_select_47 = (arith_cmpi_42 ? arith_subi_46 : arith_divi_45); 
    int arith_muli_48 = (arith_select_47 * arith_const_17); 
    int arith_addi_49 = (for_iter_26 + arith_muli_48); 
    int arith_addi_50 = (arith_addi_49 + arith_const_20); 
    for (int for_iter_51 = arith_addi_50; for_iter_51 < arith_const_20; for_iter_51 += arith_const_19) {
      func_arg_4[for_iter_26][for_iter_51] = arith_const_23; 
    }
  }
  double arith_subf_52 = (func_arg_2 - arith_const_22); 
  memref_alloca_25[arith_const_21] = arith_subf_52; 
  for (int for_iter_53 = arith_const_21; for_iter_53 < arith_const_20; for_iter_53 += arith_const_17) {
    func_arg_5[for_iter_53] = arith_const_23; 
    int arith_addi_54 = (for_iter_53 + arith_const_19); 
    func_arg_5[arith_addi_54] = arith_const_23; 
    int arith_addi_55 = (for_iter_53 + arith_const_16); 
    func_arg_5[arith_addi_55] = arith_const_23; 
    int arith_addi_56 = (for_iter_53 + arith_const_15); 
    func_arg_5[arith_addi_56] = arith_const_23; 
  }
  for (int for_iter_57 = arith_const_21; for_iter_57 < arith_const_14; for_iter_57 += arith_const_19) {
    for (int for_iter_58 = arith_const_21; for_iter_58 < arith_const_20; for_iter_58 += arith_const_17) {
      double memref_load_59 = func_arg_5[for_iter_58]; 
      double memref_load_60 = func_arg_3[for_iter_57][for_iter_58]; 
      double arith_addf_61 = (memref_load_59 + memref_load_60); 
      func_arg_5[for_iter_58] = arith_addf_61; 
      int arith_addi_62 = (for_iter_58 + arith_const_19); 
      double memref_load_63 = func_arg_5[arith_addi_62]; 
      double memref_load_64 = func_arg_3[for_iter_57][arith_addi_62]; 
      double arith_addf_65 = (memref_load_63 + memref_load_64); 
      func_arg_5[arith_addi_62] = arith_addf_65; 
      int arith_addi_66 = (for_iter_58 + arith_const_16); 
      double memref_load_67 = func_arg_5[arith_addi_66]; 
      double memref_load_68 = func_arg_3[for_iter_57][arith_addi_66]; 
      double arith_addf_69 = (memref_load_67 + memref_load_68); 
      func_arg_5[arith_addi_66] = arith_addf_69; 
      int arith_addi_70 = (for_iter_58 + arith_const_15); 
      double memref_load_71 = func_arg_5[arith_addi_70]; 
      double memref_load_72 = func_arg_3[for_iter_57][arith_addi_70]; 
      double arith_addf_73 = (memref_load_71 + memref_load_72); 
      func_arg_5[arith_addi_70] = arith_addf_73; 
    }
  }
  for (int for_iter_74 = arith_const_21; for_iter_74 < arith_const_20; for_iter_74 += arith_const_17) {
    double memref_load_75 = func_arg_5[for_iter_74]; 
    double arith_divf_76 = (memref_load_75 / func_arg_2); 
    func_arg_5[for_iter_74] = arith_divf_76; 
    int arith_addi_77 = (for_iter_74 + arith_const_19); 
    double memref_load_78 = func_arg_5[arith_addi_77]; 
    double arith_divf_79 = (memref_load_78 / func_arg_2); 
    func_arg_5[arith_addi_77] = arith_divf_79; 
    int arith_addi_80 = (for_iter_74 + arith_const_16); 
    double memref_load_81 = func_arg_5[arith_addi_80]; 
    double arith_divf_82 = (memref_load_81 / func_arg_2); 
    func_arg_5[arith_addi_80] = arith_divf_82; 
    int arith_addi_83 = (for_iter_74 + arith_const_15); 
    double memref_load_84 = func_arg_5[arith_addi_83]; 
    double arith_divf_85 = (memref_load_84 / func_arg_2); 
    func_arg_5[arith_addi_83] = arith_divf_85; 
  }
  for (int for_iter_86 = arith_const_21; for_iter_86 < arith_const_14; for_iter_86 += arith_const_19) {
    for (int for_iter_87 = arith_const_21; for_iter_87 < arith_const_20; for_iter_87 += arith_const_17) {
      double memref_load_88 = func_arg_3[for_iter_86][for_iter_87]; 
      double memref_load_89 = func_arg_5[for_iter_87]; 
      double arith_subf_90 = (memref_load_88 - memref_load_89); 
      func_arg_3[for_iter_86][for_iter_87] = arith_subf_90; 
      int arith_addi_91 = (for_iter_87 + arith_const_19); 
      double memref_load_92 = func_arg_3[for_iter_86][arith_addi_91]; 
      double memref_load_93 = func_arg_5[arith_addi_91]; 
      double arith_subf_94 = (memref_load_92 - memref_load_93); 
      func_arg_3[for_iter_86][arith_addi_91] = arith_subf_94; 
      int arith_addi_95 = (for_iter_87 + arith_const_16); 
      double memref_load_96 = func_arg_3[for_iter_86][arith_addi_95]; 
      double memref_load_97 = func_arg_5[arith_addi_95]; 
      double arith_subf_98 = (memref_load_96 - memref_load_97); 
      func_arg_3[for_iter_86][arith_addi_95] = arith_subf_98; 
      int arith_addi_99 = (for_iter_87 + arith_const_15); 
      double memref_load_100 = func_arg_3[for_iter_86][arith_addi_99]; 
      double memref_load_101 = func_arg_5[arith_addi_99]; 
      double arith_subf_102 = (memref_load_100 - memref_load_101); 
      func_arg_3[for_iter_86][arith_addi_99] = arith_subf_102; 
    }
  }
  for (int for_iter_103 = arith_const_21; for_iter_103 < arith_const_20; for_iter_103 += arith_const_19) {
    for (int for_iter_104 = arith_const_21; for_iter_104 < arith_const_14; for_iter_104 += arith_const_19) {
      int arith_muli_105 = (for_iter_103 * arith_const_18); 
      int arith_cmpi_106 = (arith_muli_105 < arith_const_21); 
      int arith_subi_107 = (arith_const_18 - arith_muli_105); 
      int arith_select_108 = (arith_cmpi_106 ? arith_subi_107 : arith_muli_105); 
      int arith_divi_109 = (arith_select_108 / arith_const_17); 
      int arith_subi_110 = (arith_const_18 - arith_divi_109); 
      int arith_select_111 = (arith_cmpi_106 ? arith_subi_110 : arith_divi_109); 
      int arith_muli_112 = (arith_select_111 * arith_const_17); 
      int arith_addi_113 = (for_iter_103 + arith_muli_112); 
      int arith_addi_114 = (arith_addi_113 + arith_const_20); 
      for (int for_iter_115 = for_iter_103; for_iter_115 < arith_addi_114; for_iter_115 += arith_const_17) {
        double memref_load_116 = func_arg_4[for_iter_103][for_iter_115]; 
        double memref_load_117 = func_arg_3[for_iter_104][for_iter_103]; 
        double memref_load_118 = func_arg_3[for_iter_104][for_iter_115]; 
        double arith_mulf_119 = (memref_load_117 * memref_load_118); 
        double arith_addf_120 = (memref_load_116 + arith_mulf_119); 
        func_arg_4[for_iter_103][for_iter_115] = arith_addf_120; 
        int arith_addi_121 = (for_iter_115 + arith_const_19); 
        double memref_load_122 = func_arg_4[for_iter_103][arith_addi_121]; 
        double memref_load_123 = func_arg_3[for_iter_104][for_iter_103]; 
        double memref_load_124 = func_arg_3[for_iter_104][arith_addi_121]; 
        double arith_mulf_125 = (memref_load_123 * memref_load_124); 
        double arith_addf_126 = (memref_load_122 + arith_mulf_125); 
        func_arg_4[for_iter_103][arith_addi_121] = arith_addf_126; 
        int arith_addi_127 = (for_iter_115 + arith_const_16); 
        double memref_load_128 = func_arg_4[for_iter_103][arith_addi_127]; 
        double memref_load_129 = func_arg_3[for_iter_104][for_iter_103]; 
        double memref_load_130 = func_arg_3[for_iter_104][arith_addi_127]; 
        double arith_mulf_131 = (memref_load_129 * memref_load_130); 
        double arith_addf_132 = (memref_load_128 + arith_mulf_131); 
        func_arg_4[for_iter_103][arith_addi_127] = arith_addf_132; 
        int arith_addi_133 = (for_iter_115 + arith_const_15); 
        double memref_load_134 = func_arg_4[for_iter_103][arith_addi_133]; 
        double memref_load_135 = func_arg_3[for_iter_104][for_iter_103]; 
        double memref_load_136 = func_arg_3[for_iter_104][arith_addi_133]; 
        double arith_mulf_137 = (memref_load_135 * memref_load_136); 
        double arith_addf_138 = (memref_load_134 + arith_mulf_137); 
        func_arg_4[for_iter_103][arith_addi_133] = arith_addf_138; 
      }
      int arith_muli_139 = (for_iter_103 * arith_const_18); 
      int arith_cmpi_140 = (arith_muli_139 < arith_const_21); 
      int arith_subi_141 = (arith_const_18 - arith_muli_139); 
      int arith_select_142 = (arith_cmpi_140 ? arith_subi_141 : arith_muli_139); 
      int arith_divi_143 = (arith_select_142 / arith_const_17); 
      int arith_subi_144 = (arith_const_18 - arith_divi_143); 
      int arith_select_145 = (arith_cmpi_140 ? arith_subi_144 : arith_divi_143); 
      int arith_muli_146 = (arith_select_145 * arith_const_17); 
      int arith_addi_147 = (for_iter_103 + arith_muli_146); 
      int arith_addi_148 = (arith_addi_147 + arith_const_20); 
      for (int for_iter_149 = arith_addi_148; for_iter_149 < arith_const_20; for_iter_149 += arith_const_19) {
        double memref_load_150 = func_arg_4[for_iter_103][for_iter_149]; 
        double memref_load_151 = func_arg_3[for_iter_104][for_iter_103]; 
        double memref_load_152 = func_arg_3[for_iter_104][for_iter_149]; 
        double arith_mulf_153 = (memref_load_151 * memref_load_152); 
        double arith_addf_154 = (memref_load_150 + arith_mulf_153); 
        func_arg_4[for_iter_103][for_iter_149] = arith_addf_154; 
      }
    }
  }
  for (int for_iter_155 = arith_const_21; for_iter_155 < arith_const_13; for_iter_155 += arith_const_19) {
    int arith_muli_156 = (for_iter_155 * arith_const_12); 
    int arith_addi_157 = (arith_muli_156 + arith_const_11); 
    int arith_cmpi_158 = (arith_addi_157 <= arith_const_21); 
    int arith_subi_159 = (arith_const_21 - arith_addi_157); 
    int arith_subi_160 = (arith_addi_157 - arith_const_19); 
    int arith_select_161 = (arith_cmpi_158 ? arith_subi_159 : arith_subi_160); 
    int arith_divi_162 = (arith_select_161 / arith_const_10); 
    int arith_subi_163 = (arith_const_21 - arith_divi_162); 
    int arith_addi_164 = (arith_divi_162 + arith_const_19); 
    int arith_select_165 = (arith_cmpi_158 ? arith_subi_163 : arith_addi_164); 
    int arith_maxsi_166 = max(arith_select_165, arith_const_21); 
    int arith_muli_167 = (for_iter_155 * arith_const_14); 
    int arith_addi_168 = (arith_muli_167 + arith_const_9); 
    int arith_cmpi_169 = (arith_addi_168 < arith_const_21); 
    int arith_subi_170 = (arith_const_18 - arith_addi_168); 
    int arith_select_171 = (arith_cmpi_169 ? arith_subi_170 : arith_addi_168); 
    int arith_divi_172 = (arith_select_171 / arith_const_8); 
    int arith_subi_173 = (arith_const_18 - arith_divi_172); 
    int arith_select_174 = (arith_cmpi_169 ? arith_subi_173 : arith_divi_172); 
    int arith_addi_175 = (arith_select_174 + arith_const_19); 
    for (int for_iter_176 = arith_maxsi_166; for_iter_176 < arith_addi_175; for_iter_176 += arith_const_19) {
      int arith_muli_177 = (for_iter_155 * arith_const_14); 
      int arith_muli_178 = (for_iter_176 * arith_const_8); 
      int arith_maxsi_179 = max(arith_muli_177, arith_muli_178); 
      int arith_muli_180 = (for_iter_155 * arith_const_14); 
      int arith_addi_181 = (arith_muli_180 + arith_const_14); 
      int arith_muli_182 = (for_iter_176 * arith_const_7); 
      int arith_addi_183 = (arith_muli_182 + arith_const_20); 
      int arith_minsi_184 = min(arith_addi_181, arith_addi_183); 
      for (int for_iter_185 = arith_maxsi_179; for_iter_185 < arith_minsi_184; for_iter_185 += arith_const_19) {
        int arith_muli_186 = (for_iter_185 * arith_const_6); 
        int arith_addi_187 = (arith_muli_186 + for_iter_176); 
        double memref_load_188 = func_arg_4[for_iter_176][arith_addi_187]; 
        double memref_load_189 = memref_alloca_25[arith_const_21]; 
        double arith_divf_190 = (memref_load_188 / memref_load_189); 
        memref_alloca_24[arith_const_21] = arith_divf_190; 
        int arith_muli_191 = (for_iter_185 * arith_const_6); 
        int arith_addi_192 = (arith_muli_191 + for_iter_176); 
        func_arg_4[for_iter_176][arith_addi_192] = arith_divf_190; 
        double memref_load_193 = memref_alloca_24[arith_const_21]; 
        int arith_muli_194 = (for_iter_185 * arith_const_6); 
        int arith_addi_195 = (arith_muli_194 + for_iter_176); 
        func_arg_4[arith_addi_195][for_iter_176] = memref_load_193; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double float_n;
  double* data;
  double* cov;
  double* mean;


  kernel_covariance(m, n, float_n, data, cov, mean);

}

#pragma pocc-region-end
