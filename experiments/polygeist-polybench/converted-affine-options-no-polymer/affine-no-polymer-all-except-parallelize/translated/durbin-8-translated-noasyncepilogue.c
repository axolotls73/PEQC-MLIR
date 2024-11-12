#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -4; 
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 1; 
  int arith_const_9 = 39; 
  int arith_const_10 = 0; 
  double arith_const_11 = 0.000000; 
  double arith_const_12 = 1.000000; 
  double* memref_alloca_13; 
  double _14; 
  memref_alloca_13[0] = _14; 
  double* memref_alloca_15; 
  memref_alloca_15[0] = _14; 
  double* memref_alloca_16; 
  memref_alloca_16[0] = _14; 
  double* memref_alloca_17; 
  double memref_load_18 = func_arg_1[arith_const_10]; 
  double arith_negf_19 = -(memref_load_18); 
  func_arg_2[arith_const_10] = arith_negf_19; 
  memref_alloca_15[0] = arith_const_12; 
  double memref_load_20 = func_arg_1[arith_const_10]; 
  double arith_negf_21 = -(memref_load_20); 
  memref_alloca_16[0] = arith_negf_21; 
  for (int for_iter_22 = arith_const_10; for_iter_22 < arith_const_9; for_iter_22 += arith_const_8) {
    int arith_addi_23 = (for_iter_22 + arith_const_8); 
    for (int for_iter_24 = arith_const_10; for_iter_24 < arith_const_8; for_iter_24 += arith_const_8) {
      int arith_addi_25 = (arith_addi_23 + for_iter_24); 
      double memref_load_26 = memref_alloca_16[0]; 
      double arith_mulf_27 = (memref_load_26 * memref_load_26); 
      double arith_subf_28 = (arith_const_12 - arith_mulf_27); 
      double memref_load_29 = memref_alloca_15[0]; 
      double arith_mulf_30 = (arith_subf_28 * memref_load_29); 
      memref_alloca_15[0] = arith_mulf_30; 
      memref_alloca_13[0] = arith_const_11; 
      int arith_addi_31 = (for_iter_24 + for_iter_22); 
      int arith_addi_32 = (arith_addi_31 + arith_const_8); 
      int arith_cmpi_33 = (arith_addi_32 < arith_const_10); 
      int arith_subi_34 = (arith_const_6 - arith_addi_32); 
      int arith_select_35 = (arith_cmpi_33 ? arith_subi_34 : arith_addi_32); 
      int arith_divi_36 = (arith_select_35 / arith_const_7); 
      int arith_subi_37 = (arith_const_6 - arith_divi_36); 
      int arith_select_38 = (arith_cmpi_33 ? arith_subi_37 : arith_divi_36); 
      for (int for_iter_39 = arith_const_10; for_iter_39 < arith_select_38; for_iter_39 += arith_const_8) {
        int arith_muli_40 = (for_iter_39 * arith_const_7); 
        int arith_muli_41 = (arith_muli_40 * arith_const_6); 
        int arith_addi_42 = (arith_addi_25 + arith_muli_41); 
        int arith_addi_43 = (arith_addi_42 + arith_const_6); 
        double memref_load_44 = func_arg_1[arith_addi_43]; 
        double memref_load_45 = func_arg_2[arith_muli_40]; 
        double arith_mulf_46 = (memref_load_44 * memref_load_45); 
        double memref_load_47 = memref_alloca_13[0]; 
        double arith_addf_48 = (memref_load_47 + arith_mulf_46); 
        memref_alloca_13[0] = arith_addf_48; 
        int arith_addi_49 = (arith_muli_40 + arith_const_8); 
        int arith_muli_50 = (arith_addi_49 * arith_const_6); 
        int arith_addi_51 = (arith_addi_25 + arith_muli_50); 
        int arith_addi_52 = (arith_addi_51 + arith_const_6); 
        double memref_load_53 = func_arg_1[arith_addi_52]; 
        double memref_load_54 = func_arg_2[arith_addi_49]; 
        double arith_mulf_55 = (memref_load_53 * memref_load_54); 
        double memref_load_56 = memref_alloca_13[0]; 
        double arith_addf_57 = (memref_load_56 + arith_mulf_55); 
        memref_alloca_13[0] = arith_addf_57; 
        int arith_addi_58 = (arith_muli_40 + arith_const_5); 
        int arith_muli_59 = (arith_addi_58 * arith_const_6); 
        int arith_addi_60 = (arith_addi_25 + arith_muli_59); 
        int arith_addi_61 = (arith_addi_60 + arith_const_6); 
        double memref_load_62 = func_arg_1[arith_addi_61]; 
        double memref_load_63 = func_arg_2[arith_addi_58]; 
        double arith_mulf_64 = (memref_load_62 * memref_load_63); 
        double memref_load_65 = memref_alloca_13[0]; 
        double arith_addf_66 = (memref_load_65 + arith_mulf_64); 
        memref_alloca_13[0] = arith_addf_66; 
        int arith_addi_67 = (arith_muli_40 + arith_const_4); 
        int arith_muli_68 = (arith_addi_67 * arith_const_6); 
        int arith_addi_69 = (arith_addi_25 + arith_muli_68); 
        int arith_addi_70 = (arith_addi_69 + arith_const_6); 
        double memref_load_71 = func_arg_1[arith_addi_70]; 
        double memref_load_72 = func_arg_2[arith_addi_67]; 
        double arith_mulf_73 = (memref_load_71 * memref_load_72); 
        double memref_load_74 = memref_alloca_13[0]; 
        double arith_addf_75 = (memref_load_74 + arith_mulf_73); 
        memref_alloca_13[0] = arith_addf_75; 
      }
      int arith_addi_76 = (for_iter_24 + for_iter_22); 
      int arith_addi_77 = (for_iter_24 + for_iter_22); 
      int arith_addi_78 = (arith_addi_77 + arith_const_8); 
      int arith_cmpi_79 = (arith_addi_78 < arith_const_10); 
      int arith_subi_80 = (arith_const_6 - arith_addi_78); 
      int arith_select_81 = (arith_cmpi_79 ? arith_subi_80 : arith_addi_78); 
      int arith_divi_82 = (arith_select_81 / arith_const_7); 
      int arith_subi_83 = (arith_const_6 - arith_divi_82); 
      int arith_select_84 = (arith_cmpi_79 ? arith_subi_83 : arith_divi_82); 
      int arith_muli_85 = (arith_select_84 * arith_const_3); 
      int arith_addi_86 = (arith_addi_76 + arith_muli_85); 
      int arith_addi_87 = (arith_addi_86 + arith_const_8); 
      for (int for_iter_88 = arith_const_10; for_iter_88 < arith_addi_87; for_iter_88 += arith_const_8) {
        int arith_cmpi_89 = (arith_addi_25 < arith_const_10); 
        int arith_subi_90 = (arith_const_6 - arith_addi_25); 
        int arith_select_91 = (arith_cmpi_89 ? arith_subi_90 : arith_addi_25); 
        int arith_divi_92 = (arith_select_91 / arith_const_7); 
        int arith_subi_93 = (arith_const_6 - arith_divi_92); 
        int arith_select_94 = (arith_cmpi_89 ? arith_subi_93 : arith_divi_92); 
        int arith_muli_95 = (arith_select_94 * arith_const_7); 
        int arith_addi_96 = (for_iter_88 + arith_muli_95); 
        int arith_muli_97 = (arith_addi_96 * arith_const_6); 
        int arith_addi_98 = (arith_addi_25 + arith_muli_97); 
        int arith_addi_99 = (arith_addi_98 + arith_const_6); 
        double memref_load_100 = func_arg_1[arith_addi_99]; 
        double memref_load_101 = func_arg_2[arith_addi_96]; 
        double arith_mulf_102 = (memref_load_100 * memref_load_101); 
        double memref_load_103 = memref_alloca_13[0]; 
        double arith_addf_104 = (memref_load_103 + arith_mulf_102); 
        memref_alloca_13[0] = arith_addf_104; 
      }
      double memref_load_105 = func_arg_1[arith_addi_25]; 
      double memref_load_106 = memref_alloca_13[0]; 
      double arith_addf_107 = (memref_load_105 + memref_load_106); 
      double arith_negf_108 = -(arith_addf_107); 
      double arith_divf_109 = (arith_negf_108 / arith_mulf_30); 
      memref_alloca_16[0] = arith_divf_109; 
      int arith_addi_110 = (for_iter_24 + for_iter_22); 
      int arith_addi_111 = (arith_addi_110 + arith_const_8); 
      int arith_cmpi_112 = (arith_addi_111 < arith_const_10); 
      int arith_subi_113 = (arith_const_6 - arith_addi_111); 
      int arith_select_114 = (arith_cmpi_112 ? arith_subi_113 : arith_addi_111); 
      int arith_divi_115 = (arith_select_114 / arith_const_7); 
      int arith_subi_116 = (arith_const_6 - arith_divi_115); 
      int arith_select_117 = (arith_cmpi_112 ? arith_subi_116 : arith_divi_115); 
      for (int for_iter_118 = arith_const_10; for_iter_118 < arith_select_117; for_iter_118 += arith_const_8) {
        int arith_muli_119 = (for_iter_118 * arith_const_7); 
        double memref_load_120 = func_arg_2[arith_muli_119]; 
        int arith_muli_121 = (arith_muli_119 * arith_const_6); 
        int arith_addi_122 = (arith_addi_25 + arith_muli_121); 
        int arith_addi_123 = (arith_addi_122 + arith_const_6); 
        double memref_load_124 = func_arg_2[arith_addi_123]; 
        double arith_mulf_125 = (arith_divf_109 * memref_load_124); 
        double arith_addf_126 = (memref_load_120 + arith_mulf_125); 
        memref_alloca_17[arith_muli_119] = arith_addf_126; 
        int arith_addi_127 = (arith_muli_119 + arith_const_8); 
        double memref_load_128 = func_arg_2[arith_addi_127]; 
        int arith_muli_129 = (arith_addi_127 * arith_const_6); 
        int arith_addi_130 = (arith_addi_25 + arith_muli_129); 
        int arith_addi_131 = (arith_addi_130 + arith_const_6); 
        double memref_load_132 = func_arg_2[arith_addi_131]; 
        double arith_mulf_133 = (arith_divf_109 * memref_load_132); 
        double arith_addf_134 = (memref_load_128 + arith_mulf_133); 
        memref_alloca_17[arith_addi_127] = arith_addf_134; 
        int arith_addi_135 = (arith_muli_119 + arith_const_5); 
        double memref_load_136 = func_arg_2[arith_addi_135]; 
        int arith_muli_137 = (arith_addi_135 * arith_const_6); 
        int arith_addi_138 = (arith_addi_25 + arith_muli_137); 
        int arith_addi_139 = (arith_addi_138 + arith_const_6); 
        double memref_load_140 = func_arg_2[arith_addi_139]; 
        double arith_mulf_141 = (arith_divf_109 * memref_load_140); 
        double arith_addf_142 = (memref_load_136 + arith_mulf_141); 
        memref_alloca_17[arith_addi_135] = arith_addf_142; 
        int arith_addi_143 = (arith_muli_119 + arith_const_4); 
        double memref_load_144 = func_arg_2[arith_addi_143]; 
        int arith_muli_145 = (arith_addi_143 * arith_const_6); 
        int arith_addi_146 = (arith_addi_25 + arith_muli_145); 
        int arith_addi_147 = (arith_addi_146 + arith_const_6); 
        double memref_load_148 = func_arg_2[arith_addi_147]; 
        double arith_mulf_149 = (arith_divf_109 * memref_load_148); 
        double arith_addf_150 = (memref_load_144 + arith_mulf_149); 
        memref_alloca_17[arith_addi_143] = arith_addf_150; 
      }
      int arith_addi_151 = (for_iter_24 + for_iter_22); 
      int arith_addi_152 = (for_iter_24 + for_iter_22); 
      int arith_addi_153 = (arith_addi_152 + arith_const_8); 
      int arith_cmpi_154 = (arith_addi_153 < arith_const_10); 
      int arith_subi_155 = (arith_const_6 - arith_addi_153); 
      int arith_select_156 = (arith_cmpi_154 ? arith_subi_155 : arith_addi_153); 
      int arith_divi_157 = (arith_select_156 / arith_const_7); 
      int arith_subi_158 = (arith_const_6 - arith_divi_157); 
      int arith_select_159 = (arith_cmpi_154 ? arith_subi_158 : arith_divi_157); 
      int arith_muli_160 = (arith_select_159 * arith_const_3); 
      int arith_addi_161 = (arith_addi_151 + arith_muli_160); 
      int arith_addi_162 = (arith_addi_161 + arith_const_8); 
      for (int for_iter_163 = arith_const_10; for_iter_163 < arith_addi_162; for_iter_163 += arith_const_8) {
        int arith_cmpi_164 = (arith_addi_25 < arith_const_10); 
        int arith_subi_165 = (arith_const_6 - arith_addi_25); 
        int arith_select_166 = (arith_cmpi_164 ? arith_subi_165 : arith_addi_25); 
        int arith_divi_167 = (arith_select_166 / arith_const_7); 
        int arith_subi_168 = (arith_const_6 - arith_divi_167); 
        int arith_select_169 = (arith_cmpi_164 ? arith_subi_168 : arith_divi_167); 
        int arith_muli_170 = (arith_select_169 * arith_const_7); 
        int arith_addi_171 = (for_iter_163 + arith_muli_170); 
        double memref_load_172 = func_arg_2[arith_addi_171]; 
        int arith_muli_173 = (arith_addi_171 * arith_const_6); 
        int arith_addi_174 = (arith_addi_25 + arith_muli_173); 
        int arith_addi_175 = (arith_addi_174 + arith_const_6); 
        double memref_load_176 = func_arg_2[arith_addi_175]; 
        double arith_mulf_177 = (arith_divf_109 * memref_load_176); 
        double arith_addf_178 = (memref_load_172 + arith_mulf_177); 
        memref_alloca_17[arith_addi_171] = arith_addf_178; 
      }
      int arith_addi_179 = (for_iter_24 + for_iter_22); 
      int arith_addi_180 = (arith_addi_179 + arith_const_8); 
      int arith_cmpi_181 = (arith_addi_180 < arith_const_10); 
      int arith_subi_182 = (arith_const_6 - arith_addi_180); 
      int arith_select_183 = (arith_cmpi_181 ? arith_subi_182 : arith_addi_180); 
      int arith_divi_184 = (arith_select_183 / arith_const_7); 
      int arith_subi_185 = (arith_const_6 - arith_divi_184); 
      int arith_select_186 = (arith_cmpi_181 ? arith_subi_185 : arith_divi_184); 
      for (int for_iter_187 = arith_const_10; for_iter_187 < arith_select_186; for_iter_187 += arith_const_8) {
        int arith_muli_188 = (for_iter_187 * arith_const_7); 
        double memref_load_189 = memref_alloca_17[arith_muli_188]; 
        func_arg_2[arith_muli_188] = memref_load_189; 
        int arith_addi_190 = (arith_muli_188 + arith_const_8); 
        double memref_load_191 = memref_alloca_17[arith_addi_190]; 
        func_arg_2[arith_addi_190] = memref_load_191; 
        int arith_addi_192 = (arith_muli_188 + arith_const_5); 
        double memref_load_193 = memref_alloca_17[arith_addi_192]; 
        func_arg_2[arith_addi_192] = memref_load_193; 
        int arith_addi_194 = (arith_muli_188 + arith_const_4); 
        double memref_load_195 = memref_alloca_17[arith_addi_194]; 
        func_arg_2[arith_addi_194] = memref_load_195; 
      }
      int arith_addi_196 = (for_iter_24 + for_iter_22); 
      int arith_addi_197 = (for_iter_24 + for_iter_22); 
      int arith_addi_198 = (arith_addi_197 + arith_const_8); 
      int arith_cmpi_199 = (arith_addi_198 < arith_const_10); 
      int arith_subi_200 = (arith_const_6 - arith_addi_198); 
      int arith_select_201 = (arith_cmpi_199 ? arith_subi_200 : arith_addi_198); 
      int arith_divi_202 = (arith_select_201 / arith_const_7); 
      int arith_subi_203 = (arith_const_6 - arith_divi_202); 
      int arith_select_204 = (arith_cmpi_199 ? arith_subi_203 : arith_divi_202); 
      int arith_muli_205 = (arith_select_204 * arith_const_3); 
      int arith_addi_206 = (arith_addi_196 + arith_muli_205); 
      int arith_addi_207 = (arith_addi_206 + arith_const_8); 
      for (int for_iter_208 = arith_const_10; for_iter_208 < arith_addi_207; for_iter_208 += arith_const_8) {
        int arith_cmpi_209 = (arith_addi_25 < arith_const_10); 
        int arith_subi_210 = (arith_const_6 - arith_addi_25); 
        int arith_select_211 = (arith_cmpi_209 ? arith_subi_210 : arith_addi_25); 
        int arith_divi_212 = (arith_select_211 / arith_const_7); 
        int arith_subi_213 = (arith_const_6 - arith_divi_212); 
        int arith_select_214 = (arith_cmpi_209 ? arith_subi_213 : arith_divi_212); 
        int arith_muli_215 = (arith_select_214 * arith_const_7); 
        int arith_addi_216 = (for_iter_208 + arith_muli_215); 
        double memref_load_217 = memref_alloca_17[arith_addi_216]; 
        func_arg_2[arith_addi_216] = memref_load_217; 
      }
      func_arg_2[arith_addi_25] = arith_divf_109; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* r;
  double* y;


  kernel_durbin(n, r, y);

}

#pragma pocc-region-end
