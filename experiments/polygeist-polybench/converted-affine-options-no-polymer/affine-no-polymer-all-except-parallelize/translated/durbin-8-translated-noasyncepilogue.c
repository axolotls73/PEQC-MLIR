#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -4; 
  int arith_const_4 = 3; 
  int arith_const_5 = -1; 
  int arith_const_6 = 4; 
  int arith_const_7 = 39; 
  int arith_const_8 = -32; 
  int arith_const_9 = 32; 
  int arith_const_10 = 1; 
  int arith_const_11 = 2; 
  int arith_const_12 = 0; 
  double arith_const_13 = 0.000000; 
  double arith_const_14 = 1.000000; 
  double* memref_alloca_15; 
  double _16; 
  memref_alloca_15[0] = _16; 
  double* memref_alloca_17; 
  memref_alloca_17[0] = _16; 
  double* memref_alloca_18; 
  memref_alloca_18[0] = _16; 
  double* memref_alloca_19; 
  double memref_load_20 = func_arg_1[arith_const_12]; 
  double arith_negf_21 = -(memref_load_20); 
  func_arg_2[arith_const_12] = arith_negf_21; 
  memref_alloca_17[0] = arith_const_14; 
  double memref_load_22 = func_arg_1[arith_const_12]; 
  double arith_negf_23 = -(memref_load_22); 
  memref_alloca_18[0] = arith_negf_23; 
  for (int for_iter_24 = arith_const_12; for_iter_24 < arith_const_11; for_iter_24 += arith_const_10) {
    int arith_muli_25 = (for_iter_24 * arith_const_9); 
    int arith_addi_26 = (arith_muli_25 + arith_const_10); 
    int arith_muli_27 = (for_iter_24 * arith_const_8); 
    int arith_addi_28 = (arith_muli_27 + arith_const_7); 
    int arith_minsi_29 = min(arith_addi_28, arith_const_9); 
    for (int for_iter_30 = arith_const_12; for_iter_30 < arith_minsi_29; for_iter_30 += arith_const_10) {
      int arith_addi_31 = (arith_addi_26 + for_iter_30); 
      double memref_load_32 = memref_alloca_18[0]; 
      double arith_mulf_33 = (memref_load_32 * memref_load_32); 
      double arith_subf_34 = (arith_const_14 - arith_mulf_33); 
      double memref_load_35 = memref_alloca_17[0]; 
      double arith_mulf_36 = (arith_subf_34 * memref_load_35); 
      memref_alloca_17[0] = arith_mulf_36; 
      memref_alloca_15[0] = arith_const_13; 
      int arith_muli_37 = (for_iter_24 * arith_const_9); 
      int arith_addi_38 = (for_iter_30 + arith_muli_37); 
      int arith_addi_39 = (arith_addi_38 + arith_const_10); 
      int arith_cmpi_40 = (arith_addi_39 < arith_const_12); 
      int arith_subi_41 = (arith_const_5 - arith_addi_39); 
      int arith_select_42 = (arith_cmpi_40 ? arith_subi_41 : arith_addi_39); 
      int arith_divi_43 = (arith_select_42 / arith_const_6); 
      int arith_subi_44 = (arith_const_5 - arith_divi_43); 
      int arith_select_45 = (arith_cmpi_40 ? arith_subi_44 : arith_divi_43); 
      for (int for_iter_46 = arith_const_12; for_iter_46 < arith_select_45; for_iter_46 += arith_const_10) {
        int arith_muli_47 = (for_iter_46 * arith_const_6); 
        int arith_muli_48 = (arith_muli_47 * arith_const_5); 
        int arith_addi_49 = (arith_addi_31 + arith_muli_48); 
        int arith_addi_50 = (arith_addi_49 + arith_const_5); 
        double memref_load_51 = func_arg_1[arith_addi_50]; 
        double memref_load_52 = func_arg_2[arith_muli_47]; 
        double arith_mulf_53 = (memref_load_51 * memref_load_52); 
        double memref_load_54 = memref_alloca_15[0]; 
        double arith_addf_55 = (memref_load_54 + arith_mulf_53); 
        memref_alloca_15[0] = arith_addf_55; 
        int arith_addi_56 = (arith_muli_47 + arith_const_10); 
        int arith_muli_57 = (arith_addi_56 * arith_const_5); 
        int arith_addi_58 = (arith_addi_31 + arith_muli_57); 
        int arith_addi_59 = (arith_addi_58 + arith_const_5); 
        double memref_load_60 = func_arg_1[arith_addi_59]; 
        double memref_load_61 = func_arg_2[arith_addi_56]; 
        double arith_mulf_62 = (memref_load_60 * memref_load_61); 
        double memref_load_63 = memref_alloca_15[0]; 
        double arith_addf_64 = (memref_load_63 + arith_mulf_62); 
        memref_alloca_15[0] = arith_addf_64; 
        int arith_addi_65 = (arith_muli_47 + arith_const_11); 
        int arith_muli_66 = (arith_addi_65 * arith_const_5); 
        int arith_addi_67 = (arith_addi_31 + arith_muli_66); 
        int arith_addi_68 = (arith_addi_67 + arith_const_5); 
        double memref_load_69 = func_arg_1[arith_addi_68]; 
        double memref_load_70 = func_arg_2[arith_addi_65]; 
        double arith_mulf_71 = (memref_load_69 * memref_load_70); 
        double memref_load_72 = memref_alloca_15[0]; 
        double arith_addf_73 = (memref_load_72 + arith_mulf_71); 
        memref_alloca_15[0] = arith_addf_73; 
        int arith_addi_74 = (arith_muli_47 + arith_const_4); 
        int arith_muli_75 = (arith_addi_74 * arith_const_5); 
        int arith_addi_76 = (arith_addi_31 + arith_muli_75); 
        int arith_addi_77 = (arith_addi_76 + arith_const_5); 
        double memref_load_78 = func_arg_1[arith_addi_77]; 
        double memref_load_79 = func_arg_2[arith_addi_74]; 
        double arith_mulf_80 = (memref_load_78 * memref_load_79); 
        double memref_load_81 = memref_alloca_15[0]; 
        double arith_addf_82 = (memref_load_81 + arith_mulf_80); 
        memref_alloca_15[0] = arith_addf_82; 
      }
      int arith_muli_83 = (for_iter_24 * arith_const_9); 
      int arith_addi_84 = (for_iter_30 + arith_muli_83); 
      int arith_muli_85 = (for_iter_24 * arith_const_9); 
      int arith_addi_86 = (for_iter_30 + arith_muli_85); 
      int arith_addi_87 = (arith_addi_86 + arith_const_10); 
      int arith_cmpi_88 = (arith_addi_87 < arith_const_12); 
      int arith_subi_89 = (arith_const_5 - arith_addi_87); 
      int arith_select_90 = (arith_cmpi_88 ? arith_subi_89 : arith_addi_87); 
      int arith_divi_91 = (arith_select_90 / arith_const_6); 
      int arith_subi_92 = (arith_const_5 - arith_divi_91); 
      int arith_select_93 = (arith_cmpi_88 ? arith_subi_92 : arith_divi_91); 
      int arith_muli_94 = (arith_select_93 * arith_const_3); 
      int arith_addi_95 = (arith_addi_84 + arith_muli_94); 
      int arith_addi_96 = (arith_addi_95 + arith_const_10); 
      for (int for_iter_97 = arith_const_12; for_iter_97 < arith_addi_96; for_iter_97 += arith_const_10) {
        int arith_cmpi_98 = (arith_addi_31 < arith_const_12); 
        int arith_subi_99 = (arith_const_5 - arith_addi_31); 
        int arith_select_100 = (arith_cmpi_98 ? arith_subi_99 : arith_addi_31); 
        int arith_divi_101 = (arith_select_100 / arith_const_6); 
        int arith_subi_102 = (arith_const_5 - arith_divi_101); 
        int arith_select_103 = (arith_cmpi_98 ? arith_subi_102 : arith_divi_101); 
        int arith_muli_104 = (arith_select_103 * arith_const_6); 
        int arith_addi_105 = (for_iter_97 + arith_muli_104); 
        int arith_muli_106 = (arith_addi_105 * arith_const_5); 
        int arith_addi_107 = (arith_addi_31 + arith_muli_106); 
        int arith_addi_108 = (arith_addi_107 + arith_const_5); 
        double memref_load_109 = func_arg_1[arith_addi_108]; 
        double memref_load_110 = func_arg_2[arith_addi_105]; 
        double arith_mulf_111 = (memref_load_109 * memref_load_110); 
        double memref_load_112 = memref_alloca_15[0]; 
        double arith_addf_113 = (memref_load_112 + arith_mulf_111); 
        memref_alloca_15[0] = arith_addf_113; 
      }
      double memref_load_114 = func_arg_1[arith_addi_31]; 
      double memref_load_115 = memref_alloca_15[0]; 
      double arith_addf_116 = (memref_load_114 + memref_load_115); 
      double arith_negf_117 = -(arith_addf_116); 
      double arith_divf_118 = (arith_negf_117 / arith_mulf_36); 
      memref_alloca_18[0] = arith_divf_118; 
      int arith_muli_119 = (for_iter_24 * arith_const_9); 
      int arith_addi_120 = (for_iter_30 + arith_muli_119); 
      int arith_addi_121 = (arith_addi_120 + arith_const_10); 
      int arith_cmpi_122 = (arith_addi_121 < arith_const_12); 
      int arith_subi_123 = (arith_const_5 - arith_addi_121); 
      int arith_select_124 = (arith_cmpi_122 ? arith_subi_123 : arith_addi_121); 
      int arith_divi_125 = (arith_select_124 / arith_const_6); 
      int arith_subi_126 = (arith_const_5 - arith_divi_125); 
      int arith_select_127 = (arith_cmpi_122 ? arith_subi_126 : arith_divi_125); 
      for (int for_iter_128 = arith_const_12; for_iter_128 < arith_select_127; for_iter_128 += arith_const_10) {
        int arith_muli_129 = (for_iter_128 * arith_const_6); 
        double memref_load_130 = func_arg_2[arith_muli_129]; 
        int arith_muli_131 = (arith_muli_129 * arith_const_5); 
        int arith_addi_132 = (arith_addi_31 + arith_muli_131); 
        int arith_addi_133 = (arith_addi_132 + arith_const_5); 
        double memref_load_134 = func_arg_2[arith_addi_133]; 
        double arith_mulf_135 = (arith_divf_118 * memref_load_134); 
        double arith_addf_136 = (memref_load_130 + arith_mulf_135); 
        memref_alloca_19[arith_muli_129] = arith_addf_136; 
        int arith_addi_137 = (arith_muli_129 + arith_const_10); 
        double memref_load_138 = func_arg_2[arith_addi_137]; 
        int arith_muli_139 = (arith_addi_137 * arith_const_5); 
        int arith_addi_140 = (arith_addi_31 + arith_muli_139); 
        int arith_addi_141 = (arith_addi_140 + arith_const_5); 
        double memref_load_142 = func_arg_2[arith_addi_141]; 
        double arith_mulf_143 = (arith_divf_118 * memref_load_142); 
        double arith_addf_144 = (memref_load_138 + arith_mulf_143); 
        memref_alloca_19[arith_addi_137] = arith_addf_144; 
        int arith_addi_145 = (arith_muli_129 + arith_const_11); 
        double memref_load_146 = func_arg_2[arith_addi_145]; 
        int arith_muli_147 = (arith_addi_145 * arith_const_5); 
        int arith_addi_148 = (arith_addi_31 + arith_muli_147); 
        int arith_addi_149 = (arith_addi_148 + arith_const_5); 
        double memref_load_150 = func_arg_2[arith_addi_149]; 
        double arith_mulf_151 = (arith_divf_118 * memref_load_150); 
        double arith_addf_152 = (memref_load_146 + arith_mulf_151); 
        memref_alloca_19[arith_addi_145] = arith_addf_152; 
        int arith_addi_153 = (arith_muli_129 + arith_const_4); 
        double memref_load_154 = func_arg_2[arith_addi_153]; 
        int arith_muli_155 = (arith_addi_153 * arith_const_5); 
        int arith_addi_156 = (arith_addi_31 + arith_muli_155); 
        int arith_addi_157 = (arith_addi_156 + arith_const_5); 
        double memref_load_158 = func_arg_2[arith_addi_157]; 
        double arith_mulf_159 = (arith_divf_118 * memref_load_158); 
        double arith_addf_160 = (memref_load_154 + arith_mulf_159); 
        memref_alloca_19[arith_addi_153] = arith_addf_160; 
      }
      int arith_muli_161 = (for_iter_24 * arith_const_9); 
      int arith_addi_162 = (for_iter_30 + arith_muli_161); 
      int arith_muli_163 = (for_iter_24 * arith_const_9); 
      int arith_addi_164 = (for_iter_30 + arith_muli_163); 
      int arith_addi_165 = (arith_addi_164 + arith_const_10); 
      int arith_cmpi_166 = (arith_addi_165 < arith_const_12); 
      int arith_subi_167 = (arith_const_5 - arith_addi_165); 
      int arith_select_168 = (arith_cmpi_166 ? arith_subi_167 : arith_addi_165); 
      int arith_divi_169 = (arith_select_168 / arith_const_6); 
      int arith_subi_170 = (arith_const_5 - arith_divi_169); 
      int arith_select_171 = (arith_cmpi_166 ? arith_subi_170 : arith_divi_169); 
      int arith_muli_172 = (arith_select_171 * arith_const_3); 
      int arith_addi_173 = (arith_addi_162 + arith_muli_172); 
      int arith_addi_174 = (arith_addi_173 + arith_const_10); 
      for (int for_iter_175 = arith_const_12; for_iter_175 < arith_addi_174; for_iter_175 += arith_const_10) {
        int arith_cmpi_176 = (arith_addi_31 < arith_const_12); 
        int arith_subi_177 = (arith_const_5 - arith_addi_31); 
        int arith_select_178 = (arith_cmpi_176 ? arith_subi_177 : arith_addi_31); 
        int arith_divi_179 = (arith_select_178 / arith_const_6); 
        int arith_subi_180 = (arith_const_5 - arith_divi_179); 
        int arith_select_181 = (arith_cmpi_176 ? arith_subi_180 : arith_divi_179); 
        int arith_muli_182 = (arith_select_181 * arith_const_6); 
        int arith_addi_183 = (for_iter_175 + arith_muli_182); 
        double memref_load_184 = func_arg_2[arith_addi_183]; 
        int arith_muli_185 = (arith_addi_183 * arith_const_5); 
        int arith_addi_186 = (arith_addi_31 + arith_muli_185); 
        int arith_addi_187 = (arith_addi_186 + arith_const_5); 
        double memref_load_188 = func_arg_2[arith_addi_187]; 
        double arith_mulf_189 = (arith_divf_118 * memref_load_188); 
        double arith_addf_190 = (memref_load_184 + arith_mulf_189); 
        memref_alloca_19[arith_addi_183] = arith_addf_190; 
      }
      int arith_muli_191 = (for_iter_24 * arith_const_9); 
      int arith_addi_192 = (for_iter_30 + arith_muli_191); 
      int arith_addi_193 = (arith_addi_192 + arith_const_10); 
      int arith_cmpi_194 = (arith_addi_193 < arith_const_12); 
      int arith_subi_195 = (arith_const_5 - arith_addi_193); 
      int arith_select_196 = (arith_cmpi_194 ? arith_subi_195 : arith_addi_193); 
      int arith_divi_197 = (arith_select_196 / arith_const_6); 
      int arith_subi_198 = (arith_const_5 - arith_divi_197); 
      int arith_select_199 = (arith_cmpi_194 ? arith_subi_198 : arith_divi_197); 
      for (int for_iter_200 = arith_const_12; for_iter_200 < arith_select_199; for_iter_200 += arith_const_10) {
        int arith_muli_201 = (for_iter_200 * arith_const_6); 
        double memref_load_202 = memref_alloca_19[arith_muli_201]; 
        func_arg_2[arith_muli_201] = memref_load_202; 
        int arith_addi_203 = (arith_muli_201 + arith_const_10); 
        double memref_load_204 = memref_alloca_19[arith_addi_203]; 
        func_arg_2[arith_addi_203] = memref_load_204; 
        int arith_addi_205 = (arith_muli_201 + arith_const_11); 
        double memref_load_206 = memref_alloca_19[arith_addi_205]; 
        func_arg_2[arith_addi_205] = memref_load_206; 
        int arith_addi_207 = (arith_muli_201 + arith_const_4); 
        double memref_load_208 = memref_alloca_19[arith_addi_207]; 
        func_arg_2[arith_addi_207] = memref_load_208; 
      }
      int arith_muli_209 = (for_iter_24 * arith_const_9); 
      int arith_addi_210 = (for_iter_30 + arith_muli_209); 
      int arith_muli_211 = (for_iter_24 * arith_const_9); 
      int arith_addi_212 = (for_iter_30 + arith_muli_211); 
      int arith_addi_213 = (arith_addi_212 + arith_const_10); 
      int arith_cmpi_214 = (arith_addi_213 < arith_const_12); 
      int arith_subi_215 = (arith_const_5 - arith_addi_213); 
      int arith_select_216 = (arith_cmpi_214 ? arith_subi_215 : arith_addi_213); 
      int arith_divi_217 = (arith_select_216 / arith_const_6); 
      int arith_subi_218 = (arith_const_5 - arith_divi_217); 
      int arith_select_219 = (arith_cmpi_214 ? arith_subi_218 : arith_divi_217); 
      int arith_muli_220 = (arith_select_219 * arith_const_3); 
      int arith_addi_221 = (arith_addi_210 + arith_muli_220); 
      int arith_addi_222 = (arith_addi_221 + arith_const_10); 
      for (int for_iter_223 = arith_const_12; for_iter_223 < arith_addi_222; for_iter_223 += arith_const_10) {
        int arith_cmpi_224 = (arith_addi_31 < arith_const_12); 
        int arith_subi_225 = (arith_const_5 - arith_addi_31); 
        int arith_select_226 = (arith_cmpi_224 ? arith_subi_225 : arith_addi_31); 
        int arith_divi_227 = (arith_select_226 / arith_const_6); 
        int arith_subi_228 = (arith_const_5 - arith_divi_227); 
        int arith_select_229 = (arith_cmpi_224 ? arith_subi_228 : arith_divi_227); 
        int arith_muli_230 = (arith_select_229 * arith_const_6); 
        int arith_addi_231 = (for_iter_223 + arith_muli_230); 
        double memref_load_232 = memref_alloca_19[arith_addi_231]; 
        func_arg_2[arith_addi_231] = memref_load_232; 
      }
      func_arg_2[arith_addi_31] = arith_divf_118; 
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
